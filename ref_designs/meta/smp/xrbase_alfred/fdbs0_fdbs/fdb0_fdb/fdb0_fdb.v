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

`ifndef FDB0_FDB_V
`define FDB0_FDB_V

`include "regmodel0_regmodel_fdbs0_interface.sv"
`include "regmodel0_regmodel_sfdbs0_interface.sv"

module fdb0_fdb(

    // Interface clk type clock of fdb0_fdb
    input  logic            clkclk,

    // Interface sys type system of fdb0_fdb
    input  logic            sysreset_n,
    input  logic            systest_mode_cgm,
    input  logic            systest_mode_async,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src0 type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src0_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src1 type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src1_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src2 type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src2_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src3 type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src3_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src4 type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src4_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src5 type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src5_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src6 type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src6_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src7 type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src7_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src8 type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src8_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src9 type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src9_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src10 type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src10_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src11 type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src11_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src12 type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src12_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src13 type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src13_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src14 type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src14_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src15 type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src15_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_tgt type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_sfdb0_tgt_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_tgt_if,

    // Interface regmodel0_regmodel_sfdbs0_ipc_sc type sv_interface of fdb0_fdb
    regmodel0_regmodel_sfdbs0_ipc_sc_interface.sp  regmodel0_regmodel_sfdbs0_ipc_sc_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell0 type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell0_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell1 type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell1_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell2 type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell2_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell3 type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell3_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell4 type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell4_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell5 type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell5_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell6 type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell6_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell7 type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell7_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell8 type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell8_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell9 type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell9_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell10 type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell10_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell11 type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell11_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell12 type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell12_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell13 type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell13_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell14 type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell14_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell15 type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell15_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_control type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_control_interface.sp  regmodel0_regmodel_fdbs0_fdb0_control_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_enable type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_enable_interface.sp  regmodel0_regmodel_fdbs0_fdb0_enable_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_status type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_status_interface.sp  regmodel0_regmodel_fdbs0_fdb0_status_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data0_fifo type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data1_fifo type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data2_fifo type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data3_fifo type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data4_fifo type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data5_fifo type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data6_fifo type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data7_fifo type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data8_fifo type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data9_fifo type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data10_fifo type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data11_fifo type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data12_fifo type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data13_fifo type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data14_fifo type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data15_fifo type sv_interface of fdb0_fdb
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if,

    // Non-Interface Ports
    output logic            err_log_w,
    output logic [2:0]      err_code,
    output logic            err_access,
    output logic [5:0]      err_id,
    output logic [4:0]      err_slc_idx,
    output logic [31:0]     err_data,
    output logic            ram_cen,
    output logic [7:0]      ram_addr,
    output logic [31:0]     ram_wen,
    output logic [31:0]     ram_din,
    input  logic [31:0]     ram_dout,
    output logic [0:0]      irq,
    output logic [0:0]      irq_low
);

parameter SLICE_COUNT = 'd16;
parameter COUNT_WIDTH = 'd2;
parameter MAX_CNT_VAL = 'd3;
parameter HWID_WIDTH  = 'd6;
parameter RAM_A_BITS  = 'd8; 
parameter GROUP_ADDR_OFFSET = 'd0; //spyglass disable -rule STARC05-2.10.3.6 --"leye; PermWaiver; Leye_Lint No need to add number before 'd

// error code for different IPC
parameter logic [2:0] DOORBELL_ERR_NONE       = 3'd0;
parameter logic [2:0] DOORBELL_ERR_DATA       = 3'd1; // LSB data wrong
parameter logic [2:0] DOORBELL_ERR_OVERFLOW   = 3'd2; // counter overflow
parameter logic [2:0] DOORBELL_ERR_UNDERFLOW  = 3'd3; // counter underflow
parameter logic [2:0] DOORBELL_ERR_PERM       = 3'd7; // no permission

logic [SLICE_COUNT-1:0] db_bell_cnt_r;
logic [SLICE_COUNT-1:0] db_bell_cnt_w;
logic [SLICE_COUNT-1:0] [COUNT_WIDTH-1:0] db_bell_cnt_din;
logic [SLICE_COUNT-1:0] [HWID_WIDTH-1:0] db_bell_hw_id;
logic [SLICE_COUNT-1:0] [COUNT_WIDTH-1:0] db_bell_cnt;
logic [SLICE_COUNT-1:0] [COUNT_WIDTH-1:0] db_bell_cnt_rd_val;
logic [SLICE_COUNT-1:0] db_bell_failed_ring_enb;
logic [SLICE_COUNT-1:0] db_bell_failed_ring_d;
logic [SLICE_COUNT-1:0] db_bell_max_priority_enb;
logic [SLICE_COUNT-1:0] [1:0] db_bell_max_priority_d;
logic [SLICE_COUNT-1:0] [1:0] db_bell_max_priority;
logic [SLICE_COUNT-1:0] db_bell_valid_fcnt_enb;
logic [SLICE_COUNT-1:0] [4:0] db_bell_valid_fcnt_d;
logic [SLICE_COUNT-1:0] [4:0] db_bell_valid_fcnt_q;
logic [SLICE_COUNT-1:0] db_bell_fcnt_enb;
logic [SLICE_COUNT-1:0] [4:0] db_bell_fcnt_d;
logic db_ack_on_empty;
logic [SLICE_COUNT-1:0] [1:0] fifo_a;
logic [SLICE_COUNT-1:0] [31:0] fifo_din;
logic [SLICE_COUNT-1:0] [31:0] fifo_dout;
logic [SLICE_COUNT-1:0] fifo_cen;
logic [SLICE_COUNT-1:0] [31:0] fifo_wen;
logic [SLICE_COUNT-1:0] [HWID_WIDTH-1:0] fifo_hw_id;
logic [SLICE_COUNT-1:0] [4:0] fifo_rd_ptr;
logic [SLICE_COUNT-1:0] [4:0] fifo_wr_ptr;
logic [SLICE_COUNT-1:0] [4:0] fifo_wr_vld;
logic [SLICE_COUNT-1:0] [4:0] fifo_cnt;
logic [SLICE_COUNT-1:0] fifo_wr_err;
logic [SLICE_COUNT-1:0] fifo_full;
logic [SLICE_COUNT-1:0] fifo_empty;
logic [SLICE_COUNT-1:0] fifo_vld_empty;
logic [SLICE_COUNT-1:0] fifo_vld_empty_dly1;
logic [SLICE_COUNT-1:0] [HWID_WIDTH-1:0] db_sc_src_id;
logic [SLICE_COUNT-1:0] [2:0] db_sc_size;
logic [HWID_WIDTH-1:0] db_tgt_id;
logic [HWID_WIDTH-1:0] sc_roleid;
logic [SLICE_COUNT-1:0] intr;
logic [SLICE_COUNT-1:0] prio_low;
logic irq_enable_w;
logic [SLICE_COUNT-1:0] irq_enable;
logic [SLICE_COUNT-1:0] irq_enable_ff;
logic [HWID_WIDTH-1:0] irq_enable_id;

// src registers
assign db_sc_src_id[0] = regmodel0_regmodel_sfdbs0_sfdb0_src0_if.id_q;
assign db_sc_size[0] = regmodel0_regmodel_sfdbs0_sfdb0_src0_if.size_q;
assign db_sc_src_id[1] = regmodel0_regmodel_sfdbs0_sfdb0_src1_if.id_q;
assign db_sc_size[1] = regmodel0_regmodel_sfdbs0_sfdb0_src1_if.size_q;
assign db_sc_src_id[2] = regmodel0_regmodel_sfdbs0_sfdb0_src2_if.id_q;
assign db_sc_size[2] = regmodel0_regmodel_sfdbs0_sfdb0_src2_if.size_q;
assign db_sc_src_id[3] = regmodel0_regmodel_sfdbs0_sfdb0_src3_if.id_q;
assign db_sc_size[3] = regmodel0_regmodel_sfdbs0_sfdb0_src3_if.size_q;
assign db_sc_src_id[4] = regmodel0_regmodel_sfdbs0_sfdb0_src4_if.id_q;
assign db_sc_size[4] = regmodel0_regmodel_sfdbs0_sfdb0_src4_if.size_q;
assign db_sc_src_id[5] = regmodel0_regmodel_sfdbs0_sfdb0_src5_if.id_q;
assign db_sc_size[5] = regmodel0_regmodel_sfdbs0_sfdb0_src5_if.size_q;
assign db_sc_src_id[6] = regmodel0_regmodel_sfdbs0_sfdb0_src6_if.id_q;
assign db_sc_size[6] = regmodel0_regmodel_sfdbs0_sfdb0_src6_if.size_q;
assign db_sc_src_id[7] = regmodel0_regmodel_sfdbs0_sfdb0_src7_if.id_q;
assign db_sc_size[7] = regmodel0_regmodel_sfdbs0_sfdb0_src7_if.size_q;
assign db_sc_src_id[8] = regmodel0_regmodel_sfdbs0_sfdb0_src8_if.id_q;
assign db_sc_size[8] = regmodel0_regmodel_sfdbs0_sfdb0_src8_if.size_q;
assign db_sc_src_id[9] = regmodel0_regmodel_sfdbs0_sfdb0_src9_if.id_q;
assign db_sc_size[9] = regmodel0_regmodel_sfdbs0_sfdb0_src9_if.size_q;
assign db_sc_src_id[10] = regmodel0_regmodel_sfdbs0_sfdb0_src10_if.id_q;
assign db_sc_size[10] = regmodel0_regmodel_sfdbs0_sfdb0_src10_if.size_q;
assign db_sc_src_id[11] = regmodel0_regmodel_sfdbs0_sfdb0_src11_if.id_q;
assign db_sc_size[11] = regmodel0_regmodel_sfdbs0_sfdb0_src11_if.size_q;
assign db_sc_src_id[12] = regmodel0_regmodel_sfdbs0_sfdb0_src12_if.id_q;
assign db_sc_size[12] = regmodel0_regmodel_sfdbs0_sfdb0_src12_if.size_q;
assign db_sc_src_id[13] = regmodel0_regmodel_sfdbs0_sfdb0_src13_if.id_q;
assign db_sc_size[13] = regmodel0_regmodel_sfdbs0_sfdb0_src13_if.size_q;
assign db_sc_src_id[14] = regmodel0_regmodel_sfdbs0_sfdb0_src14_if.id_q;
assign db_sc_size[14] = regmodel0_regmodel_sfdbs0_sfdb0_src14_if.size_q;
assign db_sc_src_id[15] = regmodel0_regmodel_sfdbs0_sfdb0_src15_if.id_q;
assign db_sc_size[15] = regmodel0_regmodel_sfdbs0_sfdb0_src15_if.size_q;
// tgt register
assign db_tgt_id = regmodel0_regmodel_sfdbs0_sfdb0_tgt_if.id_q;
// secure register
assign sc_roleid = regmodel0_regmodel_sfdbs0_ipc_sc_if.id_q;
// bell registers
assign db_bell_cnt_r[0] = regmodel0_regmodel_fdbs0_fdb0_bell0_if.cnt_r;
assign db_bell_cnt_w[0] = regmodel0_regmodel_fdbs0_fdb0_bell0_if.cnt_w;
assign db_bell_cnt_din[0] = regmodel0_regmodel_fdbs0_fdb0_bell0_if.cnt_din;
assign db_bell_hw_id[0] = regmodel0_regmodel_fdbs0_fdb0_bell0_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_bell0_if.cnt_qout = db_bell_cnt_rd_val[0];
assign regmodel0_regmodel_fdbs0_fdb0_bell0_if.failed_ring_enb = db_bell_failed_ring_enb[0];
assign regmodel0_regmodel_fdbs0_fdb0_bell0_if.failed_ring_d = db_bell_failed_ring_d[0];
assign regmodel0_regmodel_fdbs0_fdb0_bell0_if.max_priority_enb = db_bell_max_priority_enb[0];
assign regmodel0_regmodel_fdbs0_fdb0_bell0_if.max_priority_d = db_bell_max_priority_d[0];
assign db_bell_max_priority[0] = regmodel0_regmodel_fdbs0_fdb0_bell0_if.max_priority_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell0_if.valid_fcnt_enb = db_bell_valid_fcnt_enb[0];
assign regmodel0_regmodel_fdbs0_fdb0_bell0_if.valid_fcnt_d  = db_bell_valid_fcnt_d[0];
assign db_bell_valid_fcnt_q[0] = regmodel0_regmodel_fdbs0_fdb0_bell0_if.valid_fcnt_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell0_if.fcnt_enb = db_bell_fcnt_enb[0];
assign regmodel0_regmodel_fdbs0_fdb0_bell0_if.fcnt_d = db_bell_fcnt_d[0];
assign db_bell_cnt_r[1] = regmodel0_regmodel_fdbs0_fdb0_bell1_if.cnt_r;
assign db_bell_cnt_w[1] = regmodel0_regmodel_fdbs0_fdb0_bell1_if.cnt_w;
assign db_bell_cnt_din[1] = regmodel0_regmodel_fdbs0_fdb0_bell1_if.cnt_din;
assign db_bell_hw_id[1] = regmodel0_regmodel_fdbs0_fdb0_bell1_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_bell1_if.cnt_qout = db_bell_cnt_rd_val[1];
assign regmodel0_regmodel_fdbs0_fdb0_bell1_if.failed_ring_enb = db_bell_failed_ring_enb[1];
assign regmodel0_regmodel_fdbs0_fdb0_bell1_if.failed_ring_d = db_bell_failed_ring_d[1];
assign regmodel0_regmodel_fdbs0_fdb0_bell1_if.max_priority_enb = db_bell_max_priority_enb[1];
assign regmodel0_regmodel_fdbs0_fdb0_bell1_if.max_priority_d = db_bell_max_priority_d[1];
assign db_bell_max_priority[1] = regmodel0_regmodel_fdbs0_fdb0_bell1_if.max_priority_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell1_if.valid_fcnt_enb = db_bell_valid_fcnt_enb[1];
assign regmodel0_regmodel_fdbs0_fdb0_bell1_if.valid_fcnt_d  = db_bell_valid_fcnt_d[1];
assign db_bell_valid_fcnt_q[1] = regmodel0_regmodel_fdbs0_fdb0_bell1_if.valid_fcnt_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell1_if.fcnt_enb = db_bell_fcnt_enb[1];
assign regmodel0_regmodel_fdbs0_fdb0_bell1_if.fcnt_d = db_bell_fcnt_d[1];
assign db_bell_cnt_r[2] = regmodel0_regmodel_fdbs0_fdb0_bell2_if.cnt_r;
assign db_bell_cnt_w[2] = regmodel0_regmodel_fdbs0_fdb0_bell2_if.cnt_w;
assign db_bell_cnt_din[2] = regmodel0_regmodel_fdbs0_fdb0_bell2_if.cnt_din;
assign db_bell_hw_id[2] = regmodel0_regmodel_fdbs0_fdb0_bell2_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_bell2_if.cnt_qout = db_bell_cnt_rd_val[2];
assign regmodel0_regmodel_fdbs0_fdb0_bell2_if.failed_ring_enb = db_bell_failed_ring_enb[2];
assign regmodel0_regmodel_fdbs0_fdb0_bell2_if.failed_ring_d = db_bell_failed_ring_d[2];
assign regmodel0_regmodel_fdbs0_fdb0_bell2_if.max_priority_enb = db_bell_max_priority_enb[2];
assign regmodel0_regmodel_fdbs0_fdb0_bell2_if.max_priority_d = db_bell_max_priority_d[2];
assign db_bell_max_priority[2] = regmodel0_regmodel_fdbs0_fdb0_bell2_if.max_priority_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell2_if.valid_fcnt_enb = db_bell_valid_fcnt_enb[2];
assign regmodel0_regmodel_fdbs0_fdb0_bell2_if.valid_fcnt_d  = db_bell_valid_fcnt_d[2];
assign db_bell_valid_fcnt_q[2] = regmodel0_regmodel_fdbs0_fdb0_bell2_if.valid_fcnt_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell2_if.fcnt_enb = db_bell_fcnt_enb[2];
assign regmodel0_regmodel_fdbs0_fdb0_bell2_if.fcnt_d = db_bell_fcnt_d[2];
assign db_bell_cnt_r[3] = regmodel0_regmodel_fdbs0_fdb0_bell3_if.cnt_r;
assign db_bell_cnt_w[3] = regmodel0_regmodel_fdbs0_fdb0_bell3_if.cnt_w;
assign db_bell_cnt_din[3] = regmodel0_regmodel_fdbs0_fdb0_bell3_if.cnt_din;
assign db_bell_hw_id[3] = regmodel0_regmodel_fdbs0_fdb0_bell3_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_bell3_if.cnt_qout = db_bell_cnt_rd_val[3];
assign regmodel0_regmodel_fdbs0_fdb0_bell3_if.failed_ring_enb = db_bell_failed_ring_enb[3];
assign regmodel0_regmodel_fdbs0_fdb0_bell3_if.failed_ring_d = db_bell_failed_ring_d[3];
assign regmodel0_regmodel_fdbs0_fdb0_bell3_if.max_priority_enb = db_bell_max_priority_enb[3];
assign regmodel0_regmodel_fdbs0_fdb0_bell3_if.max_priority_d = db_bell_max_priority_d[3];
assign db_bell_max_priority[3] = regmodel0_regmodel_fdbs0_fdb0_bell3_if.max_priority_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell3_if.valid_fcnt_enb = db_bell_valid_fcnt_enb[3];
assign regmodel0_regmodel_fdbs0_fdb0_bell3_if.valid_fcnt_d  = db_bell_valid_fcnt_d[3];
assign db_bell_valid_fcnt_q[3] = regmodel0_regmodel_fdbs0_fdb0_bell3_if.valid_fcnt_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell3_if.fcnt_enb = db_bell_fcnt_enb[3];
assign regmodel0_regmodel_fdbs0_fdb0_bell3_if.fcnt_d = db_bell_fcnt_d[3];
assign db_bell_cnt_r[4] = regmodel0_regmodel_fdbs0_fdb0_bell4_if.cnt_r;
assign db_bell_cnt_w[4] = regmodel0_regmodel_fdbs0_fdb0_bell4_if.cnt_w;
assign db_bell_cnt_din[4] = regmodel0_regmodel_fdbs0_fdb0_bell4_if.cnt_din;
assign db_bell_hw_id[4] = regmodel0_regmodel_fdbs0_fdb0_bell4_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_bell4_if.cnt_qout = db_bell_cnt_rd_val[4];
assign regmodel0_regmodel_fdbs0_fdb0_bell4_if.failed_ring_enb = db_bell_failed_ring_enb[4];
assign regmodel0_regmodel_fdbs0_fdb0_bell4_if.failed_ring_d = db_bell_failed_ring_d[4];
assign regmodel0_regmodel_fdbs0_fdb0_bell4_if.max_priority_enb = db_bell_max_priority_enb[4];
assign regmodel0_regmodel_fdbs0_fdb0_bell4_if.max_priority_d = db_bell_max_priority_d[4];
assign db_bell_max_priority[4] = regmodel0_regmodel_fdbs0_fdb0_bell4_if.max_priority_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell4_if.valid_fcnt_enb = db_bell_valid_fcnt_enb[4];
assign regmodel0_regmodel_fdbs0_fdb0_bell4_if.valid_fcnt_d  = db_bell_valid_fcnt_d[4];
assign db_bell_valid_fcnt_q[4] = regmodel0_regmodel_fdbs0_fdb0_bell4_if.valid_fcnt_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell4_if.fcnt_enb = db_bell_fcnt_enb[4];
assign regmodel0_regmodel_fdbs0_fdb0_bell4_if.fcnt_d = db_bell_fcnt_d[4];
assign db_bell_cnt_r[5] = regmodel0_regmodel_fdbs0_fdb0_bell5_if.cnt_r;
assign db_bell_cnt_w[5] = regmodel0_regmodel_fdbs0_fdb0_bell5_if.cnt_w;
assign db_bell_cnt_din[5] = regmodel0_regmodel_fdbs0_fdb0_bell5_if.cnt_din;
assign db_bell_hw_id[5] = regmodel0_regmodel_fdbs0_fdb0_bell5_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_bell5_if.cnt_qout = db_bell_cnt_rd_val[5];
assign regmodel0_regmodel_fdbs0_fdb0_bell5_if.failed_ring_enb = db_bell_failed_ring_enb[5];
assign regmodel0_regmodel_fdbs0_fdb0_bell5_if.failed_ring_d = db_bell_failed_ring_d[5];
assign regmodel0_regmodel_fdbs0_fdb0_bell5_if.max_priority_enb = db_bell_max_priority_enb[5];
assign regmodel0_regmodel_fdbs0_fdb0_bell5_if.max_priority_d = db_bell_max_priority_d[5];
assign db_bell_max_priority[5] = regmodel0_regmodel_fdbs0_fdb0_bell5_if.max_priority_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell5_if.valid_fcnt_enb = db_bell_valid_fcnt_enb[5];
assign regmodel0_regmodel_fdbs0_fdb0_bell5_if.valid_fcnt_d  = db_bell_valid_fcnt_d[5];
assign db_bell_valid_fcnt_q[5] = regmodel0_regmodel_fdbs0_fdb0_bell5_if.valid_fcnt_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell5_if.fcnt_enb = db_bell_fcnt_enb[5];
assign regmodel0_regmodel_fdbs0_fdb0_bell5_if.fcnt_d = db_bell_fcnt_d[5];
assign db_bell_cnt_r[6] = regmodel0_regmodel_fdbs0_fdb0_bell6_if.cnt_r;
assign db_bell_cnt_w[6] = regmodel0_regmodel_fdbs0_fdb0_bell6_if.cnt_w;
assign db_bell_cnt_din[6] = regmodel0_regmodel_fdbs0_fdb0_bell6_if.cnt_din;
assign db_bell_hw_id[6] = regmodel0_regmodel_fdbs0_fdb0_bell6_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_bell6_if.cnt_qout = db_bell_cnt_rd_val[6];
assign regmodel0_regmodel_fdbs0_fdb0_bell6_if.failed_ring_enb = db_bell_failed_ring_enb[6];
assign regmodel0_regmodel_fdbs0_fdb0_bell6_if.failed_ring_d = db_bell_failed_ring_d[6];
assign regmodel0_regmodel_fdbs0_fdb0_bell6_if.max_priority_enb = db_bell_max_priority_enb[6];
assign regmodel0_regmodel_fdbs0_fdb0_bell6_if.max_priority_d = db_bell_max_priority_d[6];
assign db_bell_max_priority[6] = regmodel0_regmodel_fdbs0_fdb0_bell6_if.max_priority_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell6_if.valid_fcnt_enb = db_bell_valid_fcnt_enb[6];
assign regmodel0_regmodel_fdbs0_fdb0_bell6_if.valid_fcnt_d  = db_bell_valid_fcnt_d[6];
assign db_bell_valid_fcnt_q[6] = regmodel0_regmodel_fdbs0_fdb0_bell6_if.valid_fcnt_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell6_if.fcnt_enb = db_bell_fcnt_enb[6];
assign regmodel0_regmodel_fdbs0_fdb0_bell6_if.fcnt_d = db_bell_fcnt_d[6];
assign db_bell_cnt_r[7] = regmodel0_regmodel_fdbs0_fdb0_bell7_if.cnt_r;
assign db_bell_cnt_w[7] = regmodel0_regmodel_fdbs0_fdb0_bell7_if.cnt_w;
assign db_bell_cnt_din[7] = regmodel0_regmodel_fdbs0_fdb0_bell7_if.cnt_din;
assign db_bell_hw_id[7] = regmodel0_regmodel_fdbs0_fdb0_bell7_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_bell7_if.cnt_qout = db_bell_cnt_rd_val[7];
assign regmodel0_regmodel_fdbs0_fdb0_bell7_if.failed_ring_enb = db_bell_failed_ring_enb[7];
assign regmodel0_regmodel_fdbs0_fdb0_bell7_if.failed_ring_d = db_bell_failed_ring_d[7];
assign regmodel0_regmodel_fdbs0_fdb0_bell7_if.max_priority_enb = db_bell_max_priority_enb[7];
assign regmodel0_regmodel_fdbs0_fdb0_bell7_if.max_priority_d = db_bell_max_priority_d[7];
assign db_bell_max_priority[7] = regmodel0_regmodel_fdbs0_fdb0_bell7_if.max_priority_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell7_if.valid_fcnt_enb = db_bell_valid_fcnt_enb[7];
assign regmodel0_regmodel_fdbs0_fdb0_bell7_if.valid_fcnt_d  = db_bell_valid_fcnt_d[7];
assign db_bell_valid_fcnt_q[7] = regmodel0_regmodel_fdbs0_fdb0_bell7_if.valid_fcnt_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell7_if.fcnt_enb = db_bell_fcnt_enb[7];
assign regmodel0_regmodel_fdbs0_fdb0_bell7_if.fcnt_d = db_bell_fcnt_d[7];
assign db_bell_cnt_r[8] = regmodel0_regmodel_fdbs0_fdb0_bell8_if.cnt_r;
assign db_bell_cnt_w[8] = regmodel0_regmodel_fdbs0_fdb0_bell8_if.cnt_w;
assign db_bell_cnt_din[8] = regmodel0_regmodel_fdbs0_fdb0_bell8_if.cnt_din;
assign db_bell_hw_id[8] = regmodel0_regmodel_fdbs0_fdb0_bell8_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_bell8_if.cnt_qout = db_bell_cnt_rd_val[8];
assign regmodel0_regmodel_fdbs0_fdb0_bell8_if.failed_ring_enb = db_bell_failed_ring_enb[8];
assign regmodel0_regmodel_fdbs0_fdb0_bell8_if.failed_ring_d = db_bell_failed_ring_d[8];
assign regmodel0_regmodel_fdbs0_fdb0_bell8_if.max_priority_enb = db_bell_max_priority_enb[8];
assign regmodel0_regmodel_fdbs0_fdb0_bell8_if.max_priority_d = db_bell_max_priority_d[8];
assign db_bell_max_priority[8] = regmodel0_regmodel_fdbs0_fdb0_bell8_if.max_priority_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell8_if.valid_fcnt_enb = db_bell_valid_fcnt_enb[8];
assign regmodel0_regmodel_fdbs0_fdb0_bell8_if.valid_fcnt_d  = db_bell_valid_fcnt_d[8];
assign db_bell_valid_fcnt_q[8] = regmodel0_regmodel_fdbs0_fdb0_bell8_if.valid_fcnt_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell8_if.fcnt_enb = db_bell_fcnt_enb[8];
assign regmodel0_regmodel_fdbs0_fdb0_bell8_if.fcnt_d = db_bell_fcnt_d[8];
assign db_bell_cnt_r[9] = regmodel0_regmodel_fdbs0_fdb0_bell9_if.cnt_r;
assign db_bell_cnt_w[9] = regmodel0_regmodel_fdbs0_fdb0_bell9_if.cnt_w;
assign db_bell_cnt_din[9] = regmodel0_regmodel_fdbs0_fdb0_bell9_if.cnt_din;
assign db_bell_hw_id[9] = regmodel0_regmodel_fdbs0_fdb0_bell9_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_bell9_if.cnt_qout = db_bell_cnt_rd_val[9];
assign regmodel0_regmodel_fdbs0_fdb0_bell9_if.failed_ring_enb = db_bell_failed_ring_enb[9];
assign regmodel0_regmodel_fdbs0_fdb0_bell9_if.failed_ring_d = db_bell_failed_ring_d[9];
assign regmodel0_regmodel_fdbs0_fdb0_bell9_if.max_priority_enb = db_bell_max_priority_enb[9];
assign regmodel0_regmodel_fdbs0_fdb0_bell9_if.max_priority_d = db_bell_max_priority_d[9];
assign db_bell_max_priority[9] = regmodel0_regmodel_fdbs0_fdb0_bell9_if.max_priority_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell9_if.valid_fcnt_enb = db_bell_valid_fcnt_enb[9];
assign regmodel0_regmodel_fdbs0_fdb0_bell9_if.valid_fcnt_d  = db_bell_valid_fcnt_d[9];
assign db_bell_valid_fcnt_q[9] = regmodel0_regmodel_fdbs0_fdb0_bell9_if.valid_fcnt_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell9_if.fcnt_enb = db_bell_fcnt_enb[9];
assign regmodel0_regmodel_fdbs0_fdb0_bell9_if.fcnt_d = db_bell_fcnt_d[9];
assign db_bell_cnt_r[10] = regmodel0_regmodel_fdbs0_fdb0_bell10_if.cnt_r;
assign db_bell_cnt_w[10] = regmodel0_regmodel_fdbs0_fdb0_bell10_if.cnt_w;
assign db_bell_cnt_din[10] = regmodel0_regmodel_fdbs0_fdb0_bell10_if.cnt_din;
assign db_bell_hw_id[10] = regmodel0_regmodel_fdbs0_fdb0_bell10_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_bell10_if.cnt_qout = db_bell_cnt_rd_val[10];
assign regmodel0_regmodel_fdbs0_fdb0_bell10_if.failed_ring_enb = db_bell_failed_ring_enb[10];
assign regmodel0_regmodel_fdbs0_fdb0_bell10_if.failed_ring_d = db_bell_failed_ring_d[10];
assign regmodel0_regmodel_fdbs0_fdb0_bell10_if.max_priority_enb = db_bell_max_priority_enb[10];
assign regmodel0_regmodel_fdbs0_fdb0_bell10_if.max_priority_d = db_bell_max_priority_d[10];
assign db_bell_max_priority[10] = regmodel0_regmodel_fdbs0_fdb0_bell10_if.max_priority_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell10_if.valid_fcnt_enb = db_bell_valid_fcnt_enb[10];
assign regmodel0_regmodel_fdbs0_fdb0_bell10_if.valid_fcnt_d  = db_bell_valid_fcnt_d[10];
assign db_bell_valid_fcnt_q[10] = regmodel0_regmodel_fdbs0_fdb0_bell10_if.valid_fcnt_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell10_if.fcnt_enb = db_bell_fcnt_enb[10];
assign regmodel0_regmodel_fdbs0_fdb0_bell10_if.fcnt_d = db_bell_fcnt_d[10];
assign db_bell_cnt_r[11] = regmodel0_regmodel_fdbs0_fdb0_bell11_if.cnt_r;
assign db_bell_cnt_w[11] = regmodel0_regmodel_fdbs0_fdb0_bell11_if.cnt_w;
assign db_bell_cnt_din[11] = regmodel0_regmodel_fdbs0_fdb0_bell11_if.cnt_din;
assign db_bell_hw_id[11] = regmodel0_regmodel_fdbs0_fdb0_bell11_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_bell11_if.cnt_qout = db_bell_cnt_rd_val[11];
assign regmodel0_regmodel_fdbs0_fdb0_bell11_if.failed_ring_enb = db_bell_failed_ring_enb[11];
assign regmodel0_regmodel_fdbs0_fdb0_bell11_if.failed_ring_d = db_bell_failed_ring_d[11];
assign regmodel0_regmodel_fdbs0_fdb0_bell11_if.max_priority_enb = db_bell_max_priority_enb[11];
assign regmodel0_regmodel_fdbs0_fdb0_bell11_if.max_priority_d = db_bell_max_priority_d[11];
assign db_bell_max_priority[11] = regmodel0_regmodel_fdbs0_fdb0_bell11_if.max_priority_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell11_if.valid_fcnt_enb = db_bell_valid_fcnt_enb[11];
assign regmodel0_regmodel_fdbs0_fdb0_bell11_if.valid_fcnt_d  = db_bell_valid_fcnt_d[11];
assign db_bell_valid_fcnt_q[11] = regmodel0_regmodel_fdbs0_fdb0_bell11_if.valid_fcnt_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell11_if.fcnt_enb = db_bell_fcnt_enb[11];
assign regmodel0_regmodel_fdbs0_fdb0_bell11_if.fcnt_d = db_bell_fcnt_d[11];
assign db_bell_cnt_r[12] = regmodel0_regmodel_fdbs0_fdb0_bell12_if.cnt_r;
assign db_bell_cnt_w[12] = regmodel0_regmodel_fdbs0_fdb0_bell12_if.cnt_w;
assign db_bell_cnt_din[12] = regmodel0_regmodel_fdbs0_fdb0_bell12_if.cnt_din;
assign db_bell_hw_id[12] = regmodel0_regmodel_fdbs0_fdb0_bell12_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_bell12_if.cnt_qout = db_bell_cnt_rd_val[12];
assign regmodel0_regmodel_fdbs0_fdb0_bell12_if.failed_ring_enb = db_bell_failed_ring_enb[12];
assign regmodel0_regmodel_fdbs0_fdb0_bell12_if.failed_ring_d = db_bell_failed_ring_d[12];
assign regmodel0_regmodel_fdbs0_fdb0_bell12_if.max_priority_enb = db_bell_max_priority_enb[12];
assign regmodel0_regmodel_fdbs0_fdb0_bell12_if.max_priority_d = db_bell_max_priority_d[12];
assign db_bell_max_priority[12] = regmodel0_regmodel_fdbs0_fdb0_bell12_if.max_priority_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell12_if.valid_fcnt_enb = db_bell_valid_fcnt_enb[12];
assign regmodel0_regmodel_fdbs0_fdb0_bell12_if.valid_fcnt_d  = db_bell_valid_fcnt_d[12];
assign db_bell_valid_fcnt_q[12] = regmodel0_regmodel_fdbs0_fdb0_bell12_if.valid_fcnt_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell12_if.fcnt_enb = db_bell_fcnt_enb[12];
assign regmodel0_regmodel_fdbs0_fdb0_bell12_if.fcnt_d = db_bell_fcnt_d[12];
assign db_bell_cnt_r[13] = regmodel0_regmodel_fdbs0_fdb0_bell13_if.cnt_r;
assign db_bell_cnt_w[13] = regmodel0_regmodel_fdbs0_fdb0_bell13_if.cnt_w;
assign db_bell_cnt_din[13] = regmodel0_regmodel_fdbs0_fdb0_bell13_if.cnt_din;
assign db_bell_hw_id[13] = regmodel0_regmodel_fdbs0_fdb0_bell13_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_bell13_if.cnt_qout = db_bell_cnt_rd_val[13];
assign regmodel0_regmodel_fdbs0_fdb0_bell13_if.failed_ring_enb = db_bell_failed_ring_enb[13];
assign regmodel0_regmodel_fdbs0_fdb0_bell13_if.failed_ring_d = db_bell_failed_ring_d[13];
assign regmodel0_regmodel_fdbs0_fdb0_bell13_if.max_priority_enb = db_bell_max_priority_enb[13];
assign regmodel0_regmodel_fdbs0_fdb0_bell13_if.max_priority_d = db_bell_max_priority_d[13];
assign db_bell_max_priority[13] = regmodel0_regmodel_fdbs0_fdb0_bell13_if.max_priority_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell13_if.valid_fcnt_enb = db_bell_valid_fcnt_enb[13];
assign regmodel0_regmodel_fdbs0_fdb0_bell13_if.valid_fcnt_d  = db_bell_valid_fcnt_d[13];
assign db_bell_valid_fcnt_q[13] = regmodel0_regmodel_fdbs0_fdb0_bell13_if.valid_fcnt_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell13_if.fcnt_enb = db_bell_fcnt_enb[13];
assign regmodel0_regmodel_fdbs0_fdb0_bell13_if.fcnt_d = db_bell_fcnt_d[13];
assign db_bell_cnt_r[14] = regmodel0_regmodel_fdbs0_fdb0_bell14_if.cnt_r;
assign db_bell_cnt_w[14] = regmodel0_regmodel_fdbs0_fdb0_bell14_if.cnt_w;
assign db_bell_cnt_din[14] = regmodel0_regmodel_fdbs0_fdb0_bell14_if.cnt_din;
assign db_bell_hw_id[14] = regmodel0_regmodel_fdbs0_fdb0_bell14_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_bell14_if.cnt_qout = db_bell_cnt_rd_val[14];
assign regmodel0_regmodel_fdbs0_fdb0_bell14_if.failed_ring_enb = db_bell_failed_ring_enb[14];
assign regmodel0_regmodel_fdbs0_fdb0_bell14_if.failed_ring_d = db_bell_failed_ring_d[14];
assign regmodel0_regmodel_fdbs0_fdb0_bell14_if.max_priority_enb = db_bell_max_priority_enb[14];
assign regmodel0_regmodel_fdbs0_fdb0_bell14_if.max_priority_d = db_bell_max_priority_d[14];
assign db_bell_max_priority[14] = regmodel0_regmodel_fdbs0_fdb0_bell14_if.max_priority_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell14_if.valid_fcnt_enb = db_bell_valid_fcnt_enb[14];
assign regmodel0_regmodel_fdbs0_fdb0_bell14_if.valid_fcnt_d  = db_bell_valid_fcnt_d[14];
assign db_bell_valid_fcnt_q[14] = regmodel0_regmodel_fdbs0_fdb0_bell14_if.valid_fcnt_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell14_if.fcnt_enb = db_bell_fcnt_enb[14];
assign regmodel0_regmodel_fdbs0_fdb0_bell14_if.fcnt_d = db_bell_fcnt_d[14];
assign db_bell_cnt_r[15] = regmodel0_regmodel_fdbs0_fdb0_bell15_if.cnt_r;
assign db_bell_cnt_w[15] = regmodel0_regmodel_fdbs0_fdb0_bell15_if.cnt_w;
assign db_bell_cnt_din[15] = regmodel0_regmodel_fdbs0_fdb0_bell15_if.cnt_din;
assign db_bell_hw_id[15] = regmodel0_regmodel_fdbs0_fdb0_bell15_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_bell15_if.cnt_qout = db_bell_cnt_rd_val[15];
assign regmodel0_regmodel_fdbs0_fdb0_bell15_if.failed_ring_enb = db_bell_failed_ring_enb[15];
assign regmodel0_regmodel_fdbs0_fdb0_bell15_if.failed_ring_d = db_bell_failed_ring_d[15];
assign regmodel0_regmodel_fdbs0_fdb0_bell15_if.max_priority_enb = db_bell_max_priority_enb[15];
assign regmodel0_regmodel_fdbs0_fdb0_bell15_if.max_priority_d = db_bell_max_priority_d[15];
assign db_bell_max_priority[15] = regmodel0_regmodel_fdbs0_fdb0_bell15_if.max_priority_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell15_if.valid_fcnt_enb = db_bell_valid_fcnt_enb[15];
assign regmodel0_regmodel_fdbs0_fdb0_bell15_if.valid_fcnt_d  = db_bell_valid_fcnt_d[15];
assign db_bell_valid_fcnt_q[15] = regmodel0_regmodel_fdbs0_fdb0_bell15_if.valid_fcnt_q;
assign regmodel0_regmodel_fdbs0_fdb0_bell15_if.fcnt_enb = db_bell_fcnt_enb[15];
assign regmodel0_regmodel_fdbs0_fdb0_bell15_if.fcnt_d = db_bell_fcnt_d[15];
// control register
assign db_ack_on_empty = regmodel0_regmodel_fdbs0_fdb0_control_if.ack_on_empty_q;
// compact irq enable register
assign irq_enable_w = regmodel0_regmodel_fdbs0_fdb0_enable_if.enable_w;
assign irq_enable   = regmodel0_regmodel_fdbs0_fdb0_enable_if.enable_din;
assign irq_enable_id  = regmodel0_regmodel_fdbs0_fdb0_enable_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_enable_if.enable_qout = irq_enable_ff;
// irq status register
assign regmodel0_regmodel_fdbs0_fdb0_status_if.status_d = intr & irq_enable_ff;
// fifo read/write connections
assign fifo_cen[0] = regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if.cen;
assign fifo_a[0] = regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if.a;
assign fifo_hw_id[0] = regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if.dout = fifo_dout[0];
assign fifo_wen[0] = regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if.wen;
assign fifo_din[0] = regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if.din;
assign fifo_cen[1] = regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if.cen;
assign fifo_a[1] = regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if.a;
assign fifo_hw_id[1] = regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if.dout = fifo_dout[1];
assign fifo_wen[1] = regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if.wen;
assign fifo_din[1] = regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if.din;
assign fifo_cen[2] = regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if.cen;
assign fifo_a[2] = regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if.a;
assign fifo_hw_id[2] = regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if.dout = fifo_dout[2];
assign fifo_wen[2] = regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if.wen;
assign fifo_din[2] = regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if.din;
assign fifo_cen[3] = regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if.cen;
assign fifo_a[3] = regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if.a;
assign fifo_hw_id[3] = regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if.dout = fifo_dout[3];
assign fifo_wen[3] = regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if.wen;
assign fifo_din[3] = regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if.din;
assign fifo_cen[4] = regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if.cen;
assign fifo_a[4] = regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if.a;
assign fifo_hw_id[4] = regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if.dout = fifo_dout[4];
assign fifo_wen[4] = regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if.wen;
assign fifo_din[4] = regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if.din;
assign fifo_cen[5] = regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if.cen;
assign fifo_a[5] = regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if.a;
assign fifo_hw_id[5] = regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if.dout = fifo_dout[5];
assign fifo_wen[5] = regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if.wen;
assign fifo_din[5] = regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if.din;
assign fifo_cen[6] = regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if.cen;
assign fifo_a[6] = regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if.a;
assign fifo_hw_id[6] = regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if.dout = fifo_dout[6];
assign fifo_wen[6] = regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if.wen;
assign fifo_din[6] = regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if.din;
assign fifo_cen[7] = regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if.cen;
assign fifo_a[7] = regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if.a;
assign fifo_hw_id[7] = regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if.dout = fifo_dout[7];
assign fifo_wen[7] = regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if.wen;
assign fifo_din[7] = regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if.din;
assign fifo_cen[8] = regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if.cen;
assign fifo_a[8] = regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if.a;
assign fifo_hw_id[8] = regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if.dout = fifo_dout[8];
assign fifo_wen[8] = regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if.wen;
assign fifo_din[8] = regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if.din;
assign fifo_cen[9] = regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if.cen;
assign fifo_a[9] = regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if.a;
assign fifo_hw_id[9] = regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if.dout = fifo_dout[9];
assign fifo_wen[9] = regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if.wen;
assign fifo_din[9] = regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if.din;
assign fifo_cen[10] = regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if.cen;
assign fifo_a[10] = regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if.a;
assign fifo_hw_id[10] = regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if.dout = fifo_dout[10];
assign fifo_wen[10] = regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if.wen;
assign fifo_din[10] = regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if.din;
assign fifo_cen[11] = regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if.cen;
assign fifo_a[11] = regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if.a;
assign fifo_hw_id[11] = regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if.dout = fifo_dout[11];
assign fifo_wen[11] = regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if.wen;
assign fifo_din[11] = regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if.din;
assign fifo_cen[12] = regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if.cen;
assign fifo_a[12] = regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if.a;
assign fifo_hw_id[12] = regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if.dout = fifo_dout[12];
assign fifo_wen[12] = regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if.wen;
assign fifo_din[12] = regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if.din;
assign fifo_cen[13] = regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if.cen;
assign fifo_a[13] = regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if.a;
assign fifo_hw_id[13] = regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if.dout = fifo_dout[13];
assign fifo_wen[13] = regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if.wen;
assign fifo_din[13] = regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if.din;
assign fifo_cen[14] = regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if.cen;
assign fifo_a[14] = regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if.a;
assign fifo_hw_id[14] = regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if.dout = fifo_dout[14];
assign fifo_wen[14] = regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if.wen;
assign fifo_din[14] = regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if.din;
assign fifo_cen[15] = regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if.cen;
assign fifo_a[15] = regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if.a;
assign fifo_hw_id[15] = regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if.reqinfo;
assign regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if.dout = fifo_dout[15];
assign fifo_wen[15] = regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if.wen;
assign fifo_din[15] = regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if.din;

//==========================================================
// security & integrity check {{{

logic [SLICE_COUNT-1:0] has_perm_w, has_perm_r, has_err;  // err includes perm
logic [SLICE_COUNT-1:0] [2:0] err_code_out;

// spyglass disable_block W415a
always_comb begin
    has_perm_w = 1'b0;
    has_perm_r = 1'b0;
    has_err    = 1'b0;

    for (int ii=0; ii<SLICE_COUNT; ii++) begin
        has_perm_w[ii] = 1'b0;
        has_perm_r[ii] = 1'b0;
        has_err[ii] = 1'b0;
        err_code_out[ii] = DOORBELL_ERR_NONE;
        if (db_bell_cnt_r[ii] || db_bell_cnt_w[ii]) begin
            if ((sc_roleid == db_bell_hw_id[ii]) ||           // matches security
                ((db_sc_src_id[ii] == db_bell_hw_id[ii]) &&
                  (db_tgt_id == db_bell_hw_id[ii]))) begin    // OR (source AND target) match
                has_perm_w[ii] = 1'b1;
                has_perm_r[ii] = 1'b1;
                if (db_bell_cnt_w[ii]) begin
                    if ((db_bell_cnt_din[ii][0] == 1'b1) &&
                        (db_bell_cnt[ii] == MAX_CNT_VAL)) begin
                        has_err[ii] = 1'b1;
                        err_code_out[ii]= DOORBELL_ERR_OVERFLOW;
                    end else
                    if ((db_bell_cnt_din[ii][0] == 1'b0) &&
                        (db_bell_cnt[ii] == 'd0)) begin
                        has_err[ii] = 1'b1;
                        err_code_out[ii]= DOORBELL_ERR_UNDERFLOW;
                    end
                end
            end else
            if (db_sc_src_id[ii] == db_bell_hw_id[ii]) begin   // matches source CPU
                has_perm_w[ii] = 1'b1;
                has_perm_r[ii] = 1'b1;
                if (db_bell_cnt_w[ii]) begin
                    if (db_bell_cnt_din[ii][0] == 1'b0) begin   // source write 0
                        has_err[ii] = 1'b1;
                        err_code_out[ii]= DOORBELL_ERR_DATA;
                    end else
                    if (db_bell_cnt[ii] == MAX_CNT_VAL) begin   // source write 1 when cntr is MAX_CNT_VAL
                        has_err[ii] = 1'b1;
                        err_code_out[ii]= DOORBELL_ERR_OVERFLOW;
                    end
                end
            end else
            if (db_tgt_id == db_bell_hw_id[ii]) begin   // matches target CPU
                has_perm_w[ii] = 1'b1;
                has_perm_r[ii] = 1'b1;
                if (db_bell_cnt_w[ii]) begin
                    if (db_bell_cnt_din[ii][0] == 1'b1) begin   // target write 1
                        has_err[ii] = 1'b1;
                        err_code_out[ii]= DOORBELL_ERR_DATA;
                    end else
                    if (db_bell_cnt[ii] == 'd0) begin   // target write 0 when cntr is 'd0
                        has_err[ii] = 1'b1;
                        err_code_out[ii]= DOORBELL_ERR_UNDERFLOW;
                    end
                end
            end else
            begin   // from others
                has_err[ii] = 1'b1;
                err_code_out[ii] = DOORBELL_ERR_PERM;
            end
        end // bell count read or write
        // fifo access
        else if (~fifo_cen[ii]) begin
            // matches security -OR- (source AND target) match
            if ((sc_roleid == fifo_hw_id[ii]) ||
                ((db_sc_src_id[ii] == fifo_hw_id[ii]) &&
                  (db_tgt_id == fifo_hw_id[ii]))) begin
                has_perm_w[ii] = 1'b1;
                has_perm_r[ii] = 1'b1;
            end else
            /// matches source CPU
            if (db_sc_src_id[ii] == fifo_hw_id[ii]) begin
                has_perm_w[ii] = 1'b1;
                has_perm_r[ii] = 1'b0;
                // read
                if (&fifo_wen[ii]) begin
                    has_err[ii] = 1'b1;
                    err_code_out[ii]= DOORBELL_ERR_PERM;
                end
            end else
            // matches target CPU
            if (db_tgt_id == fifo_hw_id[ii]) begin
                has_perm_w[ii] = 1'b0;
                has_perm_r[ii] = 1'b1;
                // write
                if (~(&fifo_wen[ii])) begin
                    has_err[ii] = 1'b1;
                    err_code_out[ii]= DOORBELL_ERR_PERM;
                end
            end
            // Does not match any ID
            else begin
                has_err[ii] = 1'b1;
                err_code_out[ii]= DOORBELL_ERR_PERM;
            end
        end // fifo access
    end // for
end
// spyglass enable_block W415a

logic enbl_has_err;
logic has_perm_enbl_w;
always_comb begin
    if ((irq_enable_id == db_tgt_id) || (irq_enable_id == sc_roleid)) begin
        enbl_has_err = 1'b0;
        has_perm_enbl_w = 1'b1;
    end else begin
        enbl_has_err = irq_enable_w;
        has_perm_enbl_w = 1'b0;
    end
end
logic [4:0] err_index;
always_comb begin
    err_index = 5'd0;
    priority case (1'b1)
        has_err[ 0]: err_index = 5'd0;
        has_err[ 1]: err_index = 5'd1;
        has_err[ 2]: err_index = 5'd2;
        has_err[ 3]: err_index = 5'd3;
        has_err[ 4]: err_index = 5'd4;
        has_err[ 5]: err_index = 5'd5;
        has_err[ 6]: err_index = 5'd6;
        has_err[ 7]: err_index = 5'd7;
        has_err[ 8]: err_index = 5'd8;
        has_err[ 9]: err_index = 5'd9;
        has_err[10]: err_index = 5'd10;
        has_err[11]: err_index = 5'd11;
        has_err[12]: err_index = 5'd12;
        has_err[13]: err_index = 5'd13;
        has_err[14]: err_index = 5'd14;
        has_err[15]: err_index = 5'd15;
        default: err_index = 5'd0;
    endcase
end

always_comb begin
    err_log_w   = 1'b0;
    err_slc_idx = 5'd0;
    err_code    = 3'd0;
    err_access  = 1'b0;
    err_id      = {HWID_WIDTH{1'b0}};
    err_data    = 32'd0;

    if (has_err != 1'd0) begin
        err_log_w   = 1'b1;
        err_slc_idx = err_index;
        //spyglass disable_block -rules "ImproperRangeIndex-ML, LINT_IMPROPER_RANGE_INDEX" --"daberkow; PermWaiver; Correct range will always be selected"
        err_code    = err_code_out[err_index];
        err_access  = db_bell_cnt_w[err_index] || ~(&fifo_wen[err_index]);
        err_id      = db_bell_hw_id[err_index];
        err_data    = (~fifo_cen[err_index])
                    ? {32{~(&fifo_wen)}} & fifo_din[err_index]
                    : {31'd0, db_bell_cnt_din[err_index][0]};
        //spyglass enable_block -rules "ImproperRangeIndex-ML, LINT_IMPROPER_RANGE_INDEX"
    end
    else if (enbl_has_err) begin
        err_log_w   = 1'b1;
        err_slc_idx = 5'd0;
        err_code    = DOORBELL_ERR_PERM;
        err_access  = 1'b1;
        err_id      = irq_enable_id;
        err_data    = {{32-SLICE_COUNT{1'b0}}, irq_enable};
    end
end
// }}}

//==========================================================
// write doorbell count {{{

always @(posedge clkclk or negedge sysreset_n)
   if (!sysreset_n) begin 
      db_bell_cnt <= '0;
   end 
   else 
    begin
        for (int ii=0; ii<SLICE_COUNT; ii++) begin
            // db bell count write
            if (db_bell_cnt_w[ii] && has_perm_w[ii] && ~has_err[ii]) begin
                // rings bell (increment)
                if (db_bell_cnt_din[ii][0]) begin
                    if (~fifo_wr_err[ii]) begin
                        db_bell_cnt[ii] <= db_bell_cnt[ii] + 1'd1;
                    end
                end
                // clears bell (decrement)
                else begin
                    db_bell_cnt[ii] <= db_bell_cnt[ii] - 1'd1;
                end
            end
            // fifo access with bell count set/clear
            else if (~fifo_cen[ii]) begin
                // fifo write
                if (~(&fifo_wen[ii]) && has_perm_w[ii] && ~has_err[ii]) begin
                    // rings bell, cnt set to 1 when doing a FIFO ring
                    if (fifo_a[ii][0]) begin
                        if (~fifo_full[ii] && ~fifo_wr_err[ii]) begin
                            db_bell_cnt[ii] <= {{COUNT_WIDTH-1{1'b0}},1'b1}; //'d1 
                        end
                    end
                end
                // fifo read
                else if (has_perm_r[ii] && ~has_err[ii]) begin
                    // ack_on_empty zeros bell count
                    if (db_ack_on_empty && fifo_vld_empty[ii]) begin
                        db_bell_cnt[ii] <= {COUNT_WIDTH{1'b0}}; //'d0;
                    end
                end
            end // fifo access
        end // for
    end
// }}}

//==========================================================
// read doorbell count {{{

always_comb begin
    for (int ii=0; ii<SLICE_COUNT; ii++) begin
        db_bell_cnt_rd_val[ii] = {COUNT_WIDTH{1'b0}};//'0;
        if (db_bell_cnt_r[ii] & has_perm_r[ii]) begin
            db_bell_cnt_rd_val[ii] = db_bell_cnt[ii];
        end
    end
end
// }}}

//==========================================================
// doorbell ring 'max_priority' tracking {{{

// spyglass disable_block W415a
always_comb begin
    db_bell_max_priority_enb = '0;
    db_bell_max_priority_d   = '0;

    for (int ii=0; ii<SLICE_COUNT; ii++) begin
        // db bell count write
        if (db_bell_cnt_w[ii] && has_perm_w[ii] && ~has_err[ii]) begin
            // set
            if (db_bell_cnt_din[ii][0]) begin
                if (~fifo_wr_err[ii] &&
                   ((db_bell_max_priority[ii][0] == 1'b0) ||
                    (db_bell_cnt_din[ii][1] == 1'b0))) begin
                    db_bell_max_priority_enb[ii] = 'd1;
                    db_bell_max_priority_d[ii]   = db_bell_cnt_din[ii][1:0];
                end
            end
            // clear
            else begin
                if (db_bell_cnt[ii] == 'd1) begin
                    db_bell_max_priority_enb[ii] = 'd1;
                    db_bell_max_priority_d[ii]   = 'd0;
                end
            end
        end
        // fifo access with max_priority set/clear
        else if (~fifo_cen[ii]) begin
            // fifo write
            if (~(&fifo_wen[ii]) && has_perm_w[ii] && ~has_err[ii]) begin
                // ring doorbell
                if (fifo_a[ii][0]) begin
                    if (~fifo_full[ii] && ~fifo_wr_err[ii] &&
                       ((db_bell_max_priority[ii][0] == 1'b0) ||
                        (fifo_a[ii][1] == 1'b0))) begin
                        db_bell_max_priority_enb[ii] = 'd1;
                        db_bell_max_priority_d[ii]   = fifo_a[ii];
                    end
                end
            end
            // fifo read
            else if (has_perm_r[ii] && ~has_err[ii]) begin
                // ack_on_empty zeros max_priority
                if (db_ack_on_empty && fifo_vld_empty[ii]) begin
                    db_bell_max_priority_enb[ii] = 'd1;
                    db_bell_max_priority_d[ii]   = 'd0;
                end
            end
        end // fifo access
    end // for
end
// spyglass enable_block W415a
// }}}

//==========================================================
// IRQ {{{

always_comb begin
    for (int ii=0; ii<SLICE_COUNT; ii++) begin
        intr[ii]     = (db_bell_cnt[ii] != {COUNT_WIDTH{1'b0}}); //'d0);
        prio_low[ii] = (db_bell_max_priority[ii] == 2'b11);
    end
end

always @(posedge clkclk or negedge sysreset_n)
   if (!sysreset_n) begin 
      irq           <= '0;
      irq_low       <= '0;
      irq_enable_ff <= {SLICE_COUNT{1'b1}};
   end 
   else 
    begin
        irq     <= |(intr & ~prio_low & irq_enable_ff);
        irq_low <= |(intr &  prio_low & irq_enable_ff);
        if (irq_enable_w && has_perm_enbl_w) begin
            irq_enable_ff <= irq_enable;
        end
    end
// }}}

//==========================================================
// FIFO Management {{{

// decode fifo depth; pointer limit, wrap bit, compare mask
logic [SLICE_COUNT-1:0] ptr_offset;
logic [SLICE_COUNT-1:0] [4:0] fifo_depth;
logic [SLICE_COUNT-1:0] [4:0] ptr_limit;
logic [SLICE_COUNT-1:0] [2:0] ptr_wrapbit;
logic [SLICE_COUNT-1:0] [4:0] ptr_cmpmask;

always_comb begin
    for (int ii=0; ii<SLICE_COUNT; ii++) begin
        case (db_sc_size[ii])
            3'd0: begin
                ptr_offset[ii]  = 1'b1;
                fifo_depth[ii]  = 5'd2;
                ptr_limit[ii]   = 5'd3;
                ptr_wrapbit[ii] = 3'd1;
                ptr_cmpmask[ii] = 5'h1;
            end
            3'd1: begin
                ptr_offset[ii]  = 1'b1;
                fifo_depth[ii]  = 5'd4;
                ptr_limit[ii]   = 5'd7;
                ptr_wrapbit[ii] = 3'd2;
                ptr_cmpmask[ii] = 5'h3;
            end
            3'd2: begin
                ptr_offset[ii]  = 1'b1;
                fifo_depth[ii]  = 5'd8;
                ptr_limit[ii]   = 5'd15;
                ptr_wrapbit[ii] = 3'd3;
                ptr_cmpmask[ii] = 5'h7;
            end
            3'd3: begin
                ptr_offset[ii]  = 1'b1;
                fifo_depth[ii]  = 5'd16;
                ptr_limit[ii]   = 5'd31;
                ptr_wrapbit[ii] = 3'd4;
                ptr_cmpmask[ii] = 5'hf;
            end
            default: begin
                ptr_offset[ii]  = 1'b0;
                fifo_depth[ii]  = 5'd0;
                ptr_limit[ii]   = 5'd0;
                ptr_wrapbit[ii] = 3'd0;
                ptr_cmpmask[ii] = 5'h0;
            end
        endcase
    end
end

// Read and Write Pointer Tracking
always @(posedge clkclk or negedge sysreset_n)
   if (!sysreset_n) begin 
      fifo_rd_ptr <= '0;
      fifo_wr_ptr <= '0;
      fifo_wr_vld <= '0;
      fifo_wr_err <= '0;
   end 
   else 
    begin
        for (int ii=0; ii<SLICE_COUNT; ii++) begin
            // fifo access
            if (~fifo_cen[ii]) begin
                // write
                if (~(&fifo_wen[ii]) && has_perm_w[ii] && ~has_err[ii]) begin
                    if (fifo_full[ii] || fifo_wr_err[ii]) begin
                        // failed ring sets wr_ptr back to wr_vld, clears err
                        if (fifo_a[ii][0]) begin
                            fifo_wr_ptr[ii] <= fifo_wr_vld[ii];
                            fifo_wr_err[ii] <= 1'd0;
                        end else begin
                            fifo_wr_err[ii] <= 1'd1;
                        end
                    // increment write pointer
                    end else begin
                        if (fifo_wr_ptr[ii] == ptr_limit[ii]) begin
                            fifo_wr_ptr[ii] <= 5'd0;
                            // successful ring updates wr_vld
                            if (fifo_a[ii][0]) begin
                                fifo_wr_vld[ii] <= 5'd0;
                            end
                        end else begin
                            fifo_wr_ptr[ii] <= fifo_wr_ptr[ii] + 1'd1;
                            // successful ring updates wr_vld
                            if (fifo_a[ii][0]) begin
                                fifo_wr_vld[ii] <= fifo_wr_ptr[ii] + 1'd1;
                            end
                        end
                    end
                end
                // read
                else if (has_perm_r[ii] && ~has_err[ii]) begin
                    if (~fifo_vld_empty[ii]) begin
                        if (fifo_rd_ptr[ii] == ptr_limit[ii]) begin
                            fifo_rd_ptr[ii] <= 5'd0;
                        end else begin
                            fifo_rd_ptr[ii] <= fifo_rd_ptr[ii] + 1'd1;
                        end
                    end
                end
            end
            // bell count write
            else if (db_bell_cnt_w[ii] && has_perm_w[ii] && ~has_err[ii]) begin
                // if bell rung, update fifo_wr_vld
                if  (db_bell_cnt_din[ii][0]) begin
                    // if successful ring update wr_vld with wr_ptr
                    if (~fifo_wr_err[ii]) begin
                        fifo_wr_vld[ii] <= fifo_wr_ptr[ii];
                    end
                    // failed ring sets wr_ptr back to wr_vld, clears err
                    else begin
                        fifo_wr_ptr[ii] <= fifo_wr_vld[ii];
                        fifo_wr_err[ii] <= 1'd0;
                    end
                end
            end
        end // for
    end

// track doorbell fifo valid entries (raw) and (valid), clear failed_ring
// spyglass disable_block W415a
always_comb begin
    db_bell_fcnt_enb = '0;
    db_bell_fcnt_d   = '0;
    db_bell_valid_fcnt_enb  = '0;
    db_bell_valid_fcnt_d    = '0;
    db_bell_failed_ring_enb = '0;
    db_bell_failed_ring_d   = '0;

    for (int ii=0; ii<SLICE_COUNT; ii++) begin
        // count = (wr_ptr >= rd_prt) ? (wr_ptr - rd_prt) : (wr_ptr + N - rd_prt)
        fifo_cnt[ii] = (fifo_wr_ptr[ii] >= fifo_rd_ptr[ii])  // spyglass disable W164a, W484 --"daberkow; PermWaiver; FIFO count cannot overflow"
                     ? (fifo_wr_ptr[ii] - fifo_rd_ptr[ii])
                     : (fifo_wr_ptr[ii] + ptr_limit[ii] + 1 - fifo_rd_ptr[ii]);
        // fifo access
        if (~fifo_cen[ii]) begin
            // write
            if (~(&fifo_wen[ii]) && has_perm_w[ii] && ~has_err[ii]) begin
                // if bell not rung
                if (~fifo_a[ii][0]) begin
                    // if not full, increment the fcnt value
                    if (~fifo_full[ii]) begin
                        db_bell_fcnt_enb[ii] = 1'd1;
                        db_bell_fcnt_d[ii]   = fifo_cnt[ii] + ptr_offset[ii];  // spyglass disable W164a, W484 --"daberkow; PermWaiver; bell FIFO count cannot overflow"
                    end
                end
                // else bell rung
                else begin
                    if (fifo_full[ii] || fifo_wr_err[ii]) begin
                        // load the fcnt back to the last valid value for failed ring
                        db_bell_fcnt_enb[ii] = 1'b1;
                        db_bell_fcnt_d[ii]   = db_bell_valid_fcnt_q[ii];
                    end else begin
                        // increment the fcnt value
                        db_bell_fcnt_enb[ii] = 1'd1;
                        db_bell_fcnt_d[ii]   = fifo_cnt[ii] + ptr_offset[ii];  // spyglass disable W164a, W484 --"daberkow; PermWaiver; bell FIFO count cannot overflow"
                    end
                    // update valid_fcnt and failed_ring fields
                    db_bell_valid_fcnt_enb[ii]  = ~fifo_full[ii] && ~fifo_wr_err[ii];
                    db_bell_valid_fcnt_d[ii]    = db_bell_fcnt_d[ii];
                    db_bell_failed_ring_enb[ii] = 'd1;
                    db_bell_failed_ring_d[ii]   = fifo_full[ii] || fifo_wr_err[ii];
                end
            end
            // read
            else if (has_perm_r[ii] && ~has_err[ii]) begin
                db_bell_fcnt_enb[ii]       = ~fifo_vld_empty[ii];
                db_bell_fcnt_d[ii]         = fifo_cnt[ii] - 1'd1;
                db_bell_valid_fcnt_enb[ii] = ~fifo_vld_empty[ii];
                db_bell_valid_fcnt_d[ii]   = db_bell_valid_fcnt_q[ii] - 1'd1;
            end
        end
        // bell count write
        else if (db_bell_cnt_w[ii] && has_perm_w[ii] && ~has_err[ii]) begin
            // if the ring fails, update the fifo count back to the old value
            db_bell_fcnt_enb[ii] = db_bell_cnt_din[ii][0] && fifo_wr_err[ii];
            db_bell_fcnt_d[ii]   = db_bell_valid_fcnt_q[ii];
            // if bell rung, update valid_fcnt and failed_ring fields
            db_bell_valid_fcnt_enb[ii]  = db_bell_cnt_din[ii][0] && !fifo_wr_err[ii];
            db_bell_valid_fcnt_d[ii]    = fifo_cnt[ii];
            db_bell_failed_ring_enb[ii] = db_bell_cnt_din[ii][0];
            db_bell_failed_ring_d[ii]   = fifo_wr_err[ii];
        end
    end // for
end
// spyglass enable_block W415a

// fifo full / empty
// spyglass disable_block W468
always_comb begin
    for (int ii=0; ii<SLICE_COUNT; ii++) begin
        fifo_full[ii]  = (fifo_rd_ptr[ii][ptr_wrapbit[ii]]
                              != fifo_wr_ptr[ii][ptr_wrapbit[ii]])
                         && ((fifo_rd_ptr[ii] & ptr_cmpmask[ii])
                              == (fifo_wr_ptr[ii] & (ptr_cmpmask[ii])));
        fifo_empty[ii] = (fifo_rd_ptr[ii] == fifo_wr_ptr[ii]);
        fifo_vld_empty[ii] = (fifo_rd_ptr[ii] == fifo_wr_vld[ii]);
    end
end
// spyglass enable_block W468

always @(posedge clkclk or negedge sysreset_n)
   if (!sysreset_n) begin 
      fifo_vld_empty_dly1 <= '1;
   end 
   else 
      fifo_vld_empty_dly1 <= fifo_vld_empty;

// RAM (fifo) Address doorbell offset
logic [SLICE_COUNT-1:0] [RAM_A_BITS-1:0] bell_addr_offs;

always_comb begin
    bell_addr_offs = '0; //spyglass disable -rule STARC05-2.10.3.6 --"leye; PermWaiver; Leye_Lint Allowed in tdr
    for (int ii=1; ii<SLICE_COUNT; ii++) begin
        for (int jj=0; jj<ii; jj++) begin
            bell_addr_offs[ii] += fifo_depth[jj];  // spyglass disable W164a, W484 --"daberkow; PermWaiver; bell address offset cannot overflow"
        end
    end
end

// RAM address, data, wen selection
// spyglass disable_block W415a
logic [SLICE_COUNT-1:0] [4:0] fifo_addr;

always_comb begin
    ram_cen   = '1;
    ram_addr  = '0;
    ram_wen   = '1;
    ram_din   = '0;
    fifo_dout = '0;

    for (int ii=0; ii<SLICE_COUNT; ii++) begin
        fifo_addr[ii] = (~(&fifo_wen[ii]))
                      ? fifo_wr_ptr[ii] & ptr_cmpmask[ii]
                      : fifo_rd_ptr[ii] & ptr_cmpmask[ii];
        fifo_dout[ii] = (fifo_vld_empty_dly1[ii]) ? 'd0 : ram_dout;
        if (~fifo_cen[ii]) begin
            if (ptr_offset[ii] &&
                ((~(&fifo_wen) && ~fifo_full[ii]) ||
                 (&fifo_wen && ~fifo_empty[ii]) ) )
                ram_cen = 1'b0;
            ram_addr = GROUP_ADDR_OFFSET + bell_addr_offs[ii] + fifo_addr[ii];
            ram_wen = fifo_wen[ii];
            ram_din = fifo_din[ii];
        end
    end
end
// spyglass enable_block W415a
// }}}
endmodule // fdb0_fdb

`endif // FDB0_FDB_V