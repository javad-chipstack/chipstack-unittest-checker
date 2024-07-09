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
#ifndef _TOP_XRBASE_MUTEX0_CSR_H
#define _TOP_XRBASE_MUTEX0_CSR_H

#include <stdint.h>

//
// Register Directives
//


// Group mutex registers
#define TOP_XRBASE_MUTEX0_MUTEX_READMASK 0xffffffff
#define TOP_XRBASE_MUTEX0_MUTEX_WRITEMASK 0xffffffff
#define TOP_XRBASE_MUTEX0_MUTEX_VOLATILEMASK 0xffffffff
#define TOP_XRBASE_MUTEX0_MUTEX_RESETMASK 0xffffffff
#define TOP_XRBASE_MUTEX0_MUTEX_RESETVALUE 0x0
#define TOP_XRBASE_MUTEX0_MUTEX_SIZE 0x4
#define TOP_XRBASE_MUTEX0_MUTEX0_OFFSET 0x0
#define TOP_XRBASE_MUTEX0_MUTEX1_OFFSET 0x4
#define TOP_XRBASE_MUTEX0_MUTEX2_OFFSET 0x8
#define TOP_XRBASE_MUTEX0_MUTEX3_OFFSET 0xc
#define TOP_XRBASE_MUTEX0_MUTEX4_OFFSET 0x10
#define TOP_XRBASE_MUTEX0_MUTEX5_OFFSET 0x14
#define TOP_XRBASE_MUTEX0_MUTEX6_OFFSET 0x18
#define TOP_XRBASE_MUTEX0_MUTEX7_OFFSET 0x1c

//
// Register Field Directives
//
#define TOP_XRBASE_MUTEX0_MUTEX_SWID_SHIFT 0
#define TOP_XRBASE_MUTEX0_MUTEX_SWID_MASK 0x7fffffff
#define TOP_XRBASE_MUTEX0_MUTEX_LOCK_SHIFT 31
#define TOP_XRBASE_MUTEX0_MUTEX_LOCK_MASK 0x80000000

//
// Enums
//


//
// Register Typedefs
//


// top_xrbase_mutex0_mutex: 32 : Mutex
typedef union {
    struct {
        uint32_t swid : 31;  // 30:0 SW=RW HW=RW EXT 0x0
        uint32_t lock : 1;  // 31:31 SW=RW HW=RW EXT 0x0
    } f;
    uint32_t w;
} top_xrbase_mutex0_mutex;

//
// Register Group Typedefs
//


#endif /* _TOP_XRBASE_MUTEX0_CSR_H */
