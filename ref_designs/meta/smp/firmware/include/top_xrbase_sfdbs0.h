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
#ifndef _TOP_XRBASE_SFDBS0_CSR_H
#define _TOP_XRBASE_SFDBS0_CSR_H

#include <stdint.h>

//
// Register Directives
//


// Group sfdb0 registers
#define TOP_XRBASE_SFDBS0_SFDB0_SRC_READMASK 0x7003f
#define TOP_XRBASE_SFDBS0_SFDB0_SRC_WRITEMASK 0x7003f
#define TOP_XRBASE_SFDBS0_SFDB0_SRC_VOLATILEMASK 0x0
#define TOP_XRBASE_SFDBS0_SFDB0_SRC_RESETMASK 0x7003f
#define TOP_XRBASE_SFDBS0_SFDB0_SRC_RESETVALUE 0x20000
#define TOP_XRBASE_SFDBS0_SFDB0_SRC_SIZE 0x4
#define TOP_XRBASE_SFDBS0_SFDB0_SRC0_OFFSET 0x0
#define TOP_XRBASE_SFDBS0_SFDB0_SRC1_OFFSET 0x4
#define TOP_XRBASE_SFDBS0_SFDB0_SRC2_OFFSET 0x8
#define TOP_XRBASE_SFDBS0_SFDB0_SRC3_OFFSET 0xc
#define TOP_XRBASE_SFDBS0_SFDB0_SRC4_OFFSET 0x10
#define TOP_XRBASE_SFDBS0_SFDB0_SRC5_OFFSET 0x14
#define TOP_XRBASE_SFDBS0_SFDB0_SRC6_OFFSET 0x18
#define TOP_XRBASE_SFDBS0_SFDB0_SRC7_OFFSET 0x1c
#define TOP_XRBASE_SFDBS0_SFDB0_SRC8_OFFSET 0x20
#define TOP_XRBASE_SFDBS0_SFDB0_SRC9_OFFSET 0x24
#define TOP_XRBASE_SFDBS0_SFDB0_SRC10_OFFSET 0x28
#define TOP_XRBASE_SFDBS0_SFDB0_SRC11_OFFSET 0x2c
#define TOP_XRBASE_SFDBS0_SFDB0_SRC12_OFFSET 0x30
#define TOP_XRBASE_SFDBS0_SFDB0_SRC13_OFFSET 0x34
#define TOP_XRBASE_SFDBS0_SFDB0_SRC14_OFFSET 0x38
#define TOP_XRBASE_SFDBS0_SFDB0_SRC15_OFFSET 0x3c
#define TOP_XRBASE_SFDBS0_SFDB0_TGT_READMASK 0x3f
#define TOP_XRBASE_SFDBS0_SFDB0_TGT_WRITEMASK 0x3f
#define TOP_XRBASE_SFDBS0_SFDB0_TGT_VOLATILEMASK 0x0
#define TOP_XRBASE_SFDBS0_SFDB0_TGT_RESETMASK 0x3f
#define TOP_XRBASE_SFDBS0_SFDB0_TGT_RESETVALUE 0x0
#define TOP_XRBASE_SFDBS0_SFDB0_TGT_SIZE 0x4
#define TOP_XRBASE_SFDBS0_SFDB0_TGT_OFFSET 0x7c

// Ungrouped registers
#define TOP_XRBASE_SFDBS0_IPC_SC_READMASK 0x3f
#define TOP_XRBASE_SFDBS0_IPC_SC_WRITEMASK 0x3f
#define TOP_XRBASE_SFDBS0_IPC_SC_VOLATILEMASK 0x0
#define TOP_XRBASE_SFDBS0_IPC_SC_RESETMASK 0x3f
#define TOP_XRBASE_SFDBS0_IPC_SC_RESETVALUE 0x0
#define TOP_XRBASE_SFDBS0_IPC_SC_SIZE 0x4
#define TOP_XRBASE_SFDBS0_IPC_SC_OFFSET 0x80

// Group error registers
#define TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_READMASK 0x80003f17
#define TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_WRITEMASK 0x7
#define TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_VOLATILEMASK 0x80003f17
#define TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_RESETMASK 0x80003f17
#define TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_RESETVALUE 0x0
#define TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_SIZE 0x4
#define TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_OFFSET 0xf0
#define TOP_XRBASE_SFDBS0_ERROR_ERR_DATA_READMASK 0xffffffff
#define TOP_XRBASE_SFDBS0_ERROR_ERR_DATA_WRITEMASK 0x0
#define TOP_XRBASE_SFDBS0_ERROR_ERR_DATA_VOLATILEMASK 0xffffffff
#define TOP_XRBASE_SFDBS0_ERROR_ERR_DATA_RESETMASK 0xffffffff
#define TOP_XRBASE_SFDBS0_ERROR_ERR_DATA_RESETVALUE 0x0
#define TOP_XRBASE_SFDBS0_ERROR_ERR_DATA_SIZE 0x4
#define TOP_XRBASE_SFDBS0_ERROR_ERR_DATA_OFFSET 0xf4
#define TOP_XRBASE_SFDBS0_ERROR_ERR_IDX_READMASK 0x1ff
#define TOP_XRBASE_SFDBS0_ERROR_ERR_IDX_WRITEMASK 0x0
#define TOP_XRBASE_SFDBS0_ERROR_ERR_IDX_VOLATILEMASK 0x1ff
#define TOP_XRBASE_SFDBS0_ERROR_ERR_IDX_RESETMASK 0x1ff
#define TOP_XRBASE_SFDBS0_ERROR_ERR_IDX_RESETVALUE 0x0
#define TOP_XRBASE_SFDBS0_ERROR_ERR_IDX_SIZE 0x4
#define TOP_XRBASE_SFDBS0_ERROR_ERR_IDX_OFFSET 0xf8

// Group sfdb1 registers
#define TOP_XRBASE_SFDBS0_SFDB1_SRC_READMASK 0x7003f
#define TOP_XRBASE_SFDBS0_SFDB1_SRC_WRITEMASK 0x7003f
#define TOP_XRBASE_SFDBS0_SFDB1_SRC_VOLATILEMASK 0x0
#define TOP_XRBASE_SFDBS0_SFDB1_SRC_RESETMASK 0x7003f
#define TOP_XRBASE_SFDBS0_SFDB1_SRC_RESETVALUE 0x20000
#define TOP_XRBASE_SFDBS0_SFDB1_SRC_SIZE 0x4
#define TOP_XRBASE_SFDBS0_SFDB1_SRC0_OFFSET 0x100
#define TOP_XRBASE_SFDBS0_SFDB1_SRC1_OFFSET 0x104
#define TOP_XRBASE_SFDBS0_SFDB1_SRC2_OFFSET 0x108
#define TOP_XRBASE_SFDBS0_SFDB1_SRC3_OFFSET 0x10c
#define TOP_XRBASE_SFDBS0_SFDB1_SRC4_OFFSET 0x110
#define TOP_XRBASE_SFDBS0_SFDB1_SRC5_OFFSET 0x114
#define TOP_XRBASE_SFDBS0_SFDB1_SRC6_OFFSET 0x118
#define TOP_XRBASE_SFDBS0_SFDB1_SRC7_OFFSET 0x11c
#define TOP_XRBASE_SFDBS0_SFDB1_SRC8_OFFSET 0x120
#define TOP_XRBASE_SFDBS0_SFDB1_SRC9_OFFSET 0x124
#define TOP_XRBASE_SFDBS0_SFDB1_SRC10_OFFSET 0x128
#define TOP_XRBASE_SFDBS0_SFDB1_SRC11_OFFSET 0x12c
#define TOP_XRBASE_SFDBS0_SFDB1_SRC12_OFFSET 0x130
#define TOP_XRBASE_SFDBS0_SFDB1_SRC13_OFFSET 0x134
#define TOP_XRBASE_SFDBS0_SFDB1_SRC14_OFFSET 0x138
#define TOP_XRBASE_SFDBS0_SFDB1_SRC15_OFFSET 0x13c
#define TOP_XRBASE_SFDBS0_SFDB1_TGT_READMASK 0x3f
#define TOP_XRBASE_SFDBS0_SFDB1_TGT_WRITEMASK 0x3f
#define TOP_XRBASE_SFDBS0_SFDB1_TGT_VOLATILEMASK 0x0
#define TOP_XRBASE_SFDBS0_SFDB1_TGT_RESETMASK 0x3f
#define TOP_XRBASE_SFDBS0_SFDB1_TGT_RESETVALUE 0x0
#define TOP_XRBASE_SFDBS0_SFDB1_TGT_SIZE 0x4
#define TOP_XRBASE_SFDBS0_SFDB1_TGT_OFFSET 0x17c

//
// Register Field Directives
//
#define TOP_XRBASE_SFDBS0_SFDB0_SRC_ID_SHIFT 0
#define TOP_XRBASE_SFDBS0_SFDB0_SRC_ID_MASK 0x3f
#define TOP_XRBASE_SFDBS0_SFDB0_SRC_SIZE_SHIFT 16
#define TOP_XRBASE_SFDBS0_SFDB0_SRC_SIZE_MASK 0x70000
#define TOP_XRBASE_SFDBS0_SFDB0_TGT_ID_SHIFT 0
#define TOP_XRBASE_SFDBS0_SFDB0_TGT_ID_MASK 0x3f
#define TOP_XRBASE_SFDBS0_IPC_SC_ID_SHIFT 0
#define TOP_XRBASE_SFDBS0_IPC_SC_ID_MASK 0x3f
#define TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_CODE_SHIFT 0
#define TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_CODE_MASK 0x7
#define TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_ACCESS_SHIFT 4
#define TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_ACCESS_MASK 0x10
#define TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_ID_SHIFT 8
#define TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_ID_MASK 0x3f00
#define TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_MULTI_SHIFT 31
#define TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_MULTI_MASK 0x80000000
#define TOP_XRBASE_SFDBS0_ERROR_ERR_DATA_DATA_SHIFT 0
#define TOP_XRBASE_SFDBS0_ERROR_ERR_DATA_DATA_MASK 0xffffffff
#define TOP_XRBASE_SFDBS0_ERROR_ERR_IDX_SLICE_IDX_SHIFT 0
#define TOP_XRBASE_SFDBS0_ERROR_ERR_IDX_SLICE_IDX_MASK 0x1f
#define TOP_XRBASE_SFDBS0_ERROR_ERR_IDX_GROUP_IDX_SHIFT 5
#define TOP_XRBASE_SFDBS0_ERROR_ERR_IDX_GROUP_IDX_MASK 0x1e0
#define TOP_XRBASE_SFDBS0_SFDB1_SRC_ID_SHIFT 0
#define TOP_XRBASE_SFDBS0_SFDB1_SRC_ID_MASK 0x3f
#define TOP_XRBASE_SFDBS0_SFDB1_SRC_SIZE_SHIFT 16
#define TOP_XRBASE_SFDBS0_SFDB1_SRC_SIZE_MASK 0x70000
#define TOP_XRBASE_SFDBS0_SFDB1_TGT_ID_SHIFT 0
#define TOP_XRBASE_SFDBS0_SFDB1_TGT_ID_MASK 0x3f

//
// Enums
//


typedef enum {
    // No error detected
    TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_CODE_ERROR_NONE = 0,
    // Error caused by data value
    TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_CODE_ERROR_DATA = 1,
    // Overflow of information
    TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_CODE_ERROR_OVERFLOW = 2,
    // Underflow of information
    TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_CODE_ERROR_UNDERFLOW = 3,
    // Error caused by a timeout
    TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_CODE_ERROR_TIMEOUT = 6,
    // Error caused by lack of access permission
    TOP_XRBASE_SFDBS0_ERROR_ERR_LOG_CODE_ERROR_PERM = 7,
} top_xrbase_sfdbs0_error_err_log_code_e;

//
// Register Typedefs
//


// top_xrbase_sfdbs0_sfdb0_src: 32 : Doorbell source secure register
typedef union {
    struct {
        uint32_t id : 6;  // 5:0 SW=RW HW=RO STD 0x0
        uint32_t fill_0 : 10;
        uint32_t size : 3;  // 18:16 SW=RW HW=RO STD 0x2
        uint32_t fill_1 : 13;
    } f;
    uint32_t w;
} top_xrbase_sfdbs0_sfdb0_src;

// top_xrbase_sfdbs0_sfdb0_tgt: 32 : Doorbell target secure register
typedef union {
    struct {
        uint32_t id : 6;  // 5:0 SW=RW HW=RO STD 0x0
        uint32_t fill_0 : 26;
    } f;
    uint32_t w;
} top_xrbase_sfdbs0_sfdb0_tgt;

// top_xrbase_sfdbs0_ipc_sc: 32 : Doorbell security processor ID
typedef union {
    struct {
        uint32_t id : 6;  // 5:0 SW=RW HW=RO STD 0x0
        uint32_t fill_0 : 26;
    } f;
    uint32_t w;
} top_xrbase_sfdbs0_ipc_sc;

// top_xrbase_sfdbs0_error_err_log: 32 : Error logging register
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
} top_xrbase_sfdbs0_error_err_log;

// top_xrbase_sfdbs0_error_err_data: 32 : Error data logging register
typedef union {
    struct {
        uint32_t data : 32;  // 31:0 SW=RO HW=RW STD 0x0
    } f;
    uint32_t w;
} top_xrbase_sfdbs0_error_err_data;

// top_xrbase_sfdbs0_error_err_idx: 32 : Error index logging register
typedef union {
    struct {
        uint32_t slice_idx : 5;  // 4:0 SW=RO HW=RW STD 0x0
        uint32_t group_idx : 4;  // 8:5 SW=RO HW=RW STD 0x0
        uint32_t fill_0 : 23;
    } f;
    uint32_t w;
} top_xrbase_sfdbs0_error_err_idx;

// top_xrbase_sfdbs0_sfdb1_src: 32 : Doorbell source secure register
typedef union {
    struct {
        uint32_t id : 6;  // 5:0 SW=RW HW=RO STD 0x0
        uint32_t fill_0 : 10;
        uint32_t size : 3;  // 18:16 SW=RW HW=RO STD 0x2
        uint32_t fill_1 : 13;
    } f;
    uint32_t w;
} top_xrbase_sfdbs0_sfdb1_src;

// top_xrbase_sfdbs0_sfdb1_tgt: 32 : Doorbell target secure register
typedef union {
    struct {
        uint32_t id : 6;  // 5:0 SW=RW HW=RO STD 0x0
        uint32_t fill_0 : 26;
    } f;
    uint32_t w;
} top_xrbase_sfdbs0_sfdb1_tgt;

//
// Register Group Typedefs
//


// top_xrbase_sfdbs0_sfdb0: 0x0 : Doorbell 0 source IDs
typedef union {
    struct {
        top_xrbase_sfdbs0_sfdb0_src src[16];
        uint8_t fill_0[0x3c];
        top_xrbase_sfdbs0_sfdb0_tgt tgt;
    } g;
    uint8_t filler[0x80];
} top_xrbase_sfdbs0_sfdb0;

// top_xrbase_sfdbs0_sfdb1: 0x100 : Doorbell 1 source IDs
typedef union {
    struct {
        top_xrbase_sfdbs0_sfdb1_src src[16];
        uint8_t fill_0[0x3c];
        top_xrbase_sfdbs0_sfdb1_tgt tgt;
    } g;
    uint8_t filler[0x80];
} top_xrbase_sfdbs0_sfdb1;

// top_xrbase_sfdbs0_error: 0xf0 : Doorbell error register group
typedef union {
    struct {
        top_xrbase_sfdbs0_error_err_log err_log;
        top_xrbase_sfdbs0_error_err_data err_data;
        top_xrbase_sfdbs0_error_err_idx err_idx;
    } g;
    uint8_t filler[0xc];
} top_xrbase_sfdbs0_error;

#endif /* _TOP_XRBASE_SFDBS0_CSR_H */
