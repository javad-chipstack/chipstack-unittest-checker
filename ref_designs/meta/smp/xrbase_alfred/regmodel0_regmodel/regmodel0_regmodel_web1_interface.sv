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
// Started soccomp on: Tue Dec 13 16:10:20 2022
// SONICS_PATH = :/nfs/project/ipgen/src/valerioc/fbrepo/common/build_root/install/studio/../extensions/include
// PYTHONPATH = PythonPathUnset
// /nfs/regress_03_ash/sonics/nightly/sonics-no-sysc-py3-daily-20221213_140241/install/studio-10.3/sonics_code/soccomp.py --relative --uvm_test --designdir ./smp --instance xrbase --post_process /nfs/project/ipgen/src/valerioc/fbrepo/common/src/neev/ipBuilder/neev/ipBuilder/GenerateIPDefs.py{"levels":"1|tile"} xrbase_alfred_smp.conf
// @generated

////////////////////////////////////////////////////////////////////////////////
// web1 - Register Interface Definitions

// ------------------------------------------------------------
// register: control                               offset: 0x0
interface regmodel0_regmodel_web1_control_interface # ();
    logic [ 1:0] activate_low_pwr_edge_q;
    logic [ 1:0] event_suppress_edge_q;
    logic [ 1:0] wake_now_edge_q;
    logic [ 1:0] epu_enable_edge_q;
    modport mp (
        output activate_low_pwr_edge_q, event_suppress_edge_q, wake_now_edge_q, epu_enable_edge_q);
    modport sp (
        input activate_low_pwr_edge_q, event_suppress_edge_q, wake_now_edge_q, epu_enable_edge_q);
    modport fp (
        input activate_low_pwr_edge_q, event_suppress_edge_q, wake_now_edge_q, epu_enable_edge_q);
endinterface

// ------------------------------------------------------------
// register: event                                 offset: 0x4
interface regmodel0_regmodel_web1_event_interface # ();
    logic [ 0:0] activate_low_pwr_q;
    logic [ 0:0] activate_low_pwr_d;
    logic [ 0:0] activate_low_pwr_enb;
    logic [ 0:0] event_suppress_q;
    logic [ 0:0] event_suppress_d;
    logic [ 0:0] event_suppress_enb;
    logic [ 0:0] wake_now_q;
    logic [ 0:0] wake_now_d;
    logic [ 0:0] wake_now_enb;
    logic [ 0:0] epu_enable_q;
    logic [ 0:0] epu_enable_d;
    logic [ 0:0] epu_enable_enb;
    modport mp (
        input activate_low_pwr_d, activate_low_pwr_enb, event_suppress_d, event_suppress_enb, wake_now_d, wake_now_enb, epu_enable_d, epu_enable_enb,  output activate_low_pwr_q, event_suppress_q, wake_now_q, epu_enable_q);
    modport sp (
        input activate_low_pwr_q, event_suppress_q, wake_now_q, epu_enable_q,  output activate_low_pwr_d, activate_low_pwr_enb, event_suppress_d, event_suppress_enb, wake_now_d, wake_now_enb, epu_enable_d, epu_enable_enb);
    modport fp (
        input activate_low_pwr_q, event_suppress_q, wake_now_q, epu_enable_q, activate_low_pwr_d, activate_low_pwr_enb, event_suppress_d, event_suppress_enb, wake_now_d, wake_now_enb, epu_enable_d, epu_enable_enb);
endinterface

// ------------------------------------------------------------
// register: wake_enable0                          offset: 0x20
interface regmodel0_regmodel_web1_wake_enable0_interface # ();
    logic [31:0] enable_q;
    modport mp (
        output enable_q);
    modport sp (
        input enable_q);
    modport fp (
        input enable_q);
endinterface

// ------------------------------------------------------------
// register: wake_enable1                          offset: 0x24
interface regmodel0_regmodel_web1_wake_enable1_interface # ();
    logic [31:0] enable_q;
    modport mp (
        output enable_q);
    modport sp (
        input enable_q);
    modport fp (
        input enable_q);
endinterface

// ------------------------------------------------------------
// register: input_invert0                         offset: 0x40
interface regmodel0_regmodel_web1_input_invert0_interface # ();
    logic [31:0] invert_q;
    modport mp (
        output invert_q);
    modport sp (
        input invert_q);
    modport fp (
        input invert_q);
endinterface

// ------------------------------------------------------------
// register: input_invert1                         offset: 0x44
interface regmodel0_regmodel_web1_input_invert1_interface # ();
    logic [31:0] invert_q;
    modport mp (
        output invert_q);
    modport sp (
        input invert_q);
    modport fp (
        input invert_q);
endinterface

