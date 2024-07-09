//
// (c) Meta Platforms, Inc. and affiliates. Confidential and proprietary.
// NOTICE OF CONFIDENTIAL AND PROPRIETARY INFORMATION & TECHNOLOGY:
// The information and technology contained herein (including the accompanying
// binary code) is the confidential information of Meta Platforms, Inc. and its
// affiliates (collectively, "Meta"). It is protected by applicable copyright
// and trade secret law, and may be claimed in one or more U.S. or foreign
// patents or pending patent applications. Meta retains all right, title and
// interest (including all intellectual property rights) in such information 
// and technology, and no licenses are hereby granted by Meta. Unauthorized
// use, reproduction, or dissemination is a violation of Meta's rights and
// is strictly prohibited.
//
// @generated
//
// soccomp Version 10.3.0 (2ed27f84a)
// (c) Meta Platforms, Inc. and affiliates. Confidential and proprietary.
// Started soccomp on: Tue Dec 13 16:10:19 2022
// SONICS_PATH = :/nfs/project/ipgen/src/valerioc/fbrepo/common/build_root/install/studio/../extensions/include
// PYTHONPATH = PythonPathUnset
// /nfs/regress_03_ash/sonics/nightly/sonics-no-sysc-py3-daily-20221213_140241/install/studio-10.3/sonics_code/soccomp.py --relative --uvm_test --designdir ./smp --instance xrbase --post_process /nfs/project/ipgen/src/valerioc/fbrepo/common/src/neev/ipBuilder/neev/ipBuilder/GenerateIPDefs.py{"levels":"1|tile"} xrbase_alfred_smp.conf
// @generated
//
// Design Name: top
// SW Interface: ocp2 (ocp2), 32 bits
//
#ifndef _TOP_XRBASE_SMUTEX0_CSR_H
#define _TOP_XRBASE_SMUTEX0_CSR_H

#include <stdint.h>

//
// Register Directives
//


// Group owner registers
#define TOP_XRBASE_SMUTEX0_OWNER_READMASK 0x3f
#define TOP_XRBASE_SMUTEX0_OWNER_WRITEMASK 0x0
#define TOP_XRBASE_SMUTEX0_OWNER_VOLATILEMASK 0x3f
#define TOP_XRBASE_SMUTEX0_OWNER_RESETMASK 0x3f
#define TOP_XRBASE_SMUTEX0_OWNER_RESETVALUE 0x0
#define TOP_XRBASE_SMUTEX0_OWNER_SIZE 0x4
#define TOP_XRBASE_SMUTEX0_OWNER0_OFFSET 0x0
#define TOP_XRBASE_SMUTEX0_OWNER1_OFFSET 0x4
#define TOP_XRBASE_SMUTEX0_OWNER2_OFFSET 0x8
#define TOP_XRBASE_SMUTEX0_OWNER3_OFFSET 0xc
#define TOP_XRBASE_SMUTEX0_OWNER4_OFFSET 0x10
#define TOP_XRBASE_SMUTEX0_OWNER5_OFFSET 0x14
#define TOP_XRBASE_SMUTEX0_OWNER6_OFFSET 0x18
#define TOP_XRBASE_SMUTEX0_OWNER7_OFFSET 0x1c

// Ungrouped registers
#define TOP_XRBASE_SMUTEX0_IPC_SC_READMASK 0x3f
#define TOP_XRBASE_SMUTEX0_IPC_SC_WRITEMASK 0x3f
#define TOP_XRBASE_SMUTEX0_IPC_SC_VOLATILEMASK 0x0
#define TOP_XRBASE_SMUTEX0_IPC_SC_RESETMASK 0x3f
#define TOP_XRBASE_SMUTEX0_IPC_SC_RESETVALUE 0x0
#define TOP_XRBASE_SMUTEX0_IPC_SC_SIZE 0x4
#define TOP_XRBASE_SMUTEX0_IPC_SC_OFFSET 0x80
#define TOP_XRBASE_SMUTEX0_TIMEOUT_READMASK 0x3ff
#define TOP_XRBASE_SMUTEX0_TIMEOUT_WRITEMASK 0x3ff
#define TOP_XRBASE_SMUTEX0_TIMEOUT_VOLATILEMASK 0x0
#define TOP_XRBASE_SMUTEX0_TIMEOUT_RESETMASK 0x3ff
#define TOP_XRBASE_SMUTEX0_TIMEOUT_RESETVALUE 0x0
#define TOP_XRBASE_SMUTEX0_TIMEOUT_SIZE 0x4
#define TOP_XRBASE_SMUTEX0_TIMEOUT_OFFSET 0xec

// Group error registers
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_READMASK 0x80003f17
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_WRITEMASK 0x7
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_VOLATILEMASK 0x80003f17
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_RESETMASK 0x80003f17
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_RESETVALUE 0x0
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_SIZE 0x4
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_OFFSET 0xf0
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_DATA_READMASK 0xffffffff
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_DATA_WRITEMASK 0x0
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_DATA_VOLATILEMASK 0xffffffff
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_DATA_RESETMASK 0xffffffff
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_DATA_RESETVALUE 0x0
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_DATA_SIZE 0x4
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_DATA_OFFSET 0xf4
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_IDX_READMASK 0x1f
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_IDX_WRITEMASK 0x0
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_IDX_VOLATILEMASK 0x1f
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_IDX_RESETMASK 0x1f
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_IDX_RESETVALUE 0x0
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_IDX_SIZE 0x4
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_IDX_OFFSET 0xf8

//
// Register Field Directives
//
#define TOP_XRBASE_SMUTEX0_OWNER_ID_SHIFT 0
#define TOP_XRBASE_SMUTEX0_OWNER_ID_MASK 0x3f
#define TOP_XRBASE_SMUTEX0_IPC_SC_ID_SHIFT 0
#define TOP_XRBASE_SMUTEX0_IPC_SC_ID_MASK 0x3f
#define TOP_XRBASE_SMUTEX0_TIMEOUT_COMPARE_SHIFT 0
#define TOP_XRBASE_SMUTEX0_TIMEOUT_COMPARE_MASK 0xff
#define TOP_XRBASE_SMUTEX0_TIMEOUT_PRESCALE_SHIFT 8
#define TOP_XRBASE_SMUTEX0_TIMEOUT_PRESCALE_MASK 0x300
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_CODE_SHIFT 0
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_CODE_MASK 0x7
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_ACCESS_SHIFT 4
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_ACCESS_MASK 0x10
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_ID_SHIFT 8
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_ID_MASK 0x3f00
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_MULTI_SHIFT 31
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_MULTI_MASK 0x80000000
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_DATA_DATA_SHIFT 0
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_DATA_DATA_MASK 0xffffffff
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_IDX_MUTEX_IDX_SHIFT 0
#define TOP_XRBASE_SMUTEX0_ERROR_ERR_IDX_MUTEX_IDX_MASK 0x1f

//
// Enums
//


typedef enum {
    // No error detected
    TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_CODE_ERROR_NONE = 0,
    // Error caused by data value
    TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_CODE_ERROR_DATA = 1,
    // Overflow of information
    TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_CODE_ERROR_OVERFLOW = 2,
    // Underflow of information
    TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_CODE_ERROR_UNDERFLOW = 3,
    // Error caused by a timeout
    TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_CODE_ERROR_TIMEOUT = 6,
    // Error caused by lack of access permission
    TOP_XRBASE_SMUTEX0_ERROR_ERR_LOG_CODE_ERROR_PERM = 7,
} top_xrbase_smutex0_error_err_log_code_e;

//
// Register Typedefs
//


// top_xrbase_smutex0_owner: 32 : Mutex owner role ID
typedef union {
    struct {
        uint32_t id : 6;  // 5:0 SW=RO HW=RW STD 0x0
        uint32_t fill_0 : 26;
    } f;
    uint32_t w;
} top_xrbase_smutex0_owner;

// top_xrbase_smutex0_ipc_sc: 32 : Mutex security processor ID
typedef union {
    struct {
        uint32_t id : 6;  // 5:0 SW=RW HW=RO STD 0x0
        uint32_t fill_0 : 26;
    } f;
    uint32_t w;
} top_xrbase_smutex0_ipc_sc;

// top_xrbase_smutex0_timeout: 32 : Mutex timeout register
typedef union {
    struct {
        uint32_t compare : 8;  // 7:0 SW=RW HW=RO STD 0x0
        uint32_t prescale : 2;  // 9:8 SW=RW HW=RO STD 0x0
        uint32_t fill_0 : 22;
    } f;
    uint32_t w;
} top_xrbase_smutex0_timeout;

// top_xrbase_smutex0_error_err_log: 32 : Error logging register
typedef union {
    struct {
        uint32_t code : 3;  // 2:0 SW=WC HW=RW STD 0x0
        uint32_t fill_0 : 1;
        uint32_t access : 1;  // 4:4 SW=RO HW=RW STD 0x0
        uint32_t fill_1 : 3;
        uint32_t id : 6;  // 13:8 SW=RO HW=RW STD 0x0
        uint32_t fill_2 : 17;
        uint32_t multi : 1;  // 31:31 SW=RO HW=RW STD 0x0
    } f;
    uint32_t w;
} top_xrbase_smutex0_error_err_log;

// top_xrbase_smutex0_error_err_data: 32 : Error data logging register
typedef union {
    struct {
        uint32_t data : 32;  // 31:0 SW=RO HW=RW STD 0x0
    } f;
    uint32_t w;
} top_xrbase_smutex0_error_err_data;

// top_xrbase_smutex0_error_err_idx: 32 : Error index logging register
typedef union {
    struct {
        uint32_t mutex_idx : 5;  // 4:0 SW=RO HW=RW STD 0x0
        uint32_t fill_0 : 27;
    } f;
    uint32_t w;
} top_xrbase_smutex0_error_err_idx;

//
// Register Group Typedefs
//


// top_xrbase_smutex0_error: 0xf0 : Mutex error register group
typedef union {
    struct {
        top_xrbase_smutex0_error_err_log err_log;
        top_xrbase_smutex0_error_err_data err_data;
        top_xrbase_smutex0_error_err_idx err_idx;
    } g;
    uint8_t filler[0xc];
} top_xrbase_smutex0_error;

#endif /* _TOP_XRBASE_SMUTEX0_CSR_H */
