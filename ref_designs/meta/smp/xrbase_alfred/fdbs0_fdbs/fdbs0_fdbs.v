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

`include "fdb0_fdb.v"
`include "fdb1_fdb.v"
`include "regmodel0_regmodel_fdbs0_interface.sv"
`include "regmodel0_regmodel_sfdbs0_interface.sv"

module fdbs0_fdbs(

    // Interface clk type clock of fdbs0_fdbs
    input  logic            clkclk,

    // Interface sys type system of fdbs0_fdbs
    input  logic            sysreset_n,
    input  logic            systest_mode_cgm,
    input  logic            systest_mode_async,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src0 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src0_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src1 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src1_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src2 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src2_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src3 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src3_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src4 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src4_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src5 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src5_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src6 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src6_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src7 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src7_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src8 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src8_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src9 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src9_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src10 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src10_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src11 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src11_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src12 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src12_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src13 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src13_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src14 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src14_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src15 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_src15_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_tgt type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb0_tgt_interface.sp  regmodel0_regmodel_sfdbs0_sfdb0_tgt_if,

    // Interface regmodel0_regmodel_sfdbs0_ipc_sc type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_ipc_sc_interface.sp  regmodel0_regmodel_sfdbs0_ipc_sc_if,

    // Interface regmodel0_regmodel_sfdbs0_error_err_log type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_error_err_log_interface.sp  regmodel0_regmodel_sfdbs0_error_err_log_if,

    // Interface regmodel0_regmodel_sfdbs0_error_err_data type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_error_err_data_interface.sp  regmodel0_regmodel_sfdbs0_error_err_data_if,

    // Interface regmodel0_regmodel_sfdbs0_error_err_idx type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_error_err_idx_interface.sp  regmodel0_regmodel_sfdbs0_error_err_idx_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src0 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb1_src0_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src1 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb1_src1_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src2 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb1_src2_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src3 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb1_src3_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src4 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb1_src4_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src5 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb1_src5_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src6 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb1_src6_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src7 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb1_src7_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src8 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb1_src8_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src9 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb1_src9_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src10 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb1_src10_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src11 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb1_src11_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src12 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb1_src12_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src13 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb1_src13_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src14 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb1_src14_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src15 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.sp  regmodel0_regmodel_sfdbs0_sfdb1_src15_if,

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_tgt type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_sfdbs0_sfdb1_tgt_interface.sp  regmodel0_regmodel_sfdbs0_sfdb1_tgt_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell0 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell0_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell1 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell1_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell2 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell2_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell3 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell3_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell4 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell4_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell5 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell5_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell6 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell6_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell7 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell7_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell8 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell8_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell9 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell9_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell10 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell10_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell11 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell11_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell12 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell12_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell13 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell13_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell14 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell14_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell15 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb0_bell15_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_control type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_control_interface.sp  regmodel0_regmodel_fdbs0_fdb0_control_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_enable type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_enable_interface.sp  regmodel0_regmodel_fdbs0_fdb0_enable_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_status type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_status_interface.sp  regmodel0_regmodel_fdbs0_fdb0_status_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data0_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data1_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data2_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data3_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data4_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data5_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data6_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data7_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data8_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data9_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data10_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data11_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data12_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data13_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data14_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb0_data15_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell0 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb1_bell0_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell1 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb1_bell1_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell2 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb1_bell2_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell3 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb1_bell3_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell4 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb1_bell4_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell5 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb1_bell5_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell6 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb1_bell6_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell7 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb1_bell7_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell8 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb1_bell8_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell9 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb1_bell9_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell10 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb1_bell10_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell11 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb1_bell11_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell12 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb1_bell12_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell13 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb1_bell13_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell14 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb1_bell14_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell15 type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.sp  regmodel0_regmodel_fdbs0_fdb1_bell15_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_control type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_control_interface.sp  regmodel0_regmodel_fdbs0_fdb1_control_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_enable type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_enable_interface.sp  regmodel0_regmodel_fdbs0_fdb1_enable_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_status type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_status_interface.sp  regmodel0_regmodel_fdbs0_fdb1_status_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_data0_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb1_data0_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_data1_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb1_data1_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_data2_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb1_data2_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_data3_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb1_data3_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_data4_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb1_data4_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_data5_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb1_data5_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_data6_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb1_data6_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_data7_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb1_data7_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_data8_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb1_data8_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_data9_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb1_data9_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_data10_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb1_data10_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_data11_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb1_data11_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_data12_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb1_data12_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_data13_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb1_data13_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_data14_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb1_data14_fifo_if,

    // Interface regmodel0_regmodel_fdbs0_fdb1_data15_fifo type sv_interface of fdbs0_fdbs
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.sp  regmodel0_regmodel_fdbs0_fdb1_data15_fifo_if,

    // Non-Interface Ports
    output logic            err_irq,
    output logic            ram_cen,
    output logic [7:0]      ram_addr,
    output logic [31:0]     ram_wen,
    output logic [31:0]     ram_din,
    input  logic [31:0]     ram_dout,
    output logic [0:0]      fdb0_irq,
    output logic [0:0]      fdb0_irq_low,
    output logic [0:0]      fdb1_irq,
    output logic [0:0]      fdb1_irq_low
);

logic         fdb0_err_log_w; 
logic   [2:0] fdb0_err_code; 
logic         fdb0_err_access; 
logic   [5:0] fdb0_err_id; 
logic   [4:0] fdb0_err_slc_idx; 
logic  [31:0] fdb0_err_data; 
logic         fdb0_ram_cen; 
logic   [7:0] fdb0_ram_addr; 
logic  [31:0] fdb0_ram_wen; 
logic  [31:0] fdb0_ram_dout; 
logic  [31:0] fdb0_ram_din; 
logic         fdb1_err_log_w; 
logic   [2:0] fdb1_err_code; 
logic         fdb1_err_access; 
logic   [5:0] fdb1_err_id; 
logic   [4:0] fdb1_err_slc_idx; 
logic  [31:0] fdb1_err_data; 
logic         fdb1_ram_cen; 
logic   [7:0] fdb1_ram_addr; 
logic  [31:0] fdb1_ram_wen; 
logic  [31:0] fdb1_ram_dout; 
logic  [31:0] fdb1_ram_din; 

assign        ram_cen  = (fdb0_ram_cen & fdb1_ram_cen);
assign        ram_addr = (fdb0_ram_addr | fdb1_ram_addr);
assign        ram_wen  = (fdb0_ram_wen & fdb1_ram_wen);
assign        ram_din  = (fdb0_ram_din | fdb1_ram_din);
assign        fdb0_ram_dout  = ram_dout;
assign        fdb1_ram_dout  = ram_dout;

logic   [2:0] log_code;
assign        log_code    = regmodel0_regmodel_sfdbs0_error_err_log_if.code_q;
logic         err_log_w;
assign        err_log_w   = (fdb0_err_log_w | fdb1_err_log_w) & (log_code == 3'd0);
logic         err_multi_w;
assign        err_multi_w = (fdb0_err_log_w | fdb1_err_log_w) & (log_code != 3'd0);
logic   [2:0] err_code;
assign        err_code    = fdb0_err_code | fdb1_err_code;
logic         err_access;
assign        err_access  = fdb0_err_access | fdb1_err_access;
logic  [ 5:0] err_id;
assign        err_id      = fdb0_err_id | fdb1_err_id;
logic  [31:0] err_data;
assign        err_data    = fdb0_err_data | fdb1_err_data;
logic   [4:0] err_slc_idx;
assign        err_slc_idx = fdb0_err_slc_idx | fdb1_err_slc_idx;

logic   [3:0] err_grp_idx;
//spyglass disable_block SM_PNP
always_comb begin
    err_grp_idx = 4'd0;
    unique case (1'b1)
        fdb0_err_log_w: err_grp_idx = 4'd0;
        fdb1_err_log_w: err_grp_idx = 4'd1;
        default: err_grp_idx = 4'd0;
    endcase
end
//spyglass enable_block SM_PNP

assign regmodel0_regmodel_sfdbs0_error_err_log_if.code_enb   = err_log_w;
assign regmodel0_regmodel_sfdbs0_error_err_log_if.code_d     = err_code;
assign regmodel0_regmodel_sfdbs0_error_err_log_if.access_enb = err_log_w;
assign regmodel0_regmodel_sfdbs0_error_err_log_if.access_d   = err_access;
assign regmodel0_regmodel_sfdbs0_error_err_log_if.id_enb     = err_log_w;
assign regmodel0_regmodel_sfdbs0_error_err_log_if.id_d       = err_id;
assign regmodel0_regmodel_sfdbs0_error_err_log_if.multi_enb  = err_log_w || err_multi_w;
assign regmodel0_regmodel_sfdbs0_error_err_log_if.multi_d    = (err_log_w) ? '0 : '1;
assign regmodel0_regmodel_sfdbs0_error_err_data_if.data_enb  = err_log_w;
assign regmodel0_regmodel_sfdbs0_error_err_data_if.data_d    = err_data;
assign regmodel0_regmodel_sfdbs0_error_err_idx_if.slice_idx_enb = err_log_w;
assign regmodel0_regmodel_sfdbs0_error_err_idx_if.slice_idx_d   = err_slc_idx;
assign regmodel0_regmodel_sfdbs0_error_err_idx_if.group_idx_enb = err_log_w;
assign regmodel0_regmodel_sfdbs0_error_err_idx_if.group_idx_d   = err_grp_idx;

always @(posedge clkclk or negedge sysreset_n)
    if (!sysreset_n) begin
        err_irq <= '0;
    end
    else begin
        err_irq <= (log_code != '0);
    end

    fdb0_fdb fdb0(
        /* Interface clk type clock of fdb0 */
        .clkclk(clkclk),
        /* Interface sys type system of fdb0 */
        .sysreset_n(sysreset_n),
        .systest_mode_cgm(systest_mode_cgm),
        .systest_mode_async(systest_mode_async),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src0 type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src0_if(regmodel0_regmodel_sfdbs0_sfdb0_src0_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src1 type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src1_if(regmodel0_regmodel_sfdbs0_sfdb0_src1_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src2 type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src2_if(regmodel0_regmodel_sfdbs0_sfdb0_src2_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src3 type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src3_if(regmodel0_regmodel_sfdbs0_sfdb0_src3_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src4 type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src4_if(regmodel0_regmodel_sfdbs0_sfdb0_src4_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src5 type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src5_if(regmodel0_regmodel_sfdbs0_sfdb0_src5_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src6 type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src6_if(regmodel0_regmodel_sfdbs0_sfdb0_src6_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src7 type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src7_if(regmodel0_regmodel_sfdbs0_sfdb0_src7_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src8 type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src8_if(regmodel0_regmodel_sfdbs0_sfdb0_src8_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src9 type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src9_if(regmodel0_regmodel_sfdbs0_sfdb0_src9_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src10 type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src10_if(regmodel0_regmodel_sfdbs0_sfdb0_src10_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src11 type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src11_if(regmodel0_regmodel_sfdbs0_sfdb0_src11_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src12 type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src12_if(regmodel0_regmodel_sfdbs0_sfdb0_src12_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src13 type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src13_if(regmodel0_regmodel_sfdbs0_sfdb0_src13_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src14 type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src14_if(regmodel0_regmodel_sfdbs0_sfdb0_src14_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src15 type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src15_if(regmodel0_regmodel_sfdbs0_sfdb0_src15_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_tgt type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_tgt_if(regmodel0_regmodel_sfdbs0_sfdb0_tgt_if),
        /* Interface regmodel0_regmodel_sfdbs0_ipc_sc type sv_interface of fdb0 */
        .regmodel0_regmodel_sfdbs0_ipc_sc_if(regmodel0_regmodel_sfdbs0_ipc_sc_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell0 type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell0_if(regmodel0_regmodel_fdbs0_fdb0_bell0_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell1 type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell1_if(regmodel0_regmodel_fdbs0_fdb0_bell1_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell2 type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell2_if(regmodel0_regmodel_fdbs0_fdb0_bell2_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell3 type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell3_if(regmodel0_regmodel_fdbs0_fdb0_bell3_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell4 type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell4_if(regmodel0_regmodel_fdbs0_fdb0_bell4_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell5 type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell5_if(regmodel0_regmodel_fdbs0_fdb0_bell5_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell6 type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell6_if(regmodel0_regmodel_fdbs0_fdb0_bell6_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell7 type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell7_if(regmodel0_regmodel_fdbs0_fdb0_bell7_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell8 type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell8_if(regmodel0_regmodel_fdbs0_fdb0_bell8_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell9 type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell9_if(regmodel0_regmodel_fdbs0_fdb0_bell9_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell10 type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell10_if(regmodel0_regmodel_fdbs0_fdb0_bell10_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell11 type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell11_if(regmodel0_regmodel_fdbs0_fdb0_bell11_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell12 type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell12_if(regmodel0_regmodel_fdbs0_fdb0_bell12_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell13 type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell13_if(regmodel0_regmodel_fdbs0_fdb0_bell13_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell14 type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell14_if(regmodel0_regmodel_fdbs0_fdb0_bell14_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell15 type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell15_if(regmodel0_regmodel_fdbs0_fdb0_bell15_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_control type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_control_if(regmodel0_regmodel_fdbs0_fdb0_control_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_enable type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_enable_if(regmodel0_regmodel_fdbs0_fdb0_enable_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_status type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_status_if(regmodel0_regmodel_fdbs0_fdb0_status_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data0_fifo type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data1_fifo type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data2_fifo type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data3_fifo type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data4_fifo type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data5_fifo type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data6_fifo type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data7_fifo type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data8_fifo type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data9_fifo type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data10_fifo type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data11_fifo type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data12_fifo type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data13_fifo type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data14_fifo type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data15_fifo type sv_interface of fdb0 */
        .regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if),
        /* Non-Interface Ports */
        .err_log_w(fdb0_err_log_w),
        .err_code(fdb0_err_code),
        .err_access(fdb0_err_access),
        .err_id(fdb0_err_id),
        .err_slc_idx(fdb0_err_slc_idx),
        .err_data(fdb0_err_data),
        .ram_cen(fdb0_ram_cen),
        .ram_addr(fdb0_ram_addr),
        .ram_wen(fdb0_ram_wen),
        .ram_din(fdb0_ram_din),
        .ram_dout(fdb0_ram_dout),
        .irq(fdb0_irq),
        .irq_low(fdb0_irq_low));

    fdb1_fdb fdb1(
        /* Interface clk type clock of fdb1 */
        .clkclk(clkclk),
        /* Interface sys type system of fdb1 */
        .sysreset_n(sysreset_n),
        .systest_mode_cgm(systest_mode_cgm),
        .systest_mode_async(systest_mode_async),
        /* Interface regmodel0_regmodel_sfdbs0_ipc_sc type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_ipc_sc_if(regmodel0_regmodel_sfdbs0_ipc_sc_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src0 type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src0_if(regmodel0_regmodel_sfdbs0_sfdb1_src0_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src1 type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src1_if(regmodel0_regmodel_sfdbs0_sfdb1_src1_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src2 type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src2_if(regmodel0_regmodel_sfdbs0_sfdb1_src2_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src3 type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src3_if(regmodel0_regmodel_sfdbs0_sfdb1_src3_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src4 type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src4_if(regmodel0_regmodel_sfdbs0_sfdb1_src4_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src5 type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src5_if(regmodel0_regmodel_sfdbs0_sfdb1_src5_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src6 type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src6_if(regmodel0_regmodel_sfdbs0_sfdb1_src6_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src7 type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src7_if(regmodel0_regmodel_sfdbs0_sfdb1_src7_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src8 type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src8_if(regmodel0_regmodel_sfdbs0_sfdb1_src8_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src9 type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src9_if(regmodel0_regmodel_sfdbs0_sfdb1_src9_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src10 type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src10_if(regmodel0_regmodel_sfdbs0_sfdb1_src10_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src11 type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src11_if(regmodel0_regmodel_sfdbs0_sfdb1_src11_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src12 type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src12_if(regmodel0_regmodel_sfdbs0_sfdb1_src12_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src13 type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src13_if(regmodel0_regmodel_sfdbs0_sfdb1_src13_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src14 type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src14_if(regmodel0_regmodel_sfdbs0_sfdb1_src14_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src15 type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src15_if(regmodel0_regmodel_sfdbs0_sfdb1_src15_if),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_tgt type sv_interface of fdb1 */
        .regmodel0_regmodel_sfdbs0_sfdb1_tgt_if(regmodel0_regmodel_sfdbs0_sfdb1_tgt_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell0 type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_bell0_if(regmodel0_regmodel_fdbs0_fdb1_bell0_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell1 type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_bell1_if(regmodel0_regmodel_fdbs0_fdb1_bell1_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell2 type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_bell2_if(regmodel0_regmodel_fdbs0_fdb1_bell2_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell3 type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_bell3_if(regmodel0_regmodel_fdbs0_fdb1_bell3_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell4 type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_bell4_if(regmodel0_regmodel_fdbs0_fdb1_bell4_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell5 type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_bell5_if(regmodel0_regmodel_fdbs0_fdb1_bell5_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell6 type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_bell6_if(regmodel0_regmodel_fdbs0_fdb1_bell6_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell7 type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_bell7_if(regmodel0_regmodel_fdbs0_fdb1_bell7_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell8 type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_bell8_if(regmodel0_regmodel_fdbs0_fdb1_bell8_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell9 type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_bell9_if(regmodel0_regmodel_fdbs0_fdb1_bell9_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell10 type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_bell10_if(regmodel0_regmodel_fdbs0_fdb1_bell10_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell11 type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_bell11_if(regmodel0_regmodel_fdbs0_fdb1_bell11_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell12 type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_bell12_if(regmodel0_regmodel_fdbs0_fdb1_bell12_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell13 type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_bell13_if(regmodel0_regmodel_fdbs0_fdb1_bell13_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell14 type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_bell14_if(regmodel0_regmodel_fdbs0_fdb1_bell14_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell15 type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_bell15_if(regmodel0_regmodel_fdbs0_fdb1_bell15_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_control type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_control_if(regmodel0_regmodel_fdbs0_fdb1_control_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_enable type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_enable_if(regmodel0_regmodel_fdbs0_fdb1_enable_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_status type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_status_if(regmodel0_regmodel_fdbs0_fdb1_status_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data0_fifo type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_data0_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data0_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data1_fifo type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_data1_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data1_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data2_fifo type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_data2_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data2_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data3_fifo type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_data3_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data3_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data4_fifo type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_data4_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data4_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data5_fifo type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_data5_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data5_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data6_fifo type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_data6_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data6_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data7_fifo type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_data7_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data7_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data8_fifo type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_data8_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data8_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data9_fifo type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_data9_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data9_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data10_fifo type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_data10_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data10_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data11_fifo type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_data11_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data11_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data12_fifo type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_data12_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data12_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data13_fifo type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_data13_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data13_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data14_fifo type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_data14_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data14_fifo_if),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data15_fifo type sv_interface of fdb1 */
        .regmodel0_regmodel_fdbs0_fdb1_data15_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data15_fifo_if),
        /* Non-Interface Ports */
        .err_log_w(fdb1_err_log_w),
        .err_code(fdb1_err_code),
        .err_access(fdb1_err_access),
        .err_id(fdb1_err_id),
        .err_slc_idx(fdb1_err_slc_idx),
        .err_data(fdb1_err_data),
        .ram_cen(fdb1_ram_cen),
        .ram_addr(fdb1_ram_addr),
        .ram_wen(fdb1_ram_wen),
        .ram_din(fdb1_ram_din),
        .ram_dout(fdb1_ram_dout),
        .irq(fdb1_irq),
        .irq_low(fdb1_irq_low));
endmodule // fdbs0_fdbs
