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
#ifndef _TOP_XRBASE_WEB0_CSR_H
#define _TOP_XRBASE_WEB0_CSR_H

#include <stdint.h>

//
// Register Directives
//


// Ungrouped registers
#define TOP_XRBASE_WEB0_CONTROL_READMASK 0xff
#define TOP_XRBASE_WEB0_CONTROL_WRITEMASK 0xff
#define TOP_XRBASE_WEB0_CONTROL_VOLATILEMASK 0x0
#define TOP_XRBASE_WEB0_CONTROL_RESETMASK 0xff
#define TOP_XRBASE_WEB0_CONTROL_RESETVALUE 0x51
#define TOP_XRBASE_WEB0_CONTROL_SIZE 0x4
#define TOP_XRBASE_WEB0_CONTROL_OFFSET 0x0
#define TOP_XRBASE_WEB0_EVENT_SET_READMASK 0xf
#define TOP_XRBASE_WEB0_EVENT_SET_WRITEMASK 0xf
#define TOP_XRBASE_WEB0_EVENT_SET_VOLATILEMASK 0xf
#define TOP_XRBASE_WEB0_EVENT_SET_RESETMASK 0xf
#define TOP_XRBASE_WEB0_EVENT_SET_RESETVALUE 0x0
#define TOP_XRBASE_WEB0_EVENT_SET_SIZE 0x4
#define TOP_XRBASE_WEB0_EVENT_SET_OFFSET 0x4
#define TOP_XRBASE_WEB0_EVENT_CLR_READMASK 0xf
#define TOP_XRBASE_WEB0_EVENT_CLR_WRITEMASK 0xf
#define TOP_XRBASE_WEB0_EVENT_CLR_VOLATILEMASK 0xf
#define TOP_XRBASE_WEB0_EVENT_CLR_RESETMASK 0xf
#define TOP_XRBASE_WEB0_EVENT_CLR_RESETVALUE 0x0
#define TOP_XRBASE_WEB0_EVENT_CLR_SIZE 0x4
#define TOP_XRBASE_WEB0_EVENT_CLR_OFFSET 0x8
#define TOP_XRBASE_WEB0_WAKE_ENABLE0_READMASK 0xffffffff
#define TOP_XRBASE_WEB0_WAKE_ENABLE0_WRITEMASK 0xffffffff
#define TOP_XRBASE_WEB0_WAKE_ENABLE0_VOLATILEMASK 0x0
#define TOP_XRBASE_WEB0_WAKE_ENABLE0_RESETMASK 0xffffffff
#define TOP_XRBASE_WEB0_WAKE_ENABLE0_RESETVALUE 0x0
#define TOP_XRBASE_WEB0_WAKE_ENABLE0_SIZE 0x4
#define TOP_XRBASE_WEB0_WAKE_ENABLE0_OFFSET 0x20
#define TOP_XRBASE_WEB0_WAKE_ENABLE1_READMASK 0xffffffff
#define TOP_XRBASE_WEB0_WAKE_ENABLE1_WRITEMASK 0xffffffff
#define TOP_XRBASE_WEB0_WAKE_ENABLE1_VOLATILEMASK 0x0
#define TOP_XRBASE_WEB0_WAKE_ENABLE1_RESETMASK 0xffffffff
#define TOP_XRBASE_WEB0_WAKE_ENABLE1_RESETVALUE 0x0
#define TOP_XRBASE_WEB0_WAKE_ENABLE1_SIZE 0x4
#define TOP_XRBASE_WEB0_WAKE_ENABLE1_OFFSET 0x24
#define TOP_XRBASE_WEB0_INPUT_INVERT0_READMASK 0xffffffff
#define TOP_XRBASE_WEB0_INPUT_INVERT0_WRITEMASK 0xffffffff
#define TOP_XRBASE_WEB0_INPUT_INVERT0_VOLATILEMASK 0x0
#define TOP_XRBASE_WEB0_INPUT_INVERT0_RESETMASK 0xffffffff
#define TOP_XRBASE_WEB0_INPUT_INVERT0_RESETVALUE 0x0
#define TOP_XRBASE_WEB0_INPUT_INVERT0_SIZE 0x4
#define TOP_XRBASE_WEB0_INPUT_INVERT0_OFFSET 0x40
#define TOP_XRBASE_WEB0_INPUT_INVERT1_READMASK 0xffffffff
#define TOP_XRBASE_WEB0_INPUT_INVERT1_WRITEMASK 0xffffffff
#define TOP_XRBASE_WEB0_INPUT_INVERT1_VOLATILEMASK 0x0
#define TOP_XRBASE_WEB0_INPUT_INVERT1_RESETMASK 0xffffffff
#define TOP_XRBASE_WEB0_INPUT_INVERT1_RESETVALUE 0x0
#define TOP_XRBASE_WEB0_INPUT_INVERT1_SIZE 0x4
#define TOP_XRBASE_WEB0_INPUT_INVERT1_OFFSET 0x44

//
// Register Field Directives
//
#define TOP_XRBASE_WEB0_CONTROL_ACTIVATE_LOW_PWR_EDGE_SHIFT 0
#define TOP_XRBASE_WEB0_CONTROL_ACTIVATE_LOW_PWR_EDGE_MASK 0x3
#define TOP_XRBASE_WEB0_CONTROL_EVENT_SUPPRESS_EDGE_SHIFT 2
#define TOP_XRBASE_WEB0_CONTROL_EVENT_SUPPRESS_EDGE_MASK 0xc
#define TOP_XRBASE_WEB0_CONTROL_WAKE_NOW_EDGE_SHIFT 4
#define TOP_XRBASE_WEB0_CONTROL_WAKE_NOW_EDGE_MASK 0x30
#define TOP_XRBASE_WEB0_CONTROL_EPU_ENABLE_EDGE_SHIFT 6
#define TOP_XRBASE_WEB0_CONTROL_EPU_ENABLE_EDGE_MASK 0xc0
#define TOP_XRBASE_WEB0_EVENT_SET_ACTIVATE_LOW_PWR_SHIFT 0
#define TOP_XRBASE_WEB0_EVENT_SET_ACTIVATE_LOW_PWR_MASK 0x1
#define TOP_XRBASE_WEB0_EVENT_SET_EVENT_SUPPRESS_SHIFT 1
#define TOP_XRBASE_WEB0_EVENT_SET_EVENT_SUPPRESS_MASK 0x2
#define TOP_XRBASE_WEB0_EVENT_SET_WAKE_NOW_SHIFT 2
#define TOP_XRBASE_WEB0_EVENT_SET_WAKE_NOW_MASK 0x4
#define TOP_XRBASE_WEB0_EVENT_SET_EPU_ENABLE_SHIFT 3
#define TOP_XRBASE_WEB0_EVENT_SET_EPU_ENABLE_MASK 0x8
#define TOP_XRBASE_WEB0_EVENT_CLR_ACTIVATE_LOW_PWR_SHIFT 0
#define TOP_XRBASE_WEB0_EVENT_CLR_ACTIVATE_LOW_PWR_MASK 0x1
#define TOP_XRBASE_WEB0_EVENT_CLR_EVENT_SUPPRESS_SHIFT 1
#define TOP_XRBASE_WEB0_EVENT_CLR_EVENT_SUPPRESS_MASK 0x2
#define TOP_XRBASE_WEB0_EVENT_CLR_WAKE_NOW_SHIFT 2
#define TOP_XRBASE_WEB0_EVENT_CLR_WAKE_NOW_MASK 0x4
#define TOP_XRBASE_WEB0_EVENT_CLR_EPU_ENABLE_SHIFT 3
#define TOP_XRBASE_WEB0_EVENT_CLR_EPU_ENABLE_MASK 0x8
#define TOP_XRBASE_WEB0_WAKE_ENABLE0_ENABLE_SHIFT 0
#define TOP_XRBASE_WEB0_WAKE_ENABLE0_ENABLE_MASK 0xffffffff
#define TOP_XRBASE_WEB0_WAKE_ENABLE1_ENABLE_SHIFT 0
#define TOP_XRBASE_WEB0_WAKE_ENABLE1_ENABLE_MASK 0xffffffff
#define TOP_XRBASE_WEB0_INPUT_INVERT0_INVERT_SHIFT 0
#define TOP_XRBASE_WEB0_INPUT_INVERT0_INVERT_MASK 0xffffffff
#define TOP_XRBASE_WEB0_INPUT_INVERT1_INVERT_SHIFT 0
#define TOP_XRBASE_WEB0_INPUT_INVERT1_INVERT_MASK 0xffffffff

//
// Enums
//


//
// Register Typedefs
//


// top_xrbase_web0_control: 32 : Control Register
typedef union {
    struct {
        uint32_t activate_low_pwr_edge : 2;  // 1:0 SW=RW HW=RO STD 0x1
        uint32_t event_suppress_edge : 2;  // 3:2 SW=RW HW=RO STD 0x0
        uint32_t wake_now_edge : 2;  // 5:4 SW=RW HW=RO STD 0x1
        uint32_t epu_enable_edge : 2;  // 7:6 SW=RW HW=RO STD 0x1
        uint32_t fill_0 : 24;
    } f;
    uint32_t w;
} top_xrbase_web0_control;

// top_xrbase_web0_event_set: 32 : Event Set Register
typedef union {
    struct {
        uint32_t activate_low_pwr : 1;  // 0:0 SW=W1S HW=RW STP 0x0
        uint32_t event_suppress : 1;  // 1:1 SW=W1S HW=RW STP 0x0
        uint32_t wake_now : 1;  // 2:2 SW=W1S HW=RW STP 0x0
        uint32_t epu_enable : 1;  // 3:3 SW=W1S HW=RW STP 0x0
        uint32_t fill_0 : 28;
    } f;
    uint32_t w;
} top_xrbase_web0_event_set;

// top_xrbase_web0_event_clr: 32 : Event Clr Register
typedef union {
    struct {
        uint32_t activate_low_pwr : 1;  // 0:0 SW=W1C HW=RW STP 0x0
        uint32_t event_suppress : 1;  // 1:1 SW=W1C HW=RW STP 0x0
        uint32_t wake_now : 1;  // 2:2 SW=W1C HW=RW STP 0x0
        uint32_t epu_enable : 1;  // 3:3 SW=W1C HW=RW STP 0x0
        uint32_t fill_0 : 28;
    } f;
    uint32_t w;
} top_xrbase_web0_event_clr;

// top_xrbase_web0_wake_enable0: 32 : Wake Enable Register
typedef union {
    struct {
        uint32_t enable : 32;  // 31:0 SW=RW HW=RO STD 0x0
    } f;
    uint32_t w;
} top_xrbase_web0_wake_enable0;

// top_xrbase_web0_wake_enable1: 32 : Wake Enable Register
typedef union {
    struct {
        uint32_t enable : 32;  // 31:0 SW=RW HW=RO STD 0x0
    } f;
    uint32_t w;
} top_xrbase_web0_wake_enable1;

// top_xrbase_web0_input_invert0: 32 : Input Invert Register
typedef union {
    struct {
        uint32_t invert : 32;  // 31:0 SW=RW HW=RO STD 0x0
    } f;
    uint32_t w;
} top_xrbase_web0_input_invert0;

// top_xrbase_web0_input_invert1: 32 : Input Invert Register
typedef union {
    struct {
        uint32_t invert : 32;  // 31:0 SW=RW HW=RO STD 0x0
    } f;
    uint32_t w;
} top_xrbase_web0_input_invert1;

//
// Register Group Typedefs
//


#endif /* _TOP_XRBASE_WEB0_CSR_H */
