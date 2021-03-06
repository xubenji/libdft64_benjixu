/*
 * Copyright 2002-2020 Intel Corporation.
 * 
 * This software and the related documents are Intel copyrighted materials, and your
 * use of them is governed by the express license under which they were provided to
 * you ("License"). Unless the License provides otherwise, you may not use, modify,
 * copy, publish, distribute, disclose or transmit this software or the related
 * documents without Intel's prior written permission.
 * 
 * This software and the related documents are provided as is, with no express or
 * implied warranties, other than those that are expressly stated in the License.
 */

// <COMPONENT>: os-apis
// <FILE-TYPE>: component public header

#ifndef OS_APIS_UINUX_BARESYSCALL_H__
#define OS_APIS_UINUX_BARESYSCALL_H__

#ifdef __cplusplus
extern "C"
{
#endif

    /*!
 * @return  TRUE if the last system call returned a "success" return.
 *           FALSE if the last system call returned an "error" return.
 */
    BOOL_T OS_SyscallIsSuccess(OS_SYSCALLRETURN ret);

    /*!
 * @return  The last system call's return value.  If IsSuccess() is FALSE,
 *           this is an O/S dependent error code.
 */
    ADDRINT OS_SyscallReturnValue(OS_SYSCALLRETURN ret);

    /*!
 * @return  The last system call's success return value. (not depend on IsSucess)
 */
    ADDRINT OS_SyscallReturnSucessValue(OS_SYSCALLRETURN ret);

    /*!
 * @return  The last system call's error return value. (not depend on IsSucess)
 */
    ADDRINT OS_SyscallReturnErrorValue(OS_SYSCALLRETURN ret);

    /*!
 * @return  The PC (program counter) that is reported by the OS for a thread
 *          that performs a blocking system call in OS-APIs.
 *          The return address is also the PC of the thread after it returns
 *          from the system call (for both failure and success scenarios).
 */
    void* OS_GetSyscallReturnPC(ADDRINT sysno);

#ifdef __cplusplus
}
#endif

#endif // file guard
