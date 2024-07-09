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

////////////////////////////////////////////////////////////////////////
module regmodel0_regmodel_core_sfdbs0_csr(
    reg_clk,
    non_retention_reset_ni,
    test_mode_cgm_i,
    write_valid_i,
    write_addr_i,
    write_data_i,
    write_strb_i,
    write_info_i,
    write_err_o,
    read_addr_i,
    read_valid_i,
    read_data_o,
    read_info_i,
    read_err_o,
    ready_o,
    sfdbs0_sfdb0_src0_id_q,
    sfdbs0_sfdb0_src0_size_q,
    sfdbs0_sfdb0_src1_id_q,
    sfdbs0_sfdb0_src1_size_q,
    sfdbs0_sfdb0_src2_id_q,
    sfdbs0_sfdb0_src2_size_q,
    sfdbs0_sfdb0_src3_id_q,
    sfdbs0_sfdb0_src3_size_q,
    sfdbs0_sfdb0_src4_id_q,
    sfdbs0_sfdb0_src4_size_q,
    sfdbs0_sfdb0_src5_id_q,
    sfdbs0_sfdb0_src5_size_q,
    sfdbs0_sfdb0_src6_id_q,
    sfdbs0_sfdb0_src6_size_q,
    sfdbs0_sfdb0_src7_id_q,
    sfdbs0_sfdb0_src7_size_q,
    sfdbs0_sfdb0_src8_id_q,
    sfdbs0_sfdb0_src8_size_q,
    sfdbs0_sfdb0_src9_id_q,
    sfdbs0_sfdb0_src9_size_q,
    sfdbs0_sfdb0_src10_id_q,
    sfdbs0_sfdb0_src10_size_q,
    sfdbs0_sfdb0_src11_id_q,
    sfdbs0_sfdb0_src11_size_q,
    sfdbs0_sfdb0_src12_id_q,
    sfdbs0_sfdb0_src12_size_q,
    sfdbs0_sfdb0_src13_id_q,
    sfdbs0_sfdb0_src13_size_q,
    sfdbs0_sfdb0_src14_id_q,
    sfdbs0_sfdb0_src14_size_q,
    sfdbs0_sfdb0_src15_id_q,
    sfdbs0_sfdb0_src15_size_q,
    sfdbs0_sfdb0_tgt_id_q,
    sfdbs0_ipc_sc_id_q,
    sfdbs0_error_err_log_code_q,
    sfdbs0_error_err_log_code_d,
    sfdbs0_error_err_log_code_enb,
    sfdbs0_error_err_log_access_q,
    sfdbs0_error_err_log_access_d,
    sfdbs0_error_err_log_access_enb,
    sfdbs0_error_err_log_id_q,
    sfdbs0_error_err_log_id_d,
    sfdbs0_error_err_log_id_enb,
    sfdbs0_error_err_log_multi_q,
    sfdbs0_error_err_log_multi_d,
    sfdbs0_error_err_log_multi_enb,
    sfdbs0_error_err_data_data_q,
    sfdbs0_error_err_data_data_d,
    sfdbs0_error_err_data_data_enb,
    sfdbs0_error_err_idx_slice_idx_q,
    sfdbs0_error_err_idx_slice_idx_d,
    sfdbs0_error_err_idx_slice_idx_enb,
    sfdbs0_error_err_idx_group_idx_q,
    sfdbs0_error_err_idx_group_idx_d,
    sfdbs0_error_err_idx_group_idx_enb,
    sfdbs0_sfdb1_src0_id_q,
    sfdbs0_sfdb1_src0_size_q,
    sfdbs0_sfdb1_src1_id_q,
    sfdbs0_sfdb1_src1_size_q,
    sfdbs0_sfdb1_src2_id_q,
    sfdbs0_sfdb1_src2_size_q,
    sfdbs0_sfdb1_src3_id_q,
    sfdbs0_sfdb1_src3_size_q,
    sfdbs0_sfdb1_src4_id_q,
    sfdbs0_sfdb1_src4_size_q,
    sfdbs0_sfdb1_src5_id_q,
    sfdbs0_sfdb1_src5_size_q,
    sfdbs0_sfdb1_src6_id_q,
    sfdbs0_sfdb1_src6_size_q,
    sfdbs0_sfdb1_src7_id_q,
    sfdbs0_sfdb1_src7_size_q,
    sfdbs0_sfdb1_src8_id_q,
    sfdbs0_sfdb1_src8_size_q,
    sfdbs0_sfdb1_src9_id_q,
    sfdbs0_sfdb1_src9_size_q,
    sfdbs0_sfdb1_src10_id_q,
    sfdbs0_sfdb1_src10_size_q,
    sfdbs0_sfdb1_src11_id_q,
    sfdbs0_sfdb1_src11_size_q,
    sfdbs0_sfdb1_src12_id_q,
    sfdbs0_sfdb1_src12_size_q,
    sfdbs0_sfdb1_src13_id_q,
    sfdbs0_sfdb1_src13_size_q,
    sfdbs0_sfdb1_src14_id_q,
    sfdbs0_sfdb1_src14_size_q,
    sfdbs0_sfdb1_src15_id_q,
    sfdbs0_sfdb1_src15_size_q,
    sfdbs0_sfdb1_tgt_id_q );
input         reg_clk; 
input         non_retention_reset_ni; 
input         test_mode_cgm_i; 
input         write_valid_i; 
input   [8:0] write_addr_i; 
input  [31:0] write_data_i; 
input   [3:0] write_strb_i; 
input   [5:0] write_info_i; 
output        write_err_o; 
input   [8:0] read_addr_i; 
input         read_valid_i; 
output [31:0] read_data_o; 
input   [5:0] read_info_i; 
output        read_err_o; 
output        ready_o; 
output  [5:0] sfdbs0_sfdb0_src0_id_q; 
output  [2:0] sfdbs0_sfdb0_src0_size_q; 
output  [5:0] sfdbs0_sfdb0_src1_id_q; 
output  [2:0] sfdbs0_sfdb0_src1_size_q; 
output  [5:0] sfdbs0_sfdb0_src2_id_q; 
output  [2:0] sfdbs0_sfdb0_src2_size_q; 
output  [5:0] sfdbs0_sfdb0_src3_id_q; 
output  [2:0] sfdbs0_sfdb0_src3_size_q; 
output  [5:0] sfdbs0_sfdb0_src4_id_q; 
output  [2:0] sfdbs0_sfdb0_src4_size_q; 
output  [5:0] sfdbs0_sfdb0_src5_id_q; 
output  [2:0] sfdbs0_sfdb0_src5_size_q; 
output  [5:0] sfdbs0_sfdb0_src6_id_q; 
output  [2:0] sfdbs0_sfdb0_src6_size_q; 
output  [5:0] sfdbs0_sfdb0_src7_id_q; 
output  [2:0] sfdbs0_sfdb0_src7_size_q; 
output  [5:0] sfdbs0_sfdb0_src8_id_q; 
output  [2:0] sfdbs0_sfdb0_src8_size_q; 
output  [5:0] sfdbs0_sfdb0_src9_id_q; 
output  [2:0] sfdbs0_sfdb0_src9_size_q; 
output  [5:0] sfdbs0_sfdb0_src10_id_q; 
output  [2:0] sfdbs0_sfdb0_src10_size_q; 
output  [5:0] sfdbs0_sfdb0_src11_id_q; 
output  [2:0] sfdbs0_sfdb0_src11_size_q; 
output  [5:0] sfdbs0_sfdb0_src12_id_q; 
output  [2:0] sfdbs0_sfdb0_src12_size_q; 
output  [5:0] sfdbs0_sfdb0_src13_id_q; 
output  [2:0] sfdbs0_sfdb0_src13_size_q; 
output  [5:0] sfdbs0_sfdb0_src14_id_q; 
output  [2:0] sfdbs0_sfdb0_src14_size_q; 
output  [5:0] sfdbs0_sfdb0_src15_id_q; 
output  [2:0] sfdbs0_sfdb0_src15_size_q; 
output  [5:0] sfdbs0_sfdb0_tgt_id_q; 
output  [5:0] sfdbs0_ipc_sc_id_q; 
output  [2:0] sfdbs0_error_err_log_code_q; 
input   [2:0] sfdbs0_error_err_log_code_d; 
input         sfdbs0_error_err_log_code_enb; 
output        sfdbs0_error_err_log_access_q; 
input         sfdbs0_error_err_log_access_d; 
input         sfdbs0_error_err_log_access_enb; 
output  [5:0] sfdbs0_error_err_log_id_q; 
input   [5:0] sfdbs0_error_err_log_id_d; 
input         sfdbs0_error_err_log_id_enb; 
output        sfdbs0_error_err_log_multi_q; 
input         sfdbs0_error_err_log_multi_d; 
input         sfdbs0_error_err_log_multi_enb; 
output [31:0] sfdbs0_error_err_data_data_q; 
input  [31:0] sfdbs0_error_err_data_data_d; 
input         sfdbs0_error_err_data_data_enb; 
output  [4:0] sfdbs0_error_err_idx_slice_idx_q; 
input   [4:0] sfdbs0_error_err_idx_slice_idx_d; 
input         sfdbs0_error_err_idx_slice_idx_enb; 
output  [3:0] sfdbs0_error_err_idx_group_idx_q; 
input   [3:0] sfdbs0_error_err_idx_group_idx_d; 
input         sfdbs0_error_err_idx_group_idx_enb; 
output  [5:0] sfdbs0_sfdb1_src0_id_q; 
output  [2:0] sfdbs0_sfdb1_src0_size_q; 
output  [5:0] sfdbs0_sfdb1_src1_id_q; 
output  [2:0] sfdbs0_sfdb1_src1_size_q; 
output  [5:0] sfdbs0_sfdb1_src2_id_q; 
output  [2:0] sfdbs0_sfdb1_src2_size_q; 
output  [5:0] sfdbs0_sfdb1_src3_id_q; 
output  [2:0] sfdbs0_sfdb1_src3_size_q; 
output  [5:0] sfdbs0_sfdb1_src4_id_q; 
output  [2:0] sfdbs0_sfdb1_src4_size_q; 
output  [5:0] sfdbs0_sfdb1_src5_id_q; 
output  [2:0] sfdbs0_sfdb1_src5_size_q; 
output  [5:0] sfdbs0_sfdb1_src6_id_q; 
output  [2:0] sfdbs0_sfdb1_src6_size_q; 
output  [5:0] sfdbs0_sfdb1_src7_id_q; 
output  [2:0] sfdbs0_sfdb1_src7_size_q; 
output  [5:0] sfdbs0_sfdb1_src8_id_q; 
output  [2:0] sfdbs0_sfdb1_src8_size_q; 
output  [5:0] sfdbs0_sfdb1_src9_id_q; 
output  [2:0] sfdbs0_sfdb1_src9_size_q; 
output  [5:0] sfdbs0_sfdb1_src10_id_q; 
output  [2:0] sfdbs0_sfdb1_src10_size_q; 
output  [5:0] sfdbs0_sfdb1_src11_id_q; 
output  [2:0] sfdbs0_sfdb1_src11_size_q; 
output  [5:0] sfdbs0_sfdb1_src12_id_q; 
output  [2:0] sfdbs0_sfdb1_src12_size_q; 
output  [5:0] sfdbs0_sfdb1_src13_id_q; 
output  [2:0] sfdbs0_sfdb1_src13_size_q; 
output  [5:0] sfdbs0_sfdb1_src14_id_q; 
output  [2:0] sfdbs0_sfdb1_src14_size_q; 
output  [5:0] sfdbs0_sfdb1_src15_id_q; 
output  [2:0] sfdbs0_sfdb1_src15_size_q; 
output  [5:0] sfdbs0_sfdb1_tgt_id_q; 
reg     [5:0] sfdbs0_sfdb0_src0_id_q; 
reg     [5:0] sfdbs0_sfdb0_src0_id; 
reg     [2:0] sfdbs0_sfdb0_src0_size_q; 
reg     [2:0] sfdbs0_sfdb0_src0_size; 
reg     [5:0] sfdbs0_sfdb0_src1_id_q; 
reg     [5:0] sfdbs0_sfdb0_src1_id; 
reg     [2:0] sfdbs0_sfdb0_src1_size_q; 
reg     [2:0] sfdbs0_sfdb0_src1_size; 
reg     [5:0] sfdbs0_sfdb0_src2_id_q; 
reg     [5:0] sfdbs0_sfdb0_src2_id; 
reg     [2:0] sfdbs0_sfdb0_src2_size_q; 
reg     [2:0] sfdbs0_sfdb0_src2_size; 
reg     [5:0] sfdbs0_sfdb0_src3_id_q; 
reg     [5:0] sfdbs0_sfdb0_src3_id; 
reg     [2:0] sfdbs0_sfdb0_src3_size_q; 
reg     [2:0] sfdbs0_sfdb0_src3_size; 
reg     [5:0] sfdbs0_sfdb0_src4_id_q; 
reg     [5:0] sfdbs0_sfdb0_src4_id; 
reg     [2:0] sfdbs0_sfdb0_src4_size_q; 
reg     [2:0] sfdbs0_sfdb0_src4_size; 
reg     [5:0] sfdbs0_sfdb0_src5_id_q; 
reg     [5:0] sfdbs0_sfdb0_src5_id; 
reg     [2:0] sfdbs0_sfdb0_src5_size_q; 
reg     [2:0] sfdbs0_sfdb0_src5_size; 
reg     [5:0] sfdbs0_sfdb0_src6_id_q; 
reg     [5:0] sfdbs0_sfdb0_src6_id; 
reg     [2:0] sfdbs0_sfdb0_src6_size_q; 
reg     [2:0] sfdbs0_sfdb0_src6_size; 
reg     [5:0] sfdbs0_sfdb0_src7_id_q; 
reg     [5:0] sfdbs0_sfdb0_src7_id; 
reg     [2:0] sfdbs0_sfdb0_src7_size_q; 
reg     [2:0] sfdbs0_sfdb0_src7_size; 
reg     [5:0] sfdbs0_sfdb0_src8_id_q; 
reg     [5:0] sfdbs0_sfdb0_src8_id; 
reg     [2:0] sfdbs0_sfdb0_src8_size_q; 
reg     [2:0] sfdbs0_sfdb0_src8_size; 
reg     [5:0] sfdbs0_sfdb0_src9_id_q; 
reg     [5:0] sfdbs0_sfdb0_src9_id; 
reg     [2:0] sfdbs0_sfdb0_src9_size_q; 
reg     [2:0] sfdbs0_sfdb0_src9_size; 
reg     [5:0] sfdbs0_sfdb0_src10_id_q; 
reg     [5:0] sfdbs0_sfdb0_src10_id; 
reg     [2:0] sfdbs0_sfdb0_src10_size_q; 
reg     [2:0] sfdbs0_sfdb0_src10_size; 
reg     [5:0] sfdbs0_sfdb0_src11_id_q; 
reg     [5:0] sfdbs0_sfdb0_src11_id; 
reg     [2:0] sfdbs0_sfdb0_src11_size_q; 
reg     [2:0] sfdbs0_sfdb0_src11_size; 
reg     [5:0] sfdbs0_sfdb0_src12_id_q; 
reg     [5:0] sfdbs0_sfdb0_src12_id; 
reg     [2:0] sfdbs0_sfdb0_src12_size_q; 
reg     [2:0] sfdbs0_sfdb0_src12_size; 
reg     [5:0] sfdbs0_sfdb0_src13_id_q; 
reg     [5:0] sfdbs0_sfdb0_src13_id; 
reg     [2:0] sfdbs0_sfdb0_src13_size_q; 
reg     [2:0] sfdbs0_sfdb0_src13_size; 
reg     [5:0] sfdbs0_sfdb0_src14_id_q; 
reg     [5:0] sfdbs0_sfdb0_src14_id; 
reg     [2:0] sfdbs0_sfdb0_src14_size_q; 
reg     [2:0] sfdbs0_sfdb0_src14_size; 
reg     [5:0] sfdbs0_sfdb0_src15_id_q; 
reg     [5:0] sfdbs0_sfdb0_src15_id; 
reg     [2:0] sfdbs0_sfdb0_src15_size_q; 
reg     [2:0] sfdbs0_sfdb0_src15_size; 
reg     [5:0] sfdbs0_sfdb0_tgt_id_q; 
reg     [5:0] sfdbs0_sfdb0_tgt_id; 
reg     [5:0] sfdbs0_ipc_sc_id_q; 
reg     [5:0] sfdbs0_ipc_sc_id; 
reg     [2:0] sfdbs0_error_err_log_code_q; 
reg     [2:0] sfdbs0_error_err_log_code; 
reg           sfdbs0_error_err_log_access_q; 
reg     [5:0] sfdbs0_error_err_log_id_q; 
reg           sfdbs0_error_err_log_multi_q; 
reg    [31:0] sfdbs0_error_err_data_data_q; 
reg     [4:0] sfdbs0_error_err_idx_slice_idx_q; 
reg     [3:0] sfdbs0_error_err_idx_group_idx_q; 
reg     [5:0] sfdbs0_sfdb1_src0_id_q; 
reg     [5:0] sfdbs0_sfdb1_src0_id; 
reg     [2:0] sfdbs0_sfdb1_src0_size_q; 
reg     [2:0] sfdbs0_sfdb1_src0_size; 
reg     [5:0] sfdbs0_sfdb1_src1_id_q; 
reg     [5:0] sfdbs0_sfdb1_src1_id; 
reg     [2:0] sfdbs0_sfdb1_src1_size_q; 
reg     [2:0] sfdbs0_sfdb1_src1_size; 
reg     [5:0] sfdbs0_sfdb1_src2_id_q; 
reg     [5:0] sfdbs0_sfdb1_src2_id; 
reg     [2:0] sfdbs0_sfdb1_src2_size_q; 
reg     [2:0] sfdbs0_sfdb1_src2_size; 
reg     [5:0] sfdbs0_sfdb1_src3_id_q; 
reg     [5:0] sfdbs0_sfdb1_src3_id; 
reg     [2:0] sfdbs0_sfdb1_src3_size_q; 
reg     [2:0] sfdbs0_sfdb1_src3_size; 
reg     [5:0] sfdbs0_sfdb1_src4_id_q; 
reg     [5:0] sfdbs0_sfdb1_src4_id; 
reg     [2:0] sfdbs0_sfdb1_src4_size_q; 
reg     [2:0] sfdbs0_sfdb1_src4_size; 
reg     [5:0] sfdbs0_sfdb1_src5_id_q; 
reg     [5:0] sfdbs0_sfdb1_src5_id; 
reg     [2:0] sfdbs0_sfdb1_src5_size_q; 
reg     [2:0] sfdbs0_sfdb1_src5_size; 
reg     [5:0] sfdbs0_sfdb1_src6_id_q; 
reg     [5:0] sfdbs0_sfdb1_src6_id; 
reg     [2:0] sfdbs0_sfdb1_src6_size_q; 
reg     [2:0] sfdbs0_sfdb1_src6_size; 
reg     [5:0] sfdbs0_sfdb1_src7_id_q; 
reg     [5:0] sfdbs0_sfdb1_src7_id; 
reg     [2:0] sfdbs0_sfdb1_src7_size_q; 
reg     [2:0] sfdbs0_sfdb1_src7_size; 
reg     [5:0] sfdbs0_sfdb1_src8_id_q; 
reg     [5:0] sfdbs0_sfdb1_src8_id; 
reg     [2:0] sfdbs0_sfdb1_src8_size_q; 
reg     [2:0] sfdbs0_sfdb1_src8_size; 
reg     [5:0] sfdbs0_sfdb1_src9_id_q; 
reg     [5:0] sfdbs0_sfdb1_src9_id; 
reg     [2:0] sfdbs0_sfdb1_src9_size_q; 
reg     [2:0] sfdbs0_sfdb1_src9_size; 
reg     [5:0] sfdbs0_sfdb1_src10_id_q; 
reg     [5:0] sfdbs0_sfdb1_src10_id; 
reg     [2:0] sfdbs0_sfdb1_src10_size_q; 
reg     [2:0] sfdbs0_sfdb1_src10_size; 
reg     [5:0] sfdbs0_sfdb1_src11_id_q; 
reg     [5:0] sfdbs0_sfdb1_src11_id; 
reg     [2:0] sfdbs0_sfdb1_src11_size_q; 
reg     [2:0] sfdbs0_sfdb1_src11_size; 
reg     [5:0] sfdbs0_sfdb1_src12_id_q; 
reg     [5:0] sfdbs0_sfdb1_src12_id; 
reg     [2:0] sfdbs0_sfdb1_src12_size_q; 
reg     [2:0] sfdbs0_sfdb1_src12_size; 
reg     [5:0] sfdbs0_sfdb1_src13_id_q; 
reg     [5:0] sfdbs0_sfdb1_src13_id; 
reg     [2:0] sfdbs0_sfdb1_src13_size_q; 
reg     [2:0] sfdbs0_sfdb1_src13_size; 
reg     [5:0] sfdbs0_sfdb1_src14_id_q; 
reg     [5:0] sfdbs0_sfdb1_src14_id; 
reg     [2:0] sfdbs0_sfdb1_src14_size_q; 
reg     [2:0] sfdbs0_sfdb1_src14_size; 
reg     [5:0] sfdbs0_sfdb1_src15_id_q; 
reg     [5:0] sfdbs0_sfdb1_src15_id; 
reg     [2:0] sfdbs0_sfdb1_src15_size_q; 
reg     [2:0] sfdbs0_sfdb1_src15_size; 
reg     [5:0] sfdbs0_sfdb1_tgt_id_q; 
reg     [5:0] sfdbs0_sfdb1_tgt_id; 
wire   [31:0] write_data; 
wire   [31:0] write_strobe_mask; 
wire   [31:0] write_data_masked; 

////////////////////////////////////////////////////////////////////////
// Local Clock Gating

wire          reg_sw_enbl = write_valid_i; 
wire          reg_sw_clk; 
ftc_clock_gate_latch reg_sw_clk_clock_gate_latch (
    .clk(reg_clk),
    .enable(reg_sw_enbl),
    .clock_gate_disable(1'b0),
    .test_mode(test_mode_cgm_i),
    .gated_clk(reg_sw_clk));

wire          reg_load0_enbl = write_valid_i
                            || sfdbs0_error_err_log_code_enb
                            || sfdbs0_error_err_log_access_enb
                            || sfdbs0_error_err_log_id_enb
                            || sfdbs0_error_err_log_multi_enb
                            || sfdbs0_error_err_data_data_enb
                            || sfdbs0_error_err_idx_slice_idx_enb
                            || sfdbs0_error_err_idx_group_idx_enb; 
wire          reg_load0_clk; 
ftc_clock_gate_latch reg_load0_clk_clock_gate_latch (
    .clk(reg_clk),
    .enable(reg_load0_enbl),
    .clock_gate_disable(1'b0),
    .test_mode(test_mode_cgm_i),
    .gated_clk(reg_load0_clk));

////////////////////////////////////////////////////////////////////////
// Config Register Block Write Logic

// ------------------------------------------------------------
// register: sfdb0_src0                            offset: 0x0
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src0_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src0_id_q <= sfdbs0_sfdb0_src0_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src0_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src0_size_q <= sfdbs0_sfdb0_src0_size;
   end
end
// ------------------------------------------------------------
// register: sfdb0_src1                            offset: 0x4
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src1_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src1_id_q <= sfdbs0_sfdb0_src1_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src1_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src1_size_q <= sfdbs0_sfdb0_src1_size;
   end
end
// ------------------------------------------------------------
// register: sfdb0_src2                            offset: 0x8
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src2_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src2_id_q <= sfdbs0_sfdb0_src2_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src2_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src2_size_q <= sfdbs0_sfdb0_src2_size;
   end
end
// ------------------------------------------------------------
// register: sfdb0_src3                            offset: 0xc
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src3_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src3_id_q <= sfdbs0_sfdb0_src3_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src3_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src3_size_q <= sfdbs0_sfdb0_src3_size;
   end
end
// ------------------------------------------------------------
// register: sfdb0_src4                            offset: 0x10
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src4_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src4_id_q <= sfdbs0_sfdb0_src4_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src4_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src4_size_q <= sfdbs0_sfdb0_src4_size;
   end
end
// ------------------------------------------------------------
// register: sfdb0_src5                            offset: 0x14
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src5_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src5_id_q <= sfdbs0_sfdb0_src5_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src5_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src5_size_q <= sfdbs0_sfdb0_src5_size;
   end
end
// ------------------------------------------------------------
// register: sfdb0_src6                            offset: 0x18
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src6_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src6_id_q <= sfdbs0_sfdb0_src6_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src6_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src6_size_q <= sfdbs0_sfdb0_src6_size;
   end
end
// ------------------------------------------------------------
// register: sfdb0_src7                            offset: 0x1c
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src7_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src7_id_q <= sfdbs0_sfdb0_src7_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src7_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src7_size_q <= sfdbs0_sfdb0_src7_size;
   end
end
// ------------------------------------------------------------
// register: sfdb0_src8                            offset: 0x20
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src8_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src8_id_q <= sfdbs0_sfdb0_src8_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src8_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src8_size_q <= sfdbs0_sfdb0_src8_size;
   end
end
// ------------------------------------------------------------
// register: sfdb0_src9                            offset: 0x24
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src9_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src9_id_q <= sfdbs0_sfdb0_src9_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src9_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src9_size_q <= sfdbs0_sfdb0_src9_size;
   end
end
// ------------------------------------------------------------
// register: sfdb0_src10                           offset: 0x28
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src10_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src10_id_q <= sfdbs0_sfdb0_src10_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src10_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src10_size_q <= sfdbs0_sfdb0_src10_size;
   end
end
// ------------------------------------------------------------
// register: sfdb0_src11                           offset: 0x2c
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src11_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src11_id_q <= sfdbs0_sfdb0_src11_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src11_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src11_size_q <= sfdbs0_sfdb0_src11_size;
   end
end
// ------------------------------------------------------------
// register: sfdb0_src12                           offset: 0x30
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src12_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src12_id_q <= sfdbs0_sfdb0_src12_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src12_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src12_size_q <= sfdbs0_sfdb0_src12_size;
   end
end
// ------------------------------------------------------------
// register: sfdb0_src13                           offset: 0x34
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src13_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src13_id_q <= sfdbs0_sfdb0_src13_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src13_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src13_size_q <= sfdbs0_sfdb0_src13_size;
   end
end
// ------------------------------------------------------------
// register: sfdb0_src14                           offset: 0x38
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src14_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src14_id_q <= sfdbs0_sfdb0_src14_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src14_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src14_size_q <= sfdbs0_sfdb0_src14_size;
   end
end
// ------------------------------------------------------------
// register: sfdb0_src15                           offset: 0x3c
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src15_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src15_id_q <= sfdbs0_sfdb0_src15_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_src15_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_src15_size_q <= sfdbs0_sfdb0_src15_size;
   end
end
// ------------------------------------------------------------
// register: sfdb0_tgt                             offset: 0x7c
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb0_tgt_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb0_tgt_id_q <= sfdbs0_sfdb0_tgt_id;
   end
end
// ------------------------------------------------------------
// register: ipc_sc                                offset: 0x80
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_ipc_sc_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_ipc_sc_id_q <= sfdbs0_ipc_sc_id;
   end
end
// ------------------------------------------------------------
// register: error_err_log                         offset: 0xf0
// field   : code,  type:STD, sw:WC, hw:RW, msb:2, lsb:0
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_error_err_log_code_q <= 3'h0;
   end
   else if (sfdbs0_error_err_log_code_enb) begin
      sfdbs0_error_err_log_code_q <= sfdbs0_error_err_log_code_d;
   end
   else if (write_valid_i) begin
      sfdbs0_error_err_log_code_q <= sfdbs0_error_err_log_code;
   end
end
// field   : access,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_error_err_log_access_q <= 1'h0;
   end
   else if (sfdbs0_error_err_log_access_enb) begin
      sfdbs0_error_err_log_access_q <= sfdbs0_error_err_log_access_d;
   end
end
// field   : id,  type:STD, sw:RO, hw:RW, msb:13, lsb:8
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_error_err_log_id_q <= 6'h00;
   end
   else if (sfdbs0_error_err_log_id_enb) begin
      sfdbs0_error_err_log_id_q <= sfdbs0_error_err_log_id_d;
   end
end
// field   : multi,  type:STD, sw:RO, hw:RW, msb:31, lsb:31
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_error_err_log_multi_q <= 1'h0;
   end
   else if (sfdbs0_error_err_log_multi_enb) begin
      sfdbs0_error_err_log_multi_q <= sfdbs0_error_err_log_multi_d;
   end
end
// ------------------------------------------------------------
// register: error_err_data                        offset: 0xf4
// field   : data,  type:STD, sw:RO, hw:RW, msb:31, lsb:0
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_error_err_data_data_q <= 32'h00000000;
   end
   else if (sfdbs0_error_err_data_data_enb) begin
      sfdbs0_error_err_data_data_q <= sfdbs0_error_err_data_data_d;
   end
end
// ------------------------------------------------------------
// register: error_err_idx                         offset: 0xf8
// field   : slice_idx,  type:STD, sw:RO, hw:RW, msb:4, lsb:0
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_error_err_idx_slice_idx_q <= 5'h00;
   end
   else if (sfdbs0_error_err_idx_slice_idx_enb) begin
      sfdbs0_error_err_idx_slice_idx_q <= sfdbs0_error_err_idx_slice_idx_d;
   end
end
// field   : group_idx,  type:STD, sw:RO, hw:RW, msb:8, lsb:5
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_error_err_idx_group_idx_q <= 4'h0;
   end
   else if (sfdbs0_error_err_idx_group_idx_enb) begin
      sfdbs0_error_err_idx_group_idx_q <= sfdbs0_error_err_idx_group_idx_d;
   end
end
// ------------------------------------------------------------
// register: sfdb1_src0                            offset: 0x100
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src0_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src0_id_q <= sfdbs0_sfdb1_src0_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src0_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src0_size_q <= sfdbs0_sfdb1_src0_size;
   end
end
// ------------------------------------------------------------
// register: sfdb1_src1                            offset: 0x104
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src1_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src1_id_q <= sfdbs0_sfdb1_src1_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src1_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src1_size_q <= sfdbs0_sfdb1_src1_size;
   end
end
// ------------------------------------------------------------
// register: sfdb1_src2                            offset: 0x108
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src2_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src2_id_q <= sfdbs0_sfdb1_src2_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src2_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src2_size_q <= sfdbs0_sfdb1_src2_size;
   end
end
// ------------------------------------------------------------
// register: sfdb1_src3                            offset: 0x10c
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src3_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src3_id_q <= sfdbs0_sfdb1_src3_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src3_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src3_size_q <= sfdbs0_sfdb1_src3_size;
   end
end
// ------------------------------------------------------------
// register: sfdb1_src4                            offset: 0x110
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src4_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src4_id_q <= sfdbs0_sfdb1_src4_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src4_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src4_size_q <= sfdbs0_sfdb1_src4_size;
   end
end
// ------------------------------------------------------------
// register: sfdb1_src5                            offset: 0x114
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src5_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src5_id_q <= sfdbs0_sfdb1_src5_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src5_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src5_size_q <= sfdbs0_sfdb1_src5_size;
   end
end
// ------------------------------------------------------------
// register: sfdb1_src6                            offset: 0x118
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src6_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src6_id_q <= sfdbs0_sfdb1_src6_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src6_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src6_size_q <= sfdbs0_sfdb1_src6_size;
   end
end
// ------------------------------------------------------------
// register: sfdb1_src7                            offset: 0x11c
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src7_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src7_id_q <= sfdbs0_sfdb1_src7_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src7_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src7_size_q <= sfdbs0_sfdb1_src7_size;
   end
end
// ------------------------------------------------------------
// register: sfdb1_src8                            offset: 0x120
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src8_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src8_id_q <= sfdbs0_sfdb1_src8_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src8_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src8_size_q <= sfdbs0_sfdb1_src8_size;
   end
end
// ------------------------------------------------------------
// register: sfdb1_src9                            offset: 0x124
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src9_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src9_id_q <= sfdbs0_sfdb1_src9_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src9_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src9_size_q <= sfdbs0_sfdb1_src9_size;
   end
end
// ------------------------------------------------------------
// register: sfdb1_src10                           offset: 0x128
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src10_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src10_id_q <= sfdbs0_sfdb1_src10_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src10_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src10_size_q <= sfdbs0_sfdb1_src10_size;
   end
end
// ------------------------------------------------------------
// register: sfdb1_src11                           offset: 0x12c
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src11_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src11_id_q <= sfdbs0_sfdb1_src11_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src11_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src11_size_q <= sfdbs0_sfdb1_src11_size;
   end
end
// ------------------------------------------------------------
// register: sfdb1_src12                           offset: 0x130
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src12_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src12_id_q <= sfdbs0_sfdb1_src12_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src12_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src12_size_q <= sfdbs0_sfdb1_src12_size;
   end
end
// ------------------------------------------------------------
// register: sfdb1_src13                           offset: 0x134
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src13_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src13_id_q <= sfdbs0_sfdb1_src13_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src13_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src13_size_q <= sfdbs0_sfdb1_src13_size;
   end
end
// ------------------------------------------------------------
// register: sfdb1_src14                           offset: 0x138
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src14_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src14_id_q <= sfdbs0_sfdb1_src14_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src14_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src14_size_q <= sfdbs0_sfdb1_src14_size;
   end
end
// ------------------------------------------------------------
// register: sfdb1_src15                           offset: 0x13c
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src15_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src15_id_q <= sfdbs0_sfdb1_src15_id;
   end
end
// field   : size,  type:STD, sw:RW, hw:RO, msb:18, lsb:16
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_src15_size_q <= 3'h2;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_src15_size_q <= sfdbs0_sfdb1_src15_size;
   end
end
// ------------------------------------------------------------
// register: sfdb1_tgt                             offset: 0x17c
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      sfdbs0_sfdb1_tgt_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      sfdbs0_sfdb1_tgt_id_q <= sfdbs0_sfdb1_tgt_id;
   end
end

////////////////////////////////////////////////////////////////////////
// STD/STP/INT Register/Field Write Logic

wire   [31:0] sfdbs0_sfdb0_src0; 
reg    [31:0] sfdbs0_sfdb0_src0_wrdata0; 
always @(*) begin
   sfdbs0_sfdb0_src0_wrdata0 = (write_data_masked | (sfdbs0_sfdb0_src0[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h000) begin
      sfdbs0_sfdb0_src0_id = sfdbs0_sfdb0_src0_wrdata0[5:0];
      sfdbs0_sfdb0_src0_size = sfdbs0_sfdb0_src0_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb0_src0_id = sfdbs0_sfdb0_src0_id_q;
      sfdbs0_sfdb0_src0_size = sfdbs0_sfdb0_src0_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb0_src1; 
reg    [31:0] sfdbs0_sfdb0_src1_wrdata0; 
always @(*) begin
   sfdbs0_sfdb0_src1_wrdata0 = (write_data_masked | (sfdbs0_sfdb0_src1[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h004) begin
      sfdbs0_sfdb0_src1_id = sfdbs0_sfdb0_src1_wrdata0[5:0];
      sfdbs0_sfdb0_src1_size = sfdbs0_sfdb0_src1_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb0_src1_id = sfdbs0_sfdb0_src1_id_q;
      sfdbs0_sfdb0_src1_size = sfdbs0_sfdb0_src1_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb0_src2; 
reg    [31:0] sfdbs0_sfdb0_src2_wrdata0; 
always @(*) begin
   sfdbs0_sfdb0_src2_wrdata0 = (write_data_masked | (sfdbs0_sfdb0_src2[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h008) begin
      sfdbs0_sfdb0_src2_id = sfdbs0_sfdb0_src2_wrdata0[5:0];
      sfdbs0_sfdb0_src2_size = sfdbs0_sfdb0_src2_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb0_src2_id = sfdbs0_sfdb0_src2_id_q;
      sfdbs0_sfdb0_src2_size = sfdbs0_sfdb0_src2_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb0_src3; 
reg    [31:0] sfdbs0_sfdb0_src3_wrdata0; 
always @(*) begin
   sfdbs0_sfdb0_src3_wrdata0 = (write_data_masked | (sfdbs0_sfdb0_src3[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h00c) begin
      sfdbs0_sfdb0_src3_id = sfdbs0_sfdb0_src3_wrdata0[5:0];
      sfdbs0_sfdb0_src3_size = sfdbs0_sfdb0_src3_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb0_src3_id = sfdbs0_sfdb0_src3_id_q;
      sfdbs0_sfdb0_src3_size = sfdbs0_sfdb0_src3_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb0_src4; 
reg    [31:0] sfdbs0_sfdb0_src4_wrdata0; 
always @(*) begin
   sfdbs0_sfdb0_src4_wrdata0 = (write_data_masked | (sfdbs0_sfdb0_src4[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h010) begin
      sfdbs0_sfdb0_src4_id = sfdbs0_sfdb0_src4_wrdata0[5:0];
      sfdbs0_sfdb0_src4_size = sfdbs0_sfdb0_src4_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb0_src4_id = sfdbs0_sfdb0_src4_id_q;
      sfdbs0_sfdb0_src4_size = sfdbs0_sfdb0_src4_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb0_src5; 
reg    [31:0] sfdbs0_sfdb0_src5_wrdata0; 
always @(*) begin
   sfdbs0_sfdb0_src5_wrdata0 = (write_data_masked | (sfdbs0_sfdb0_src5[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h014) begin
      sfdbs0_sfdb0_src5_id = sfdbs0_sfdb0_src5_wrdata0[5:0];
      sfdbs0_sfdb0_src5_size = sfdbs0_sfdb0_src5_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb0_src5_id = sfdbs0_sfdb0_src5_id_q;
      sfdbs0_sfdb0_src5_size = sfdbs0_sfdb0_src5_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb0_src6; 
reg    [31:0] sfdbs0_sfdb0_src6_wrdata0; 
always @(*) begin
   sfdbs0_sfdb0_src6_wrdata0 = (write_data_masked | (sfdbs0_sfdb0_src6[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h018) begin
      sfdbs0_sfdb0_src6_id = sfdbs0_sfdb0_src6_wrdata0[5:0];
      sfdbs0_sfdb0_src6_size = sfdbs0_sfdb0_src6_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb0_src6_id = sfdbs0_sfdb0_src6_id_q;
      sfdbs0_sfdb0_src6_size = sfdbs0_sfdb0_src6_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb0_src7; 
reg    [31:0] sfdbs0_sfdb0_src7_wrdata0; 
always @(*) begin
   sfdbs0_sfdb0_src7_wrdata0 = (write_data_masked | (sfdbs0_sfdb0_src7[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h01c) begin
      sfdbs0_sfdb0_src7_id = sfdbs0_sfdb0_src7_wrdata0[5:0];
      sfdbs0_sfdb0_src7_size = sfdbs0_sfdb0_src7_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb0_src7_id = sfdbs0_sfdb0_src7_id_q;
      sfdbs0_sfdb0_src7_size = sfdbs0_sfdb0_src7_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb0_src8; 
reg    [31:0] sfdbs0_sfdb0_src8_wrdata0; 
always @(*) begin
   sfdbs0_sfdb0_src8_wrdata0 = (write_data_masked | (sfdbs0_sfdb0_src8[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h020) begin
      sfdbs0_sfdb0_src8_id = sfdbs0_sfdb0_src8_wrdata0[5:0];
      sfdbs0_sfdb0_src8_size = sfdbs0_sfdb0_src8_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb0_src8_id = sfdbs0_sfdb0_src8_id_q;
      sfdbs0_sfdb0_src8_size = sfdbs0_sfdb0_src8_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb0_src9; 
reg    [31:0] sfdbs0_sfdb0_src9_wrdata0; 
always @(*) begin
   sfdbs0_sfdb0_src9_wrdata0 = (write_data_masked | (sfdbs0_sfdb0_src9[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h024) begin
      sfdbs0_sfdb0_src9_id = sfdbs0_sfdb0_src9_wrdata0[5:0];
      sfdbs0_sfdb0_src9_size = sfdbs0_sfdb0_src9_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb0_src9_id = sfdbs0_sfdb0_src9_id_q;
      sfdbs0_sfdb0_src9_size = sfdbs0_sfdb0_src9_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb0_src10; 
reg    [31:0] sfdbs0_sfdb0_src10_wrdata0; 
always @(*) begin
   sfdbs0_sfdb0_src10_wrdata0 = (write_data_masked | (sfdbs0_sfdb0_src10[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h028) begin
      sfdbs0_sfdb0_src10_id = sfdbs0_sfdb0_src10_wrdata0[5:0];
      sfdbs0_sfdb0_src10_size = sfdbs0_sfdb0_src10_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb0_src10_id = sfdbs0_sfdb0_src10_id_q;
      sfdbs0_sfdb0_src10_size = sfdbs0_sfdb0_src10_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb0_src11; 
reg    [31:0] sfdbs0_sfdb0_src11_wrdata0; 
always @(*) begin
   sfdbs0_sfdb0_src11_wrdata0 = (write_data_masked | (sfdbs0_sfdb0_src11[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h02c) begin
      sfdbs0_sfdb0_src11_id = sfdbs0_sfdb0_src11_wrdata0[5:0];
      sfdbs0_sfdb0_src11_size = sfdbs0_sfdb0_src11_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb0_src11_id = sfdbs0_sfdb0_src11_id_q;
      sfdbs0_sfdb0_src11_size = sfdbs0_sfdb0_src11_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb0_src12; 
reg    [31:0] sfdbs0_sfdb0_src12_wrdata0; 
always @(*) begin
   sfdbs0_sfdb0_src12_wrdata0 = (write_data_masked | (sfdbs0_sfdb0_src12[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h030) begin
      sfdbs0_sfdb0_src12_id = sfdbs0_sfdb0_src12_wrdata0[5:0];
      sfdbs0_sfdb0_src12_size = sfdbs0_sfdb0_src12_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb0_src12_id = sfdbs0_sfdb0_src12_id_q;
      sfdbs0_sfdb0_src12_size = sfdbs0_sfdb0_src12_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb0_src13; 
reg    [31:0] sfdbs0_sfdb0_src13_wrdata0; 
always @(*) begin
   sfdbs0_sfdb0_src13_wrdata0 = (write_data_masked | (sfdbs0_sfdb0_src13[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h034) begin
      sfdbs0_sfdb0_src13_id = sfdbs0_sfdb0_src13_wrdata0[5:0];
      sfdbs0_sfdb0_src13_size = sfdbs0_sfdb0_src13_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb0_src13_id = sfdbs0_sfdb0_src13_id_q;
      sfdbs0_sfdb0_src13_size = sfdbs0_sfdb0_src13_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb0_src14; 
reg    [31:0] sfdbs0_sfdb0_src14_wrdata0; 
always @(*) begin
   sfdbs0_sfdb0_src14_wrdata0 = (write_data_masked | (sfdbs0_sfdb0_src14[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h038) begin
      sfdbs0_sfdb0_src14_id = sfdbs0_sfdb0_src14_wrdata0[5:0];
      sfdbs0_sfdb0_src14_size = sfdbs0_sfdb0_src14_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb0_src14_id = sfdbs0_sfdb0_src14_id_q;
      sfdbs0_sfdb0_src14_size = sfdbs0_sfdb0_src14_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb0_src15; 
reg    [31:0] sfdbs0_sfdb0_src15_wrdata0; 
always @(*) begin
   sfdbs0_sfdb0_src15_wrdata0 = (write_data_masked | (sfdbs0_sfdb0_src15[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h03c) begin
      sfdbs0_sfdb0_src15_id = sfdbs0_sfdb0_src15_wrdata0[5:0];
      sfdbs0_sfdb0_src15_size = sfdbs0_sfdb0_src15_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb0_src15_id = sfdbs0_sfdb0_src15_id_q;
      sfdbs0_sfdb0_src15_size = sfdbs0_sfdb0_src15_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb0_tgt; 
reg    [31:0] sfdbs0_sfdb0_tgt_wrdata0; 
always @(*) begin
   sfdbs0_sfdb0_tgt_wrdata0 = (write_data_masked | (sfdbs0_sfdb0_tgt[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h07c) begin
      sfdbs0_sfdb0_tgt_id = sfdbs0_sfdb0_tgt_wrdata0[5:0];
   end else begin
      sfdbs0_sfdb0_tgt_id = sfdbs0_sfdb0_tgt_id_q;
   end
end

wire   [31:0] sfdbs0_ipc_sc; 
reg    [31:0] sfdbs0_ipc_sc_wrdata0; 
always @(*) begin
   sfdbs0_ipc_sc_wrdata0 = (write_data_masked | (sfdbs0_ipc_sc[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h080) begin
      sfdbs0_ipc_sc_id = sfdbs0_ipc_sc_wrdata0[5:0];
   end else begin
      sfdbs0_ipc_sc_id = sfdbs0_ipc_sc_id_q;
   end
end

wire   [31:0] sfdbs0_error_err_log; 
reg    [31:0] sfdbs0_error_err_log_wrdata0; 
always @(*) begin
   sfdbs0_error_err_log_wrdata0 = (write_data_masked | (sfdbs0_error_err_log[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h0f0) begin
      sfdbs0_error_err_log_code = {3{1'b0}};
   end else begin
      sfdbs0_error_err_log_code = sfdbs0_error_err_log_code_q;
   end
end

wire   [31:0] sfdbs0_sfdb1_src0; 
reg    [31:0] sfdbs0_sfdb1_src0_wrdata0; 
always @(*) begin
   sfdbs0_sfdb1_src0_wrdata0 = (write_data_masked | (sfdbs0_sfdb1_src0[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h100) begin
      sfdbs0_sfdb1_src0_id = sfdbs0_sfdb1_src0_wrdata0[5:0];
      sfdbs0_sfdb1_src0_size = sfdbs0_sfdb1_src0_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb1_src0_id = sfdbs0_sfdb1_src0_id_q;
      sfdbs0_sfdb1_src0_size = sfdbs0_sfdb1_src0_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb1_src1; 
reg    [31:0] sfdbs0_sfdb1_src1_wrdata0; 
always @(*) begin
   sfdbs0_sfdb1_src1_wrdata0 = (write_data_masked | (sfdbs0_sfdb1_src1[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h104) begin
      sfdbs0_sfdb1_src1_id = sfdbs0_sfdb1_src1_wrdata0[5:0];
      sfdbs0_sfdb1_src1_size = sfdbs0_sfdb1_src1_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb1_src1_id = sfdbs0_sfdb1_src1_id_q;
      sfdbs0_sfdb1_src1_size = sfdbs0_sfdb1_src1_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb1_src2; 
reg    [31:0] sfdbs0_sfdb1_src2_wrdata0; 
always @(*) begin
   sfdbs0_sfdb1_src2_wrdata0 = (write_data_masked | (sfdbs0_sfdb1_src2[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h108) begin
      sfdbs0_sfdb1_src2_id = sfdbs0_sfdb1_src2_wrdata0[5:0];
      sfdbs0_sfdb1_src2_size = sfdbs0_sfdb1_src2_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb1_src2_id = sfdbs0_sfdb1_src2_id_q;
      sfdbs0_sfdb1_src2_size = sfdbs0_sfdb1_src2_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb1_src3; 
reg    [31:0] sfdbs0_sfdb1_src3_wrdata0; 
always @(*) begin
   sfdbs0_sfdb1_src3_wrdata0 = (write_data_masked | (sfdbs0_sfdb1_src3[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h10c) begin
      sfdbs0_sfdb1_src3_id = sfdbs0_sfdb1_src3_wrdata0[5:0];
      sfdbs0_sfdb1_src3_size = sfdbs0_sfdb1_src3_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb1_src3_id = sfdbs0_sfdb1_src3_id_q;
      sfdbs0_sfdb1_src3_size = sfdbs0_sfdb1_src3_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb1_src4; 
reg    [31:0] sfdbs0_sfdb1_src4_wrdata0; 
always @(*) begin
   sfdbs0_sfdb1_src4_wrdata0 = (write_data_masked | (sfdbs0_sfdb1_src4[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h110) begin
      sfdbs0_sfdb1_src4_id = sfdbs0_sfdb1_src4_wrdata0[5:0];
      sfdbs0_sfdb1_src4_size = sfdbs0_sfdb1_src4_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb1_src4_id = sfdbs0_sfdb1_src4_id_q;
      sfdbs0_sfdb1_src4_size = sfdbs0_sfdb1_src4_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb1_src5; 
reg    [31:0] sfdbs0_sfdb1_src5_wrdata0; 
always @(*) begin
   sfdbs0_sfdb1_src5_wrdata0 = (write_data_masked | (sfdbs0_sfdb1_src5[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h114) begin
      sfdbs0_sfdb1_src5_id = sfdbs0_sfdb1_src5_wrdata0[5:0];
      sfdbs0_sfdb1_src5_size = sfdbs0_sfdb1_src5_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb1_src5_id = sfdbs0_sfdb1_src5_id_q;
      sfdbs0_sfdb1_src5_size = sfdbs0_sfdb1_src5_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb1_src6; 
reg    [31:0] sfdbs0_sfdb1_src6_wrdata0; 
always @(*) begin
   sfdbs0_sfdb1_src6_wrdata0 = (write_data_masked | (sfdbs0_sfdb1_src6[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h118) begin
      sfdbs0_sfdb1_src6_id = sfdbs0_sfdb1_src6_wrdata0[5:0];
      sfdbs0_sfdb1_src6_size = sfdbs0_sfdb1_src6_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb1_src6_id = sfdbs0_sfdb1_src6_id_q;
      sfdbs0_sfdb1_src6_size = sfdbs0_sfdb1_src6_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb1_src7; 
reg    [31:0] sfdbs0_sfdb1_src7_wrdata0; 
always @(*) begin
   sfdbs0_sfdb1_src7_wrdata0 = (write_data_masked | (sfdbs0_sfdb1_src7[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h11c) begin
      sfdbs0_sfdb1_src7_id = sfdbs0_sfdb1_src7_wrdata0[5:0];
      sfdbs0_sfdb1_src7_size = sfdbs0_sfdb1_src7_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb1_src7_id = sfdbs0_sfdb1_src7_id_q;
      sfdbs0_sfdb1_src7_size = sfdbs0_sfdb1_src7_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb1_src8; 
reg    [31:0] sfdbs0_sfdb1_src8_wrdata0; 
always @(*) begin
   sfdbs0_sfdb1_src8_wrdata0 = (write_data_masked | (sfdbs0_sfdb1_src8[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h120) begin
      sfdbs0_sfdb1_src8_id = sfdbs0_sfdb1_src8_wrdata0[5:0];
      sfdbs0_sfdb1_src8_size = sfdbs0_sfdb1_src8_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb1_src8_id = sfdbs0_sfdb1_src8_id_q;
      sfdbs0_sfdb1_src8_size = sfdbs0_sfdb1_src8_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb1_src9; 
reg    [31:0] sfdbs0_sfdb1_src9_wrdata0; 
always @(*) begin
   sfdbs0_sfdb1_src9_wrdata0 = (write_data_masked | (sfdbs0_sfdb1_src9[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h124) begin
      sfdbs0_sfdb1_src9_id = sfdbs0_sfdb1_src9_wrdata0[5:0];
      sfdbs0_sfdb1_src9_size = sfdbs0_sfdb1_src9_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb1_src9_id = sfdbs0_sfdb1_src9_id_q;
      sfdbs0_sfdb1_src9_size = sfdbs0_sfdb1_src9_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb1_src10; 
reg    [31:0] sfdbs0_sfdb1_src10_wrdata0; 
always @(*) begin
   sfdbs0_sfdb1_src10_wrdata0 = (write_data_masked | (sfdbs0_sfdb1_src10[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h128) begin
      sfdbs0_sfdb1_src10_id = sfdbs0_sfdb1_src10_wrdata0[5:0];
      sfdbs0_sfdb1_src10_size = sfdbs0_sfdb1_src10_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb1_src10_id = sfdbs0_sfdb1_src10_id_q;
      sfdbs0_sfdb1_src10_size = sfdbs0_sfdb1_src10_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb1_src11; 
reg    [31:0] sfdbs0_sfdb1_src11_wrdata0; 
always @(*) begin
   sfdbs0_sfdb1_src11_wrdata0 = (write_data_masked | (sfdbs0_sfdb1_src11[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h12c) begin
      sfdbs0_sfdb1_src11_id = sfdbs0_sfdb1_src11_wrdata0[5:0];
      sfdbs0_sfdb1_src11_size = sfdbs0_sfdb1_src11_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb1_src11_id = sfdbs0_sfdb1_src11_id_q;
      sfdbs0_sfdb1_src11_size = sfdbs0_sfdb1_src11_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb1_src12; 
reg    [31:0] sfdbs0_sfdb1_src12_wrdata0; 
always @(*) begin
   sfdbs0_sfdb1_src12_wrdata0 = (write_data_masked | (sfdbs0_sfdb1_src12[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h130) begin
      sfdbs0_sfdb1_src12_id = sfdbs0_sfdb1_src12_wrdata0[5:0];
      sfdbs0_sfdb1_src12_size = sfdbs0_sfdb1_src12_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb1_src12_id = sfdbs0_sfdb1_src12_id_q;
      sfdbs0_sfdb1_src12_size = sfdbs0_sfdb1_src12_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb1_src13; 
reg    [31:0] sfdbs0_sfdb1_src13_wrdata0; 
always @(*) begin
   sfdbs0_sfdb1_src13_wrdata0 = (write_data_masked | (sfdbs0_sfdb1_src13[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h134) begin
      sfdbs0_sfdb1_src13_id = sfdbs0_sfdb1_src13_wrdata0[5:0];
      sfdbs0_sfdb1_src13_size = sfdbs0_sfdb1_src13_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb1_src13_id = sfdbs0_sfdb1_src13_id_q;
      sfdbs0_sfdb1_src13_size = sfdbs0_sfdb1_src13_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb1_src14; 
reg    [31:0] sfdbs0_sfdb1_src14_wrdata0; 
always @(*) begin
   sfdbs0_sfdb1_src14_wrdata0 = (write_data_masked | (sfdbs0_sfdb1_src14[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h138) begin
      sfdbs0_sfdb1_src14_id = sfdbs0_sfdb1_src14_wrdata0[5:0];
      sfdbs0_sfdb1_src14_size = sfdbs0_sfdb1_src14_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb1_src14_id = sfdbs0_sfdb1_src14_id_q;
      sfdbs0_sfdb1_src14_size = sfdbs0_sfdb1_src14_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb1_src15; 
reg    [31:0] sfdbs0_sfdb1_src15_wrdata0; 
always @(*) begin
   sfdbs0_sfdb1_src15_wrdata0 = (write_data_masked | (sfdbs0_sfdb1_src15[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h13c) begin
      sfdbs0_sfdb1_src15_id = sfdbs0_sfdb1_src15_wrdata0[5:0];
      sfdbs0_sfdb1_src15_size = sfdbs0_sfdb1_src15_wrdata0[18:16];
   end else begin
      sfdbs0_sfdb1_src15_id = sfdbs0_sfdb1_src15_id_q;
      sfdbs0_sfdb1_src15_size = sfdbs0_sfdb1_src15_size_q;
   end
end

wire   [31:0] sfdbs0_sfdb1_tgt; 
reg    [31:0] sfdbs0_sfdb1_tgt_wrdata0; 
always @(*) begin
   sfdbs0_sfdb1_tgt_wrdata0 = (write_data_masked | (sfdbs0_sfdb1_tgt[31:0] & ~write_strobe_mask));
   if (write_addr_i == 9'h17c) begin
      sfdbs0_sfdb1_tgt_id = sfdbs0_sfdb1_tgt_wrdata0[5:0];
   end else begin
      sfdbs0_sfdb1_tgt_id = sfdbs0_sfdb1_tgt_id_q;
   end
end


////////////////////////////////////////////////////////////////////////
// Read/Write Ready Logic

assign ready_o = 1'b1;

////////////////////////////////////////////////////////////////////////
// Configuration Register Read Logic

// sonics preserve_name sfdbs0_sfdb0_src0
assign        sfdbs0_sfdb0_src0 = {
              13'd0,
              sfdbs0_sfdb0_src0_size_q,
              10'd0,
              sfdbs0_sfdb0_src0_id_q};

// sonics preserve_name sfdbs0_sfdb0_src1
assign        sfdbs0_sfdb0_src1 = {
              13'd0,
              sfdbs0_sfdb0_src1_size_q,
              10'd0,
              sfdbs0_sfdb0_src1_id_q};

// sonics preserve_name sfdbs0_sfdb0_src2
assign        sfdbs0_sfdb0_src2 = {
              13'd0,
              sfdbs0_sfdb0_src2_size_q,
              10'd0,
              sfdbs0_sfdb0_src2_id_q};

// sonics preserve_name sfdbs0_sfdb0_src3
assign        sfdbs0_sfdb0_src3 = {
              13'd0,
              sfdbs0_sfdb0_src3_size_q,
              10'd0,
              sfdbs0_sfdb0_src3_id_q};

// sonics preserve_name sfdbs0_sfdb0_src4
assign        sfdbs0_sfdb0_src4 = {
              13'd0,
              sfdbs0_sfdb0_src4_size_q,
              10'd0,
              sfdbs0_sfdb0_src4_id_q};

// sonics preserve_name sfdbs0_sfdb0_src5
assign        sfdbs0_sfdb0_src5 = {
              13'd0,
              sfdbs0_sfdb0_src5_size_q,
              10'd0,
              sfdbs0_sfdb0_src5_id_q};

// sonics preserve_name sfdbs0_sfdb0_src6
assign        sfdbs0_sfdb0_src6 = {
              13'd0,
              sfdbs0_sfdb0_src6_size_q,
              10'd0,
              sfdbs0_sfdb0_src6_id_q};

// sonics preserve_name sfdbs0_sfdb0_src7
assign        sfdbs0_sfdb0_src7 = {
              13'd0,
              sfdbs0_sfdb0_src7_size_q,
              10'd0,
              sfdbs0_sfdb0_src7_id_q};

// sonics preserve_name sfdbs0_sfdb0_src8
assign        sfdbs0_sfdb0_src8 = {
              13'd0,
              sfdbs0_sfdb0_src8_size_q,
              10'd0,
              sfdbs0_sfdb0_src8_id_q};

// sonics preserve_name sfdbs0_sfdb0_src9
assign        sfdbs0_sfdb0_src9 = {
              13'd0,
              sfdbs0_sfdb0_src9_size_q,
              10'd0,
              sfdbs0_sfdb0_src9_id_q};

// sonics preserve_name sfdbs0_sfdb0_src10
assign        sfdbs0_sfdb0_src10 = {
              13'd0,
              sfdbs0_sfdb0_src10_size_q,
              10'd0,
              sfdbs0_sfdb0_src10_id_q};

// sonics preserve_name sfdbs0_sfdb0_src11
assign        sfdbs0_sfdb0_src11 = {
              13'd0,
              sfdbs0_sfdb0_src11_size_q,
              10'd0,
              sfdbs0_sfdb0_src11_id_q};

// sonics preserve_name sfdbs0_sfdb0_src12
assign        sfdbs0_sfdb0_src12 = {
              13'd0,
              sfdbs0_sfdb0_src12_size_q,
              10'd0,
              sfdbs0_sfdb0_src12_id_q};

// sonics preserve_name sfdbs0_sfdb0_src13
assign        sfdbs0_sfdb0_src13 = {
              13'd0,
              sfdbs0_sfdb0_src13_size_q,
              10'd0,
              sfdbs0_sfdb0_src13_id_q};

// sonics preserve_name sfdbs0_sfdb0_src14
assign        sfdbs0_sfdb0_src14 = {
              13'd0,
              sfdbs0_sfdb0_src14_size_q,
              10'd0,
              sfdbs0_sfdb0_src14_id_q};

// sonics preserve_name sfdbs0_sfdb0_src15
assign        sfdbs0_sfdb0_src15 = {
              13'd0,
              sfdbs0_sfdb0_src15_size_q,
              10'd0,
              sfdbs0_sfdb0_src15_id_q};

// sonics preserve_name sfdbs0_sfdb0_tgt
assign        sfdbs0_sfdb0_tgt = {
              26'd0,
              sfdbs0_sfdb0_tgt_id_q};

// sonics preserve_name sfdbs0_ipc_sc
assign        sfdbs0_ipc_sc = {
              26'd0,
              sfdbs0_ipc_sc_id_q};

// sonics preserve_name sfdbs0_error_err_log
assign        sfdbs0_error_err_log = {
              sfdbs0_error_err_log_multi_q,
              17'd0,
              sfdbs0_error_err_log_id_q,
              3'd0,
              sfdbs0_error_err_log_access_q,
              1'd0,
              sfdbs0_error_err_log_code_q};

// sonics preserve_name sfdbs0_error_err_data
wire   [31:0] sfdbs0_error_err_data = {
              sfdbs0_error_err_data_data_q};

// sonics preserve_name sfdbs0_error_err_idx
wire   [31:0] sfdbs0_error_err_idx = {
              23'd0,
              sfdbs0_error_err_idx_group_idx_q,
              sfdbs0_error_err_idx_slice_idx_q};

// sonics preserve_name sfdbs0_sfdb1_src0
assign        sfdbs0_sfdb1_src0 = {
              13'd0,
              sfdbs0_sfdb1_src0_size_q,
              10'd0,
              sfdbs0_sfdb1_src0_id_q};

// sonics preserve_name sfdbs0_sfdb1_src1
assign        sfdbs0_sfdb1_src1 = {
              13'd0,
              sfdbs0_sfdb1_src1_size_q,
              10'd0,
              sfdbs0_sfdb1_src1_id_q};

// sonics preserve_name sfdbs0_sfdb1_src2
assign        sfdbs0_sfdb1_src2 = {
              13'd0,
              sfdbs0_sfdb1_src2_size_q,
              10'd0,
              sfdbs0_sfdb1_src2_id_q};

// sonics preserve_name sfdbs0_sfdb1_src3
assign        sfdbs0_sfdb1_src3 = {
              13'd0,
              sfdbs0_sfdb1_src3_size_q,
              10'd0,
              sfdbs0_sfdb1_src3_id_q};

// sonics preserve_name sfdbs0_sfdb1_src4
assign        sfdbs0_sfdb1_src4 = {
              13'd0,
              sfdbs0_sfdb1_src4_size_q,
              10'd0,
              sfdbs0_sfdb1_src4_id_q};

// sonics preserve_name sfdbs0_sfdb1_src5
assign        sfdbs0_sfdb1_src5 = {
              13'd0,
              sfdbs0_sfdb1_src5_size_q,
              10'd0,
              sfdbs0_sfdb1_src5_id_q};

// sonics preserve_name sfdbs0_sfdb1_src6
assign        sfdbs0_sfdb1_src6 = {
              13'd0,
              sfdbs0_sfdb1_src6_size_q,
              10'd0,
              sfdbs0_sfdb1_src6_id_q};

// sonics preserve_name sfdbs0_sfdb1_src7
assign        sfdbs0_sfdb1_src7 = {
              13'd0,
              sfdbs0_sfdb1_src7_size_q,
              10'd0,
              sfdbs0_sfdb1_src7_id_q};

// sonics preserve_name sfdbs0_sfdb1_src8
assign        sfdbs0_sfdb1_src8 = {
              13'd0,
              sfdbs0_sfdb1_src8_size_q,
              10'd0,
              sfdbs0_sfdb1_src8_id_q};

// sonics preserve_name sfdbs0_sfdb1_src9
assign        sfdbs0_sfdb1_src9 = {
              13'd0,
              sfdbs0_sfdb1_src9_size_q,
              10'd0,
              sfdbs0_sfdb1_src9_id_q};

// sonics preserve_name sfdbs0_sfdb1_src10
assign        sfdbs0_sfdb1_src10 = {
              13'd0,
              sfdbs0_sfdb1_src10_size_q,
              10'd0,
              sfdbs0_sfdb1_src10_id_q};

// sonics preserve_name sfdbs0_sfdb1_src11
assign        sfdbs0_sfdb1_src11 = {
              13'd0,
              sfdbs0_sfdb1_src11_size_q,
              10'd0,
              sfdbs0_sfdb1_src11_id_q};

// sonics preserve_name sfdbs0_sfdb1_src12
assign        sfdbs0_sfdb1_src12 = {
              13'd0,
              sfdbs0_sfdb1_src12_size_q,
              10'd0,
              sfdbs0_sfdb1_src12_id_q};

// sonics preserve_name sfdbs0_sfdb1_src13
assign        sfdbs0_sfdb1_src13 = {
              13'd0,
              sfdbs0_sfdb1_src13_size_q,
              10'd0,
              sfdbs0_sfdb1_src13_id_q};

// sonics preserve_name sfdbs0_sfdb1_src14
assign        sfdbs0_sfdb1_src14 = {
              13'd0,
              sfdbs0_sfdb1_src14_size_q,
              10'd0,
              sfdbs0_sfdb1_src14_id_q};

// sonics preserve_name sfdbs0_sfdb1_src15
assign        sfdbs0_sfdb1_src15 = {
              13'd0,
              sfdbs0_sfdb1_src15_size_q,
              10'd0,
              sfdbs0_sfdb1_src15_id_q};

// sonics preserve_name sfdbs0_sfdb1_tgt
assign        sfdbs0_sfdb1_tgt = {
              26'd0,
              sfdbs0_sfdb1_tgt_id_q};


////////////////////////////////////////////////////////////////////////
// Config Register Block Read Decoder

// LEVEL 0 ===================================
reg    [31:0] reg_word0_0; 
always @(*) begin
    case (read_addr_i[6:2])
       5'h0 :  reg_word0_0 = sfdbs0_sfdb0_src0;
       5'h1 :  reg_word0_0 = sfdbs0_sfdb0_src1;
       5'h2 :  reg_word0_0 = sfdbs0_sfdb0_src2;
       5'h3 :  reg_word0_0 = sfdbs0_sfdb0_src3;
       5'h4 :  reg_word0_0 = sfdbs0_sfdb0_src4;
       5'h5 :  reg_word0_0 = sfdbs0_sfdb0_src5;
       5'h6 :  reg_word0_0 = sfdbs0_sfdb0_src6;
       5'h7 :  reg_word0_0 = sfdbs0_sfdb0_src7;
       5'h8 :  reg_word0_0 = sfdbs0_sfdb0_src8;
       5'h9 :  reg_word0_0 = sfdbs0_sfdb0_src9;
       5'ha :  reg_word0_0 = sfdbs0_sfdb0_src10;
       5'hb :  reg_word0_0 = sfdbs0_sfdb0_src11;
       5'hc :  reg_word0_0 = sfdbs0_sfdb0_src12;
       5'hd :  reg_word0_0 = sfdbs0_sfdb0_src13;
       5'he :  reg_word0_0 = sfdbs0_sfdb0_src14;
       5'hf :  reg_word0_0 = sfdbs0_sfdb0_src15;
       5'h1f:  reg_word0_0 = sfdbs0_sfdb0_tgt;
       default: reg_word0_0 = 32'd0;
    endcase
end

reg    [31:0] reg_word0_1; 
always @(*) begin
    case (read_addr_i[6:2])
       5'h0 :  reg_word0_1 = sfdbs0_ipc_sc;
       5'h1c:  reg_word0_1 = sfdbs0_error_err_log;
       5'h1d:  reg_word0_1 = sfdbs0_error_err_data;
       5'h1e:  reg_word0_1 = sfdbs0_error_err_idx;
       default: reg_word0_1 = 32'd0;
    endcase
end

reg    [31:0] reg_word0_2; 
always @(*) begin
    case (read_addr_i[6:2])
       5'h0 :  reg_word0_2 = sfdbs0_sfdb1_src0;
       5'h1 :  reg_word0_2 = sfdbs0_sfdb1_src1;
       5'h2 :  reg_word0_2 = sfdbs0_sfdb1_src2;
       5'h3 :  reg_word0_2 = sfdbs0_sfdb1_src3;
       5'h4 :  reg_word0_2 = sfdbs0_sfdb1_src4;
       5'h5 :  reg_word0_2 = sfdbs0_sfdb1_src5;
       5'h6 :  reg_word0_2 = sfdbs0_sfdb1_src6;
       5'h7 :  reg_word0_2 = sfdbs0_sfdb1_src7;
       5'h8 :  reg_word0_2 = sfdbs0_sfdb1_src8;
       5'h9 :  reg_word0_2 = sfdbs0_sfdb1_src9;
       5'ha :  reg_word0_2 = sfdbs0_sfdb1_src10;
       5'hb :  reg_word0_2 = sfdbs0_sfdb1_src11;
       5'hc :  reg_word0_2 = sfdbs0_sfdb1_src12;
       5'hd :  reg_word0_2 = sfdbs0_sfdb1_src13;
       5'he :  reg_word0_2 = sfdbs0_sfdb1_src14;
       5'hf :  reg_word0_2 = sfdbs0_sfdb1_src15;
       5'h1f:  reg_word0_2 = sfdbs0_sfdb1_tgt;
       default: reg_word0_2 = 32'd0;
    endcase
end

// LEVEL 1 ===================================
reg    [31:0] reg_word1_0; 
always @(*) begin
    case (read_addr_i[8:7])
       2'h0 :  reg_word1_0 = reg_word0_0;
       2'h1 :  reg_word1_0 = reg_word0_1;
       2'h2 :  reg_word1_0 = reg_word0_2;
       default: reg_word1_0 = 32'd0;
    endcase
end

wire   [31:0] reg_word = reg_word1_0; 
assign read_data_o = reg_word & {32{read_valid_i}};

////////////////////////////////////////////////////////////////////////
// Read Address Hole Detection
reg           reg_read_hole; 
always @(*) begin
    casez (read_addr_i[8:2])
       7'h0 , 7'h1 , 7'h2 , 7'h3 , 7'h4 , 7'h5 , 7'h6 , 7'h7 , 
       7'h8 , 7'h9 , 7'ha , 7'hb , 7'hc , 7'hd , 7'he , 7'hf , 
       7'h1f, 7'h20, 7'h3c, 7'h3d, 7'h3e, 7'h40, 7'h41, 7'h42, 
       7'h43, 7'h44, 7'h45, 7'h46, 7'h47, 7'h48, 7'h49, 7'h4a, 
       7'h4b, 7'h4c, 7'h4d, 7'h4e, 7'h4f, 7'h5f:
          reg_read_hole = 1'b0;
       default: reg_read_hole = 1'b1;
    endcase
end
assign read_err_o = reg_read_hole;

////////////////////////////////////////////////////////////////////////
// Write Data Merge

assign write_strobe_mask = {{8{write_strb_i[3]}}
                           ,{8{write_strb_i[2]}}
                           ,{8{write_strb_i[1]}}
                           ,{8{write_strb_i[0]}}};
assign write_data_masked = write_data_i & write_strobe_mask;

////////////////////////////////////////////////////////////////////////
// Write Address Hole Detection
reg           reg_write_hole; 
always @(*) begin
    casez (write_addr_i[8:2])
       7'h0 , 7'h1 , 7'h2 , 7'h3 , 7'h4 , 7'h5 , 7'h6 , 7'h7 , 
       7'h8 , 7'h9 , 7'ha , 7'hb , 7'hc , 7'hd , 7'he , 7'hf , 
       7'h1f, 7'h20, 7'h3c, 7'h40, 7'h41, 7'h42, 7'h43, 7'h44, 
       7'h45, 7'h46, 7'h47, 7'h48, 7'h49, 7'h4a, 7'h4b, 7'h4c, 
       7'h4d, 7'h4e, 7'h4f, 7'h5f:
          reg_write_hole = 1'b0;
       default: reg_write_hole = 1'b1;
    endcase
end
assign write_err_o = reg_write_hole;

endmodule // regmodel0_regmodel_core_sfdbs0_csr

////////////////////////////////////////////////////////////////////////
