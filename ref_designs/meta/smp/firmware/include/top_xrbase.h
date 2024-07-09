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
#ifndef _TOP_XRBASE_CSR_H
#define _TOP_XRBASE_CSR_H

#include "top_xrbase_sfdbs0.h"
#include "top_xrbase_fdbs0.h"
#include "top_xrbase_smutex0.h"
#include "top_xrbase_mutex0.h"
#include "top_xrbase_web0.h"
#include "top_xrbase_web1.h"

//
// Register Block Directives
//

#define TOP_XRBASE_SFDBS0_OFFSET 0x0
#define TOP_XRBASE_SFDBS0_SIZE 0x200
#define TOP_XRBASE_FDBS0_OFFSET 0x2000
#define TOP_XRBASE_FDBS0_SIZE 0x400
#define TOP_XRBASE_SMUTEX0_OFFSET 0x3000
#define TOP_XRBASE_SMUTEX0_SIZE 0x1000
#define TOP_XRBASE_MUTEX0_OFFSET 0x4000
#define TOP_XRBASE_MUTEX0_SIZE 0x1000
#define TOP_XRBASE_WEB0_OFFSET 0x5000
#define TOP_XRBASE_WEB0_SIZE 0x80
#define TOP_XRBASE_WEB1_OFFSET 0x6000
#define TOP_XRBASE_WEB1_SIZE 0x80

//
// Register Block Typedefs
//

// top_xrbase_sfdbs0: 0x0 : sfdbs0 block
typedef struct {
    union {
        top_xrbase_sfdbs0_sfdb0 s;
        uint8_t filler[0x80];
    } sfdb0[0x1];
    top_xrbase_sfdbs0_ipc_sc ipc_sc;
    uint8_t fill_0[0x6c];
    union {
        top_xrbase_sfdbs0_error s;
        uint8_t filler[0xc];
    } error[0x1];
    uint8_t fill_1[0x4];
    union {
        top_xrbase_sfdbs0_sfdb1 s;
        uint8_t filler[0x80];
    } sfdb1[0x1];
} top_xrbase_sfdbs0_s;

// top_xrbase_fdbs0: 0x2000 : fdbs0 block
typedef struct {
    union {
        top_xrbase_fdbs0_fdb0 s;
        uint8_t filler[0x200];
    } fdb0[0x1];
    union {
        top_xrbase_fdbs0_fdb1 s;
        uint8_t filler[0x200];
    } fdb1[0x1];
} top_xrbase_fdbs0_s;

// top_xrbase_smutex0: 0x3000 : smutex0 block
typedef struct {
    union {
        top_xrbase_smutex0_owner s;
        uint8_t filler[0x4];
    } owner[0x8];
    uint8_t fill_0[0x60];
    top_xrbase_smutex0_ipc_sc ipc_sc;
    uint8_t fill_1[0x68];
    top_xrbase_smutex0_timeout timeout;
    union {
        top_xrbase_smutex0_error s;
        uint8_t filler[0xc];
    } error[0x1];
} top_xrbase_smutex0_s;

// top_xrbase_mutex0: 0x4000 : mutex0 block
typedef struct {
    union {
        top_xrbase_mutex0_mutex s;
        uint8_t filler[0x4];
    } mutex[0x8];
} top_xrbase_mutex0_s;

// top_xrbase_web0: 0x5000 : web0 block
typedef struct {
    top_xrbase_web0_control control;
    top_xrbase_web0_event_set event_set;
    top_xrbase_web0_event_clr event_clr;
    uint8_t fill_0[0x14];
    top_xrbase_web0_wake_enable0 wake_enable0;
    top_xrbase_web0_wake_enable1 wake_enable1;
    uint8_t fill_1[0x18];
    top_xrbase_web0_input_invert0 input_invert0;
    top_xrbase_web0_input_invert1 input_invert1;
} top_xrbase_web0_s;

// top_xrbase_web1: 0x6000 : web1 block
typedef struct {
    top_xrbase_web1_control control;
    top_xrbase_web1_event_set event_set;
    top_xrbase_web1_event_clr event_clr;
    uint8_t fill_0[0x14];
    top_xrbase_web1_wake_enable0 wake_enable0;
    top_xrbase_web1_wake_enable1 wake_enable1;
    uint8_t fill_1[0x18];
    top_xrbase_web1_input_invert0 input_invert0;
    top_xrbase_web1_input_invert1 input_invert1;
} top_xrbase_web1_s;


#endif /* _TOP_XRBASE_CSR_H */
