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
// fdbs0 - Register Interface Definitions

`ifndef REGMODEL0_REGMODEL_FDBS0_INTERFACE_SV
`define REGMODEL0_REGMODEL_FDBS0_INTERFACE_SV

// ------------------------------------------------------------
// register: fdb0_bell                             offset: 0x0
interface regmodel0_regmodel_fdbs0_fdb0_bell_interface # ();
    logic [ 5:0] reqinfo;
    logic [ 1:0] cnt_qout;
    logic [ 1:0] cnt_din;
    logic [ 0:0] cnt_w;
    logic [ 0:0] cnt_r;
    logic [ 0:0] failed_ring_q;
    logic [ 0:0] failed_ring_d;
    logic [ 0:0] failed_ring_enb;
    logic [ 1:0] max_priority_q;
    logic [ 1:0] max_priority_d;
    logic [ 0:0] max_priority_enb;
    logic [ 4:0] valid_fcnt_q;
    logic [ 4:0] valid_fcnt_d;
    logic [ 0:0] valid_fcnt_enb;
    logic [ 4:0] fcnt_q;
    logic [ 4:0] fcnt_d;
    logic [ 0:0] fcnt_enb;
    modport mp (
        input cnt_qout, failed_ring_d, failed_ring_enb, max_priority_d, max_priority_enb, valid_fcnt_d, valid_fcnt_enb, fcnt_d, fcnt_enb,  output reqinfo, cnt_din, cnt_w, cnt_r, failed_ring_q, max_priority_q, valid_fcnt_q, fcnt_q);
    modport sp (
        input reqinfo, cnt_din, cnt_w, cnt_r, failed_ring_q, max_priority_q, valid_fcnt_q, fcnt_q,  output cnt_qout, failed_ring_d, failed_ring_enb, max_priority_d, max_priority_enb, valid_fcnt_d, valid_fcnt_enb, fcnt_d, fcnt_enb);
    modport fp (
        input reqinfo, cnt_din, cnt_w, cnt_r, failed_ring_q, max_priority_q, valid_fcnt_q, fcnt_q, cnt_qout, failed_ring_d, failed_ring_enb, max_priority_d, max_priority_enb, valid_fcnt_d, valid_fcnt_enb, fcnt_d, fcnt_enb);

endinterface

// ------------------------------------------------------------
// register: fdb0_control                          offset: 0x74
interface regmodel0_regmodel_fdbs0_fdb0_control_interface # ();
    logic [ 0:0] ack_on_empty_q;
    modport mp (
        output ack_on_empty_q);
    modport sp (
        input ack_on_empty_q);
    modport fp (
        input ack_on_empty_q);
endinterface

// ------------------------------------------------------------
// register: fdb0_enable                           offset: 0x78
interface regmodel0_regmodel_fdbs0_fdb0_enable_interface # ();
    logic [ 5:0] reqinfo;
    logic [15:0] enable_qout;
    logic [15:0] enable_din;
    logic [ 0:0] enable_w;
    modport mp (
        input enable_qout,  output reqinfo, enable_din, enable_w);
    modport sp (
        input reqinfo, enable_din, enable_w,  output enable_qout);
    modport fp (
        input reqinfo, enable_din, enable_w, enable_qout);
endinterface

// ------------------------------------------------------------
// register: fdb0_status                           offset: 0x7c
interface regmodel0_regmodel_fdbs0_fdb0_status_interface # ();
    logic [15:0] status_d;
    modport mp (
        input status_d);
    modport sp (
        output status_d);
    modport fp (
        input status_d);
endinterface

// ------------------------------------------------------------
// register: fdb0_data_fifo                        offset: 0x80
interface regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface # ();
    logic [31:0] din;
    logic [ 1:0] a;
    logic [31:0] wen;
    logic [ 0:0] cen;
    logic [31:0] dout;
    logic [ 5:0] reqinfo;
    modport mp (
        input dout,  output din, a, wen, cen, reqinfo);
    modport sp (
        input din, a, wen, cen, reqinfo,  output dout);
    modport fp (
        input din, a, wen, cen, reqinfo, dout);
endinterface

// ------------------------------------------------------------
// register: fdb1_bell                             offset: 0x200
interface regmodel0_regmodel_fdbs0_fdb1_bell_interface # ();
    logic [ 5:0] reqinfo;
    logic [ 1:0] cnt_qout;
    logic [ 1:0] cnt_din;
    logic [ 0:0] cnt_w;
    logic [ 0:0] cnt_r;
    logic [ 0:0] failed_ring_q;
    logic [ 0:0] failed_ring_d;
    logic [ 0:0] failed_ring_enb;
    logic [ 1:0] max_priority_q;
    logic [ 1:0] max_priority_d;
    logic [ 0:0] max_priority_enb;
    logic [ 4:0] valid_fcnt_q;
    logic [ 4:0] valid_fcnt_d;
    logic [ 0:0] valid_fcnt_enb;
    logic [ 4:0] fcnt_q;
    logic [ 4:0] fcnt_d;
    logic [ 0:0] fcnt_enb;
    modport mp (
        input cnt_qout, failed_ring_d, failed_ring_enb, max_priority_d, max_priority_enb, valid_fcnt_d, valid_fcnt_enb, fcnt_d, fcnt_enb,  output reqinfo, cnt_din, cnt_w, cnt_r, failed_ring_q, max_priority_q, valid_fcnt_q, fcnt_q);
    modport sp (
        input reqinfo, cnt_din, cnt_w, cnt_r, failed_ring_q, max_priority_q, valid_fcnt_q, fcnt_q,  output cnt_qout, failed_ring_d, failed_ring_enb, max_priority_d, max_priority_enb, valid_fcnt_d, valid_fcnt_enb, fcnt_d, fcnt_enb);
    modport fp (
        input reqinfo, cnt_din, cnt_w, cnt_r, failed_ring_q, max_priority_q, valid_fcnt_q, fcnt_q, cnt_qout, failed_ring_d, failed_ring_enb, max_priority_d, max_priority_enb, valid_fcnt_d, valid_fcnt_enb, fcnt_d, fcnt_enb);

endinterface

// ------------------------------------------------------------
// register: fdb1_control                          offset: 0x274
interface regmodel0_regmodel_fdbs0_fdb1_control_interface # ();
    logic [ 0:0] ack_on_empty_q;
    modport mp (
        output ack_on_empty_q);
    modport sp (
        input ack_on_empty_q);
    modport fp (
        input ack_on_empty_q);
endinterface

// ------------------------------------------------------------
// register: fdb1_enable                           offset: 0x278
interface regmodel0_regmodel_fdbs0_fdb1_enable_interface # ();
    logic [ 5:0] reqinfo;
    logic [15:0] enable_qout;
    logic [15:0] enable_din;
    logic [ 0:0] enable_w;
    modport mp (
        input enable_qout,  output reqinfo, enable_din, enable_w);
    modport sp (
        input reqinfo, enable_din, enable_w,  output enable_qout);
    modport fp (
        input reqinfo, enable_din, enable_w, enable_qout);
endinterface

// ------------------------------------------------------------
// register: fdb1_status                           offset: 0x27c
interface regmodel0_regmodel_fdbs0_fdb1_status_interface # ();
    logic [15:0] status_d;
    modport mp (
        input status_d);
    modport sp (
        output status_d);
    modport fp (
        input status_d);
endinterface

// ------------------------------------------------------------
// register: fdb1_data_fifo                        offset: 0x280
interface regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface # ();
    logic [31:0] din;
    logic [ 1:0] a;
    logic [31:0] wen;
    logic [ 0:0] cen;
    logic [31:0] dout;
    logic [ 5:0] reqinfo;
    modport mp (
        input dout,  output din, a, wen, cen, reqinfo);
    modport sp (
        input din, a, wen, cen, reqinfo,  output dout);
    modport fp (
        input din, a, wen, cen, reqinfo, dout);
endinterface

`endif // REGMODEL0_REGMODEL_FDBS0_INTERFACE_SV