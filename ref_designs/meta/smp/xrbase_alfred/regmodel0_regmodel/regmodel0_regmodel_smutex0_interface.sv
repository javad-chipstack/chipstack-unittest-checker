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
// smutex0 - Register Interface Definitions

// ------------------------------------------------------------
// register: owner                                 offset: 0x0
interface regmodel0_regmodel_smutex0_owner_interface # ();
    logic [ 5:0] id_q;
    logic [ 5:0] id_d;
    logic [ 0:0] id_enb;
    modport mp (
        input id_d, id_enb,  output id_q);
    modport sp (
        input id_q,  output id_d, id_enb);
    modport fp (
        input id_q, id_d, id_enb);
endinterface

// ------------------------------------------------------------
// register: ipc_sc                                offset: 0x80
interface regmodel0_regmodel_smutex0_ipc_sc_interface # ();
    logic [ 5:0] id_q;
    modport mp (
        output id_q);
    modport sp (
        input id_q);
    modport fp (
        input id_q);
endinterface

// ------------------------------------------------------------
// register: timeout                               offset: 0xec
interface regmodel0_regmodel_smutex0_timeout_interface # ();
    logic [ 7:0] compare_q;
    logic [ 1:0] prescale_q;
    modport mp (
        output compare_q, prescale_q);
    modport sp (
        input compare_q, prescale_q);
    modport fp (
        input compare_q, prescale_q);
endinterface

// ------------------------------------------------------------
// register: error_err_log                         offset: 0xf0
interface regmodel0_regmodel_smutex0_error_err_log_interface # ();
    logic [ 2:0] code_q;
    logic [ 2:0] code_d;
    logic [ 0:0] code_enb;
    logic [ 0:0] access_q;
    logic [ 0:0] access_d;
    logic [ 0:0] access_enb;
    logic [ 5:0] id_q;
    logic [ 5:0] id_d;
    logic [ 0:0] id_enb;
    logic [ 0:0] multi_q;
    logic [ 0:0] multi_d;
    logic [ 0:0] multi_enb;
    modport mp (
        input code_d, code_enb, access_d, access_enb, id_d, id_enb, multi_d, multi_enb,  output code_q, access_q, id_q, multi_q);
    modport sp (
        input code_q, access_q, id_q, multi_q,  output code_d, code_enb, access_d, access_enb, id_d, id_enb, multi_d, multi_enb);
    modport fp (
        input code_q, access_q, id_q, multi_q, code_d, code_enb, access_d, access_enb, id_d, id_enb, multi_d, multi_enb);
endinterface

// ------------------------------------------------------------
// register: error_err_data                        offset: 0xf4
interface regmodel0_regmodel_smutex0_error_err_data_interface # ();
    logic [31:0] data_q;
    logic [31:0] data_d;
    logic [ 0:0] data_enb;
    modport mp (
        input data_d, data_enb,  output data_q);
    modport sp (
        input data_q,  output data_d, data_enb);
    modport fp (
        input data_q, data_d, data_enb);
endinterface

// ------------------------------------------------------------
// register: error_err_idx                         offset: 0xf8
interface regmodel0_regmodel_smutex0_error_err_idx_interface # ();
    logic [ 4:0] mutex_idx_q;
    logic [ 4:0] mutex_idx_d;
    logic [ 0:0] mutex_idx_enb;
    modport mp (
        input mutex_idx_d, mutex_idx_enb,  output mutex_idx_q);
    modport sp (
        input mutex_idx_q,  output mutex_idx_d, mutex_idx_enb);
    modport fp (
        input mutex_idx_q, mutex_idx_d, mutex_idx_enb);
endinterface

