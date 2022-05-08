#include "branch_pred.h"
#include "debug.h"
#include "libdft_api.h"
#include "pin.H"
#include "syscall_hook.h"
#include <iostream>
#include <unistd.h>

//p似乎是函数接收的参数的地址
//以下是打印实例
//[PIN][SET] addr: 0x7ffe88a35988, lb: 2, taint: 8
//set: 0x7ffe88a35988, 8
VOID TestSetHandler(VOID *addr, void *p, unsigned int v)
{
 // printf("2: I am the test set handler\n");
 // printf("unsigned int v: %d\n", v);
  tag_t t = tag_alloc<tag_t>(v);
 // printf("tag_t t: %d\n", t);
  tagmap_setb((ADDRINT)p, t);
  printf("[PIN][SET] addr: %p, lb: %d, taint: %d\n", p, t, v);
}

VOID TestGetHandler(VOID *addr, void *p)
{
 // printf("1: I am the test get handler\n");
  uint64_t v = *((uint64_t *)p);
  tag_t t = tagmap_getn((ADDRINT)p, 8);
 // printf("[addr]: %p  ", addr);
  printf("[PIN][GET] addr: %p, v: %lu, lb: %d, taint: %s\n", p, v, t, tag_sprint(t).c_str());
}

VOID TestGetValHandler(VOID *addr, THREADID tid, uint64_t v)
{
  //printf("3: I am the test get ValHandler\n");
  tag_t t = tagmap_getn_reg(tid, X64_ARG0_REG, 8);
  printf("[PIN][GETVAL] v: %lu, lb: %d, taint: %s\n", v, t,
         tag_sprint(t).c_str());
}

void docount(int *c)
{
  printf("The function ins amount is:");
  *c += 1;
  printf("%d  ", *c);
}

void Rmemhandle(VOID *p, VOID *m)
{
 // printf("|R|_  [INS] [addr]: %p [Mem]: %p\n", p, m);
}

void Wmemhandle(VOID *p, VOID *m)
{
 // printf("|W|_  [INS] [addr]: %p [Mem]: %p\n", p, m);
}

int count = 0;

VOID EntryPoint(VOID *v)
{

  for (IMG img = APP_ImgHead(); IMG_Valid(img); img = IMG_Next(img))
  {
    RTN test_get_rtn = RTN_FindByName(img, "__libdft_get_taint");
    if (RTN_Valid(test_get_rtn))
    {
      RTN_Open(test_get_rtn);
     //printf("1: RTN opened\n");
      RTN_InsertCall(test_get_rtn, IPOINT_BEFORE, (AFUNPTR)TestGetHandler, IARG_INST_PTR,
                     IARG_FUNCARG_ENTRYPOINT_VALUE, 0, IARG_END);
      // for (INS ins = RTN_InsHead(test_get_rtn); INS_Valid(ins); ins = INS_Next(ins))
      // {
      //   if (INS_IsMemoryRead(ins))
      //   {
      //     INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)Rmemhandle, IARG_INST_PTR, IARG_MEMORYREAD_EA, IARG_END);
      //   }
      //   else if (INS_IsMemoryWrite(ins))
      //   {
      //     INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)Wmemhandle, IARG_INST_PTR, IARG_MEMORYWRITE_EA, IARG_END);
      //   }
      // }
      RTN_Close(test_get_rtn);
    }

    RTN test_set_rtn = RTN_FindByName(img, "__libdft_set_taint");
    if (RTN_Valid(test_set_rtn))
    {
      RTN_Open(test_set_rtn);
      //printf("2: RTN opened\n");
      RTN_InsertCall(test_set_rtn, IPOINT_BEFORE, (AFUNPTR)TestSetHandler, IARG_INST_PTR,
                     IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                     IARG_FUNCARG_ENTRYPOINT_VALUE, 1, IARG_END);
      RTN_Close(test_set_rtn);
    }

    // RTN test_getval_rtn = RTN_FindByName(img, "__libdft_getval_taint");
    // if (RTN_Valid(test_getval_rtn))
    // {
    //   RTN_Open(test_getval_rtn);
    //   printf("3: RTN opened\n");
    //   RTN_InsertCall(test_getval_rtn, IPOINT_BEFORE, (AFUNPTR)TestGetValHandler, IARG_INST_PTR,
    //                  IARG_THREAD_ID, IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
    //                  IARG_END);
    //   RTN_Close(test_getval_rtn);
    // }
  }
}

int main(int argc, char *argv[])
{

  PIN_InitSymbols();
 // printf("track.so sleep...\n");
  // for (int i = 0; i < 15; i++)
  // {
  //   sleep(1);
  //   printf("yes %d\n", i);
  // }
  
  if (unlikely(PIN_Init(argc, argv)))
  {
    std::cerr
        << "Sth error in PIN_Init. Plz use the right command line options."
        << std::endl;
    return -1;
  }

  if (unlikely(libdft_init() != 0))
  {
    std::cerr << "Sth error libdft_init." << std::endl;
    return -1;
  }

  PIN_AddApplicationStartFunction(EntryPoint, 0);

  hook_file_syscall();
  printf("start...\n");
  PIN_StartProgram();
 
  return 0;
}
