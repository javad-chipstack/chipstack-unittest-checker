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
#ifndef _TOP_XRBASE_FDBS0_CSR_H
#define _TOP_XRBASE_FDBS0_CSR_H

#include <stdint.h>

//
// Register Directives
//


// Group fdb0 registers
#define TOP_XRBASE_FDBS0_FDB0_BELL_READMASK 0x1f1f73
#define TOP_XRBASE_FDBS0_FDB0_BELL_WRITEMASK 0x3
#define TOP_XRBASE_FDBS0_FDB0_BELL_VOLATILEMASK 0x1f1f73
#define TOP_XRBASE_FDBS0_FDB0_BELL_RESETMASK 0x1f1f73
#define TOP_XRBASE_FDBS0_FDB0_BELL_RESETVALUE 0x0
#define TOP_XRBASE_FDBS0_FDB0_BELL_SIZE 0x4
#define TOP_XRBASE_FDBS0_FDB0_BELL0_OFFSET 0x0
#define TOP_XRBASE_FDBS0_FDB0_BELL1_OFFSET 0x4
#define TOP_XRBASE_FDBS0_FDB0_BELL2_OFFSET 0x8
#define TOP_XRBASE_FDBS0_FDB0_BELL3_OFFSET 0xc
#define TOP_XRBASE_FDBS0_FDB0_BELL4_OFFSET 0x10
#define TOP_XRBASE_FDBS0_FDB0_BELL5_OFFSET 0x14
#define TOP_XRBASE_FDBS0_FDB0_BELL6_OFFSET 0x18
#define TOP_XRBASE_FDBS0_FDB0_BELL7_OFFSET 0x1c
#define TOP_XRBASE_FDBS0_FDB0_BELL8_OFFSET 0x20
#define TOP_XRBASE_FDBS0_FDB0_BELL9_OFFSET 0x24
#define TOP_XRBASE_FDBS0_FDB0_BELL10_OFFSET 0x28
#define TOP_XRBASE_FDBS0_FDB0_BELL11_OFFSET 0x2c
#define TOP_XRBASE_FDBS0_FDB0_BELL12_OFFSET 0x30
#define TOP_XRBASE_FDBS0_FDB0_BELL13_OFFSET 0x34
#define TOP_XRBASE_FDBS0_FDB0_BELL14_OFFSET 0x38
#define TOP_XRBASE_FDBS0_FDB0_BELL15_OFFSET 0x3c
#define TOP_XRBASE_FDBS0_FDB0_CONTROL_READMASK 0x1
#define TOP_XRBASE_FDBS0_FDB0_CONTROL_WRITEMASK 0x1
#define TOP_XRBASE_FDBS0_FDB0_CONTROL_VOLATILEMASK 0x0
#define TOP_XRBASE_FDBS0_FDB0_CONTROL_RESETMASK 0x1
#define TOP_XRBASE_FDBS0_FDB0_CONTROL_RESETVALUE 0x0
#define TOP_XRBASE_FDBS0_FDB0_CONTROL_SIZE 0x4
#define TOP_XRBASE_FDBS0_FDB0_CONTROL_OFFSET 0x74
#define TOP_XRBASE_FDBS0_FDB0_ENABLE_READMASK 0xffff
#define TOP_XRBASE_FDBS0_FDB0_ENABLE_WRITEMASK 0xffff
#define TOP_XRBASE_FDBS0_FDB0_ENABLE_VOLATILEMASK 0xffff
#define TOP_XRBASE_FDBS0_FDB0_ENABLE_RESETMASK 0xffff
#define TOP_XRBASE_FDBS0_FDB0_ENABLE_RESETVALUE 0xffff
#define TOP_XRBASE_FDBS0_FDB0_ENABLE_SIZE 0x4
#define TOP_XRBASE_FDBS0_FDB0_ENABLE_OFFSET 0x78
#define TOP_XRBASE_FDBS0_FDB0_STATUS_READMASK 0xffff
#define TOP_XRBASE_FDBS0_FDB0_STATUS_WRITEMASK 0x0
#define TOP_XRBASE_FDBS0_FDB0_STATUS_VOLATILEMASK 0xffff
#define TOP_XRBASE_FDBS0_FDB0_STATUS_RESETMASK 0xffff
#define TOP_XRBASE_FDBS0_FDB0_STATUS_RESETVALUE 0x0
#define TOP_XRBASE_FDBS0_FDB0_STATUS_SIZE 0x4
#define TOP_XRBASE_FDBS0_FDB0_STATUS_OFFSET 0x7c
#define TOP_XRBASE_FDBS0_FDB0_DATA_FIFO_READMASK 0xffffffff
#define TOP_XRBASE_FDBS0_FDB0_DATA_FIFO_WRITEMASK 0xffffffff
#define TOP_XRBASE_FDBS0_FDB0_DATA_FIFO_VOLATILEMASK 0x0
#define TOP_XRBASE_FDBS0_FDB0_DATA_FIFO_RESETMASK 0xffffffff
#define TOP_XRBASE_FDBS0_FDB0_DATA_FIFO_RESETVALUE 0x0
#define TOP_XRBASE_FDBS0_FDB0_DATA_FIFO_SIZE 0x4
#define TOP_XRBASE_FDBS0_FDB0_DATA0_FIFO_OFFSET 0x80
#define TOP_XRBASE_FDBS0_FDB0_DATA1_FIFO_OFFSET 0x90
#define TOP_XRBASE_FDBS0_FDB0_DATA2_FIFO_OFFSET 0xa0
#define TOP_XRBASE_FDBS0_FDB0_DATA3_FIFO_OFFSET 0xb0
#define TOP_XRBASE_FDBS0_FDB0_DATA4_FIFO_OFFSET 0xc0
#define TOP_XRBASE_FDBS0_FDB0_DATA5_FIFO_OFFSET 0xd0
#define TOP_XRBASE_FDBS0_FDB0_DATA6_FIFO_OFFSET 0xe0
#define TOP_XRBASE_FDBS0_FDB0_DATA7_FIFO_OFFSET 0xf0
#define TOP_XRBASE_FDBS0_FDB0_DATA8_FIFO_OFFSET 0x100
#define TOP_XRBASE_FDBS0_FDB0_DATA9_FIFO_OFFSET 0x110
#define TOP_XRBASE_FDBS0_FDB0_DATA10_FIFO_OFFSET 0x120
#define TOP_XRBASE_FDBS0_FDB0_DATA11_FIFO_OFFSET 0x130
#define TOP_XRBASE_FDBS0_FDB0_DATA12_FIFO_OFFSET 0x140
#define TOP_XRBASE_FDBS0_FDB0_DATA13_FIFO_OFFSET 0x150
#define TOP_XRBASE_FDBS0_FDB0_DATA14_FIFO_OFFSET 0x160
#define TOP_XRBASE_FDBS0_FDB0_DATA15_FIFO_OFFSET 0x170

// Group fdb1 registers
#define TOP_XRBASE_FDBS0_FDB1_BELL_READMASK 0x1f1f73
#define TOP_XRBASE_FDBS0_FDB1_BELL_WRITEMASK 0x3
#define TOP_XRBASE_FDBS0_FDB1_BELL_VOLATILEMASK 0x1f1f73
#define TOP_XRBASE_FDBS0_FDB1_BELL_RESETMASK 0x1f1f73
#define TOP_XRBASE_FDBS0_FDB1_BELL_RESETVALUE 0x0
#define TOP_XRBASE_FDBS0_FDB1_BELL_SIZE 0x4
#define TOP_XRBASE_FDBS0_FDB1_BELL0_OFFSET 0x200
#define TOP_XRBASE_FDBS0_FDB1_BELL1_OFFSET 0x204
#define TOP_XRBASE_FDBS0_FDB1_BELL2_OFFSET 0x208
#define TOP_XRBASE_FDBS0_FDB1_BELL3_OFFSET 0x20c
#define TOP_XRBASE_FDBS0_FDB1_BELL4_OFFSET 0x210
#define TOP_XRBASE_FDBS0_FDB1_BELL5_OFFSET 0x214
#define TOP_XRBASE_FDBS0_FDB1_BELL6_OFFSET 0x218
#define TOP_XRBASE_FDBS0_FDB1_BELL7_OFFSET 0x21c
#define TOP_XRBASE_FDBS0_FDB1_BELL8_OFFSET 0x220
#define TOP_XRBASE_FDBS0_FDB1_BELL9_OFFSET 0x224
#define TOP_XRBASE_FDBS0_FDB1_BELL10_OFFSET 0x228
#define TOP_XRBASE_FDBS0_FDB1_BELL11_OFFSET 0x22c
#define TOP_XRBASE_FDBS0_FDB1_BELL12_OFFSET 0x230
#define TOP_XRBASE_FDBS0_FDB1_BELL13_OFFSET 0x234
#define TOP_XRBASE_FDBS0_FDB1_BELL14_OFFSET 0x238
#define TOP_XRBASE_FDBS0_FDB1_BELL15_OFFSET 0x23c
#define TOP_XRBASE_FDBS0_FDB1_CONTROL_READMASK 0x1
#define TOP_XRBASE_FDBS0_FDB1_CONTROL_WRITEMASK 0x1
#define TOP_XRBASE_FDBS0_FDB1_CONTROL_VOLATILEMASK 0x0
#define TOP_XRBASE_FDBS0_FDB1_CONTROL_RESETMASK 0x1
#define TOP_XRBASE_FDBS0_FDB1_CONTROL_RESETVALUE 0x0
#define TOP_XRBASE_FDBS0_FDB1_CONTROL_SIZE 0x4
#define TOP_XRBASE_FDBS0_FDB1_CONTROL_OFFSET 0x274
#define TOP_XRBASE_FDBS0_FDB1_ENABLE_READMASK 0xffff
#define TOP_XRBASE_FDBS0_FDB1_ENABLE_WRITEMASK 0xffff
#define TOP_XRBASE_FDBS0_FDB1_ENABLE_VOLATILEMASK 0xffff
#define TOP_XRBASE_FDBS0_FDB1_ENABLE_RESETMASK 0xffff
#define TOP_XRBASE_FDBS0_FDB1_ENABLE_RESETVALUE 0xffff
#define TOP_XRBASE_FDBS0_FDB1_ENABLE_SIZE 0x4
#define TOP_XRBASE_FDBS0_FDB1_ENABLE_OFFSET 0x278
#define TOP_XRBASE_FDBS0_FDB1_STATUS_READMASK 0xffff
#define TOP_XRBASE_FDBS0_FDB1_STATUS_WRITEMASK 0x0
#define TOP_XRBASE_FDBS0_FDB1_STATUS_VOLATILEMASK 0xffff
#define TOP_XRBASE_FDBS0_FDB1_STATUS_RESETMASK 0xffff
#define TOP_XRBASE_FDBS0_FDB1_STATUS_RESETVALUE 0x0
#define TOP_XRBASE_FDBS0_FDB1_STATUS_SIZE 0x4
#define TOP_XRBASE_FDBS0_FDB1_STATUS_OFFSET 0x27c
#define TOP_XRBASE_FDBS0_FDB1_DATA_FIFO_READMASK 0xffffffff
#define TOP_XRBASE_FDBS0_FDB1_DATA_FIFO_WRITEMASK 0xffffffff
#define TOP_XRBASE_FDBS0_FDB1_DATA_FIFO_VOLATILEMASK 0x0
#define TOP_XRBASE_FDBS0_FDB1_DATA_FIFO_RESETMASK 0xffffffff
#define TOP_XRBASE_FDBS0_FDB1_DATA_FIFO_RESETVALUE 0x0
#define TOP_XRBASE_FDBS0_FDB1_DATA_FIFO_SIZE 0x4
#define TOP_XRBASE_FDBS0_FDB1_DATA0_FIFO_OFFSET 0x280
#define TOP_XRBASE_FDBS0_FDB1_DATA1_FIFO_OFFSET 0x290
#define TOP_XRBASE_FDBS0_FDB1_DATA2_FIFO_OFFSET 0x2a0
#define TOP_XRBASE_FDBS0_FDB1_DATA3_FIFO_OFFSET 0x2b0
#define TOP_XRBASE_FDBS0_FDB1_DATA4_FIFO_OFFSET 0x2c0
#define TOP_XRBASE_FDBS0_FDB1_DATA5_FIFO_OFFSET 0x2d0
#define TOP_XRBASE_FDBS0_FDB1_DATA6_FIFO_OFFSET 0x2e0
#define TOP_XRBASE_FDBS0_FDB1_DATA7_FIFO_OFFSET 0x2f0
#define TOP_XRBASE_FDBS0_FDB1_DATA8_FIFO_OFFSET 0x300
#define TOP_XRBASE_FDBS0_FDB1_DATA9_FIFO_OFFSET 0x310
#define TOP_XRBASE_FDBS0_FDB1_DATA10_FIFO_OFFSET 0x320
#define TOP_XRBASE_FDBS0_FDB1_DATA11_FIFO_OFFSET 0x330
#define TOP_XRBASE_FDBS0_FDB1_DATA12_FIFO_OFFSET 0x340
#define TOP_XRBASE_FDBS0_FDB1_DATA13_FIFO_OFFSET 0x350
#define TOP_XRBASE_FDBS0_FDB1_DATA14_FIFO_OFFSET 0x360
#define TOP_XRBASE_FDBS0_FDB1_DATA15_FIFO_OFFSET 0x370

//
// Register Field Directives
//
#define TOP_XRBASE_FDBS0_FDB0_BELL_CNT_SHIFT 0
#define TOP_XRBASE_FDBS0_FDB0_BELL_CNT_MASK 0x3
#define TOP_XRBASE_FDBS0_FDB0_BELL_FAILED_RING_SHIFT 4
#define TOP_XRBASE_FDBS0_FDB0_BELL_FAILED_RING_MASK 0x10
#define TOP_XRBASE_FDBS0_FDB0_BELL_MAX_PRIORITY_SHIFT 5
#define TOP_XRBASE_FDBS0_FDB0_BELL_MAX_PRIORITY_MASK 0x60
#define TOP_XRBASE_FDBS0_FDB0_BELL_VALID_FCNT_SHIFT 8
#define TOP_XRBASE_FDBS0_FDB0_BELL_VALID_FCNT_MASK 0x1f00
#define TOP_XRBASE_FDBS0_FDB0_BELL_FCNT_SHIFT 16
#define TOP_XRBASE_FDBS0_FDB0_BELL_FCNT_MASK 0x1f0000
#define TOP_XRBASE_FDBS0_FDB0_CONTROL_ACK_ON_EMPTY_SHIFT 0
#define TOP_XRBASE_FDBS0_FDB0_CONTROL_ACK_ON_EMPTY_MASK 0x1
#define TOP_XRBASE_FDBS0_FDB0_ENABLE_ENABLE_SHIFT 0
#define TOP_XRBASE_FDBS0_FDB0_ENABLE_ENABLE_MASK 0xffff
#define TOP_XRBASE_FDBS0_FDB0_STATUS_STATUS_SHIFT 0
#define TOP_XRBASE_FDBS0_FDB0_STATUS_STATUS_MASK 0xffff
#define TOP_XRBASE_FDBS0_FDB0_DATA_FIFO_DATA_SHIFT 0
#define TOP_XRBASE_FDBS0_FDB0_DATA_FIFO_DATA_MASK 0xffffffff
#define TOP_XRBASE_FDBS0_FDB1_BELL_CNT_SHIFT 0
#define TOP_XRBASE_FDBS0_FDB1_BELL_CNT_MASK 0x3
#define TOP_XRBASE_FDBS0_FDB1_BELL_FAILED_RING_SHIFT 4
#define TOP_XRBASE_FDBS0_FDB1_BELL_FAILED_RING_MASK 0x10
#define TOP_XRBASE_FDBS0_FDB1_BELL_MAX_PRIORITY_SHIFT 5
#define TOP_XRBASE_FDBS0_FDB1_BELL_MAX_PRIORITY_MASK 0x60
#define TOP_XRBASE_FDBS0_FDB1_BELL_VALID_FCNT_SHIFT 8
#define TOP_XRBASE_FDBS0_FDB1_BELL_VALID_FCNT_MASK 0x1f00
#define TOP_XRBASE_FDBS0_FDB1_BELL_FCNT_SHIFT 16
#define TOP_XRBASE_FDBS0_FDB1_BELL_FCNT_MASK 0x1f0000
#define TOP_XRBASE_FDBS0_FDB1_CONTROL_ACK_ON_EMPTY_SHIFT 0
#define TOP_XRBASE_FDBS0_FDB1_CONTROL_ACK_ON_EMPTY_MASK 0x1
#define TOP_XRBASE_FDBS0_FDB1_ENABLE_ENABLE_SHIFT 0
#define TOP_XRBASE_FDBS0_FDB1_ENABLE_ENABLE_MASK 0xffff
#define TOP_XRBASE_FDBS0_FDB1_STATUS_STATUS_SHIFT 0
#define TOP_XRBASE_FDBS0_FDB1_STATUS_STATUS_MASK 0xffff
#define TOP_XRBASE_FDBS0_FDB1_DATA_FIFO_DATA_SHIFT 0
#define TOP_XRBASE_FDBS0_FDB1_DATA_FIFO_DATA_MASK 0xffffffff

//
// Enums
//


//
// Register Typedefs
//


// top_xrbase_fdbs0_fdb0_bell: 32 : Doorbell register
typedef union {
    struct {
        uint32_t cnt : 2;  // 1:0 SW=RW HW=RW EXT 0x0
        uint32_t fill_0 : 2;
        uint32_t failed_ring : 1;  // 4:4 SW=RO HW=RW STD 0x0
        uint32_t max_priority : 2;  // 6:5 SW=RO HW=RW STD 0x0
        uint32_t fill_1 : 1;
        uint32_t valid_fcnt : 5;  // 12:8 SW=RO HW=RW STD 0x0
        uint32_t fill_2 : 3;
        uint32_t fcnt : 5;  // 20:16 SW=RO HW=RW STD 0x0
        uint32_t fill_3 : 11;
    } f;
    uint32_t w;
} top_xrbase_fdbs0_fdb0_bell;

// top_xrbase_fdbs0_fdb0_control: 32 : Doorbell control register
typedef union {
    struct {
        uint32_t ack_on_empty : 1;  // 0:0 SW=RW HW=RO STD 0x0
        uint32_t fill_0 : 31;
    } f;
    uint32_t w;
} top_xrbase_fdbs0_fdb0_control;

// top_xrbase_fdbs0_fdb0_enable: 32 : Doorbell enable IRQ register
typedef union {
    struct {
        uint32_t enable : 16;  // 15:0 SW=RW HW=RW EXT 0xffff
        uint32_t fill_0 : 16;
    } f;
    uint32_t w;
} top_xrbase_fdbs0_fdb0_enable;

// top_xrbase_fdbs0_fdb0_status: 32 : Doorbell status register
typedef union {
    struct {
        uint32_t status : 16;  // 15:0 SW=RO HW=WO STD 0x0
        uint32_t fill_0 : 16;
    } f;
    uint32_t w;
} top_xrbase_fdbs0_fdb0_status;

// top_xrbase_fdbs0_fdb0_data_fifo: 32 : Doorbell FIFO registers, offset 0x0=no ring, 0x4=high ring, 0x8=no ring, 0xC=low ring
typedef union {
    struct {
        uint32_t data : 32;  // 31:0 SW=RW HW=NA RAM 0x0
    } f;
    uint32_t w;
} top_xrbase_fdbs0_fdb0_data_fifo;

// top_xrbase_fdbs0_fdb1_bell: 32 : Doorbell register
typedef union {
    struct {
        uint32_t cnt : 2;  // 1:0 SW=RW HW=RW EXT 0x0
        uint32_t fill_0 : 2;
        uint32_t failed_ring : 1;  // 4:4 SW=RO HW=RW STD 0x0
        uint32_t max_priority : 2;  // 6:5 SW=RO HW=RW STD 0x0
        uint32_t fill_1 : 1;
        uint32_t valid_fcnt : 5;  // 12:8 SW=RO HW=RW STD 0x0
        uint32_t fill_2 : 3;
        uint32_t fcnt : 5;  // 20:16 SW=RO HW=RW STD 0x0
        uint32_t fill_3 : 11;
    } f;
    uint32_t w;
} top_xrbase_fdbs0_fdb1_bell;

// top_xrbase_fdbs0_fdb1_control: 32 : Doorbell control register
typedef union {
    struct {
        uint32_t ack_on_empty : 1;  // 0:0 SW=RW HW=RO STD 0x0
        uint32_t fill_0 : 31;
    } f;
    uint32_t w;
} top_xrbase_fdbs0_fdb1_control;

// top_xrbase_fdbs0_fdb1_enable: 32 : Doorbell enable IRQ register
typedef union {
    struct {
        uint32_t enable : 16;  // 15:0 SW=RW HW=RW EXT 0xffff
        uint32_t fill_0 : 16;
    } f;
    uint32_t w;
} top_xrbase_fdbs0_fdb1_enable;

// top_xrbase_fdbs0_fdb1_status: 32 : Doorbell status register
typedef union {
    struct {
        uint32_t status : 16;  // 15:0 SW=RO HW=WO STD 0x0
        uint32_t fill_0 : 16;
    } f;
    uint32_t w;
} top_xrbase_fdbs0_fdb1_status;

// top_xrbase_fdbs0_fdb1_data_fifo: 32 : Doorbell FIFO registers, offset 0x0=no ring, 0x4=high ring, 0x8=no ring, 0xC=low ring
typedef union {
    struct {
        uint32_t data : 32;  // 31:0 SW=RW HW=NA RAM 0x0
    } f;
    uint32_t w;
} top_xrbase_fdbs0_fdb1_data_fifo;

//
// Register Group Typedefs
//


// top_xrbase_fdbs0_fdb0_data: 0x80 : Doorbell FIFO data group registers
typedef union {
    struct {
        top_xrbase_fdbs0_fdb0_data_fifo fifo[4];
    } g;
    uint8_t filler[0x10];
} top_xrbase_fdbs0_fdb0_data;

// top_xrbase_fdbs0_fdb0: 0x0 : Doorbell 0
typedef union {
    struct {
        top_xrbase_fdbs0_fdb0_bell bell[16];
        uint8_t fill_0[0x34];
        top_xrbase_fdbs0_fdb0_control control;
        top_xrbase_fdbs0_fdb0_enable enable;
        top_xrbase_fdbs0_fdb0_status status;
        top_xrbase_fdbs0_fdb0_data data[16];
        uint8_t fill_1[0x80];
    } g;
    uint8_t filler[0x200];
} top_xrbase_fdbs0_fdb0;

// top_xrbase_fdbs0_fdb1_data: 0x280 : Doorbell FIFO data group registers
typedef union {
    struct {
        top_xrbase_fdbs0_fdb1_data_fifo fifo[4];
    } g;
    uint8_t filler[0x10];
} top_xrbase_fdbs0_fdb1_data;

// top_xrbase_fdbs0_fdb1: 0x200 : Doorbell 1
typedef union {
    struct {
        top_xrbase_fdbs0_fdb1_bell bell[16];
        uint8_t fill_0[0x34];
        top_xrbase_fdbs0_fdb1_control control;
        top_xrbase_fdbs0_fdb1_enable enable;
        top_xrbase_fdbs0_fdb1_status status;
        top_xrbase_fdbs0_fdb1_data data[16];
    } g;
    uint8_t filler[0x200];
} top_xrbase_fdbs0_fdb1;

#endif /* _TOP_XRBASE_FDBS0_CSR_H */
