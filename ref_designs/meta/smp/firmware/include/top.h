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
#ifndef _TOP_CSR_H
#define _TOP_CSR_H

#include "top_xrbase.h"

//
// Instance defines
//

#define TOP_XRBASE_BASE 0x0
#define TOP_XRBASE_SIZE 0x6080

//
// Typedefs
//

typedef struct {

    // 0x0
    union {
        top_xrbase_sfdbs0_s s;
        uint8_t filler[0x200];
    } top_xrbase_sfdbs0_u;

    uint8_t fill_0[0x1e00];
    // 0x2000
    union {
        top_xrbase_fdbs0_s s;
        uint8_t filler[0x400];
    } top_xrbase_fdbs0_u;

    uint8_t fill_1[0xc00];
    // 0x3000
    union {
        top_xrbase_smutex0_s s;
        uint8_t filler[0x1000];
    } top_xrbase_smutex0_u;

    // 0x4000
    union {
        top_xrbase_mutex0_s s;
        uint8_t filler[0x1000];
    } top_xrbase_mutex0_u;

    // 0x5000
    union {
        top_xrbase_web0_s s;
        uint8_t filler[0x80];
    } top_xrbase_web0_u;

    uint8_t fill_2[0xf80];
    // 0x6000
    union {
        top_xrbase_web1_s s;
        uint8_t filler[0x80];
    } top_xrbase_web1_u;

} top_s;

#endif /* _TOP_CSR_H */
