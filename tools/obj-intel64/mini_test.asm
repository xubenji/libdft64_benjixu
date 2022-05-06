
/root/libdft64/tools/obj-intel64/mini_test.exe:     file format elf64-x86-64


Disassembly of section .init:

0000000000400540 <_init>:
  400540:	48 83 ec 08          	sub    rsp,0x8
  400544:	48 8b 05 ad 0a 20 00 	mov    rax,QWORD PTR [rip+0x200aad]        # 600ff8 <__gmon_start__>
  40054b:	48 85 c0             	test   rax,rax
  40054e:	74 02                	je     400552 <_init+0x12>
  400550:	ff d0                	call   rax
  400552:	48 83 c4 08          	add    rsp,0x8
  400556:	c3                   	ret    

Disassembly of section .plt:

0000000000400560 <.plt>:
  400560:	ff 35 a2 0a 20 00    	push   QWORD PTR [rip+0x200aa2]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400566:	ff 25 a4 0a 20 00    	jmp    QWORD PTR [rip+0x200aa4]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40056c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400570 <puts@plt>:
  400570:	ff 25 a2 0a 20 00    	jmp    QWORD PTR [rip+0x200aa2]        # 601018 <puts@GLIBC_2.2.5>
  400576:	68 00 00 00 00       	push   0x0
  40057b:	e9 e0 ff ff ff       	jmp    400560 <.plt>

0000000000400580 <fread@plt>:
  400580:	ff 25 9a 0a 20 00    	jmp    QWORD PTR [rip+0x200a9a]        # 601020 <fread@GLIBC_2.2.5>
  400586:	68 01 00 00 00       	push   0x1
  40058b:	e9 d0 ff ff ff       	jmp    400560 <.plt>

0000000000400590 <fclose@plt>:
  400590:	ff 25 92 0a 20 00    	jmp    QWORD PTR [rip+0x200a92]        # 601028 <fclose@GLIBC_2.2.5>
  400596:	68 02 00 00 00       	push   0x2
  40059b:	e9 c0 ff ff ff       	jmp    400560 <.plt>

00000000004005a0 <__stack_chk_fail@plt>:
  4005a0:	ff 25 8a 0a 20 00    	jmp    QWORD PTR [rip+0x200a8a]        # 601030 <__stack_chk_fail@GLIBC_2.4>
  4005a6:	68 03 00 00 00       	push   0x3
  4005ab:	e9 b0 ff ff ff       	jmp    400560 <.plt>

00000000004005b0 <printf@plt>:
  4005b0:	ff 25 82 0a 20 00    	jmp    QWORD PTR [rip+0x200a82]        # 601038 <printf@GLIBC_2.2.5>
  4005b6:	68 04 00 00 00       	push   0x4
  4005bb:	e9 a0 ff ff ff       	jmp    400560 <.plt>

00000000004005c0 <fopen@plt>:
  4005c0:	ff 25 7a 0a 20 00    	jmp    QWORD PTR [rip+0x200a7a]        # 601040 <fopen@GLIBC_2.2.5>
  4005c6:	68 05 00 00 00       	push   0x5
  4005cb:	e9 90 ff ff ff       	jmp    400560 <.plt>

00000000004005d0 <sleep@plt>:
  4005d0:	ff 25 72 0a 20 00    	jmp    QWORD PTR [rip+0x200a72]        # 601048 <sleep@GLIBC_2.2.5>
  4005d6:	68 06 00 00 00       	push   0x6
  4005db:	e9 80 ff ff ff       	jmp    400560 <.plt>

Disassembly of section .text:

00000000004005e0 <_start>:
  4005e0:	31 ed                	xor    ebp,ebp
  4005e2:	49 89 d1             	mov    r9,rdx
  4005e5:	5e                   	pop    rsi
  4005e6:	48 89 e2             	mov    rdx,rsp
  4005e9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4005ed:	50                   	push   rax
  4005ee:	54                   	push   rsp
  4005ef:	49 c7 c0 90 09 40 00 	mov    r8,0x400990
  4005f6:	48 c7 c1 20 09 40 00 	mov    rcx,0x400920
  4005fd:	48 c7 c7 5d 07 40 00 	mov    rdi,0x40075d
  400604:	ff 15 e6 09 20 00    	call   QWORD PTR [rip+0x2009e6]        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40060a:	f4                   	hlt    
  40060b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000400610 <_dl_relocate_static_pie>:
  400610:	f3 c3                	repz ret 
  400612:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400619:	00 00 00 
  40061c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400620 <deregister_tm_clones>:
  400620:	55                   	push   rbp
  400621:	b8 60 10 60 00       	mov    eax,0x601060
  400626:	48 3d 60 10 60 00    	cmp    rax,0x601060
  40062c:	48 89 e5             	mov    rbp,rsp
  40062f:	74 17                	je     400648 <deregister_tm_clones+0x28>
  400631:	b8 00 00 00 00       	mov    eax,0x0
  400636:	48 85 c0             	test   rax,rax
  400639:	74 0d                	je     400648 <deregister_tm_clones+0x28>
  40063b:	5d                   	pop    rbp
  40063c:	bf 60 10 60 00       	mov    edi,0x601060
  400641:	ff e0                	jmp    rax
  400643:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400648:	5d                   	pop    rbp
  400649:	c3                   	ret    
  40064a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400650 <register_tm_clones>:
  400650:	be 60 10 60 00       	mov    esi,0x601060
  400655:	55                   	push   rbp
  400656:	48 81 ee 60 10 60 00 	sub    rsi,0x601060
  40065d:	48 89 e5             	mov    rbp,rsp
  400660:	48 c1 fe 03          	sar    rsi,0x3
  400664:	48 89 f0             	mov    rax,rsi
  400667:	48 c1 e8 3f          	shr    rax,0x3f
  40066b:	48 01 c6             	add    rsi,rax
  40066e:	48 d1 fe             	sar    rsi,1
  400671:	74 15                	je     400688 <register_tm_clones+0x38>
  400673:	b8 00 00 00 00       	mov    eax,0x0
  400678:	48 85 c0             	test   rax,rax
  40067b:	74 0b                	je     400688 <register_tm_clones+0x38>
  40067d:	5d                   	pop    rbp
  40067e:	bf 60 10 60 00       	mov    edi,0x601060
  400683:	ff e0                	jmp    rax
  400685:	0f 1f 00             	nop    DWORD PTR [rax]
  400688:	5d                   	pop    rbp
  400689:	c3                   	ret    
  40068a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400690 <__do_global_dtors_aux>:
  400690:	80 3d c9 09 20 00 00 	cmp    BYTE PTR [rip+0x2009c9],0x0        # 601060 <__TMC_END__>
  400697:	75 17                	jne    4006b0 <__do_global_dtors_aux+0x20>
  400699:	55                   	push   rbp
  40069a:	48 89 e5             	mov    rbp,rsp
  40069d:	e8 7e ff ff ff       	call   400620 <deregister_tm_clones>
  4006a2:	c6 05 b7 09 20 00 01 	mov    BYTE PTR [rip+0x2009b7],0x1        # 601060 <__TMC_END__>
  4006a9:	5d                   	pop    rbp
  4006aa:	c3                   	ret    
  4006ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4006b0:	f3 c3                	repz ret 
  4006b2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4006b6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4006bd:	00 00 00 

00000000004006c0 <frame_dummy>:
  4006c0:	55                   	push   rbp
  4006c1:	48 89 e5             	mov    rbp,rsp
  4006c4:	5d                   	pop    rbp
  4006c5:	eb 89                	jmp    400650 <register_tm_clones>

00000000004006c7 <__libdft_set_taint>:
#include "string.h"
#include <unistd.h>


extern "C" {
void __attribute__((noinline)) __libdft_set_taint(void *p, unsigned int v) {
  4006c7:	55                   	push   rbp
  4006c8:	48 89 e5             	mov    rbp,rsp
  4006cb:	48 83 ec 10          	sub    rsp,0x10
  4006cf:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4006d3:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  printf("set: %p, %d\n", p, v);
  4006d6:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
  4006d9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4006dd:	48 89 c6             	mov    rsi,rax
  4006e0:	48 8d 3d bd 02 00 00 	lea    rdi,[rip+0x2bd]        # 4009a4 <_IO_stdin_used+0x4>
  4006e7:	b8 00 00 00 00       	mov    eax,0x0
  4006ec:	e8 bf fe ff ff       	call   4005b0 <printf@plt>
}
  4006f1:	90                   	nop
  4006f2:	c9                   	leave  
  4006f3:	c3                   	ret    

00000000004006f4 <__libdft_get_taint>:

void __attribute__((noinline)) __libdft_get_taint(void *p) {
  4006f4:	55                   	push   rbp
  4006f5:	48 89 e5             	mov    rbp,rsp
  4006f8:	48 83 ec 10          	sub    rsp,0x10
  4006fc:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  printf("get: %p\n", p);
  400700:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400704:	48 89 c6             	mov    rsi,rax
  400707:	48 8d 3d a3 02 00 00 	lea    rdi,[rip+0x2a3]        # 4009b1 <_IO_stdin_used+0x11>
  40070e:	b8 00 00 00 00       	mov    eax,0x0
  400713:	e8 98 fe ff ff       	call   4005b0 <printf@plt>
}
  400718:	90                   	nop
  400719:	c9                   	leave  
  40071a:	c3                   	ret    

000000000040071b <__libdft_getval_taint>:

void __attribute__((noinline)) __libdft_getval_taint(uint64_t v) {
  40071b:	55                   	push   rbp
  40071c:	48 89 e5             	mov    rbp,rsp
  40071f:	48 83 ec 10          	sub    rsp,0x10
  400723:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  printf("getval: %lu\n", v);
  400727:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40072b:	48 89 c6             	mov    rsi,rax
  40072e:	48 8d 3d 85 02 00 00 	lea    rdi,[rip+0x285]        # 4009ba <_IO_stdin_used+0x1a>
  400735:	b8 00 00 00 00       	mov    eax,0x0
  40073a:	e8 71 fe ff ff       	call   4005b0 <printf@plt>
}
  40073f:	90                   	nop
  400740:	c9                   	leave  
  400741:	c3                   	ret    

0000000000400742 <_Z3foom>:
}

void __attribute__((noinline)) foo(uint64_t v) { __libdft_get_taint(&v); }
  400742:	55                   	push   rbp
  400743:	48 89 e5             	mov    rbp,rsp
  400746:	48 83 ec 10          	sub    rsp,0x10
  40074a:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  40074e:	48 8d 45 f8          	lea    rax,[rbp-0x8]
  400752:	48 89 c7             	mov    rdi,rax
  400755:	e8 9a ff ff ff       	call   4006f4 <__libdft_get_taint>
  40075a:	90                   	nop
  40075b:	c9                   	leave  
  40075c:	c3                   	ret    

000000000040075d <main>:

int main(int argc, char **argv) {
  40075d:	55                   	push   rbp
  40075e:	48 89 e5             	mov    rbp,rsp
  400761:	48 81 ec 50 01 00 00 	sub    rsp,0x150
  400768:	89 bd bc fe ff ff    	mov    DWORD PTR [rbp-0x144],edi
  40076e:	48 89 b5 b0 fe ff ff 	mov    QWORD PTR [rbp-0x150],rsi
  400775:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40077c:	00 00 
  40077e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400782:	31 c0                	xor    eax,eax
  if (argc < 2)
  400784:	83 bd bc fe ff ff 01 	cmp    DWORD PTR [rbp-0x144],0x1
  40078b:	7f 0a                	jg     400797 <main+0x3a>
    return 0;
  40078d:	b8 00 00 00 00       	mov    eax,0x0
  400792:	e9 6e 01 00 00       	jmp    400905 <main+0x1a8>

  FILE *fp;
  char buf[255];
  size_t ret;

  fp = fopen(argv[1], "rb");
  400797:	48 8b 85 b0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x150]
  40079e:	48 83 c0 08          	add    rax,0x8
  4007a2:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4007a5:	48 8d 35 1b 02 00 00 	lea    rsi,[rip+0x21b]        # 4009c7 <_IO_stdin_used+0x27>
  4007ac:	48 89 c7             	mov    rdi,rax
  4007af:	e8 0c fe ff ff       	call   4005c0 <fopen@plt>
  4007b4:	48 89 85 d8 fe ff ff 	mov    QWORD PTR [rbp-0x128],rax

  if (!fp) {
  4007bb:	48 83 bd d8 fe ff ff 	cmp    QWORD PTR [rbp-0x128],0x0
  4007c2:	00 
  4007c3:	75 16                	jne    4007db <main+0x7e>
    printf("st err\n");
  4007c5:	48 8d 3d fe 01 00 00 	lea    rdi,[rip+0x1fe]        # 4009ca <_IO_stdin_used+0x2a>
  4007cc:	e8 9f fd ff ff       	call   400570 <puts@plt>
    return 0;
  4007d1:	b8 00 00 00 00       	mov    eax,0x0
  4007d6:	e9 2a 01 00 00       	jmp    400905 <main+0x1a8>
  }
  int len = 20;
  4007db:	c7 85 cc fe ff ff 14 	mov    DWORD PTR [rbp-0x134],0x14
  4007e2:	00 00 00 
  printf("sleep...\n");
  4007e5:	48 8d 3d e5 01 00 00 	lea    rdi,[rip+0x1e5]        # 4009d1 <_IO_stdin_used+0x31>
  4007ec:	e8 7f fd ff ff       	call   400570 <puts@plt>
  sleep(20);
  4007f1:	bf 14 00 00 00       	mov    edi,0x14
  4007f6:	e8 d5 fd ff ff       	call   4005d0 <sleep@plt>
  // dfsan_read_label(&(len), sizeof *buf);
  ret = fread(buf, sizeof *buf, len, fp);
  4007fb:	8b 85 cc fe ff ff    	mov    eax,DWORD PTR [rbp-0x134]
  400801:	48 63 d0             	movsxd rdx,eax
  400804:	48 8b 8d d8 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x128]
  40080b:	48 8d 85 f0 fe ff ff 	lea    rax,[rbp-0x110]
  400812:	be 01 00 00 00       	mov    esi,0x1
  400817:	48 89 c7             	mov    rdi,rax
  40081a:	e8 61 fd ff ff       	call   400580 <fread@plt>
  40081f:	48 89 85 e0 fe ff ff 	mov    QWORD PTR [rbp-0x120],rax

  fclose(fp);
  400826:	48 8b 85 d8 fe ff ff 	mov    rax,QWORD PTR [rbp-0x128]
  40082d:	48 89 c7             	mov    rdi,rax
  400830:	e8 5b fd ff ff       	call   400590 <fclose@plt>
  // printf("len is :%d\n", len);
  if (ret < len) {
  400835:	8b 85 cc fe ff ff    	mov    eax,DWORD PTR [rbp-0x134]
  40083b:	48 98                	cdqe   
  40083d:	48 39 85 e0 fe ff ff 	cmp    QWORD PTR [rbp-0x120],rax
  400844:	73 0a                	jae    400850 <main+0xf3>
    // printf("input fail \n");
    return 0;
  400846:	b8 00 00 00 00       	mov    eax,0x0
  40084b:	e9 b5 00 00 00       	jmp    400905 <main+0x1a8>
  }

  uint64_t m = 0;
  400850:	48 c7 85 d0 fe ff ff 	mov    QWORD PTR [rbp-0x130],0x0
  400857:	00 00 00 00 
  __libdft_set_taint(&m, 8);
  40085b:	48 8d 85 d0 fe ff ff 	lea    rax,[rbp-0x130]
  400862:	be 08 00 00 00       	mov    esi,0x8
  400867:	48 89 c7             	mov    rdi,rax
  40086a:	e8 58 fe ff ff       	call   4006c7 <__libdft_set_taint>
  __libdft_get_taint(&m);
  40086f:	48 8d 85 d0 fe ff ff 	lea    rax,[rbp-0x130]
  400876:	48 89 c7             	mov    rdi,rax
  400879:	e8 76 fe ff ff       	call   4006f4 <__libdft_get_taint>
  __libdft_getval_taint(m);
  40087e:	48 8b 85 d0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x130]
  400885:	48 89 c7             	mov    rdi,rax
  400888:	e8 8e fe ff ff       	call   40071b <__libdft_getval_taint>

  uint16_t x = 0;
  40088d:	66 c7 85 ca fe ff ff 	mov    WORD PTR [rbp-0x136],0x0
  400894:	00 00 
  __libdft_get_taint(&x);
  400896:	48 8d 85 ca fe ff ff 	lea    rax,[rbp-0x136]
  40089d:	48 89 c7             	mov    rdi,rax
  4008a0:	e8 4f fe ff ff       	call   4006f4 <__libdft_get_taint>
  memcpy(&x, buf + 5, 2); // x 1 - 2
  4008a5:	48 8d 85 f0 fe ff ff 	lea    rax,[rbp-0x110]
  4008ac:	48 83 c0 05          	add    rax,0x5
  4008b0:	0f b7 00             	movzx  eax,WORD PTR [rax]
  4008b3:	66 89 85 ca fe ff ff 	mov    WORD PTR [rbp-0x136],ax
  __libdft_get_taint(&x);
  4008ba:	48 8d 85 ca fe ff ff 	lea    rax,[rbp-0x136]
  4008c1:	48 89 c7             	mov    rdi,rax
  4008c4:	e8 2b fe ff ff       	call   4006f4 <__libdft_get_taint>
  __libdft_getval_taint(x);
  4008c9:	0f b7 85 ca fe ff ff 	movzx  eax,WORD PTR [rbp-0x136]
  4008d0:	0f b7 c0             	movzx  eax,ax
  4008d3:	48 89 c7             	mov    rdi,rax
  4008d6:	e8 40 fe ff ff       	call   40071b <__libdft_getval_taint>

  uint64_t y = x + 2;
  4008db:	0f b7 85 ca fe ff ff 	movzx  eax,WORD PTR [rbp-0x136]
  4008e2:	0f b7 c0             	movzx  eax,ax
  4008e5:	83 c0 02             	add    eax,0x2
  4008e8:	48 98                	cdqe   
  4008ea:	48 89 85 e8 fe ff ff 	mov    QWORD PTR [rbp-0x118],rax
  __libdft_getval_taint(y);
  4008f1:	48 8b 85 e8 fe ff ff 	mov    rax,QWORD PTR [rbp-0x118]
  4008f8:	48 89 c7             	mov    rdi,rax
  4008fb:	e8 1b fe ff ff       	call   40071b <__libdft_getval_taint>

  return 0;
  400900:	b8 00 00 00 00       	mov    eax,0x0
  400905:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  400909:	64 48 33 14 25 28 00 	xor    rdx,QWORD PTR fs:0x28
  400910:	00 00 
  400912:	74 05                	je     400919 <main+0x1bc>
  400914:	e8 87 fc ff ff       	call   4005a0 <__stack_chk_fail@plt>
  400919:	c9                   	leave  
  40091a:	c3                   	ret    
  40091b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000400920 <__libc_csu_init>:
  400920:	41 57                	push   r15
  400922:	41 56                	push   r14
  400924:	49 89 d7             	mov    r15,rdx
  400927:	41 55                	push   r13
  400929:	41 54                	push   r12
  40092b:	4c 8d 25 de 04 20 00 	lea    r12,[rip+0x2004de]        # 600e10 <__frame_dummy_init_array_entry>
  400932:	55                   	push   rbp
  400933:	48 8d 2d de 04 20 00 	lea    rbp,[rip+0x2004de]        # 600e18 <__init_array_end>
  40093a:	53                   	push   rbx
  40093b:	41 89 fd             	mov    r13d,edi
  40093e:	49 89 f6             	mov    r14,rsi
  400941:	4c 29 e5             	sub    rbp,r12
  400944:	48 83 ec 08          	sub    rsp,0x8
  400948:	48 c1 fd 03          	sar    rbp,0x3
  40094c:	e8 ef fb ff ff       	call   400540 <_init>
  400951:	48 85 ed             	test   rbp,rbp
  400954:	74 20                	je     400976 <__libc_csu_init+0x56>
  400956:	31 db                	xor    ebx,ebx
  400958:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40095f:	00 
  400960:	4c 89 fa             	mov    rdx,r15
  400963:	4c 89 f6             	mov    rsi,r14
  400966:	44 89 ef             	mov    edi,r13d
  400969:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40096d:	48 83 c3 01          	add    rbx,0x1
  400971:	48 39 dd             	cmp    rbp,rbx
  400974:	75 ea                	jne    400960 <__libc_csu_init+0x40>
  400976:	48 83 c4 08          	add    rsp,0x8
  40097a:	5b                   	pop    rbx
  40097b:	5d                   	pop    rbp
  40097c:	41 5c                	pop    r12
  40097e:	41 5d                	pop    r13
  400980:	41 5e                	pop    r14
  400982:	41 5f                	pop    r15
  400984:	c3                   	ret    
  400985:	90                   	nop
  400986:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40098d:	00 00 00 

0000000000400990 <__libc_csu_fini>:
  400990:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400994 <_fini>:
  400994:	48 83 ec 08          	sub    rsp,0x8
  400998:	48 83 c4 08          	add    rsp,0x8
  40099c:	c3                   	ret    
