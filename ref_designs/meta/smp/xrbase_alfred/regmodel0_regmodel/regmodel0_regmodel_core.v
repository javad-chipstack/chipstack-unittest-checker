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
module regmodel0_regmodel_core(
    clk_i,
    non_retention_reset_ni,
    test_mode_cgm_i,
    ocp_mreset_ni,
    ocp_mcmd_i,
    ocp_maddr_i,
    ocp_mbyteen_i,
    ocp_mreqinfo_i,
    ocp_scmdaccept_o,
    ocp_mdata_i,
    ocp_sresp_o,
    ocp_sdata_o,
    ocp_mrespaccept_i,
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
    sfdbs0_sfdb1_tgt_id_q,
    fdbs0_reqinfo,
    fdbs0_fdb0_bell0_cnt_qout,
    fdbs0_fdb0_bell0_cnt_din,
    fdbs0_fdb0_bell0_cnt_w,
    fdbs0_fdb0_bell0_cnt_r,
    fdbs0_fdb0_bell0_failed_ring_q,
    fdbs0_fdb0_bell0_failed_ring_d,
    fdbs0_fdb0_bell0_failed_ring_enb,
    fdbs0_fdb0_bell0_max_priority_q,
    fdbs0_fdb0_bell0_max_priority_d,
    fdbs0_fdb0_bell0_max_priority_enb,
    fdbs0_fdb0_bell0_valid_fcnt_q,
    fdbs0_fdb0_bell0_valid_fcnt_d,
    fdbs0_fdb0_bell0_valid_fcnt_enb,
    fdbs0_fdb0_bell0_fcnt_q,
    fdbs0_fdb0_bell0_fcnt_d,
    fdbs0_fdb0_bell0_fcnt_enb,
    fdbs0_fdb0_bell1_cnt_qout,
    fdbs0_fdb0_bell1_cnt_din,
    fdbs0_fdb0_bell1_cnt_w,
    fdbs0_fdb0_bell1_cnt_r,
    fdbs0_fdb0_bell1_failed_ring_q,
    fdbs0_fdb0_bell1_failed_ring_d,
    fdbs0_fdb0_bell1_failed_ring_enb,
    fdbs0_fdb0_bell1_max_priority_q,
    fdbs0_fdb0_bell1_max_priority_d,
    fdbs0_fdb0_bell1_max_priority_enb,
    fdbs0_fdb0_bell1_valid_fcnt_q,
    fdbs0_fdb0_bell1_valid_fcnt_d,
    fdbs0_fdb0_bell1_valid_fcnt_enb,
    fdbs0_fdb0_bell1_fcnt_q,
    fdbs0_fdb0_bell1_fcnt_d,
    fdbs0_fdb0_bell1_fcnt_enb,
    fdbs0_fdb0_bell2_cnt_qout,
    fdbs0_fdb0_bell2_cnt_din,
    fdbs0_fdb0_bell2_cnt_w,
    fdbs0_fdb0_bell2_cnt_r,
    fdbs0_fdb0_bell2_failed_ring_q,
    fdbs0_fdb0_bell2_failed_ring_d,
    fdbs0_fdb0_bell2_failed_ring_enb,
    fdbs0_fdb0_bell2_max_priority_q,
    fdbs0_fdb0_bell2_max_priority_d,
    fdbs0_fdb0_bell2_max_priority_enb,
    fdbs0_fdb0_bell2_valid_fcnt_q,
    fdbs0_fdb0_bell2_valid_fcnt_d,
    fdbs0_fdb0_bell2_valid_fcnt_enb,
    fdbs0_fdb0_bell2_fcnt_q,
    fdbs0_fdb0_bell2_fcnt_d,
    fdbs0_fdb0_bell2_fcnt_enb,
    fdbs0_fdb0_bell3_cnt_qout,
    fdbs0_fdb0_bell3_cnt_din,
    fdbs0_fdb0_bell3_cnt_w,
    fdbs0_fdb0_bell3_cnt_r,
    fdbs0_fdb0_bell3_failed_ring_q,
    fdbs0_fdb0_bell3_failed_ring_d,
    fdbs0_fdb0_bell3_failed_ring_enb,
    fdbs0_fdb0_bell3_max_priority_q,
    fdbs0_fdb0_bell3_max_priority_d,
    fdbs0_fdb0_bell3_max_priority_enb,
    fdbs0_fdb0_bell3_valid_fcnt_q,
    fdbs0_fdb0_bell3_valid_fcnt_d,
    fdbs0_fdb0_bell3_valid_fcnt_enb,
    fdbs0_fdb0_bell3_fcnt_q,
    fdbs0_fdb0_bell3_fcnt_d,
    fdbs0_fdb0_bell3_fcnt_enb,
    fdbs0_fdb0_bell4_cnt_qout,
    fdbs0_fdb0_bell4_cnt_din,
    fdbs0_fdb0_bell4_cnt_w,
    fdbs0_fdb0_bell4_cnt_r,
    fdbs0_fdb0_bell4_failed_ring_q,
    fdbs0_fdb0_bell4_failed_ring_d,
    fdbs0_fdb0_bell4_failed_ring_enb,
    fdbs0_fdb0_bell4_max_priority_q,
    fdbs0_fdb0_bell4_max_priority_d,
    fdbs0_fdb0_bell4_max_priority_enb,
    fdbs0_fdb0_bell4_valid_fcnt_q,
    fdbs0_fdb0_bell4_valid_fcnt_d,
    fdbs0_fdb0_bell4_valid_fcnt_enb,
    fdbs0_fdb0_bell4_fcnt_q,
    fdbs0_fdb0_bell4_fcnt_d,
    fdbs0_fdb0_bell4_fcnt_enb,
    fdbs0_fdb0_bell5_cnt_qout,
    fdbs0_fdb0_bell5_cnt_din,
    fdbs0_fdb0_bell5_cnt_w,
    fdbs0_fdb0_bell5_cnt_r,
    fdbs0_fdb0_bell5_failed_ring_q,
    fdbs0_fdb0_bell5_failed_ring_d,
    fdbs0_fdb0_bell5_failed_ring_enb,
    fdbs0_fdb0_bell5_max_priority_q,
    fdbs0_fdb0_bell5_max_priority_d,
    fdbs0_fdb0_bell5_max_priority_enb,
    fdbs0_fdb0_bell5_valid_fcnt_q,
    fdbs0_fdb0_bell5_valid_fcnt_d,
    fdbs0_fdb0_bell5_valid_fcnt_enb,
    fdbs0_fdb0_bell5_fcnt_q,
    fdbs0_fdb0_bell5_fcnt_d,
    fdbs0_fdb0_bell5_fcnt_enb,
    fdbs0_fdb0_bell6_cnt_qout,
    fdbs0_fdb0_bell6_cnt_din,
    fdbs0_fdb0_bell6_cnt_w,
    fdbs0_fdb0_bell6_cnt_r,
    fdbs0_fdb0_bell6_failed_ring_q,
    fdbs0_fdb0_bell6_failed_ring_d,
    fdbs0_fdb0_bell6_failed_ring_enb,
    fdbs0_fdb0_bell6_max_priority_q,
    fdbs0_fdb0_bell6_max_priority_d,
    fdbs0_fdb0_bell6_max_priority_enb,
    fdbs0_fdb0_bell6_valid_fcnt_q,
    fdbs0_fdb0_bell6_valid_fcnt_d,
    fdbs0_fdb0_bell6_valid_fcnt_enb,
    fdbs0_fdb0_bell6_fcnt_q,
    fdbs0_fdb0_bell6_fcnt_d,
    fdbs0_fdb0_bell6_fcnt_enb,
    fdbs0_fdb0_bell7_cnt_qout,
    fdbs0_fdb0_bell7_cnt_din,
    fdbs0_fdb0_bell7_cnt_w,
    fdbs0_fdb0_bell7_cnt_r,
    fdbs0_fdb0_bell7_failed_ring_q,
    fdbs0_fdb0_bell7_failed_ring_d,
    fdbs0_fdb0_bell7_failed_ring_enb,
    fdbs0_fdb0_bell7_max_priority_q,
    fdbs0_fdb0_bell7_max_priority_d,
    fdbs0_fdb0_bell7_max_priority_enb,
    fdbs0_fdb0_bell7_valid_fcnt_q,
    fdbs0_fdb0_bell7_valid_fcnt_d,
    fdbs0_fdb0_bell7_valid_fcnt_enb,
    fdbs0_fdb0_bell7_fcnt_q,
    fdbs0_fdb0_bell7_fcnt_d,
    fdbs0_fdb0_bell7_fcnt_enb,
    fdbs0_fdb0_bell8_cnt_qout,
    fdbs0_fdb0_bell8_cnt_din,
    fdbs0_fdb0_bell8_cnt_w,
    fdbs0_fdb0_bell8_cnt_r,
    fdbs0_fdb0_bell8_failed_ring_q,
    fdbs0_fdb0_bell8_failed_ring_d,
    fdbs0_fdb0_bell8_failed_ring_enb,
    fdbs0_fdb0_bell8_max_priority_q,
    fdbs0_fdb0_bell8_max_priority_d,
    fdbs0_fdb0_bell8_max_priority_enb,
    fdbs0_fdb0_bell8_valid_fcnt_q,
    fdbs0_fdb0_bell8_valid_fcnt_d,
    fdbs0_fdb0_bell8_valid_fcnt_enb,
    fdbs0_fdb0_bell8_fcnt_q,
    fdbs0_fdb0_bell8_fcnt_d,
    fdbs0_fdb0_bell8_fcnt_enb,
    fdbs0_fdb0_bell9_cnt_qout,
    fdbs0_fdb0_bell9_cnt_din,
    fdbs0_fdb0_bell9_cnt_w,
    fdbs0_fdb0_bell9_cnt_r,
    fdbs0_fdb0_bell9_failed_ring_q,
    fdbs0_fdb0_bell9_failed_ring_d,
    fdbs0_fdb0_bell9_failed_ring_enb,
    fdbs0_fdb0_bell9_max_priority_q,
    fdbs0_fdb0_bell9_max_priority_d,
    fdbs0_fdb0_bell9_max_priority_enb,
    fdbs0_fdb0_bell9_valid_fcnt_q,
    fdbs0_fdb0_bell9_valid_fcnt_d,
    fdbs0_fdb0_bell9_valid_fcnt_enb,
    fdbs0_fdb0_bell9_fcnt_q,
    fdbs0_fdb0_bell9_fcnt_d,
    fdbs0_fdb0_bell9_fcnt_enb,
    fdbs0_fdb0_bell10_cnt_qout,
    fdbs0_fdb0_bell10_cnt_din,
    fdbs0_fdb0_bell10_cnt_w,
    fdbs0_fdb0_bell10_cnt_r,
    fdbs0_fdb0_bell10_failed_ring_q,
    fdbs0_fdb0_bell10_failed_ring_d,
    fdbs0_fdb0_bell10_failed_ring_enb,
    fdbs0_fdb0_bell10_max_priority_q,
    fdbs0_fdb0_bell10_max_priority_d,
    fdbs0_fdb0_bell10_max_priority_enb,
    fdbs0_fdb0_bell10_valid_fcnt_q,
    fdbs0_fdb0_bell10_valid_fcnt_d,
    fdbs0_fdb0_bell10_valid_fcnt_enb,
    fdbs0_fdb0_bell10_fcnt_q,
    fdbs0_fdb0_bell10_fcnt_d,
    fdbs0_fdb0_bell10_fcnt_enb,
    fdbs0_fdb0_bell11_cnt_qout,
    fdbs0_fdb0_bell11_cnt_din,
    fdbs0_fdb0_bell11_cnt_w,
    fdbs0_fdb0_bell11_cnt_r,
    fdbs0_fdb0_bell11_failed_ring_q,
    fdbs0_fdb0_bell11_failed_ring_d,
    fdbs0_fdb0_bell11_failed_ring_enb,
    fdbs0_fdb0_bell11_max_priority_q,
    fdbs0_fdb0_bell11_max_priority_d,
    fdbs0_fdb0_bell11_max_priority_enb,
    fdbs0_fdb0_bell11_valid_fcnt_q,
    fdbs0_fdb0_bell11_valid_fcnt_d,
    fdbs0_fdb0_bell11_valid_fcnt_enb,
    fdbs0_fdb0_bell11_fcnt_q,
    fdbs0_fdb0_bell11_fcnt_d,
    fdbs0_fdb0_bell11_fcnt_enb,
    fdbs0_fdb0_bell12_cnt_qout,
    fdbs0_fdb0_bell12_cnt_din,
    fdbs0_fdb0_bell12_cnt_w,
    fdbs0_fdb0_bell12_cnt_r,
    fdbs0_fdb0_bell12_failed_ring_q,
    fdbs0_fdb0_bell12_failed_ring_d,
    fdbs0_fdb0_bell12_failed_ring_enb,
    fdbs0_fdb0_bell12_max_priority_q,
    fdbs0_fdb0_bell12_max_priority_d,
    fdbs0_fdb0_bell12_max_priority_enb,
    fdbs0_fdb0_bell12_valid_fcnt_q,
    fdbs0_fdb0_bell12_valid_fcnt_d,
    fdbs0_fdb0_bell12_valid_fcnt_enb,
    fdbs0_fdb0_bell12_fcnt_q,
    fdbs0_fdb0_bell12_fcnt_d,
    fdbs0_fdb0_bell12_fcnt_enb,
    fdbs0_fdb0_bell13_cnt_qout,
    fdbs0_fdb0_bell13_cnt_din,
    fdbs0_fdb0_bell13_cnt_w,
    fdbs0_fdb0_bell13_cnt_r,
    fdbs0_fdb0_bell13_failed_ring_q,
    fdbs0_fdb0_bell13_failed_ring_d,
    fdbs0_fdb0_bell13_failed_ring_enb,
    fdbs0_fdb0_bell13_max_priority_q,
    fdbs0_fdb0_bell13_max_priority_d,
    fdbs0_fdb0_bell13_max_priority_enb,
    fdbs0_fdb0_bell13_valid_fcnt_q,
    fdbs0_fdb0_bell13_valid_fcnt_d,
    fdbs0_fdb0_bell13_valid_fcnt_enb,
    fdbs0_fdb0_bell13_fcnt_q,
    fdbs0_fdb0_bell13_fcnt_d,
    fdbs0_fdb0_bell13_fcnt_enb,
    fdbs0_fdb0_bell14_cnt_qout,
    fdbs0_fdb0_bell14_cnt_din,
    fdbs0_fdb0_bell14_cnt_w,
    fdbs0_fdb0_bell14_cnt_r,
    fdbs0_fdb0_bell14_failed_ring_q,
    fdbs0_fdb0_bell14_failed_ring_d,
    fdbs0_fdb0_bell14_failed_ring_enb,
    fdbs0_fdb0_bell14_max_priority_q,
    fdbs0_fdb0_bell14_max_priority_d,
    fdbs0_fdb0_bell14_max_priority_enb,
    fdbs0_fdb0_bell14_valid_fcnt_q,
    fdbs0_fdb0_bell14_valid_fcnt_d,
    fdbs0_fdb0_bell14_valid_fcnt_enb,
    fdbs0_fdb0_bell14_fcnt_q,
    fdbs0_fdb0_bell14_fcnt_d,
    fdbs0_fdb0_bell14_fcnt_enb,
    fdbs0_fdb0_bell15_cnt_qout,
    fdbs0_fdb0_bell15_cnt_din,
    fdbs0_fdb0_bell15_cnt_w,
    fdbs0_fdb0_bell15_cnt_r,
    fdbs0_fdb0_bell15_failed_ring_q,
    fdbs0_fdb0_bell15_failed_ring_d,
    fdbs0_fdb0_bell15_failed_ring_enb,
    fdbs0_fdb0_bell15_max_priority_q,
    fdbs0_fdb0_bell15_max_priority_d,
    fdbs0_fdb0_bell15_max_priority_enb,
    fdbs0_fdb0_bell15_valid_fcnt_q,
    fdbs0_fdb0_bell15_valid_fcnt_d,
    fdbs0_fdb0_bell15_valid_fcnt_enb,
    fdbs0_fdb0_bell15_fcnt_q,
    fdbs0_fdb0_bell15_fcnt_d,
    fdbs0_fdb0_bell15_fcnt_enb,
    fdbs0_fdb0_control_ack_on_empty_q,
    fdbs0_fdb0_enable_enable_qout,
    fdbs0_fdb0_enable_enable_din,
    fdbs0_fdb0_enable_enable_w,
    fdbs0_fdb0_status_status_d,
    fdbs0_fdb0_data0_fifo_din,
    fdbs0_fdb0_data0_fifo_a,
    fdbs0_fdb0_data0_fifo_wen,
    fdbs0_fdb0_data0_fifo_cen,
    fdbs0_fdb0_data0_fifo_dout,
    fdbs0_fdb0_data1_fifo_din,
    fdbs0_fdb0_data1_fifo_a,
    fdbs0_fdb0_data1_fifo_wen,
    fdbs0_fdb0_data1_fifo_cen,
    fdbs0_fdb0_data1_fifo_dout,
    fdbs0_fdb0_data2_fifo_din,
    fdbs0_fdb0_data2_fifo_a,
    fdbs0_fdb0_data2_fifo_wen,
    fdbs0_fdb0_data2_fifo_cen,
    fdbs0_fdb0_data2_fifo_dout,
    fdbs0_fdb0_data3_fifo_din,
    fdbs0_fdb0_data3_fifo_a,
    fdbs0_fdb0_data3_fifo_wen,
    fdbs0_fdb0_data3_fifo_cen,
    fdbs0_fdb0_data3_fifo_dout,
    fdbs0_fdb0_data4_fifo_din,
    fdbs0_fdb0_data4_fifo_a,
    fdbs0_fdb0_data4_fifo_wen,
    fdbs0_fdb0_data4_fifo_cen,
    fdbs0_fdb0_data4_fifo_dout,
    fdbs0_fdb0_data5_fifo_din,
    fdbs0_fdb0_data5_fifo_a,
    fdbs0_fdb0_data5_fifo_wen,
    fdbs0_fdb0_data5_fifo_cen,
    fdbs0_fdb0_data5_fifo_dout,
    fdbs0_fdb0_data6_fifo_din,
    fdbs0_fdb0_data6_fifo_a,
    fdbs0_fdb0_data6_fifo_wen,
    fdbs0_fdb0_data6_fifo_cen,
    fdbs0_fdb0_data6_fifo_dout,
    fdbs0_fdb0_data7_fifo_din,
    fdbs0_fdb0_data7_fifo_a,
    fdbs0_fdb0_data7_fifo_wen,
    fdbs0_fdb0_data7_fifo_cen,
    fdbs0_fdb0_data7_fifo_dout,
    fdbs0_fdb0_data8_fifo_din,
    fdbs0_fdb0_data8_fifo_a,
    fdbs0_fdb0_data8_fifo_wen,
    fdbs0_fdb0_data8_fifo_cen,
    fdbs0_fdb0_data8_fifo_dout,
    fdbs0_fdb0_data9_fifo_din,
    fdbs0_fdb0_data9_fifo_a,
    fdbs0_fdb0_data9_fifo_wen,
    fdbs0_fdb0_data9_fifo_cen,
    fdbs0_fdb0_data9_fifo_dout,
    fdbs0_fdb0_data10_fifo_din,
    fdbs0_fdb0_data10_fifo_a,
    fdbs0_fdb0_data10_fifo_wen,
    fdbs0_fdb0_data10_fifo_cen,
    fdbs0_fdb0_data10_fifo_dout,
    fdbs0_fdb0_data11_fifo_din,
    fdbs0_fdb0_data11_fifo_a,
    fdbs0_fdb0_data11_fifo_wen,
    fdbs0_fdb0_data11_fifo_cen,
    fdbs0_fdb0_data11_fifo_dout,
    fdbs0_fdb0_data12_fifo_din,
    fdbs0_fdb0_data12_fifo_a,
    fdbs0_fdb0_data12_fifo_wen,
    fdbs0_fdb0_data12_fifo_cen,
    fdbs0_fdb0_data12_fifo_dout,
    fdbs0_fdb0_data13_fifo_din,
    fdbs0_fdb0_data13_fifo_a,
    fdbs0_fdb0_data13_fifo_wen,
    fdbs0_fdb0_data13_fifo_cen,
    fdbs0_fdb0_data13_fifo_dout,
    fdbs0_fdb0_data14_fifo_din,
    fdbs0_fdb0_data14_fifo_a,
    fdbs0_fdb0_data14_fifo_wen,
    fdbs0_fdb0_data14_fifo_cen,
    fdbs0_fdb0_data14_fifo_dout,
    fdbs0_fdb0_data15_fifo_din,
    fdbs0_fdb0_data15_fifo_a,
    fdbs0_fdb0_data15_fifo_wen,
    fdbs0_fdb0_data15_fifo_cen,
    fdbs0_fdb0_data15_fifo_dout,
    fdbs0_fdb1_bell0_cnt_qout,
    fdbs0_fdb1_bell0_cnt_din,
    fdbs0_fdb1_bell0_cnt_w,
    fdbs0_fdb1_bell0_cnt_r,
    fdbs0_fdb1_bell0_failed_ring_q,
    fdbs0_fdb1_bell0_failed_ring_d,
    fdbs0_fdb1_bell0_failed_ring_enb,
    fdbs0_fdb1_bell0_max_priority_q,
    fdbs0_fdb1_bell0_max_priority_d,
    fdbs0_fdb1_bell0_max_priority_enb,
    fdbs0_fdb1_bell0_valid_fcnt_q,
    fdbs0_fdb1_bell0_valid_fcnt_d,
    fdbs0_fdb1_bell0_valid_fcnt_enb,
    fdbs0_fdb1_bell0_fcnt_q,
    fdbs0_fdb1_bell0_fcnt_d,
    fdbs0_fdb1_bell0_fcnt_enb,
    fdbs0_fdb1_bell1_cnt_qout,
    fdbs0_fdb1_bell1_cnt_din,
    fdbs0_fdb1_bell1_cnt_w,
    fdbs0_fdb1_bell1_cnt_r,
    fdbs0_fdb1_bell1_failed_ring_q,
    fdbs0_fdb1_bell1_failed_ring_d,
    fdbs0_fdb1_bell1_failed_ring_enb,
    fdbs0_fdb1_bell1_max_priority_q,
    fdbs0_fdb1_bell1_max_priority_d,
    fdbs0_fdb1_bell1_max_priority_enb,
    fdbs0_fdb1_bell1_valid_fcnt_q,
    fdbs0_fdb1_bell1_valid_fcnt_d,
    fdbs0_fdb1_bell1_valid_fcnt_enb,
    fdbs0_fdb1_bell1_fcnt_q,
    fdbs0_fdb1_bell1_fcnt_d,
    fdbs0_fdb1_bell1_fcnt_enb,
    fdbs0_fdb1_bell2_cnt_qout,
    fdbs0_fdb1_bell2_cnt_din,
    fdbs0_fdb1_bell2_cnt_w,
    fdbs0_fdb1_bell2_cnt_r,
    fdbs0_fdb1_bell2_failed_ring_q,
    fdbs0_fdb1_bell2_failed_ring_d,
    fdbs0_fdb1_bell2_failed_ring_enb,
    fdbs0_fdb1_bell2_max_priority_q,
    fdbs0_fdb1_bell2_max_priority_d,
    fdbs0_fdb1_bell2_max_priority_enb,
    fdbs0_fdb1_bell2_valid_fcnt_q,
    fdbs0_fdb1_bell2_valid_fcnt_d,
    fdbs0_fdb1_bell2_valid_fcnt_enb,
    fdbs0_fdb1_bell2_fcnt_q,
    fdbs0_fdb1_bell2_fcnt_d,
    fdbs0_fdb1_bell2_fcnt_enb,
    fdbs0_fdb1_bell3_cnt_qout,
    fdbs0_fdb1_bell3_cnt_din,
    fdbs0_fdb1_bell3_cnt_w,
    fdbs0_fdb1_bell3_cnt_r,
    fdbs0_fdb1_bell3_failed_ring_q,
    fdbs0_fdb1_bell3_failed_ring_d,
    fdbs0_fdb1_bell3_failed_ring_enb,
    fdbs0_fdb1_bell3_max_priority_q,
    fdbs0_fdb1_bell3_max_priority_d,
    fdbs0_fdb1_bell3_max_priority_enb,
    fdbs0_fdb1_bell3_valid_fcnt_q,
    fdbs0_fdb1_bell3_valid_fcnt_d,
    fdbs0_fdb1_bell3_valid_fcnt_enb,
    fdbs0_fdb1_bell3_fcnt_q,
    fdbs0_fdb1_bell3_fcnt_d,
    fdbs0_fdb1_bell3_fcnt_enb,
    fdbs0_fdb1_bell4_cnt_qout,
    fdbs0_fdb1_bell4_cnt_din,
    fdbs0_fdb1_bell4_cnt_w,
    fdbs0_fdb1_bell4_cnt_r,
    fdbs0_fdb1_bell4_failed_ring_q,
    fdbs0_fdb1_bell4_failed_ring_d,
    fdbs0_fdb1_bell4_failed_ring_enb,
    fdbs0_fdb1_bell4_max_priority_q,
    fdbs0_fdb1_bell4_max_priority_d,
    fdbs0_fdb1_bell4_max_priority_enb,
    fdbs0_fdb1_bell4_valid_fcnt_q,
    fdbs0_fdb1_bell4_valid_fcnt_d,
    fdbs0_fdb1_bell4_valid_fcnt_enb,
    fdbs0_fdb1_bell4_fcnt_q,
    fdbs0_fdb1_bell4_fcnt_d,
    fdbs0_fdb1_bell4_fcnt_enb,
    fdbs0_fdb1_bell5_cnt_qout,
    fdbs0_fdb1_bell5_cnt_din,
    fdbs0_fdb1_bell5_cnt_w,
    fdbs0_fdb1_bell5_cnt_r,
    fdbs0_fdb1_bell5_failed_ring_q,
    fdbs0_fdb1_bell5_failed_ring_d,
    fdbs0_fdb1_bell5_failed_ring_enb,
    fdbs0_fdb1_bell5_max_priority_q,
    fdbs0_fdb1_bell5_max_priority_d,
    fdbs0_fdb1_bell5_max_priority_enb,
    fdbs0_fdb1_bell5_valid_fcnt_q,
    fdbs0_fdb1_bell5_valid_fcnt_d,
    fdbs0_fdb1_bell5_valid_fcnt_enb,
    fdbs0_fdb1_bell5_fcnt_q,
    fdbs0_fdb1_bell5_fcnt_d,
    fdbs0_fdb1_bell5_fcnt_enb,
    fdbs0_fdb1_bell6_cnt_qout,
    fdbs0_fdb1_bell6_cnt_din,
    fdbs0_fdb1_bell6_cnt_w,
    fdbs0_fdb1_bell6_cnt_r,
    fdbs0_fdb1_bell6_failed_ring_q,
    fdbs0_fdb1_bell6_failed_ring_d,
    fdbs0_fdb1_bell6_failed_ring_enb,
    fdbs0_fdb1_bell6_max_priority_q,
    fdbs0_fdb1_bell6_max_priority_d,
    fdbs0_fdb1_bell6_max_priority_enb,
    fdbs0_fdb1_bell6_valid_fcnt_q,
    fdbs0_fdb1_bell6_valid_fcnt_d,
    fdbs0_fdb1_bell6_valid_fcnt_enb,
    fdbs0_fdb1_bell6_fcnt_q,
    fdbs0_fdb1_bell6_fcnt_d,
    fdbs0_fdb1_bell6_fcnt_enb,
    fdbs0_fdb1_bell7_cnt_qout,
    fdbs0_fdb1_bell7_cnt_din,
    fdbs0_fdb1_bell7_cnt_w,
    fdbs0_fdb1_bell7_cnt_r,
    fdbs0_fdb1_bell7_failed_ring_q,
    fdbs0_fdb1_bell7_failed_ring_d,
    fdbs0_fdb1_bell7_failed_ring_enb,
    fdbs0_fdb1_bell7_max_priority_q,
    fdbs0_fdb1_bell7_max_priority_d,
    fdbs0_fdb1_bell7_max_priority_enb,
    fdbs0_fdb1_bell7_valid_fcnt_q,
    fdbs0_fdb1_bell7_valid_fcnt_d,
    fdbs0_fdb1_bell7_valid_fcnt_enb,
    fdbs0_fdb1_bell7_fcnt_q,
    fdbs0_fdb1_bell7_fcnt_d,
    fdbs0_fdb1_bell7_fcnt_enb,
    fdbs0_fdb1_bell8_cnt_qout,
    fdbs0_fdb1_bell8_cnt_din,
    fdbs0_fdb1_bell8_cnt_w,
    fdbs0_fdb1_bell8_cnt_r,
    fdbs0_fdb1_bell8_failed_ring_q,
    fdbs0_fdb1_bell8_failed_ring_d,
    fdbs0_fdb1_bell8_failed_ring_enb,
    fdbs0_fdb1_bell8_max_priority_q,
    fdbs0_fdb1_bell8_max_priority_d,
    fdbs0_fdb1_bell8_max_priority_enb,
    fdbs0_fdb1_bell8_valid_fcnt_q,
    fdbs0_fdb1_bell8_valid_fcnt_d,
    fdbs0_fdb1_bell8_valid_fcnt_enb,
    fdbs0_fdb1_bell8_fcnt_q,
    fdbs0_fdb1_bell8_fcnt_d,
    fdbs0_fdb1_bell8_fcnt_enb,
    fdbs0_fdb1_bell9_cnt_qout,
    fdbs0_fdb1_bell9_cnt_din,
    fdbs0_fdb1_bell9_cnt_w,
    fdbs0_fdb1_bell9_cnt_r,
    fdbs0_fdb1_bell9_failed_ring_q,
    fdbs0_fdb1_bell9_failed_ring_d,
    fdbs0_fdb1_bell9_failed_ring_enb,
    fdbs0_fdb1_bell9_max_priority_q,
    fdbs0_fdb1_bell9_max_priority_d,
    fdbs0_fdb1_bell9_max_priority_enb,
    fdbs0_fdb1_bell9_valid_fcnt_q,
    fdbs0_fdb1_bell9_valid_fcnt_d,
    fdbs0_fdb1_bell9_valid_fcnt_enb,
    fdbs0_fdb1_bell9_fcnt_q,
    fdbs0_fdb1_bell9_fcnt_d,
    fdbs0_fdb1_bell9_fcnt_enb,
    fdbs0_fdb1_bell10_cnt_qout,
    fdbs0_fdb1_bell10_cnt_din,
    fdbs0_fdb1_bell10_cnt_w,
    fdbs0_fdb1_bell10_cnt_r,
    fdbs0_fdb1_bell10_failed_ring_q,
    fdbs0_fdb1_bell10_failed_ring_d,
    fdbs0_fdb1_bell10_failed_ring_enb,
    fdbs0_fdb1_bell10_max_priority_q,
    fdbs0_fdb1_bell10_max_priority_d,
    fdbs0_fdb1_bell10_max_priority_enb,
    fdbs0_fdb1_bell10_valid_fcnt_q,
    fdbs0_fdb1_bell10_valid_fcnt_d,
    fdbs0_fdb1_bell10_valid_fcnt_enb,
    fdbs0_fdb1_bell10_fcnt_q,
    fdbs0_fdb1_bell10_fcnt_d,
    fdbs0_fdb1_bell10_fcnt_enb,
    fdbs0_fdb1_bell11_cnt_qout,
    fdbs0_fdb1_bell11_cnt_din,
    fdbs0_fdb1_bell11_cnt_w,
    fdbs0_fdb1_bell11_cnt_r,
    fdbs0_fdb1_bell11_failed_ring_q,
    fdbs0_fdb1_bell11_failed_ring_d,
    fdbs0_fdb1_bell11_failed_ring_enb,
    fdbs0_fdb1_bell11_max_priority_q,
    fdbs0_fdb1_bell11_max_priority_d,
    fdbs0_fdb1_bell11_max_priority_enb,
    fdbs0_fdb1_bell11_valid_fcnt_q,
    fdbs0_fdb1_bell11_valid_fcnt_d,
    fdbs0_fdb1_bell11_valid_fcnt_enb,
    fdbs0_fdb1_bell11_fcnt_q,
    fdbs0_fdb1_bell11_fcnt_d,
    fdbs0_fdb1_bell11_fcnt_enb,
    fdbs0_fdb1_bell12_cnt_qout,
    fdbs0_fdb1_bell12_cnt_din,
    fdbs0_fdb1_bell12_cnt_w,
    fdbs0_fdb1_bell12_cnt_r,
    fdbs0_fdb1_bell12_failed_ring_q,
    fdbs0_fdb1_bell12_failed_ring_d,
    fdbs0_fdb1_bell12_failed_ring_enb,
    fdbs0_fdb1_bell12_max_priority_q,
    fdbs0_fdb1_bell12_max_priority_d,
    fdbs0_fdb1_bell12_max_priority_enb,
    fdbs0_fdb1_bell12_valid_fcnt_q,
    fdbs0_fdb1_bell12_valid_fcnt_d,
    fdbs0_fdb1_bell12_valid_fcnt_enb,
    fdbs0_fdb1_bell12_fcnt_q,
    fdbs0_fdb1_bell12_fcnt_d,
    fdbs0_fdb1_bell12_fcnt_enb,
    fdbs0_fdb1_bell13_cnt_qout,
    fdbs0_fdb1_bell13_cnt_din,
    fdbs0_fdb1_bell13_cnt_w,
    fdbs0_fdb1_bell13_cnt_r,
    fdbs0_fdb1_bell13_failed_ring_q,
    fdbs0_fdb1_bell13_failed_ring_d,
    fdbs0_fdb1_bell13_failed_ring_enb,
    fdbs0_fdb1_bell13_max_priority_q,
    fdbs0_fdb1_bell13_max_priority_d,
    fdbs0_fdb1_bell13_max_priority_enb,
    fdbs0_fdb1_bell13_valid_fcnt_q,
    fdbs0_fdb1_bell13_valid_fcnt_d,
    fdbs0_fdb1_bell13_valid_fcnt_enb,
    fdbs0_fdb1_bell13_fcnt_q,
    fdbs0_fdb1_bell13_fcnt_d,
    fdbs0_fdb1_bell13_fcnt_enb,
    fdbs0_fdb1_bell14_cnt_qout,
    fdbs0_fdb1_bell14_cnt_din,
    fdbs0_fdb1_bell14_cnt_w,
    fdbs0_fdb1_bell14_cnt_r,
    fdbs0_fdb1_bell14_failed_ring_q,
    fdbs0_fdb1_bell14_failed_ring_d,
    fdbs0_fdb1_bell14_failed_ring_enb,
    fdbs0_fdb1_bell14_max_priority_q,
    fdbs0_fdb1_bell14_max_priority_d,
    fdbs0_fdb1_bell14_max_priority_enb,
    fdbs0_fdb1_bell14_valid_fcnt_q,
    fdbs0_fdb1_bell14_valid_fcnt_d,
    fdbs0_fdb1_bell14_valid_fcnt_enb,
    fdbs0_fdb1_bell14_fcnt_q,
    fdbs0_fdb1_bell14_fcnt_d,
    fdbs0_fdb1_bell14_fcnt_enb,
    fdbs0_fdb1_bell15_cnt_qout,
    fdbs0_fdb1_bell15_cnt_din,
    fdbs0_fdb1_bell15_cnt_w,
    fdbs0_fdb1_bell15_cnt_r,
    fdbs0_fdb1_bell15_failed_ring_q,
    fdbs0_fdb1_bell15_failed_ring_d,
    fdbs0_fdb1_bell15_failed_ring_enb,
    fdbs0_fdb1_bell15_max_priority_q,
    fdbs0_fdb1_bell15_max_priority_d,
    fdbs0_fdb1_bell15_max_priority_enb,
    fdbs0_fdb1_bell15_valid_fcnt_q,
    fdbs0_fdb1_bell15_valid_fcnt_d,
    fdbs0_fdb1_bell15_valid_fcnt_enb,
    fdbs0_fdb1_bell15_fcnt_q,
    fdbs0_fdb1_bell15_fcnt_d,
    fdbs0_fdb1_bell15_fcnt_enb,
    fdbs0_fdb1_control_ack_on_empty_q,
    fdbs0_fdb1_enable_enable_qout,
    fdbs0_fdb1_enable_enable_din,
    fdbs0_fdb1_enable_enable_w,
    fdbs0_fdb1_status_status_d,
    fdbs0_fdb1_data0_fifo_din,
    fdbs0_fdb1_data0_fifo_a,
    fdbs0_fdb1_data0_fifo_wen,
    fdbs0_fdb1_data0_fifo_cen,
    fdbs0_fdb1_data0_fifo_dout,
    fdbs0_fdb1_data1_fifo_din,
    fdbs0_fdb1_data1_fifo_a,
    fdbs0_fdb1_data1_fifo_wen,
    fdbs0_fdb1_data1_fifo_cen,
    fdbs0_fdb1_data1_fifo_dout,
    fdbs0_fdb1_data2_fifo_din,
    fdbs0_fdb1_data2_fifo_a,
    fdbs0_fdb1_data2_fifo_wen,
    fdbs0_fdb1_data2_fifo_cen,
    fdbs0_fdb1_data2_fifo_dout,
    fdbs0_fdb1_data3_fifo_din,
    fdbs0_fdb1_data3_fifo_a,
    fdbs0_fdb1_data3_fifo_wen,
    fdbs0_fdb1_data3_fifo_cen,
    fdbs0_fdb1_data3_fifo_dout,
    fdbs0_fdb1_data4_fifo_din,
    fdbs0_fdb1_data4_fifo_a,
    fdbs0_fdb1_data4_fifo_wen,
    fdbs0_fdb1_data4_fifo_cen,
    fdbs0_fdb1_data4_fifo_dout,
    fdbs0_fdb1_data5_fifo_din,
    fdbs0_fdb1_data5_fifo_a,
    fdbs0_fdb1_data5_fifo_wen,
    fdbs0_fdb1_data5_fifo_cen,
    fdbs0_fdb1_data5_fifo_dout,
    fdbs0_fdb1_data6_fifo_din,
    fdbs0_fdb1_data6_fifo_a,
    fdbs0_fdb1_data6_fifo_wen,
    fdbs0_fdb1_data6_fifo_cen,
    fdbs0_fdb1_data6_fifo_dout,
    fdbs0_fdb1_data7_fifo_din,
    fdbs0_fdb1_data7_fifo_a,
    fdbs0_fdb1_data7_fifo_wen,
    fdbs0_fdb1_data7_fifo_cen,
    fdbs0_fdb1_data7_fifo_dout,
    fdbs0_fdb1_data8_fifo_din,
    fdbs0_fdb1_data8_fifo_a,
    fdbs0_fdb1_data8_fifo_wen,
    fdbs0_fdb1_data8_fifo_cen,
    fdbs0_fdb1_data8_fifo_dout,
    fdbs0_fdb1_data9_fifo_din,
    fdbs0_fdb1_data9_fifo_a,
    fdbs0_fdb1_data9_fifo_wen,
    fdbs0_fdb1_data9_fifo_cen,
    fdbs0_fdb1_data9_fifo_dout,
    fdbs0_fdb1_data10_fifo_din,
    fdbs0_fdb1_data10_fifo_a,
    fdbs0_fdb1_data10_fifo_wen,
    fdbs0_fdb1_data10_fifo_cen,
    fdbs0_fdb1_data10_fifo_dout,
    fdbs0_fdb1_data11_fifo_din,
    fdbs0_fdb1_data11_fifo_a,
    fdbs0_fdb1_data11_fifo_wen,
    fdbs0_fdb1_data11_fifo_cen,
    fdbs0_fdb1_data11_fifo_dout,
    fdbs0_fdb1_data12_fifo_din,
    fdbs0_fdb1_data12_fifo_a,
    fdbs0_fdb1_data12_fifo_wen,
    fdbs0_fdb1_data12_fifo_cen,
    fdbs0_fdb1_data12_fifo_dout,
    fdbs0_fdb1_data13_fifo_din,
    fdbs0_fdb1_data13_fifo_a,
    fdbs0_fdb1_data13_fifo_wen,
    fdbs0_fdb1_data13_fifo_cen,
    fdbs0_fdb1_data13_fifo_dout,
    fdbs0_fdb1_data14_fifo_din,
    fdbs0_fdb1_data14_fifo_a,
    fdbs0_fdb1_data14_fifo_wen,
    fdbs0_fdb1_data14_fifo_cen,
    fdbs0_fdb1_data14_fifo_dout,
    fdbs0_fdb1_data15_fifo_din,
    fdbs0_fdb1_data15_fifo_a,
    fdbs0_fdb1_data15_fifo_wen,
    fdbs0_fdb1_data15_fifo_cen,
    fdbs0_fdb1_data15_fifo_dout,
    smutex0_owner0_id_q,
    smutex0_owner0_id_d,
    smutex0_owner0_id_enb,
    smutex0_owner1_id_q,
    smutex0_owner1_id_d,
    smutex0_owner1_id_enb,
    smutex0_owner2_id_q,
    smutex0_owner2_id_d,
    smutex0_owner2_id_enb,
    smutex0_owner3_id_q,
    smutex0_owner3_id_d,
    smutex0_owner3_id_enb,
    smutex0_owner4_id_q,
    smutex0_owner4_id_d,
    smutex0_owner4_id_enb,
    smutex0_owner5_id_q,
    smutex0_owner5_id_d,
    smutex0_owner5_id_enb,
    smutex0_owner6_id_q,
    smutex0_owner6_id_d,
    smutex0_owner6_id_enb,
    smutex0_owner7_id_q,
    smutex0_owner7_id_d,
    smutex0_owner7_id_enb,
    smutex0_ipc_sc_id_q,
    smutex0_timeout_compare_q,
    smutex0_timeout_prescale_q,
    smutex0_error_err_log_code_q,
    smutex0_error_err_log_code_d,
    smutex0_error_err_log_code_enb,
    smutex0_error_err_log_access_q,
    smutex0_error_err_log_access_d,
    smutex0_error_err_log_access_enb,
    smutex0_error_err_log_id_q,
    smutex0_error_err_log_id_d,
    smutex0_error_err_log_id_enb,
    smutex0_error_err_log_multi_q,
    smutex0_error_err_log_multi_d,
    smutex0_error_err_log_multi_enb,
    smutex0_error_err_data_data_q,
    smutex0_error_err_data_data_d,
    smutex0_error_err_data_data_enb,
    smutex0_error_err_idx_mutex_idx_q,
    smutex0_error_err_idx_mutex_idx_d,
    smutex0_error_err_idx_mutex_idx_enb,
    mutex0_reqinfo,
    mutex0_mutex0_swid_qout,
    mutex0_mutex0_swid_din,
    mutex0_mutex0_swid_w,
    mutex0_mutex0_swid_r,
    mutex0_mutex0_lock_qout,
    mutex0_mutex0_lock_din,
    mutex0_mutex0_lock_w,
    mutex0_mutex1_swid_qout,
    mutex0_mutex1_swid_din,
    mutex0_mutex1_swid_w,
    mutex0_mutex1_swid_r,
    mutex0_mutex1_lock_qout,
    mutex0_mutex1_lock_din,
    mutex0_mutex1_lock_w,
    mutex0_mutex2_swid_qout,
    mutex0_mutex2_swid_din,
    mutex0_mutex2_swid_w,
    mutex0_mutex2_swid_r,
    mutex0_mutex2_lock_qout,
    mutex0_mutex2_lock_din,
    mutex0_mutex2_lock_w,
    mutex0_mutex3_swid_qout,
    mutex0_mutex3_swid_din,
    mutex0_mutex3_swid_w,
    mutex0_mutex3_swid_r,
    mutex0_mutex3_lock_qout,
    mutex0_mutex3_lock_din,
    mutex0_mutex3_lock_w,
    mutex0_mutex4_swid_qout,
    mutex0_mutex4_swid_din,
    mutex0_mutex4_swid_w,
    mutex0_mutex4_swid_r,
    mutex0_mutex4_lock_qout,
    mutex0_mutex4_lock_din,
    mutex0_mutex4_lock_w,
    mutex0_mutex5_swid_qout,
    mutex0_mutex5_swid_din,
    mutex0_mutex5_swid_w,
    mutex0_mutex5_swid_r,
    mutex0_mutex5_lock_qout,
    mutex0_mutex5_lock_din,
    mutex0_mutex5_lock_w,
    mutex0_mutex6_swid_qout,
    mutex0_mutex6_swid_din,
    mutex0_mutex6_swid_w,
    mutex0_mutex6_swid_r,
    mutex0_mutex6_lock_qout,
    mutex0_mutex6_lock_din,
    mutex0_mutex6_lock_w,
    mutex0_mutex7_swid_qout,
    mutex0_mutex7_swid_din,
    mutex0_mutex7_swid_w,
    mutex0_mutex7_swid_r,
    mutex0_mutex7_lock_qout,
    mutex0_mutex7_lock_din,
    mutex0_mutex7_lock_w,
    web0_control_activate_low_pwr_edge_q,
    web0_control_event_suppress_edge_q,
    web0_control_wake_now_edge_q,
    web0_control_epu_enable_edge_q,
    web0_event_activate_low_pwr_q,
    web0_event_activate_low_pwr_d,
    web0_event_activate_low_pwr_enb,
    web0_event_event_suppress_q,
    web0_event_event_suppress_d,
    web0_event_event_suppress_enb,
    web0_event_wake_now_q,
    web0_event_wake_now_d,
    web0_event_wake_now_enb,
    web0_event_epu_enable_q,
    web0_event_epu_enable_d,
    web0_event_epu_enable_enb,
    web0_wake_enable0_enable_q,
    web0_wake_enable1_enable_q,
    web0_input_invert0_invert_q,
    web0_input_invert1_invert_q,
    web1_control_activate_low_pwr_edge_q,
    web1_control_event_suppress_edge_q,
    web1_control_wake_now_edge_q,
    web1_control_epu_enable_edge_q,
    web1_event_activate_low_pwr_q,
    web1_event_activate_low_pwr_d,
    web1_event_activate_low_pwr_enb,
    web1_event_event_suppress_q,
    web1_event_event_suppress_d,
    web1_event_event_suppress_enb,
    web1_event_wake_now_q,
    web1_event_wake_now_d,
    web1_event_wake_now_enb,
    web1_event_epu_enable_q,
    web1_event_epu_enable_d,
    web1_event_epu_enable_enb,
    web1_wake_enable0_enable_q,
    web1_wake_enable1_enable_q,
    web1_input_invert0_invert_q,
    web1_input_invert1_invert_q );
input         clk_i; 
input         non_retention_reset_ni; 
input         test_mode_cgm_i; 
input         ocp_mreset_ni; 
input   [2:0] ocp_mcmd_i; 
input  [14:0] ocp_maddr_i; 
input   [3:0] ocp_mbyteen_i; 
input   [5:0] ocp_mreqinfo_i; 
output        ocp_scmdaccept_o; 
input  [31:0] ocp_mdata_i; 
output  [1:0] ocp_sresp_o; 
output [31:0] ocp_sdata_o; 
input         ocp_mrespaccept_i; 
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
output  [5:0] fdbs0_reqinfo; 
input   [1:0] fdbs0_fdb0_bell0_cnt_qout; 
output  [1:0] fdbs0_fdb0_bell0_cnt_din; 
output        fdbs0_fdb0_bell0_cnt_w; 
output        fdbs0_fdb0_bell0_cnt_r; 
output        fdbs0_fdb0_bell0_failed_ring_q; 
input         fdbs0_fdb0_bell0_failed_ring_d; 
input         fdbs0_fdb0_bell0_failed_ring_enb; 
output  [1:0] fdbs0_fdb0_bell0_max_priority_q; 
input   [1:0] fdbs0_fdb0_bell0_max_priority_d; 
input         fdbs0_fdb0_bell0_max_priority_enb; 
output  [4:0] fdbs0_fdb0_bell0_valid_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell0_valid_fcnt_d; 
input         fdbs0_fdb0_bell0_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb0_bell0_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell0_fcnt_d; 
input         fdbs0_fdb0_bell0_fcnt_enb; 
input   [1:0] fdbs0_fdb0_bell1_cnt_qout; 
output  [1:0] fdbs0_fdb0_bell1_cnt_din; 
output        fdbs0_fdb0_bell1_cnt_w; 
output        fdbs0_fdb0_bell1_cnt_r; 
output        fdbs0_fdb0_bell1_failed_ring_q; 
input         fdbs0_fdb0_bell1_failed_ring_d; 
input         fdbs0_fdb0_bell1_failed_ring_enb; 
output  [1:0] fdbs0_fdb0_bell1_max_priority_q; 
input   [1:0] fdbs0_fdb0_bell1_max_priority_d; 
input         fdbs0_fdb0_bell1_max_priority_enb; 
output  [4:0] fdbs0_fdb0_bell1_valid_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell1_valid_fcnt_d; 
input         fdbs0_fdb0_bell1_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb0_bell1_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell1_fcnt_d; 
input         fdbs0_fdb0_bell1_fcnt_enb; 
input   [1:0] fdbs0_fdb0_bell2_cnt_qout; 
output  [1:0] fdbs0_fdb0_bell2_cnt_din; 
output        fdbs0_fdb0_bell2_cnt_w; 
output        fdbs0_fdb0_bell2_cnt_r; 
output        fdbs0_fdb0_bell2_failed_ring_q; 
input         fdbs0_fdb0_bell2_failed_ring_d; 
input         fdbs0_fdb0_bell2_failed_ring_enb; 
output  [1:0] fdbs0_fdb0_bell2_max_priority_q; 
input   [1:0] fdbs0_fdb0_bell2_max_priority_d; 
input         fdbs0_fdb0_bell2_max_priority_enb; 
output  [4:0] fdbs0_fdb0_bell2_valid_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell2_valid_fcnt_d; 
input         fdbs0_fdb0_bell2_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb0_bell2_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell2_fcnt_d; 
input         fdbs0_fdb0_bell2_fcnt_enb; 
input   [1:0] fdbs0_fdb0_bell3_cnt_qout; 
output  [1:0] fdbs0_fdb0_bell3_cnt_din; 
output        fdbs0_fdb0_bell3_cnt_w; 
output        fdbs0_fdb0_bell3_cnt_r; 
output        fdbs0_fdb0_bell3_failed_ring_q; 
input         fdbs0_fdb0_bell3_failed_ring_d; 
input         fdbs0_fdb0_bell3_failed_ring_enb; 
output  [1:0] fdbs0_fdb0_bell3_max_priority_q; 
input   [1:0] fdbs0_fdb0_bell3_max_priority_d; 
input         fdbs0_fdb0_bell3_max_priority_enb; 
output  [4:0] fdbs0_fdb0_bell3_valid_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell3_valid_fcnt_d; 
input         fdbs0_fdb0_bell3_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb0_bell3_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell3_fcnt_d; 
input         fdbs0_fdb0_bell3_fcnt_enb; 
input   [1:0] fdbs0_fdb0_bell4_cnt_qout; 
output  [1:0] fdbs0_fdb0_bell4_cnt_din; 
output        fdbs0_fdb0_bell4_cnt_w; 
output        fdbs0_fdb0_bell4_cnt_r; 
output        fdbs0_fdb0_bell4_failed_ring_q; 
input         fdbs0_fdb0_bell4_failed_ring_d; 
input         fdbs0_fdb0_bell4_failed_ring_enb; 
output  [1:0] fdbs0_fdb0_bell4_max_priority_q; 
input   [1:0] fdbs0_fdb0_bell4_max_priority_d; 
input         fdbs0_fdb0_bell4_max_priority_enb; 
output  [4:0] fdbs0_fdb0_bell4_valid_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell4_valid_fcnt_d; 
input         fdbs0_fdb0_bell4_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb0_bell4_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell4_fcnt_d; 
input         fdbs0_fdb0_bell4_fcnt_enb; 
input   [1:0] fdbs0_fdb0_bell5_cnt_qout; 
output  [1:0] fdbs0_fdb0_bell5_cnt_din; 
output        fdbs0_fdb0_bell5_cnt_w; 
output        fdbs0_fdb0_bell5_cnt_r; 
output        fdbs0_fdb0_bell5_failed_ring_q; 
input         fdbs0_fdb0_bell5_failed_ring_d; 
input         fdbs0_fdb0_bell5_failed_ring_enb; 
output  [1:0] fdbs0_fdb0_bell5_max_priority_q; 
input   [1:0] fdbs0_fdb0_bell5_max_priority_d; 
input         fdbs0_fdb0_bell5_max_priority_enb; 
output  [4:0] fdbs0_fdb0_bell5_valid_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell5_valid_fcnt_d; 
input         fdbs0_fdb0_bell5_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb0_bell5_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell5_fcnt_d; 
input         fdbs0_fdb0_bell5_fcnt_enb; 
input   [1:0] fdbs0_fdb0_bell6_cnt_qout; 
output  [1:0] fdbs0_fdb0_bell6_cnt_din; 
output        fdbs0_fdb0_bell6_cnt_w; 
output        fdbs0_fdb0_bell6_cnt_r; 
output        fdbs0_fdb0_bell6_failed_ring_q; 
input         fdbs0_fdb0_bell6_failed_ring_d; 
input         fdbs0_fdb0_bell6_failed_ring_enb; 
output  [1:0] fdbs0_fdb0_bell6_max_priority_q; 
input   [1:0] fdbs0_fdb0_bell6_max_priority_d; 
input         fdbs0_fdb0_bell6_max_priority_enb; 
output  [4:0] fdbs0_fdb0_bell6_valid_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell6_valid_fcnt_d; 
input         fdbs0_fdb0_bell6_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb0_bell6_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell6_fcnt_d; 
input         fdbs0_fdb0_bell6_fcnt_enb; 
input   [1:0] fdbs0_fdb0_bell7_cnt_qout; 
output  [1:0] fdbs0_fdb0_bell7_cnt_din; 
output        fdbs0_fdb0_bell7_cnt_w; 
output        fdbs0_fdb0_bell7_cnt_r; 
output        fdbs0_fdb0_bell7_failed_ring_q; 
input         fdbs0_fdb0_bell7_failed_ring_d; 
input         fdbs0_fdb0_bell7_failed_ring_enb; 
output  [1:0] fdbs0_fdb0_bell7_max_priority_q; 
input   [1:0] fdbs0_fdb0_bell7_max_priority_d; 
input         fdbs0_fdb0_bell7_max_priority_enb; 
output  [4:0] fdbs0_fdb0_bell7_valid_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell7_valid_fcnt_d; 
input         fdbs0_fdb0_bell7_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb0_bell7_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell7_fcnt_d; 
input         fdbs0_fdb0_bell7_fcnt_enb; 
input   [1:0] fdbs0_fdb0_bell8_cnt_qout; 
output  [1:0] fdbs0_fdb0_bell8_cnt_din; 
output        fdbs0_fdb0_bell8_cnt_w; 
output        fdbs0_fdb0_bell8_cnt_r; 
output        fdbs0_fdb0_bell8_failed_ring_q; 
input         fdbs0_fdb0_bell8_failed_ring_d; 
input         fdbs0_fdb0_bell8_failed_ring_enb; 
output  [1:0] fdbs0_fdb0_bell8_max_priority_q; 
input   [1:0] fdbs0_fdb0_bell8_max_priority_d; 
input         fdbs0_fdb0_bell8_max_priority_enb; 
output  [4:0] fdbs0_fdb0_bell8_valid_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell8_valid_fcnt_d; 
input         fdbs0_fdb0_bell8_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb0_bell8_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell8_fcnt_d; 
input         fdbs0_fdb0_bell8_fcnt_enb; 
input   [1:0] fdbs0_fdb0_bell9_cnt_qout; 
output  [1:0] fdbs0_fdb0_bell9_cnt_din; 
output        fdbs0_fdb0_bell9_cnt_w; 
output        fdbs0_fdb0_bell9_cnt_r; 
output        fdbs0_fdb0_bell9_failed_ring_q; 
input         fdbs0_fdb0_bell9_failed_ring_d; 
input         fdbs0_fdb0_bell9_failed_ring_enb; 
output  [1:0] fdbs0_fdb0_bell9_max_priority_q; 
input   [1:0] fdbs0_fdb0_bell9_max_priority_d; 
input         fdbs0_fdb0_bell9_max_priority_enb; 
output  [4:0] fdbs0_fdb0_bell9_valid_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell9_valid_fcnt_d; 
input         fdbs0_fdb0_bell9_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb0_bell9_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell9_fcnt_d; 
input         fdbs0_fdb0_bell9_fcnt_enb; 
input   [1:0] fdbs0_fdb0_bell10_cnt_qout; 
output  [1:0] fdbs0_fdb0_bell10_cnt_din; 
output        fdbs0_fdb0_bell10_cnt_w; 
output        fdbs0_fdb0_bell10_cnt_r; 
output        fdbs0_fdb0_bell10_failed_ring_q; 
input         fdbs0_fdb0_bell10_failed_ring_d; 
input         fdbs0_fdb0_bell10_failed_ring_enb; 
output  [1:0] fdbs0_fdb0_bell10_max_priority_q; 
input   [1:0] fdbs0_fdb0_bell10_max_priority_d; 
input         fdbs0_fdb0_bell10_max_priority_enb; 
output  [4:0] fdbs0_fdb0_bell10_valid_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell10_valid_fcnt_d; 
input         fdbs0_fdb0_bell10_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb0_bell10_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell10_fcnt_d; 
input         fdbs0_fdb0_bell10_fcnt_enb; 
input   [1:0] fdbs0_fdb0_bell11_cnt_qout; 
output  [1:0] fdbs0_fdb0_bell11_cnt_din; 
output        fdbs0_fdb0_bell11_cnt_w; 
output        fdbs0_fdb0_bell11_cnt_r; 
output        fdbs0_fdb0_bell11_failed_ring_q; 
input         fdbs0_fdb0_bell11_failed_ring_d; 
input         fdbs0_fdb0_bell11_failed_ring_enb; 
output  [1:0] fdbs0_fdb0_bell11_max_priority_q; 
input   [1:0] fdbs0_fdb0_bell11_max_priority_d; 
input         fdbs0_fdb0_bell11_max_priority_enb; 
output  [4:0] fdbs0_fdb0_bell11_valid_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell11_valid_fcnt_d; 
input         fdbs0_fdb0_bell11_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb0_bell11_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell11_fcnt_d; 
input         fdbs0_fdb0_bell11_fcnt_enb; 
input   [1:0] fdbs0_fdb0_bell12_cnt_qout; 
output  [1:0] fdbs0_fdb0_bell12_cnt_din; 
output        fdbs0_fdb0_bell12_cnt_w; 
output        fdbs0_fdb0_bell12_cnt_r; 
output        fdbs0_fdb0_bell12_failed_ring_q; 
input         fdbs0_fdb0_bell12_failed_ring_d; 
input         fdbs0_fdb0_bell12_failed_ring_enb; 
output  [1:0] fdbs0_fdb0_bell12_max_priority_q; 
input   [1:0] fdbs0_fdb0_bell12_max_priority_d; 
input         fdbs0_fdb0_bell12_max_priority_enb; 
output  [4:0] fdbs0_fdb0_bell12_valid_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell12_valid_fcnt_d; 
input         fdbs0_fdb0_bell12_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb0_bell12_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell12_fcnt_d; 
input         fdbs0_fdb0_bell12_fcnt_enb; 
input   [1:0] fdbs0_fdb0_bell13_cnt_qout; 
output  [1:0] fdbs0_fdb0_bell13_cnt_din; 
output        fdbs0_fdb0_bell13_cnt_w; 
output        fdbs0_fdb0_bell13_cnt_r; 
output        fdbs0_fdb0_bell13_failed_ring_q; 
input         fdbs0_fdb0_bell13_failed_ring_d; 
input         fdbs0_fdb0_bell13_failed_ring_enb; 
output  [1:0] fdbs0_fdb0_bell13_max_priority_q; 
input   [1:0] fdbs0_fdb0_bell13_max_priority_d; 
input         fdbs0_fdb0_bell13_max_priority_enb; 
output  [4:0] fdbs0_fdb0_bell13_valid_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell13_valid_fcnt_d; 
input         fdbs0_fdb0_bell13_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb0_bell13_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell13_fcnt_d; 
input         fdbs0_fdb0_bell13_fcnt_enb; 
input   [1:0] fdbs0_fdb0_bell14_cnt_qout; 
output  [1:0] fdbs0_fdb0_bell14_cnt_din; 
output        fdbs0_fdb0_bell14_cnt_w; 
output        fdbs0_fdb0_bell14_cnt_r; 
output        fdbs0_fdb0_bell14_failed_ring_q; 
input         fdbs0_fdb0_bell14_failed_ring_d; 
input         fdbs0_fdb0_bell14_failed_ring_enb; 
output  [1:0] fdbs0_fdb0_bell14_max_priority_q; 
input   [1:0] fdbs0_fdb0_bell14_max_priority_d; 
input         fdbs0_fdb0_bell14_max_priority_enb; 
output  [4:0] fdbs0_fdb0_bell14_valid_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell14_valid_fcnt_d; 
input         fdbs0_fdb0_bell14_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb0_bell14_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell14_fcnt_d; 
input         fdbs0_fdb0_bell14_fcnt_enb; 
input   [1:0] fdbs0_fdb0_bell15_cnt_qout; 
output  [1:0] fdbs0_fdb0_bell15_cnt_din; 
output        fdbs0_fdb0_bell15_cnt_w; 
output        fdbs0_fdb0_bell15_cnt_r; 
output        fdbs0_fdb0_bell15_failed_ring_q; 
input         fdbs0_fdb0_bell15_failed_ring_d; 
input         fdbs0_fdb0_bell15_failed_ring_enb; 
output  [1:0] fdbs0_fdb0_bell15_max_priority_q; 
input   [1:0] fdbs0_fdb0_bell15_max_priority_d; 
input         fdbs0_fdb0_bell15_max_priority_enb; 
output  [4:0] fdbs0_fdb0_bell15_valid_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell15_valid_fcnt_d; 
input         fdbs0_fdb0_bell15_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb0_bell15_fcnt_q; 
input   [4:0] fdbs0_fdb0_bell15_fcnt_d; 
input         fdbs0_fdb0_bell15_fcnt_enb; 
output        fdbs0_fdb0_control_ack_on_empty_q; 
input  [15:0] fdbs0_fdb0_enable_enable_qout; 
output [15:0] fdbs0_fdb0_enable_enable_din; 
output        fdbs0_fdb0_enable_enable_w; 
input  [15:0] fdbs0_fdb0_status_status_d; 
output [31:0] fdbs0_fdb0_data0_fifo_din; 
output  [1:0] fdbs0_fdb0_data0_fifo_a; 
output [31:0] fdbs0_fdb0_data0_fifo_wen; 
output        fdbs0_fdb0_data0_fifo_cen; 
input  [31:0] fdbs0_fdb0_data0_fifo_dout; 
output [31:0] fdbs0_fdb0_data1_fifo_din; 
output  [1:0] fdbs0_fdb0_data1_fifo_a; 
output [31:0] fdbs0_fdb0_data1_fifo_wen; 
output        fdbs0_fdb0_data1_fifo_cen; 
input  [31:0] fdbs0_fdb0_data1_fifo_dout; 
output [31:0] fdbs0_fdb0_data2_fifo_din; 
output  [1:0] fdbs0_fdb0_data2_fifo_a; 
output [31:0] fdbs0_fdb0_data2_fifo_wen; 
output        fdbs0_fdb0_data2_fifo_cen; 
input  [31:0] fdbs0_fdb0_data2_fifo_dout; 
output [31:0] fdbs0_fdb0_data3_fifo_din; 
output  [1:0] fdbs0_fdb0_data3_fifo_a; 
output [31:0] fdbs0_fdb0_data3_fifo_wen; 
output        fdbs0_fdb0_data3_fifo_cen; 
input  [31:0] fdbs0_fdb0_data3_fifo_dout; 
output [31:0] fdbs0_fdb0_data4_fifo_din; 
output  [1:0] fdbs0_fdb0_data4_fifo_a; 
output [31:0] fdbs0_fdb0_data4_fifo_wen; 
output        fdbs0_fdb0_data4_fifo_cen; 
input  [31:0] fdbs0_fdb0_data4_fifo_dout; 
output [31:0] fdbs0_fdb0_data5_fifo_din; 
output  [1:0] fdbs0_fdb0_data5_fifo_a; 
output [31:0] fdbs0_fdb0_data5_fifo_wen; 
output        fdbs0_fdb0_data5_fifo_cen; 
input  [31:0] fdbs0_fdb0_data5_fifo_dout; 
output [31:0] fdbs0_fdb0_data6_fifo_din; 
output  [1:0] fdbs0_fdb0_data6_fifo_a; 
output [31:0] fdbs0_fdb0_data6_fifo_wen; 
output        fdbs0_fdb0_data6_fifo_cen; 
input  [31:0] fdbs0_fdb0_data6_fifo_dout; 
output [31:0] fdbs0_fdb0_data7_fifo_din; 
output  [1:0] fdbs0_fdb0_data7_fifo_a; 
output [31:0] fdbs0_fdb0_data7_fifo_wen; 
output        fdbs0_fdb0_data7_fifo_cen; 
input  [31:0] fdbs0_fdb0_data7_fifo_dout; 
output [31:0] fdbs0_fdb0_data8_fifo_din; 
output  [1:0] fdbs0_fdb0_data8_fifo_a; 
output [31:0] fdbs0_fdb0_data8_fifo_wen; 
output        fdbs0_fdb0_data8_fifo_cen; 
input  [31:0] fdbs0_fdb0_data8_fifo_dout; 
output [31:0] fdbs0_fdb0_data9_fifo_din; 
output  [1:0] fdbs0_fdb0_data9_fifo_a; 
output [31:0] fdbs0_fdb0_data9_fifo_wen; 
output        fdbs0_fdb0_data9_fifo_cen; 
input  [31:0] fdbs0_fdb0_data9_fifo_dout; 
output [31:0] fdbs0_fdb0_data10_fifo_din; 
output  [1:0] fdbs0_fdb0_data10_fifo_a; 
output [31:0] fdbs0_fdb0_data10_fifo_wen; 
output        fdbs0_fdb0_data10_fifo_cen; 
input  [31:0] fdbs0_fdb0_data10_fifo_dout; 
output [31:0] fdbs0_fdb0_data11_fifo_din; 
output  [1:0] fdbs0_fdb0_data11_fifo_a; 
output [31:0] fdbs0_fdb0_data11_fifo_wen; 
output        fdbs0_fdb0_data11_fifo_cen; 
input  [31:0] fdbs0_fdb0_data11_fifo_dout; 
output [31:0] fdbs0_fdb0_data12_fifo_din; 
output  [1:0] fdbs0_fdb0_data12_fifo_a; 
output [31:0] fdbs0_fdb0_data12_fifo_wen; 
output        fdbs0_fdb0_data12_fifo_cen; 
input  [31:0] fdbs0_fdb0_data12_fifo_dout; 
output [31:0] fdbs0_fdb0_data13_fifo_din; 
output  [1:0] fdbs0_fdb0_data13_fifo_a; 
output [31:0] fdbs0_fdb0_data13_fifo_wen; 
output        fdbs0_fdb0_data13_fifo_cen; 
input  [31:0] fdbs0_fdb0_data13_fifo_dout; 
output [31:0] fdbs0_fdb0_data14_fifo_din; 
output  [1:0] fdbs0_fdb0_data14_fifo_a; 
output [31:0] fdbs0_fdb0_data14_fifo_wen; 
output        fdbs0_fdb0_data14_fifo_cen; 
input  [31:0] fdbs0_fdb0_data14_fifo_dout; 
output [31:0] fdbs0_fdb0_data15_fifo_din; 
output  [1:0] fdbs0_fdb0_data15_fifo_a; 
output [31:0] fdbs0_fdb0_data15_fifo_wen; 
output        fdbs0_fdb0_data15_fifo_cen; 
input  [31:0] fdbs0_fdb0_data15_fifo_dout; 
input   [1:0] fdbs0_fdb1_bell0_cnt_qout; 
output  [1:0] fdbs0_fdb1_bell0_cnt_din; 
output        fdbs0_fdb1_bell0_cnt_w; 
output        fdbs0_fdb1_bell0_cnt_r; 
output        fdbs0_fdb1_bell0_failed_ring_q; 
input         fdbs0_fdb1_bell0_failed_ring_d; 
input         fdbs0_fdb1_bell0_failed_ring_enb; 
output  [1:0] fdbs0_fdb1_bell0_max_priority_q; 
input   [1:0] fdbs0_fdb1_bell0_max_priority_d; 
input         fdbs0_fdb1_bell0_max_priority_enb; 
output  [4:0] fdbs0_fdb1_bell0_valid_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell0_valid_fcnt_d; 
input         fdbs0_fdb1_bell0_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb1_bell0_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell0_fcnt_d; 
input         fdbs0_fdb1_bell0_fcnt_enb; 
input   [1:0] fdbs0_fdb1_bell1_cnt_qout; 
output  [1:0] fdbs0_fdb1_bell1_cnt_din; 
output        fdbs0_fdb1_bell1_cnt_w; 
output        fdbs0_fdb1_bell1_cnt_r; 
output        fdbs0_fdb1_bell1_failed_ring_q; 
input         fdbs0_fdb1_bell1_failed_ring_d; 
input         fdbs0_fdb1_bell1_failed_ring_enb; 
output  [1:0] fdbs0_fdb1_bell1_max_priority_q; 
input   [1:0] fdbs0_fdb1_bell1_max_priority_d; 
input         fdbs0_fdb1_bell1_max_priority_enb; 
output  [4:0] fdbs0_fdb1_bell1_valid_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell1_valid_fcnt_d; 
input         fdbs0_fdb1_bell1_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb1_bell1_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell1_fcnt_d; 
input         fdbs0_fdb1_bell1_fcnt_enb; 
input   [1:0] fdbs0_fdb1_bell2_cnt_qout; 
output  [1:0] fdbs0_fdb1_bell2_cnt_din; 
output        fdbs0_fdb1_bell2_cnt_w; 
output        fdbs0_fdb1_bell2_cnt_r; 
output        fdbs0_fdb1_bell2_failed_ring_q; 
input         fdbs0_fdb1_bell2_failed_ring_d; 
input         fdbs0_fdb1_bell2_failed_ring_enb; 
output  [1:0] fdbs0_fdb1_bell2_max_priority_q; 
input   [1:0] fdbs0_fdb1_bell2_max_priority_d; 
input         fdbs0_fdb1_bell2_max_priority_enb; 
output  [4:0] fdbs0_fdb1_bell2_valid_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell2_valid_fcnt_d; 
input         fdbs0_fdb1_bell2_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb1_bell2_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell2_fcnt_d; 
input         fdbs0_fdb1_bell2_fcnt_enb; 
input   [1:0] fdbs0_fdb1_bell3_cnt_qout; 
output  [1:0] fdbs0_fdb1_bell3_cnt_din; 
output        fdbs0_fdb1_bell3_cnt_w; 
output        fdbs0_fdb1_bell3_cnt_r; 
output        fdbs0_fdb1_bell3_failed_ring_q; 
input         fdbs0_fdb1_bell3_failed_ring_d; 
input         fdbs0_fdb1_bell3_failed_ring_enb; 
output  [1:0] fdbs0_fdb1_bell3_max_priority_q; 
input   [1:0] fdbs0_fdb1_bell3_max_priority_d; 
input         fdbs0_fdb1_bell3_max_priority_enb; 
output  [4:0] fdbs0_fdb1_bell3_valid_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell3_valid_fcnt_d; 
input         fdbs0_fdb1_bell3_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb1_bell3_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell3_fcnt_d; 
input         fdbs0_fdb1_bell3_fcnt_enb; 
input   [1:0] fdbs0_fdb1_bell4_cnt_qout; 
output  [1:0] fdbs0_fdb1_bell4_cnt_din; 
output        fdbs0_fdb1_bell4_cnt_w; 
output        fdbs0_fdb1_bell4_cnt_r; 
output        fdbs0_fdb1_bell4_failed_ring_q; 
input         fdbs0_fdb1_bell4_failed_ring_d; 
input         fdbs0_fdb1_bell4_failed_ring_enb; 
output  [1:0] fdbs0_fdb1_bell4_max_priority_q; 
input   [1:0] fdbs0_fdb1_bell4_max_priority_d; 
input         fdbs0_fdb1_bell4_max_priority_enb; 
output  [4:0] fdbs0_fdb1_bell4_valid_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell4_valid_fcnt_d; 
input         fdbs0_fdb1_bell4_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb1_bell4_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell4_fcnt_d; 
input         fdbs0_fdb1_bell4_fcnt_enb; 
input   [1:0] fdbs0_fdb1_bell5_cnt_qout; 
output  [1:0] fdbs0_fdb1_bell5_cnt_din; 
output        fdbs0_fdb1_bell5_cnt_w; 
output        fdbs0_fdb1_bell5_cnt_r; 
output        fdbs0_fdb1_bell5_failed_ring_q; 
input         fdbs0_fdb1_bell5_failed_ring_d; 
input         fdbs0_fdb1_bell5_failed_ring_enb; 
output  [1:0] fdbs0_fdb1_bell5_max_priority_q; 
input   [1:0] fdbs0_fdb1_bell5_max_priority_d; 
input         fdbs0_fdb1_bell5_max_priority_enb; 
output  [4:0] fdbs0_fdb1_bell5_valid_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell5_valid_fcnt_d; 
input         fdbs0_fdb1_bell5_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb1_bell5_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell5_fcnt_d; 
input         fdbs0_fdb1_bell5_fcnt_enb; 
input   [1:0] fdbs0_fdb1_bell6_cnt_qout; 
output  [1:0] fdbs0_fdb1_bell6_cnt_din; 
output        fdbs0_fdb1_bell6_cnt_w; 
output        fdbs0_fdb1_bell6_cnt_r; 
output        fdbs0_fdb1_bell6_failed_ring_q; 
input         fdbs0_fdb1_bell6_failed_ring_d; 
input         fdbs0_fdb1_bell6_failed_ring_enb; 
output  [1:0] fdbs0_fdb1_bell6_max_priority_q; 
input   [1:0] fdbs0_fdb1_bell6_max_priority_d; 
input         fdbs0_fdb1_bell6_max_priority_enb; 
output  [4:0] fdbs0_fdb1_bell6_valid_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell6_valid_fcnt_d; 
input         fdbs0_fdb1_bell6_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb1_bell6_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell6_fcnt_d; 
input         fdbs0_fdb1_bell6_fcnt_enb; 
input   [1:0] fdbs0_fdb1_bell7_cnt_qout; 
output  [1:0] fdbs0_fdb1_bell7_cnt_din; 
output        fdbs0_fdb1_bell7_cnt_w; 
output        fdbs0_fdb1_bell7_cnt_r; 
output        fdbs0_fdb1_bell7_failed_ring_q; 
input         fdbs0_fdb1_bell7_failed_ring_d; 
input         fdbs0_fdb1_bell7_failed_ring_enb; 
output  [1:0] fdbs0_fdb1_bell7_max_priority_q; 
input   [1:0] fdbs0_fdb1_bell7_max_priority_d; 
input         fdbs0_fdb1_bell7_max_priority_enb; 
output  [4:0] fdbs0_fdb1_bell7_valid_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell7_valid_fcnt_d; 
input         fdbs0_fdb1_bell7_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb1_bell7_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell7_fcnt_d; 
input         fdbs0_fdb1_bell7_fcnt_enb; 
input   [1:0] fdbs0_fdb1_bell8_cnt_qout; 
output  [1:0] fdbs0_fdb1_bell8_cnt_din; 
output        fdbs0_fdb1_bell8_cnt_w; 
output        fdbs0_fdb1_bell8_cnt_r; 
output        fdbs0_fdb1_bell8_failed_ring_q; 
input         fdbs0_fdb1_bell8_failed_ring_d; 
input         fdbs0_fdb1_bell8_failed_ring_enb; 
output  [1:0] fdbs0_fdb1_bell8_max_priority_q; 
input   [1:0] fdbs0_fdb1_bell8_max_priority_d; 
input         fdbs0_fdb1_bell8_max_priority_enb; 
output  [4:0] fdbs0_fdb1_bell8_valid_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell8_valid_fcnt_d; 
input         fdbs0_fdb1_bell8_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb1_bell8_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell8_fcnt_d; 
input         fdbs0_fdb1_bell8_fcnt_enb; 
input   [1:0] fdbs0_fdb1_bell9_cnt_qout; 
output  [1:0] fdbs0_fdb1_bell9_cnt_din; 
output        fdbs0_fdb1_bell9_cnt_w; 
output        fdbs0_fdb1_bell9_cnt_r; 
output        fdbs0_fdb1_bell9_failed_ring_q; 
input         fdbs0_fdb1_bell9_failed_ring_d; 
input         fdbs0_fdb1_bell9_failed_ring_enb; 
output  [1:0] fdbs0_fdb1_bell9_max_priority_q; 
input   [1:0] fdbs0_fdb1_bell9_max_priority_d; 
input         fdbs0_fdb1_bell9_max_priority_enb; 
output  [4:0] fdbs0_fdb1_bell9_valid_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell9_valid_fcnt_d; 
input         fdbs0_fdb1_bell9_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb1_bell9_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell9_fcnt_d; 
input         fdbs0_fdb1_bell9_fcnt_enb; 
input   [1:0] fdbs0_fdb1_bell10_cnt_qout; 
output  [1:0] fdbs0_fdb1_bell10_cnt_din; 
output        fdbs0_fdb1_bell10_cnt_w; 
output        fdbs0_fdb1_bell10_cnt_r; 
output        fdbs0_fdb1_bell10_failed_ring_q; 
input         fdbs0_fdb1_bell10_failed_ring_d; 
input         fdbs0_fdb1_bell10_failed_ring_enb; 
output  [1:0] fdbs0_fdb1_bell10_max_priority_q; 
input   [1:0] fdbs0_fdb1_bell10_max_priority_d; 
input         fdbs0_fdb1_bell10_max_priority_enb; 
output  [4:0] fdbs0_fdb1_bell10_valid_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell10_valid_fcnt_d; 
input         fdbs0_fdb1_bell10_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb1_bell10_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell10_fcnt_d; 
input         fdbs0_fdb1_bell10_fcnt_enb; 
input   [1:0] fdbs0_fdb1_bell11_cnt_qout; 
output  [1:0] fdbs0_fdb1_bell11_cnt_din; 
output        fdbs0_fdb1_bell11_cnt_w; 
output        fdbs0_fdb1_bell11_cnt_r; 
output        fdbs0_fdb1_bell11_failed_ring_q; 
input         fdbs0_fdb1_bell11_failed_ring_d; 
input         fdbs0_fdb1_bell11_failed_ring_enb; 
output  [1:0] fdbs0_fdb1_bell11_max_priority_q; 
input   [1:0] fdbs0_fdb1_bell11_max_priority_d; 
input         fdbs0_fdb1_bell11_max_priority_enb; 
output  [4:0] fdbs0_fdb1_bell11_valid_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell11_valid_fcnt_d; 
input         fdbs0_fdb1_bell11_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb1_bell11_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell11_fcnt_d; 
input         fdbs0_fdb1_bell11_fcnt_enb; 
input   [1:0] fdbs0_fdb1_bell12_cnt_qout; 
output  [1:0] fdbs0_fdb1_bell12_cnt_din; 
output        fdbs0_fdb1_bell12_cnt_w; 
output        fdbs0_fdb1_bell12_cnt_r; 
output        fdbs0_fdb1_bell12_failed_ring_q; 
input         fdbs0_fdb1_bell12_failed_ring_d; 
input         fdbs0_fdb1_bell12_failed_ring_enb; 
output  [1:0] fdbs0_fdb1_bell12_max_priority_q; 
input   [1:0] fdbs0_fdb1_bell12_max_priority_d; 
input         fdbs0_fdb1_bell12_max_priority_enb; 
output  [4:0] fdbs0_fdb1_bell12_valid_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell12_valid_fcnt_d; 
input         fdbs0_fdb1_bell12_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb1_bell12_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell12_fcnt_d; 
input         fdbs0_fdb1_bell12_fcnt_enb; 
input   [1:0] fdbs0_fdb1_bell13_cnt_qout; 
output  [1:0] fdbs0_fdb1_bell13_cnt_din; 
output        fdbs0_fdb1_bell13_cnt_w; 
output        fdbs0_fdb1_bell13_cnt_r; 
output        fdbs0_fdb1_bell13_failed_ring_q; 
input         fdbs0_fdb1_bell13_failed_ring_d; 
input         fdbs0_fdb1_bell13_failed_ring_enb; 
output  [1:0] fdbs0_fdb1_bell13_max_priority_q; 
input   [1:0] fdbs0_fdb1_bell13_max_priority_d; 
input         fdbs0_fdb1_bell13_max_priority_enb; 
output  [4:0] fdbs0_fdb1_bell13_valid_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell13_valid_fcnt_d; 
input         fdbs0_fdb1_bell13_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb1_bell13_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell13_fcnt_d; 
input         fdbs0_fdb1_bell13_fcnt_enb; 
input   [1:0] fdbs0_fdb1_bell14_cnt_qout; 
output  [1:0] fdbs0_fdb1_bell14_cnt_din; 
output        fdbs0_fdb1_bell14_cnt_w; 
output        fdbs0_fdb1_bell14_cnt_r; 
output        fdbs0_fdb1_bell14_failed_ring_q; 
input         fdbs0_fdb1_bell14_failed_ring_d; 
input         fdbs0_fdb1_bell14_failed_ring_enb; 
output  [1:0] fdbs0_fdb1_bell14_max_priority_q; 
input   [1:0] fdbs0_fdb1_bell14_max_priority_d; 
input         fdbs0_fdb1_bell14_max_priority_enb; 
output  [4:0] fdbs0_fdb1_bell14_valid_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell14_valid_fcnt_d; 
input         fdbs0_fdb1_bell14_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb1_bell14_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell14_fcnt_d; 
input         fdbs0_fdb1_bell14_fcnt_enb; 
input   [1:0] fdbs0_fdb1_bell15_cnt_qout; 
output  [1:0] fdbs0_fdb1_bell15_cnt_din; 
output        fdbs0_fdb1_bell15_cnt_w; 
output        fdbs0_fdb1_bell15_cnt_r; 
output        fdbs0_fdb1_bell15_failed_ring_q; 
input         fdbs0_fdb1_bell15_failed_ring_d; 
input         fdbs0_fdb1_bell15_failed_ring_enb; 
output  [1:0] fdbs0_fdb1_bell15_max_priority_q; 
input   [1:0] fdbs0_fdb1_bell15_max_priority_d; 
input         fdbs0_fdb1_bell15_max_priority_enb; 
output  [4:0] fdbs0_fdb1_bell15_valid_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell15_valid_fcnt_d; 
input         fdbs0_fdb1_bell15_valid_fcnt_enb; 
output  [4:0] fdbs0_fdb1_bell15_fcnt_q; 
input   [4:0] fdbs0_fdb1_bell15_fcnt_d; 
input         fdbs0_fdb1_bell15_fcnt_enb; 
output        fdbs0_fdb1_control_ack_on_empty_q; 
input  [15:0] fdbs0_fdb1_enable_enable_qout; 
output [15:0] fdbs0_fdb1_enable_enable_din; 
output        fdbs0_fdb1_enable_enable_w; 
input  [15:0] fdbs0_fdb1_status_status_d; 
output [31:0] fdbs0_fdb1_data0_fifo_din; 
output  [1:0] fdbs0_fdb1_data0_fifo_a; 
output [31:0] fdbs0_fdb1_data0_fifo_wen; 
output        fdbs0_fdb1_data0_fifo_cen; 
input  [31:0] fdbs0_fdb1_data0_fifo_dout; 
output [31:0] fdbs0_fdb1_data1_fifo_din; 
output  [1:0] fdbs0_fdb1_data1_fifo_a; 
output [31:0] fdbs0_fdb1_data1_fifo_wen; 
output        fdbs0_fdb1_data1_fifo_cen; 
input  [31:0] fdbs0_fdb1_data1_fifo_dout; 
output [31:0] fdbs0_fdb1_data2_fifo_din; 
output  [1:0] fdbs0_fdb1_data2_fifo_a; 
output [31:0] fdbs0_fdb1_data2_fifo_wen; 
output        fdbs0_fdb1_data2_fifo_cen; 
input  [31:0] fdbs0_fdb1_data2_fifo_dout; 
output [31:0] fdbs0_fdb1_data3_fifo_din; 
output  [1:0] fdbs0_fdb1_data3_fifo_a; 
output [31:0] fdbs0_fdb1_data3_fifo_wen; 
output        fdbs0_fdb1_data3_fifo_cen; 
input  [31:0] fdbs0_fdb1_data3_fifo_dout; 
output [31:0] fdbs0_fdb1_data4_fifo_din; 
output  [1:0] fdbs0_fdb1_data4_fifo_a; 
output [31:0] fdbs0_fdb1_data4_fifo_wen; 
output        fdbs0_fdb1_data4_fifo_cen; 
input  [31:0] fdbs0_fdb1_data4_fifo_dout; 
output [31:0] fdbs0_fdb1_data5_fifo_din; 
output  [1:0] fdbs0_fdb1_data5_fifo_a; 
output [31:0] fdbs0_fdb1_data5_fifo_wen; 
output        fdbs0_fdb1_data5_fifo_cen; 
input  [31:0] fdbs0_fdb1_data5_fifo_dout; 
output [31:0] fdbs0_fdb1_data6_fifo_din; 
output  [1:0] fdbs0_fdb1_data6_fifo_a; 
output [31:0] fdbs0_fdb1_data6_fifo_wen; 
output        fdbs0_fdb1_data6_fifo_cen; 
input  [31:0] fdbs0_fdb1_data6_fifo_dout; 
output [31:0] fdbs0_fdb1_data7_fifo_din; 
output  [1:0] fdbs0_fdb1_data7_fifo_a; 
output [31:0] fdbs0_fdb1_data7_fifo_wen; 
output        fdbs0_fdb1_data7_fifo_cen; 
input  [31:0] fdbs0_fdb1_data7_fifo_dout; 
output [31:0] fdbs0_fdb1_data8_fifo_din; 
output  [1:0] fdbs0_fdb1_data8_fifo_a; 
output [31:0] fdbs0_fdb1_data8_fifo_wen; 
output        fdbs0_fdb1_data8_fifo_cen; 
input  [31:0] fdbs0_fdb1_data8_fifo_dout; 
output [31:0] fdbs0_fdb1_data9_fifo_din; 
output  [1:0] fdbs0_fdb1_data9_fifo_a; 
output [31:0] fdbs0_fdb1_data9_fifo_wen; 
output        fdbs0_fdb1_data9_fifo_cen; 
input  [31:0] fdbs0_fdb1_data9_fifo_dout; 
output [31:0] fdbs0_fdb1_data10_fifo_din; 
output  [1:0] fdbs0_fdb1_data10_fifo_a; 
output [31:0] fdbs0_fdb1_data10_fifo_wen; 
output        fdbs0_fdb1_data10_fifo_cen; 
input  [31:0] fdbs0_fdb1_data10_fifo_dout; 
output [31:0] fdbs0_fdb1_data11_fifo_din; 
output  [1:0] fdbs0_fdb1_data11_fifo_a; 
output [31:0] fdbs0_fdb1_data11_fifo_wen; 
output        fdbs0_fdb1_data11_fifo_cen; 
input  [31:0] fdbs0_fdb1_data11_fifo_dout; 
output [31:0] fdbs0_fdb1_data12_fifo_din; 
output  [1:0] fdbs0_fdb1_data12_fifo_a; 
output [31:0] fdbs0_fdb1_data12_fifo_wen; 
output        fdbs0_fdb1_data12_fifo_cen; 
input  [31:0] fdbs0_fdb1_data12_fifo_dout; 
output [31:0] fdbs0_fdb1_data13_fifo_din; 
output  [1:0] fdbs0_fdb1_data13_fifo_a; 
output [31:0] fdbs0_fdb1_data13_fifo_wen; 
output        fdbs0_fdb1_data13_fifo_cen; 
input  [31:0] fdbs0_fdb1_data13_fifo_dout; 
output [31:0] fdbs0_fdb1_data14_fifo_din; 
output  [1:0] fdbs0_fdb1_data14_fifo_a; 
output [31:0] fdbs0_fdb1_data14_fifo_wen; 
output        fdbs0_fdb1_data14_fifo_cen; 
input  [31:0] fdbs0_fdb1_data14_fifo_dout; 
output [31:0] fdbs0_fdb1_data15_fifo_din; 
output  [1:0] fdbs0_fdb1_data15_fifo_a; 
output [31:0] fdbs0_fdb1_data15_fifo_wen; 
output        fdbs0_fdb1_data15_fifo_cen; 
input  [31:0] fdbs0_fdb1_data15_fifo_dout; 
output  [5:0] smutex0_owner0_id_q; 
input   [5:0] smutex0_owner0_id_d; 
input         smutex0_owner0_id_enb; 
output  [5:0] smutex0_owner1_id_q; 
input   [5:0] smutex0_owner1_id_d; 
input         smutex0_owner1_id_enb; 
output  [5:0] smutex0_owner2_id_q; 
input   [5:0] smutex0_owner2_id_d; 
input         smutex0_owner2_id_enb; 
output  [5:0] smutex0_owner3_id_q; 
input   [5:0] smutex0_owner3_id_d; 
input         smutex0_owner3_id_enb; 
output  [5:0] smutex0_owner4_id_q; 
input   [5:0] smutex0_owner4_id_d; 
input         smutex0_owner4_id_enb; 
output  [5:0] smutex0_owner5_id_q; 
input   [5:0] smutex0_owner5_id_d; 
input         smutex0_owner5_id_enb; 
output  [5:0] smutex0_owner6_id_q; 
input   [5:0] smutex0_owner6_id_d; 
input         smutex0_owner6_id_enb; 
output  [5:0] smutex0_owner7_id_q; 
input   [5:0] smutex0_owner7_id_d; 
input         smutex0_owner7_id_enb; 
output  [5:0] smutex0_ipc_sc_id_q; 
output  [7:0] smutex0_timeout_compare_q; 
output  [1:0] smutex0_timeout_prescale_q; 
output  [2:0] smutex0_error_err_log_code_q; 
input   [2:0] smutex0_error_err_log_code_d; 
input         smutex0_error_err_log_code_enb; 
output        smutex0_error_err_log_access_q; 
input         smutex0_error_err_log_access_d; 
input         smutex0_error_err_log_access_enb; 
output  [5:0] smutex0_error_err_log_id_q; 
input   [5:0] smutex0_error_err_log_id_d; 
input         smutex0_error_err_log_id_enb; 
output        smutex0_error_err_log_multi_q; 
input         smutex0_error_err_log_multi_d; 
input         smutex0_error_err_log_multi_enb; 
output [31:0] smutex0_error_err_data_data_q; 
input  [31:0] smutex0_error_err_data_data_d; 
input         smutex0_error_err_data_data_enb; 
output  [4:0] smutex0_error_err_idx_mutex_idx_q; 
input   [4:0] smutex0_error_err_idx_mutex_idx_d; 
input         smutex0_error_err_idx_mutex_idx_enb; 
output  [5:0] mutex0_reqinfo; 
input  [30:0] mutex0_mutex0_swid_qout; 
output [30:0] mutex0_mutex0_swid_din; 
output        mutex0_mutex0_swid_w; 
output        mutex0_mutex0_swid_r; 
input         mutex0_mutex0_lock_qout; 
output        mutex0_mutex0_lock_din; 
output        mutex0_mutex0_lock_w; 
input  [30:0] mutex0_mutex1_swid_qout; 
output [30:0] mutex0_mutex1_swid_din; 
output        mutex0_mutex1_swid_w; 
output        mutex0_mutex1_swid_r; 
input         mutex0_mutex1_lock_qout; 
output        mutex0_mutex1_lock_din; 
output        mutex0_mutex1_lock_w; 
input  [30:0] mutex0_mutex2_swid_qout; 
output [30:0] mutex0_mutex2_swid_din; 
output        mutex0_mutex2_swid_w; 
output        mutex0_mutex2_swid_r; 
input         mutex0_mutex2_lock_qout; 
output        mutex0_mutex2_lock_din; 
output        mutex0_mutex2_lock_w; 
input  [30:0] mutex0_mutex3_swid_qout; 
output [30:0] mutex0_mutex3_swid_din; 
output        mutex0_mutex3_swid_w; 
output        mutex0_mutex3_swid_r; 
input         mutex0_mutex3_lock_qout; 
output        mutex0_mutex3_lock_din; 
output        mutex0_mutex3_lock_w; 
input  [30:0] mutex0_mutex4_swid_qout; 
output [30:0] mutex0_mutex4_swid_din; 
output        mutex0_mutex4_swid_w; 
output        mutex0_mutex4_swid_r; 
input         mutex0_mutex4_lock_qout; 
output        mutex0_mutex4_lock_din; 
output        mutex0_mutex4_lock_w; 
input  [30:0] mutex0_mutex5_swid_qout; 
output [30:0] mutex0_mutex5_swid_din; 
output        mutex0_mutex5_swid_w; 
output        mutex0_mutex5_swid_r; 
input         mutex0_mutex5_lock_qout; 
output        mutex0_mutex5_lock_din; 
output        mutex0_mutex5_lock_w; 
input  [30:0] mutex0_mutex6_swid_qout; 
output [30:0] mutex0_mutex6_swid_din; 
output        mutex0_mutex6_swid_w; 
output        mutex0_mutex6_swid_r; 
input         mutex0_mutex6_lock_qout; 
output        mutex0_mutex6_lock_din; 
output        mutex0_mutex6_lock_w; 
input  [30:0] mutex0_mutex7_swid_qout; 
output [30:0] mutex0_mutex7_swid_din; 
output        mutex0_mutex7_swid_w; 
output        mutex0_mutex7_swid_r; 
input         mutex0_mutex7_lock_qout; 
output        mutex0_mutex7_lock_din; 
output        mutex0_mutex7_lock_w; 
output  [1:0] web0_control_activate_low_pwr_edge_q; 
output  [1:0] web0_control_event_suppress_edge_q; 
output  [1:0] web0_control_wake_now_edge_q; 
output  [1:0] web0_control_epu_enable_edge_q; 
output        web0_event_activate_low_pwr_q; 
input         web0_event_activate_low_pwr_d; 
input         web0_event_activate_low_pwr_enb; 
output        web0_event_event_suppress_q; 
input         web0_event_event_suppress_d; 
input         web0_event_event_suppress_enb; 
output        web0_event_wake_now_q; 
input         web0_event_wake_now_d; 
input         web0_event_wake_now_enb; 
output        web0_event_epu_enable_q; 
input         web0_event_epu_enable_d; 
input         web0_event_epu_enable_enb; 
output [31:0] web0_wake_enable0_enable_q; 
output [31:0] web0_wake_enable1_enable_q; 
output [31:0] web0_input_invert0_invert_q; 
output [31:0] web0_input_invert1_invert_q; 
output  [1:0] web1_control_activate_low_pwr_edge_q; 
output  [1:0] web1_control_event_suppress_edge_q; 
output  [1:0] web1_control_wake_now_edge_q; 
output  [1:0] web1_control_epu_enable_edge_q; 
output        web1_event_activate_low_pwr_q; 
input         web1_event_activate_low_pwr_d; 
input         web1_event_activate_low_pwr_enb; 
output        web1_event_event_suppress_q; 
input         web1_event_event_suppress_d; 
input         web1_event_event_suppress_enb; 
output        web1_event_wake_now_q; 
input         web1_event_wake_now_d; 
input         web1_event_wake_now_enb; 
output        web1_event_epu_enable_q; 
input         web1_event_epu_enable_d; 
input         web1_event_epu_enable_enb; 
output [31:0] web1_wake_enable0_enable_q; 
output [31:0] web1_wake_enable1_enable_q; 
output [31:0] web1_input_invert0_invert_q; 
output [31:0] web1_input_invert1_invert_q; 

wire          sfdbs0_read_valid; 
wire   [31:0] sfdbs0_read_data; 
wire          sfdbs0_read_err; 
wire          sfdbs0_ready; 
wire          fdbs0_read_valid; 
wire   [31:0] fdbs0_read_data; 
wire          fdbs0_read_err; 
wire          fdbs0_ready; 
wire          smutex0_read_valid; 
wire   [31:0] smutex0_read_data; 
wire          smutex0_read_err; 
wire          smutex0_ready; 
wire          mutex0_read_valid; 
wire   [31:0] mutex0_read_data; 
wire          mutex0_read_err; 
wire          mutex0_ready; 
wire          web0_read_valid; 
wire   [31:0] web0_read_data; 
wire          web0_read_err; 
wire          web0_ready; 
wire          web1_read_valid; 
wire   [31:0] web1_read_data; 
wire          web1_read_err; 
wire          web1_ready; 
wire   [11:0] read_addr; 
wire    [5:0] read_info; 
wire          sfdbs0_write_valid; 
wire          sfdbs0_write_err; 
wire          fdbs0_write_valid; 
wire          fdbs0_write_err; 
wire          smutex0_write_valid; 
wire          smutex0_write_err; 
wire          mutex0_write_valid; 
wire          mutex0_write_err; 
wire          web0_write_valid; 
wire          web0_write_err; 
wire          web1_write_valid; 
wire          web1_write_err; 
wire   [11:0] write_addr; 
wire   [31:0] write_data; 
wire    [3:0] write_strb; 
wire    [5:0] write_info; 

regmodel0_regmodel_core_reg_intf i_regmodel0_regmodel_core_reg_intf(
    .clk_i                  ( clk_i                  ),
    .non_retention_reset_ni ( non_retention_reset_ni ),
    .func_reset_ni          ( ocp_mreset_ni          ),
    .test_mode_cgm_i        ( test_mode_cgm_i        ),
    .mcmd_i                 ( ocp_mcmd_i             ),
    .maddr_i                ( ocp_maddr_i            ),
    .mdata_i                ( ocp_mdata_i            ),
    .mreqinfo_i             ( ocp_mreqinfo_i         ),
    .mbyteen_i              ( ocp_mbyteen_i          ),
    .scmdaccept_o           ( ocp_scmdaccept_o       ),
    .sdata_o                ( ocp_sdata_o            ),
    .sresp_o                ( ocp_sresp_o            ),
    .mrespaccept_i          ( ocp_mrespaccept_i      ),
    .sfdbs0_write_valid_o   ( sfdbs0_write_valid     ),
    .sfdbs0_write_err_i     ( sfdbs0_write_err       ),
    .fdbs0_write_valid_o    ( fdbs0_write_valid      ),
    .fdbs0_write_err_i      ( fdbs0_write_err        ),
    .smutex0_write_valid_o  ( smutex0_write_valid    ),
    .smutex0_write_err_i    ( smutex0_write_err      ),
    .mutex0_write_valid_o   ( mutex0_write_valid     ),
    .mutex0_write_err_i     ( mutex0_write_err       ),
    .web0_write_valid_o     ( web0_write_valid       ),
    .web0_write_err_i       ( web0_write_err         ),
    .web1_write_valid_o     ( web1_write_valid       ),
    .web1_write_err_i       ( web1_write_err         ),
    .write_addr_o           ( write_addr             ),
    .write_data_o           ( write_data             ),
    .write_strb_o           ( write_strb             ),
    .write_info_o           ( write_info             ),
    .sfdbs0_read_valid_o    ( sfdbs0_read_valid      ),
    .sfdbs0_read_data_i     ( sfdbs0_read_data       ),
    .sfdbs0_read_err_i      ( sfdbs0_read_err        ),
    .sfdbs0_ready_i         ( sfdbs0_ready           ),
    .fdbs0_read_valid_o     ( fdbs0_read_valid       ),
    .fdbs0_read_data_i      ( fdbs0_read_data        ),
    .fdbs0_read_err_i       ( fdbs0_read_err         ),
    .fdbs0_ready_i          ( fdbs0_ready            ),
    .smutex0_read_valid_o   ( smutex0_read_valid     ),
    .smutex0_read_data_i    ( smutex0_read_data      ),
    .smutex0_read_err_i     ( smutex0_read_err       ),
    .smutex0_ready_i        ( smutex0_ready          ),
    .mutex0_read_valid_o    ( mutex0_read_valid      ),
    .mutex0_read_data_i     ( mutex0_read_data       ),
    .mutex0_read_err_i      ( mutex0_read_err        ),
    .mutex0_ready_i         ( mutex0_ready           ),
    .web0_read_valid_o      ( web0_read_valid        ),
    .web0_read_data_i       ( web0_read_data         ),
    .web0_read_err_i        ( web0_read_err          ),
    .web0_ready_i           ( web0_ready             ),
    .web1_read_valid_o      ( web1_read_valid        ),
    .web1_read_data_i       ( web1_read_data         ),
    .web1_read_err_i        ( web1_read_err          ),
    .web1_ready_i           ( web1_ready             ),
    .read_addr_o            ( read_addr              ),
    .read_info_o            ( read_info              ) );

////////////////////////////////////////////////////////////////////////
// Configuration register module - sfdbs0
regmodel0_regmodel_core_sfdbs0_csr i_regmodel0_regmodel_core_sfdbs0_csr(
    .reg_clk                            ( clk_i                              ),
    .non_retention_reset_ni             ( non_retention_reset_ni             ),
    .test_mode_cgm_i                    ( test_mode_cgm_i                    ),
    .write_valid_i                      ( sfdbs0_write_valid                 ),
    .write_addr_i                       ( write_addr[8:0]                    ),
    .write_data_i                       ( write_data                         ),
    .write_strb_i                       ( write_strb                         ),
    .write_info_i                       ( write_info                         ),
    .write_err_o                        ( sfdbs0_write_err                   ),
    .read_addr_i                        ( read_addr[8:0]                     ),
    .read_valid_i                       ( sfdbs0_read_valid                  ),
    .read_data_o                        ( sfdbs0_read_data                   ),
    .read_info_i                        ( read_info                          ),
    .read_err_o                         ( sfdbs0_read_err                    ),
    .ready_o                            ( sfdbs0_ready                       ),
    .sfdbs0_sfdb0_src0_id_q             ( sfdbs0_sfdb0_src0_id_q             ),
    .sfdbs0_sfdb0_src0_size_q           ( sfdbs0_sfdb0_src0_size_q           ),
    .sfdbs0_sfdb0_src1_id_q             ( sfdbs0_sfdb0_src1_id_q             ),
    .sfdbs0_sfdb0_src1_size_q           ( sfdbs0_sfdb0_src1_size_q           ),
    .sfdbs0_sfdb0_src2_id_q             ( sfdbs0_sfdb0_src2_id_q             ),
    .sfdbs0_sfdb0_src2_size_q           ( sfdbs0_sfdb0_src2_size_q           ),
    .sfdbs0_sfdb0_src3_id_q             ( sfdbs0_sfdb0_src3_id_q             ),
    .sfdbs0_sfdb0_src3_size_q           ( sfdbs0_sfdb0_src3_size_q           ),
    .sfdbs0_sfdb0_src4_id_q             ( sfdbs0_sfdb0_src4_id_q             ),
    .sfdbs0_sfdb0_src4_size_q           ( sfdbs0_sfdb0_src4_size_q           ),
    .sfdbs0_sfdb0_src5_id_q             ( sfdbs0_sfdb0_src5_id_q             ),
    .sfdbs0_sfdb0_src5_size_q           ( sfdbs0_sfdb0_src5_size_q           ),
    .sfdbs0_sfdb0_src6_id_q             ( sfdbs0_sfdb0_src6_id_q             ),
    .sfdbs0_sfdb0_src6_size_q           ( sfdbs0_sfdb0_src6_size_q           ),
    .sfdbs0_sfdb0_src7_id_q             ( sfdbs0_sfdb0_src7_id_q             ),
    .sfdbs0_sfdb0_src7_size_q           ( sfdbs0_sfdb0_src7_size_q           ),
    .sfdbs0_sfdb0_src8_id_q             ( sfdbs0_sfdb0_src8_id_q             ),
    .sfdbs0_sfdb0_src8_size_q           ( sfdbs0_sfdb0_src8_size_q           ),
    .sfdbs0_sfdb0_src9_id_q             ( sfdbs0_sfdb0_src9_id_q             ),
    .sfdbs0_sfdb0_src9_size_q           ( sfdbs0_sfdb0_src9_size_q           ),
    .sfdbs0_sfdb0_src10_id_q            ( sfdbs0_sfdb0_src10_id_q            ),
    .sfdbs0_sfdb0_src10_size_q          ( sfdbs0_sfdb0_src10_size_q          ),
    .sfdbs0_sfdb0_src11_id_q            ( sfdbs0_sfdb0_src11_id_q            ),
    .sfdbs0_sfdb0_src11_size_q          ( sfdbs0_sfdb0_src11_size_q          ),
    .sfdbs0_sfdb0_src12_id_q            ( sfdbs0_sfdb0_src12_id_q            ),
    .sfdbs0_sfdb0_src12_size_q          ( sfdbs0_sfdb0_src12_size_q          ),
    .sfdbs0_sfdb0_src13_id_q            ( sfdbs0_sfdb0_src13_id_q            ),
    .sfdbs0_sfdb0_src13_size_q          ( sfdbs0_sfdb0_src13_size_q          ),
    .sfdbs0_sfdb0_src14_id_q            ( sfdbs0_sfdb0_src14_id_q            ),
    .sfdbs0_sfdb0_src14_size_q          ( sfdbs0_sfdb0_src14_size_q          ),
    .sfdbs0_sfdb0_src15_id_q            ( sfdbs0_sfdb0_src15_id_q            ),
    .sfdbs0_sfdb0_src15_size_q          ( sfdbs0_sfdb0_src15_size_q          ),
    .sfdbs0_sfdb0_tgt_id_q              ( sfdbs0_sfdb0_tgt_id_q              ),
    .sfdbs0_ipc_sc_id_q                 ( sfdbs0_ipc_sc_id_q                 ),
    .sfdbs0_error_err_log_code_q        ( sfdbs0_error_err_log_code_q        ),
    .sfdbs0_error_err_log_code_d        ( sfdbs0_error_err_log_code_d        ),
    .sfdbs0_error_err_log_code_enb      ( sfdbs0_error_err_log_code_enb      ),
    .sfdbs0_error_err_log_access_q      ( sfdbs0_error_err_log_access_q      ),
    .sfdbs0_error_err_log_access_d      ( sfdbs0_error_err_log_access_d      ),
    .sfdbs0_error_err_log_access_enb    ( sfdbs0_error_err_log_access_enb    ),
    .sfdbs0_error_err_log_id_q          ( sfdbs0_error_err_log_id_q          ),
    .sfdbs0_error_err_log_id_d          ( sfdbs0_error_err_log_id_d          ),
    .sfdbs0_error_err_log_id_enb        ( sfdbs0_error_err_log_id_enb        ),
    .sfdbs0_error_err_log_multi_q       ( sfdbs0_error_err_log_multi_q       ),
    .sfdbs0_error_err_log_multi_d       ( sfdbs0_error_err_log_multi_d       ),
    .sfdbs0_error_err_log_multi_enb     ( sfdbs0_error_err_log_multi_enb     ),
    .sfdbs0_error_err_data_data_q       ( sfdbs0_error_err_data_data_q       ),
    .sfdbs0_error_err_data_data_d       ( sfdbs0_error_err_data_data_d       ),
    .sfdbs0_error_err_data_data_enb     ( sfdbs0_error_err_data_data_enb     ),
    .sfdbs0_error_err_idx_slice_idx_q   ( sfdbs0_error_err_idx_slice_idx_q   ),
    .sfdbs0_error_err_idx_slice_idx_d   ( sfdbs0_error_err_idx_slice_idx_d   ),
    .sfdbs0_error_err_idx_slice_idx_enb ( sfdbs0_error_err_idx_slice_idx_enb ),
    .sfdbs0_error_err_idx_group_idx_q   ( sfdbs0_error_err_idx_group_idx_q   ),
    .sfdbs0_error_err_idx_group_idx_d   ( sfdbs0_error_err_idx_group_idx_d   ),
    .sfdbs0_error_err_idx_group_idx_enb ( sfdbs0_error_err_idx_group_idx_enb ),
    .sfdbs0_sfdb1_src0_id_q             ( sfdbs0_sfdb1_src0_id_q             ),
    .sfdbs0_sfdb1_src0_size_q           ( sfdbs0_sfdb1_src0_size_q           ),
    .sfdbs0_sfdb1_src1_id_q             ( sfdbs0_sfdb1_src1_id_q             ),
    .sfdbs0_sfdb1_src1_size_q           ( sfdbs0_sfdb1_src1_size_q           ),
    .sfdbs0_sfdb1_src2_id_q             ( sfdbs0_sfdb1_src2_id_q             ),
    .sfdbs0_sfdb1_src2_size_q           ( sfdbs0_sfdb1_src2_size_q           ),
    .sfdbs0_sfdb1_src3_id_q             ( sfdbs0_sfdb1_src3_id_q             ),
    .sfdbs0_sfdb1_src3_size_q           ( sfdbs0_sfdb1_src3_size_q           ),
    .sfdbs0_sfdb1_src4_id_q             ( sfdbs0_sfdb1_src4_id_q             ),
    .sfdbs0_sfdb1_src4_size_q           ( sfdbs0_sfdb1_src4_size_q           ),
    .sfdbs0_sfdb1_src5_id_q             ( sfdbs0_sfdb1_src5_id_q             ),
    .sfdbs0_sfdb1_src5_size_q           ( sfdbs0_sfdb1_src5_size_q           ),
    .sfdbs0_sfdb1_src6_id_q             ( sfdbs0_sfdb1_src6_id_q             ),
    .sfdbs0_sfdb1_src6_size_q           ( sfdbs0_sfdb1_src6_size_q           ),
    .sfdbs0_sfdb1_src7_id_q             ( sfdbs0_sfdb1_src7_id_q             ),
    .sfdbs0_sfdb1_src7_size_q           ( sfdbs0_sfdb1_src7_size_q           ),
    .sfdbs0_sfdb1_src8_id_q             ( sfdbs0_sfdb1_src8_id_q             ),
    .sfdbs0_sfdb1_src8_size_q           ( sfdbs0_sfdb1_src8_size_q           ),
    .sfdbs0_sfdb1_src9_id_q             ( sfdbs0_sfdb1_src9_id_q             ),
    .sfdbs0_sfdb1_src9_size_q           ( sfdbs0_sfdb1_src9_size_q           ),
    .sfdbs0_sfdb1_src10_id_q            ( sfdbs0_sfdb1_src10_id_q            ),
    .sfdbs0_sfdb1_src10_size_q          ( sfdbs0_sfdb1_src10_size_q          ),
    .sfdbs0_sfdb1_src11_id_q            ( sfdbs0_sfdb1_src11_id_q            ),
    .sfdbs0_sfdb1_src11_size_q          ( sfdbs0_sfdb1_src11_size_q          ),
    .sfdbs0_sfdb1_src12_id_q            ( sfdbs0_sfdb1_src12_id_q            ),
    .sfdbs0_sfdb1_src12_size_q          ( sfdbs0_sfdb1_src12_size_q          ),
    .sfdbs0_sfdb1_src13_id_q            ( sfdbs0_sfdb1_src13_id_q            ),
    .sfdbs0_sfdb1_src13_size_q          ( sfdbs0_sfdb1_src13_size_q          ),
    .sfdbs0_sfdb1_src14_id_q            ( sfdbs0_sfdb1_src14_id_q            ),
    .sfdbs0_sfdb1_src14_size_q          ( sfdbs0_sfdb1_src14_size_q          ),
    .sfdbs0_sfdb1_src15_id_q            ( sfdbs0_sfdb1_src15_id_q            ),
    .sfdbs0_sfdb1_src15_size_q          ( sfdbs0_sfdb1_src15_size_q          ),
    .sfdbs0_sfdb1_tgt_id_q              ( sfdbs0_sfdb1_tgt_id_q              ) );

////////////////////////////////////////////////////////////////////////
// Configuration register module - fdbs0
regmodel0_regmodel_core_fdbs0_csr i_regmodel0_regmodel_core_fdbs0_csr(
    .reg_clk                            ( clk_i                              ),
    .non_retention_reset_ni             ( non_retention_reset_ni             ),
    .test_mode_cgm_i                    ( test_mode_cgm_i                    ),
    .write_valid_i                      ( fdbs0_write_valid                  ),
    .write_addr_i                       ( write_addr[9:0]                    ),
    .write_data_i                       ( write_data                         ),
    .write_strb_i                       ( write_strb                         ),
    .write_info_i                       ( write_info                         ),
    .write_err_o                        ( fdbs0_write_err                    ),
    .read_addr_i                        ( read_addr[9:0]                     ),
    .read_valid_i                       ( fdbs0_read_valid                   ),
    .read_data_o                        ( fdbs0_read_data                    ),
    .read_info_i                        ( read_info                          ),
    .read_err_o                         ( fdbs0_read_err                     ),
    .ready_o                            ( fdbs0_ready                        ),
    .fdbs0_reqinfo                      ( fdbs0_reqinfo                      ),
    .fdbs0_fdb0_bell0_cnt_qout          ( fdbs0_fdb0_bell0_cnt_qout          ),
    .fdbs0_fdb0_bell0_cnt_din           ( fdbs0_fdb0_bell0_cnt_din           ),
    .fdbs0_fdb0_bell0_cnt_w             ( fdbs0_fdb0_bell0_cnt_w             ),
    .fdbs0_fdb0_bell0_cnt_r             ( fdbs0_fdb0_bell0_cnt_r             ),
    .fdbs0_fdb0_bell0_failed_ring_q     ( fdbs0_fdb0_bell0_failed_ring_q     ),
    .fdbs0_fdb0_bell0_failed_ring_d     ( fdbs0_fdb0_bell0_failed_ring_d     ),
    .fdbs0_fdb0_bell0_failed_ring_enb   ( fdbs0_fdb0_bell0_failed_ring_enb   ),
    .fdbs0_fdb0_bell0_max_priority_q    ( fdbs0_fdb0_bell0_max_priority_q    ),
    .fdbs0_fdb0_bell0_max_priority_d    ( fdbs0_fdb0_bell0_max_priority_d    ),
    .fdbs0_fdb0_bell0_max_priority_enb  ( fdbs0_fdb0_bell0_max_priority_enb  ),
    .fdbs0_fdb0_bell0_valid_fcnt_q      ( fdbs0_fdb0_bell0_valid_fcnt_q      ),
    .fdbs0_fdb0_bell0_valid_fcnt_d      ( fdbs0_fdb0_bell0_valid_fcnt_d      ),
    .fdbs0_fdb0_bell0_valid_fcnt_enb    ( fdbs0_fdb0_bell0_valid_fcnt_enb    ),
    .fdbs0_fdb0_bell0_fcnt_q            ( fdbs0_fdb0_bell0_fcnt_q            ),
    .fdbs0_fdb0_bell0_fcnt_d            ( fdbs0_fdb0_bell0_fcnt_d            ),
    .fdbs0_fdb0_bell0_fcnt_enb          ( fdbs0_fdb0_bell0_fcnt_enb          ),
    .fdbs0_fdb0_bell1_cnt_qout          ( fdbs0_fdb0_bell1_cnt_qout          ),
    .fdbs0_fdb0_bell1_cnt_din           ( fdbs0_fdb0_bell1_cnt_din           ),
    .fdbs0_fdb0_bell1_cnt_w             ( fdbs0_fdb0_bell1_cnt_w             ),
    .fdbs0_fdb0_bell1_cnt_r             ( fdbs0_fdb0_bell1_cnt_r             ),
    .fdbs0_fdb0_bell1_failed_ring_q     ( fdbs0_fdb0_bell1_failed_ring_q     ),
    .fdbs0_fdb0_bell1_failed_ring_d     ( fdbs0_fdb0_bell1_failed_ring_d     ),
    .fdbs0_fdb0_bell1_failed_ring_enb   ( fdbs0_fdb0_bell1_failed_ring_enb   ),
    .fdbs0_fdb0_bell1_max_priority_q    ( fdbs0_fdb0_bell1_max_priority_q    ),
    .fdbs0_fdb0_bell1_max_priority_d    ( fdbs0_fdb0_bell1_max_priority_d    ),
    .fdbs0_fdb0_bell1_max_priority_enb  ( fdbs0_fdb0_bell1_max_priority_enb  ),
    .fdbs0_fdb0_bell1_valid_fcnt_q      ( fdbs0_fdb0_bell1_valid_fcnt_q      ),
    .fdbs0_fdb0_bell1_valid_fcnt_d      ( fdbs0_fdb0_bell1_valid_fcnt_d      ),
    .fdbs0_fdb0_bell1_valid_fcnt_enb    ( fdbs0_fdb0_bell1_valid_fcnt_enb    ),
    .fdbs0_fdb0_bell1_fcnt_q            ( fdbs0_fdb0_bell1_fcnt_q            ),
    .fdbs0_fdb0_bell1_fcnt_d            ( fdbs0_fdb0_bell1_fcnt_d            ),
    .fdbs0_fdb0_bell1_fcnt_enb          ( fdbs0_fdb0_bell1_fcnt_enb          ),
    .fdbs0_fdb0_bell2_cnt_qout          ( fdbs0_fdb0_bell2_cnt_qout          ),
    .fdbs0_fdb0_bell2_cnt_din           ( fdbs0_fdb0_bell2_cnt_din           ),
    .fdbs0_fdb0_bell2_cnt_w             ( fdbs0_fdb0_bell2_cnt_w             ),
    .fdbs0_fdb0_bell2_cnt_r             ( fdbs0_fdb0_bell2_cnt_r             ),
    .fdbs0_fdb0_bell2_failed_ring_q     ( fdbs0_fdb0_bell2_failed_ring_q     ),
    .fdbs0_fdb0_bell2_failed_ring_d     ( fdbs0_fdb0_bell2_failed_ring_d     ),
    .fdbs0_fdb0_bell2_failed_ring_enb   ( fdbs0_fdb0_bell2_failed_ring_enb   ),
    .fdbs0_fdb0_bell2_max_priority_q    ( fdbs0_fdb0_bell2_max_priority_q    ),
    .fdbs0_fdb0_bell2_max_priority_d    ( fdbs0_fdb0_bell2_max_priority_d    ),
    .fdbs0_fdb0_bell2_max_priority_enb  ( fdbs0_fdb0_bell2_max_priority_enb  ),
    .fdbs0_fdb0_bell2_valid_fcnt_q      ( fdbs0_fdb0_bell2_valid_fcnt_q      ),
    .fdbs0_fdb0_bell2_valid_fcnt_d      ( fdbs0_fdb0_bell2_valid_fcnt_d      ),
    .fdbs0_fdb0_bell2_valid_fcnt_enb    ( fdbs0_fdb0_bell2_valid_fcnt_enb    ),
    .fdbs0_fdb0_bell2_fcnt_q            ( fdbs0_fdb0_bell2_fcnt_q            ),
    .fdbs0_fdb0_bell2_fcnt_d            ( fdbs0_fdb0_bell2_fcnt_d            ),
    .fdbs0_fdb0_bell2_fcnt_enb          ( fdbs0_fdb0_bell2_fcnt_enb          ),
    .fdbs0_fdb0_bell3_cnt_qout          ( fdbs0_fdb0_bell3_cnt_qout          ),
    .fdbs0_fdb0_bell3_cnt_din           ( fdbs0_fdb0_bell3_cnt_din           ),
    .fdbs0_fdb0_bell3_cnt_w             ( fdbs0_fdb0_bell3_cnt_w             ),
    .fdbs0_fdb0_bell3_cnt_r             ( fdbs0_fdb0_bell3_cnt_r             ),
    .fdbs0_fdb0_bell3_failed_ring_q     ( fdbs0_fdb0_bell3_failed_ring_q     ),
    .fdbs0_fdb0_bell3_failed_ring_d     ( fdbs0_fdb0_bell3_failed_ring_d     ),
    .fdbs0_fdb0_bell3_failed_ring_enb   ( fdbs0_fdb0_bell3_failed_ring_enb   ),
    .fdbs0_fdb0_bell3_max_priority_q    ( fdbs0_fdb0_bell3_max_priority_q    ),
    .fdbs0_fdb0_bell3_max_priority_d    ( fdbs0_fdb0_bell3_max_priority_d    ),
    .fdbs0_fdb0_bell3_max_priority_enb  ( fdbs0_fdb0_bell3_max_priority_enb  ),
    .fdbs0_fdb0_bell3_valid_fcnt_q      ( fdbs0_fdb0_bell3_valid_fcnt_q      ),
    .fdbs0_fdb0_bell3_valid_fcnt_d      ( fdbs0_fdb0_bell3_valid_fcnt_d      ),
    .fdbs0_fdb0_bell3_valid_fcnt_enb    ( fdbs0_fdb0_bell3_valid_fcnt_enb    ),
    .fdbs0_fdb0_bell3_fcnt_q            ( fdbs0_fdb0_bell3_fcnt_q            ),
    .fdbs0_fdb0_bell3_fcnt_d            ( fdbs0_fdb0_bell3_fcnt_d            ),
    .fdbs0_fdb0_bell3_fcnt_enb          ( fdbs0_fdb0_bell3_fcnt_enb          ),
    .fdbs0_fdb0_bell4_cnt_qout          ( fdbs0_fdb0_bell4_cnt_qout          ),
    .fdbs0_fdb0_bell4_cnt_din           ( fdbs0_fdb0_bell4_cnt_din           ),
    .fdbs0_fdb0_bell4_cnt_w             ( fdbs0_fdb0_bell4_cnt_w             ),
    .fdbs0_fdb0_bell4_cnt_r             ( fdbs0_fdb0_bell4_cnt_r             ),
    .fdbs0_fdb0_bell4_failed_ring_q     ( fdbs0_fdb0_bell4_failed_ring_q     ),
    .fdbs0_fdb0_bell4_failed_ring_d     ( fdbs0_fdb0_bell4_failed_ring_d     ),
    .fdbs0_fdb0_bell4_failed_ring_enb   ( fdbs0_fdb0_bell4_failed_ring_enb   ),
    .fdbs0_fdb0_bell4_max_priority_q    ( fdbs0_fdb0_bell4_max_priority_q    ),
    .fdbs0_fdb0_bell4_max_priority_d    ( fdbs0_fdb0_bell4_max_priority_d    ),
    .fdbs0_fdb0_bell4_max_priority_enb  ( fdbs0_fdb0_bell4_max_priority_enb  ),
    .fdbs0_fdb0_bell4_valid_fcnt_q      ( fdbs0_fdb0_bell4_valid_fcnt_q      ),
    .fdbs0_fdb0_bell4_valid_fcnt_d      ( fdbs0_fdb0_bell4_valid_fcnt_d      ),
    .fdbs0_fdb0_bell4_valid_fcnt_enb    ( fdbs0_fdb0_bell4_valid_fcnt_enb    ),
    .fdbs0_fdb0_bell4_fcnt_q            ( fdbs0_fdb0_bell4_fcnt_q            ),
    .fdbs0_fdb0_bell4_fcnt_d            ( fdbs0_fdb0_bell4_fcnt_d            ),
    .fdbs0_fdb0_bell4_fcnt_enb          ( fdbs0_fdb0_bell4_fcnt_enb          ),
    .fdbs0_fdb0_bell5_cnt_qout          ( fdbs0_fdb0_bell5_cnt_qout          ),
    .fdbs0_fdb0_bell5_cnt_din           ( fdbs0_fdb0_bell5_cnt_din           ),
    .fdbs0_fdb0_bell5_cnt_w             ( fdbs0_fdb0_bell5_cnt_w             ),
    .fdbs0_fdb0_bell5_cnt_r             ( fdbs0_fdb0_bell5_cnt_r             ),
    .fdbs0_fdb0_bell5_failed_ring_q     ( fdbs0_fdb0_bell5_failed_ring_q     ),
    .fdbs0_fdb0_bell5_failed_ring_d     ( fdbs0_fdb0_bell5_failed_ring_d     ),
    .fdbs0_fdb0_bell5_failed_ring_enb   ( fdbs0_fdb0_bell5_failed_ring_enb   ),
    .fdbs0_fdb0_bell5_max_priority_q    ( fdbs0_fdb0_bell5_max_priority_q    ),
    .fdbs0_fdb0_bell5_max_priority_d    ( fdbs0_fdb0_bell5_max_priority_d    ),
    .fdbs0_fdb0_bell5_max_priority_enb  ( fdbs0_fdb0_bell5_max_priority_enb  ),
    .fdbs0_fdb0_bell5_valid_fcnt_q      ( fdbs0_fdb0_bell5_valid_fcnt_q      ),
    .fdbs0_fdb0_bell5_valid_fcnt_d      ( fdbs0_fdb0_bell5_valid_fcnt_d      ),
    .fdbs0_fdb0_bell5_valid_fcnt_enb    ( fdbs0_fdb0_bell5_valid_fcnt_enb    ),
    .fdbs0_fdb0_bell5_fcnt_q            ( fdbs0_fdb0_bell5_fcnt_q            ),
    .fdbs0_fdb0_bell5_fcnt_d            ( fdbs0_fdb0_bell5_fcnt_d            ),
    .fdbs0_fdb0_bell5_fcnt_enb          ( fdbs0_fdb0_bell5_fcnt_enb          ),
    .fdbs0_fdb0_bell6_cnt_qout          ( fdbs0_fdb0_bell6_cnt_qout          ),
    .fdbs0_fdb0_bell6_cnt_din           ( fdbs0_fdb0_bell6_cnt_din           ),
    .fdbs0_fdb0_bell6_cnt_w             ( fdbs0_fdb0_bell6_cnt_w             ),
    .fdbs0_fdb0_bell6_cnt_r             ( fdbs0_fdb0_bell6_cnt_r             ),
    .fdbs0_fdb0_bell6_failed_ring_q     ( fdbs0_fdb0_bell6_failed_ring_q     ),
    .fdbs0_fdb0_bell6_failed_ring_d     ( fdbs0_fdb0_bell6_failed_ring_d     ),
    .fdbs0_fdb0_bell6_failed_ring_enb   ( fdbs0_fdb0_bell6_failed_ring_enb   ),
    .fdbs0_fdb0_bell6_max_priority_q    ( fdbs0_fdb0_bell6_max_priority_q    ),
    .fdbs0_fdb0_bell6_max_priority_d    ( fdbs0_fdb0_bell6_max_priority_d    ),
    .fdbs0_fdb0_bell6_max_priority_enb  ( fdbs0_fdb0_bell6_max_priority_enb  ),
    .fdbs0_fdb0_bell6_valid_fcnt_q      ( fdbs0_fdb0_bell6_valid_fcnt_q      ),
    .fdbs0_fdb0_bell6_valid_fcnt_d      ( fdbs0_fdb0_bell6_valid_fcnt_d      ),
    .fdbs0_fdb0_bell6_valid_fcnt_enb    ( fdbs0_fdb0_bell6_valid_fcnt_enb    ),
    .fdbs0_fdb0_bell6_fcnt_q            ( fdbs0_fdb0_bell6_fcnt_q            ),
    .fdbs0_fdb0_bell6_fcnt_d            ( fdbs0_fdb0_bell6_fcnt_d            ),
    .fdbs0_fdb0_bell6_fcnt_enb          ( fdbs0_fdb0_bell6_fcnt_enb          ),
    .fdbs0_fdb0_bell7_cnt_qout          ( fdbs0_fdb0_bell7_cnt_qout          ),
    .fdbs0_fdb0_bell7_cnt_din           ( fdbs0_fdb0_bell7_cnt_din           ),
    .fdbs0_fdb0_bell7_cnt_w             ( fdbs0_fdb0_bell7_cnt_w             ),
    .fdbs0_fdb0_bell7_cnt_r             ( fdbs0_fdb0_bell7_cnt_r             ),
    .fdbs0_fdb0_bell7_failed_ring_q     ( fdbs0_fdb0_bell7_failed_ring_q     ),
    .fdbs0_fdb0_bell7_failed_ring_d     ( fdbs0_fdb0_bell7_failed_ring_d     ),
    .fdbs0_fdb0_bell7_failed_ring_enb   ( fdbs0_fdb0_bell7_failed_ring_enb   ),
    .fdbs0_fdb0_bell7_max_priority_q    ( fdbs0_fdb0_bell7_max_priority_q    ),
    .fdbs0_fdb0_bell7_max_priority_d    ( fdbs0_fdb0_bell7_max_priority_d    ),
    .fdbs0_fdb0_bell7_max_priority_enb  ( fdbs0_fdb0_bell7_max_priority_enb  ),
    .fdbs0_fdb0_bell7_valid_fcnt_q      ( fdbs0_fdb0_bell7_valid_fcnt_q      ),
    .fdbs0_fdb0_bell7_valid_fcnt_d      ( fdbs0_fdb0_bell7_valid_fcnt_d      ),
    .fdbs0_fdb0_bell7_valid_fcnt_enb    ( fdbs0_fdb0_bell7_valid_fcnt_enb    ),
    .fdbs0_fdb0_bell7_fcnt_q            ( fdbs0_fdb0_bell7_fcnt_q            ),
    .fdbs0_fdb0_bell7_fcnt_d            ( fdbs0_fdb0_bell7_fcnt_d            ),
    .fdbs0_fdb0_bell7_fcnt_enb          ( fdbs0_fdb0_bell7_fcnt_enb          ),
    .fdbs0_fdb0_bell8_cnt_qout          ( fdbs0_fdb0_bell8_cnt_qout          ),
    .fdbs0_fdb0_bell8_cnt_din           ( fdbs0_fdb0_bell8_cnt_din           ),
    .fdbs0_fdb0_bell8_cnt_w             ( fdbs0_fdb0_bell8_cnt_w             ),
    .fdbs0_fdb0_bell8_cnt_r             ( fdbs0_fdb0_bell8_cnt_r             ),
    .fdbs0_fdb0_bell8_failed_ring_q     ( fdbs0_fdb0_bell8_failed_ring_q     ),
    .fdbs0_fdb0_bell8_failed_ring_d     ( fdbs0_fdb0_bell8_failed_ring_d     ),
    .fdbs0_fdb0_bell8_failed_ring_enb   ( fdbs0_fdb0_bell8_failed_ring_enb   ),
    .fdbs0_fdb0_bell8_max_priority_q    ( fdbs0_fdb0_bell8_max_priority_q    ),
    .fdbs0_fdb0_bell8_max_priority_d    ( fdbs0_fdb0_bell8_max_priority_d    ),
    .fdbs0_fdb0_bell8_max_priority_enb  ( fdbs0_fdb0_bell8_max_priority_enb  ),
    .fdbs0_fdb0_bell8_valid_fcnt_q      ( fdbs0_fdb0_bell8_valid_fcnt_q      ),
    .fdbs0_fdb0_bell8_valid_fcnt_d      ( fdbs0_fdb0_bell8_valid_fcnt_d      ),
    .fdbs0_fdb0_bell8_valid_fcnt_enb    ( fdbs0_fdb0_bell8_valid_fcnt_enb    ),
    .fdbs0_fdb0_bell8_fcnt_q            ( fdbs0_fdb0_bell8_fcnt_q            ),
    .fdbs0_fdb0_bell8_fcnt_d            ( fdbs0_fdb0_bell8_fcnt_d            ),
    .fdbs0_fdb0_bell8_fcnt_enb          ( fdbs0_fdb0_bell8_fcnt_enb          ),
    .fdbs0_fdb0_bell9_cnt_qout          ( fdbs0_fdb0_bell9_cnt_qout          ),
    .fdbs0_fdb0_bell9_cnt_din           ( fdbs0_fdb0_bell9_cnt_din           ),
    .fdbs0_fdb0_bell9_cnt_w             ( fdbs0_fdb0_bell9_cnt_w             ),
    .fdbs0_fdb0_bell9_cnt_r             ( fdbs0_fdb0_bell9_cnt_r             ),
    .fdbs0_fdb0_bell9_failed_ring_q     ( fdbs0_fdb0_bell9_failed_ring_q     ),
    .fdbs0_fdb0_bell9_failed_ring_d     ( fdbs0_fdb0_bell9_failed_ring_d     ),
    .fdbs0_fdb0_bell9_failed_ring_enb   ( fdbs0_fdb0_bell9_failed_ring_enb   ),
    .fdbs0_fdb0_bell9_max_priority_q    ( fdbs0_fdb0_bell9_max_priority_q    ),
    .fdbs0_fdb0_bell9_max_priority_d    ( fdbs0_fdb0_bell9_max_priority_d    ),
    .fdbs0_fdb0_bell9_max_priority_enb  ( fdbs0_fdb0_bell9_max_priority_enb  ),
    .fdbs0_fdb0_bell9_valid_fcnt_q      ( fdbs0_fdb0_bell9_valid_fcnt_q      ),
    .fdbs0_fdb0_bell9_valid_fcnt_d      ( fdbs0_fdb0_bell9_valid_fcnt_d      ),
    .fdbs0_fdb0_bell9_valid_fcnt_enb    ( fdbs0_fdb0_bell9_valid_fcnt_enb    ),
    .fdbs0_fdb0_bell9_fcnt_q            ( fdbs0_fdb0_bell9_fcnt_q            ),
    .fdbs0_fdb0_bell9_fcnt_d            ( fdbs0_fdb0_bell9_fcnt_d            ),
    .fdbs0_fdb0_bell9_fcnt_enb          ( fdbs0_fdb0_bell9_fcnt_enb          ),
    .fdbs0_fdb0_bell10_cnt_qout         ( fdbs0_fdb0_bell10_cnt_qout         ),
    .fdbs0_fdb0_bell10_cnt_din          ( fdbs0_fdb0_bell10_cnt_din          ),
    .fdbs0_fdb0_bell10_cnt_w            ( fdbs0_fdb0_bell10_cnt_w            ),
    .fdbs0_fdb0_bell10_cnt_r            ( fdbs0_fdb0_bell10_cnt_r            ),
    .fdbs0_fdb0_bell10_failed_ring_q    ( fdbs0_fdb0_bell10_failed_ring_q    ),
    .fdbs0_fdb0_bell10_failed_ring_d    ( fdbs0_fdb0_bell10_failed_ring_d    ),
    .fdbs0_fdb0_bell10_failed_ring_enb  ( fdbs0_fdb0_bell10_failed_ring_enb  ),
    .fdbs0_fdb0_bell10_max_priority_q   ( fdbs0_fdb0_bell10_max_priority_q   ),
    .fdbs0_fdb0_bell10_max_priority_d   ( fdbs0_fdb0_bell10_max_priority_d   ),
    .fdbs0_fdb0_bell10_max_priority_enb ( fdbs0_fdb0_bell10_max_priority_enb ),
    .fdbs0_fdb0_bell10_valid_fcnt_q     ( fdbs0_fdb0_bell10_valid_fcnt_q     ),
    .fdbs0_fdb0_bell10_valid_fcnt_d     ( fdbs0_fdb0_bell10_valid_fcnt_d     ),
    .fdbs0_fdb0_bell10_valid_fcnt_enb   ( fdbs0_fdb0_bell10_valid_fcnt_enb   ),
    .fdbs0_fdb0_bell10_fcnt_q           ( fdbs0_fdb0_bell10_fcnt_q           ),
    .fdbs0_fdb0_bell10_fcnt_d           ( fdbs0_fdb0_bell10_fcnt_d           ),
    .fdbs0_fdb0_bell10_fcnt_enb         ( fdbs0_fdb0_bell10_fcnt_enb         ),
    .fdbs0_fdb0_bell11_cnt_qout         ( fdbs0_fdb0_bell11_cnt_qout         ),
    .fdbs0_fdb0_bell11_cnt_din          ( fdbs0_fdb0_bell11_cnt_din          ),
    .fdbs0_fdb0_bell11_cnt_w            ( fdbs0_fdb0_bell11_cnt_w            ),
    .fdbs0_fdb0_bell11_cnt_r            ( fdbs0_fdb0_bell11_cnt_r            ),
    .fdbs0_fdb0_bell11_failed_ring_q    ( fdbs0_fdb0_bell11_failed_ring_q    ),
    .fdbs0_fdb0_bell11_failed_ring_d    ( fdbs0_fdb0_bell11_failed_ring_d    ),
    .fdbs0_fdb0_bell11_failed_ring_enb  ( fdbs0_fdb0_bell11_failed_ring_enb  ),
    .fdbs0_fdb0_bell11_max_priority_q   ( fdbs0_fdb0_bell11_max_priority_q   ),
    .fdbs0_fdb0_bell11_max_priority_d   ( fdbs0_fdb0_bell11_max_priority_d   ),
    .fdbs0_fdb0_bell11_max_priority_enb ( fdbs0_fdb0_bell11_max_priority_enb ),
    .fdbs0_fdb0_bell11_valid_fcnt_q     ( fdbs0_fdb0_bell11_valid_fcnt_q     ),
    .fdbs0_fdb0_bell11_valid_fcnt_d     ( fdbs0_fdb0_bell11_valid_fcnt_d     ),
    .fdbs0_fdb0_bell11_valid_fcnt_enb   ( fdbs0_fdb0_bell11_valid_fcnt_enb   ),
    .fdbs0_fdb0_bell11_fcnt_q           ( fdbs0_fdb0_bell11_fcnt_q           ),
    .fdbs0_fdb0_bell11_fcnt_d           ( fdbs0_fdb0_bell11_fcnt_d           ),
    .fdbs0_fdb0_bell11_fcnt_enb         ( fdbs0_fdb0_bell11_fcnt_enb         ),
    .fdbs0_fdb0_bell12_cnt_qout         ( fdbs0_fdb0_bell12_cnt_qout         ),
    .fdbs0_fdb0_bell12_cnt_din          ( fdbs0_fdb0_bell12_cnt_din          ),
    .fdbs0_fdb0_bell12_cnt_w            ( fdbs0_fdb0_bell12_cnt_w            ),
    .fdbs0_fdb0_bell12_cnt_r            ( fdbs0_fdb0_bell12_cnt_r            ),
    .fdbs0_fdb0_bell12_failed_ring_q    ( fdbs0_fdb0_bell12_failed_ring_q    ),
    .fdbs0_fdb0_bell12_failed_ring_d    ( fdbs0_fdb0_bell12_failed_ring_d    ),
    .fdbs0_fdb0_bell12_failed_ring_enb  ( fdbs0_fdb0_bell12_failed_ring_enb  ),
    .fdbs0_fdb0_bell12_max_priority_q   ( fdbs0_fdb0_bell12_max_priority_q   ),
    .fdbs0_fdb0_bell12_max_priority_d   ( fdbs0_fdb0_bell12_max_priority_d   ),
    .fdbs0_fdb0_bell12_max_priority_enb ( fdbs0_fdb0_bell12_max_priority_enb ),
    .fdbs0_fdb0_bell12_valid_fcnt_q     ( fdbs0_fdb0_bell12_valid_fcnt_q     ),
    .fdbs0_fdb0_bell12_valid_fcnt_d     ( fdbs0_fdb0_bell12_valid_fcnt_d     ),
    .fdbs0_fdb0_bell12_valid_fcnt_enb   ( fdbs0_fdb0_bell12_valid_fcnt_enb   ),
    .fdbs0_fdb0_bell12_fcnt_q           ( fdbs0_fdb0_bell12_fcnt_q           ),
    .fdbs0_fdb0_bell12_fcnt_d           ( fdbs0_fdb0_bell12_fcnt_d           ),
    .fdbs0_fdb0_bell12_fcnt_enb         ( fdbs0_fdb0_bell12_fcnt_enb         ),
    .fdbs0_fdb0_bell13_cnt_qout         ( fdbs0_fdb0_bell13_cnt_qout         ),
    .fdbs0_fdb0_bell13_cnt_din          ( fdbs0_fdb0_bell13_cnt_din          ),
    .fdbs0_fdb0_bell13_cnt_w            ( fdbs0_fdb0_bell13_cnt_w            ),
    .fdbs0_fdb0_bell13_cnt_r            ( fdbs0_fdb0_bell13_cnt_r            ),
    .fdbs0_fdb0_bell13_failed_ring_q    ( fdbs0_fdb0_bell13_failed_ring_q    ),
    .fdbs0_fdb0_bell13_failed_ring_d    ( fdbs0_fdb0_bell13_failed_ring_d    ),
    .fdbs0_fdb0_bell13_failed_ring_enb  ( fdbs0_fdb0_bell13_failed_ring_enb  ),
    .fdbs0_fdb0_bell13_max_priority_q   ( fdbs0_fdb0_bell13_max_priority_q   ),
    .fdbs0_fdb0_bell13_max_priority_d   ( fdbs0_fdb0_bell13_max_priority_d   ),
    .fdbs0_fdb0_bell13_max_priority_enb ( fdbs0_fdb0_bell13_max_priority_enb ),
    .fdbs0_fdb0_bell13_valid_fcnt_q     ( fdbs0_fdb0_bell13_valid_fcnt_q     ),
    .fdbs0_fdb0_bell13_valid_fcnt_d     ( fdbs0_fdb0_bell13_valid_fcnt_d     ),
    .fdbs0_fdb0_bell13_valid_fcnt_enb   ( fdbs0_fdb0_bell13_valid_fcnt_enb   ),
    .fdbs0_fdb0_bell13_fcnt_q           ( fdbs0_fdb0_bell13_fcnt_q           ),
    .fdbs0_fdb0_bell13_fcnt_d           ( fdbs0_fdb0_bell13_fcnt_d           ),
    .fdbs0_fdb0_bell13_fcnt_enb         ( fdbs0_fdb0_bell13_fcnt_enb         ),
    .fdbs0_fdb0_bell14_cnt_qout         ( fdbs0_fdb0_bell14_cnt_qout         ),
    .fdbs0_fdb0_bell14_cnt_din          ( fdbs0_fdb0_bell14_cnt_din          ),
    .fdbs0_fdb0_bell14_cnt_w            ( fdbs0_fdb0_bell14_cnt_w            ),
    .fdbs0_fdb0_bell14_cnt_r            ( fdbs0_fdb0_bell14_cnt_r            ),
    .fdbs0_fdb0_bell14_failed_ring_q    ( fdbs0_fdb0_bell14_failed_ring_q    ),
    .fdbs0_fdb0_bell14_failed_ring_d    ( fdbs0_fdb0_bell14_failed_ring_d    ),
    .fdbs0_fdb0_bell14_failed_ring_enb  ( fdbs0_fdb0_bell14_failed_ring_enb  ),
    .fdbs0_fdb0_bell14_max_priority_q   ( fdbs0_fdb0_bell14_max_priority_q   ),
    .fdbs0_fdb0_bell14_max_priority_d   ( fdbs0_fdb0_bell14_max_priority_d   ),
    .fdbs0_fdb0_bell14_max_priority_enb ( fdbs0_fdb0_bell14_max_priority_enb ),
    .fdbs0_fdb0_bell14_valid_fcnt_q     ( fdbs0_fdb0_bell14_valid_fcnt_q     ),
    .fdbs0_fdb0_bell14_valid_fcnt_d     ( fdbs0_fdb0_bell14_valid_fcnt_d     ),
    .fdbs0_fdb0_bell14_valid_fcnt_enb   ( fdbs0_fdb0_bell14_valid_fcnt_enb   ),
    .fdbs0_fdb0_bell14_fcnt_q           ( fdbs0_fdb0_bell14_fcnt_q           ),
    .fdbs0_fdb0_bell14_fcnt_d           ( fdbs0_fdb0_bell14_fcnt_d           ),
    .fdbs0_fdb0_bell14_fcnt_enb         ( fdbs0_fdb0_bell14_fcnt_enb         ),
    .fdbs0_fdb0_bell15_cnt_qout         ( fdbs0_fdb0_bell15_cnt_qout         ),
    .fdbs0_fdb0_bell15_cnt_din          ( fdbs0_fdb0_bell15_cnt_din          ),
    .fdbs0_fdb0_bell15_cnt_w            ( fdbs0_fdb0_bell15_cnt_w            ),
    .fdbs0_fdb0_bell15_cnt_r            ( fdbs0_fdb0_bell15_cnt_r            ),
    .fdbs0_fdb0_bell15_failed_ring_q    ( fdbs0_fdb0_bell15_failed_ring_q    ),
    .fdbs0_fdb0_bell15_failed_ring_d    ( fdbs0_fdb0_bell15_failed_ring_d    ),
    .fdbs0_fdb0_bell15_failed_ring_enb  ( fdbs0_fdb0_bell15_failed_ring_enb  ),
    .fdbs0_fdb0_bell15_max_priority_q   ( fdbs0_fdb0_bell15_max_priority_q   ),
    .fdbs0_fdb0_bell15_max_priority_d   ( fdbs0_fdb0_bell15_max_priority_d   ),
    .fdbs0_fdb0_bell15_max_priority_enb ( fdbs0_fdb0_bell15_max_priority_enb ),
    .fdbs0_fdb0_bell15_valid_fcnt_q     ( fdbs0_fdb0_bell15_valid_fcnt_q     ),
    .fdbs0_fdb0_bell15_valid_fcnt_d     ( fdbs0_fdb0_bell15_valid_fcnt_d     ),
    .fdbs0_fdb0_bell15_valid_fcnt_enb   ( fdbs0_fdb0_bell15_valid_fcnt_enb   ),
    .fdbs0_fdb0_bell15_fcnt_q           ( fdbs0_fdb0_bell15_fcnt_q           ),
    .fdbs0_fdb0_bell15_fcnt_d           ( fdbs0_fdb0_bell15_fcnt_d           ),
    .fdbs0_fdb0_bell15_fcnt_enb         ( fdbs0_fdb0_bell15_fcnt_enb         ),
    .fdbs0_fdb0_control_ack_on_empty_q  ( fdbs0_fdb0_control_ack_on_empty_q  ),
    .fdbs0_fdb0_enable_enable_qout      ( fdbs0_fdb0_enable_enable_qout      ),
    .fdbs0_fdb0_enable_enable_din       ( fdbs0_fdb0_enable_enable_din       ),
    .fdbs0_fdb0_enable_enable_w         ( fdbs0_fdb0_enable_enable_w         ),
    .fdbs0_fdb0_status_status_d         ( fdbs0_fdb0_status_status_d         ),
    .fdbs0_fdb0_data0_fifo_din          ( fdbs0_fdb0_data0_fifo_din          ),
    .fdbs0_fdb0_data0_fifo_a            ( fdbs0_fdb0_data0_fifo_a            ),
    .fdbs0_fdb0_data0_fifo_wen          ( fdbs0_fdb0_data0_fifo_wen          ),
    .fdbs0_fdb0_data0_fifo_cen          ( fdbs0_fdb0_data0_fifo_cen          ),
    .fdbs0_fdb0_data0_fifo_dout         ( fdbs0_fdb0_data0_fifo_dout         ),
    .fdbs0_fdb0_data1_fifo_din          ( fdbs0_fdb0_data1_fifo_din          ),
    .fdbs0_fdb0_data1_fifo_a            ( fdbs0_fdb0_data1_fifo_a            ),
    .fdbs0_fdb0_data1_fifo_wen          ( fdbs0_fdb0_data1_fifo_wen          ),
    .fdbs0_fdb0_data1_fifo_cen          ( fdbs0_fdb0_data1_fifo_cen          ),
    .fdbs0_fdb0_data1_fifo_dout         ( fdbs0_fdb0_data1_fifo_dout         ),
    .fdbs0_fdb0_data2_fifo_din          ( fdbs0_fdb0_data2_fifo_din          ),
    .fdbs0_fdb0_data2_fifo_a            ( fdbs0_fdb0_data2_fifo_a            ),
    .fdbs0_fdb0_data2_fifo_wen          ( fdbs0_fdb0_data2_fifo_wen          ),
    .fdbs0_fdb0_data2_fifo_cen          ( fdbs0_fdb0_data2_fifo_cen          ),
    .fdbs0_fdb0_data2_fifo_dout         ( fdbs0_fdb0_data2_fifo_dout         ),
    .fdbs0_fdb0_data3_fifo_din          ( fdbs0_fdb0_data3_fifo_din          ),
    .fdbs0_fdb0_data3_fifo_a            ( fdbs0_fdb0_data3_fifo_a            ),
    .fdbs0_fdb0_data3_fifo_wen          ( fdbs0_fdb0_data3_fifo_wen          ),
    .fdbs0_fdb0_data3_fifo_cen          ( fdbs0_fdb0_data3_fifo_cen          ),
    .fdbs0_fdb0_data3_fifo_dout         ( fdbs0_fdb0_data3_fifo_dout         ),
    .fdbs0_fdb0_data4_fifo_din          ( fdbs0_fdb0_data4_fifo_din          ),
    .fdbs0_fdb0_data4_fifo_a            ( fdbs0_fdb0_data4_fifo_a            ),
    .fdbs0_fdb0_data4_fifo_wen          ( fdbs0_fdb0_data4_fifo_wen          ),
    .fdbs0_fdb0_data4_fifo_cen          ( fdbs0_fdb0_data4_fifo_cen          ),
    .fdbs0_fdb0_data4_fifo_dout         ( fdbs0_fdb0_data4_fifo_dout         ),
    .fdbs0_fdb0_data5_fifo_din          ( fdbs0_fdb0_data5_fifo_din          ),
    .fdbs0_fdb0_data5_fifo_a            ( fdbs0_fdb0_data5_fifo_a            ),
    .fdbs0_fdb0_data5_fifo_wen          ( fdbs0_fdb0_data5_fifo_wen          ),
    .fdbs0_fdb0_data5_fifo_cen          ( fdbs0_fdb0_data5_fifo_cen          ),
    .fdbs0_fdb0_data5_fifo_dout         ( fdbs0_fdb0_data5_fifo_dout         ),
    .fdbs0_fdb0_data6_fifo_din          ( fdbs0_fdb0_data6_fifo_din          ),
    .fdbs0_fdb0_data6_fifo_a            ( fdbs0_fdb0_data6_fifo_a            ),
    .fdbs0_fdb0_data6_fifo_wen          ( fdbs0_fdb0_data6_fifo_wen          ),
    .fdbs0_fdb0_data6_fifo_cen          ( fdbs0_fdb0_data6_fifo_cen          ),
    .fdbs0_fdb0_data6_fifo_dout         ( fdbs0_fdb0_data6_fifo_dout         ),
    .fdbs0_fdb0_data7_fifo_din          ( fdbs0_fdb0_data7_fifo_din          ),
    .fdbs0_fdb0_data7_fifo_a            ( fdbs0_fdb0_data7_fifo_a            ),
    .fdbs0_fdb0_data7_fifo_wen          ( fdbs0_fdb0_data7_fifo_wen          ),
    .fdbs0_fdb0_data7_fifo_cen          ( fdbs0_fdb0_data7_fifo_cen          ),
    .fdbs0_fdb0_data7_fifo_dout         ( fdbs0_fdb0_data7_fifo_dout         ),
    .fdbs0_fdb0_data8_fifo_din          ( fdbs0_fdb0_data8_fifo_din          ),
    .fdbs0_fdb0_data8_fifo_a            ( fdbs0_fdb0_data8_fifo_a            ),
    .fdbs0_fdb0_data8_fifo_wen          ( fdbs0_fdb0_data8_fifo_wen          ),
    .fdbs0_fdb0_data8_fifo_cen          ( fdbs0_fdb0_data8_fifo_cen          ),
    .fdbs0_fdb0_data8_fifo_dout         ( fdbs0_fdb0_data8_fifo_dout         ),
    .fdbs0_fdb0_data9_fifo_din          ( fdbs0_fdb0_data9_fifo_din          ),
    .fdbs0_fdb0_data9_fifo_a            ( fdbs0_fdb0_data9_fifo_a            ),
    .fdbs0_fdb0_data9_fifo_wen          ( fdbs0_fdb0_data9_fifo_wen          ),
    .fdbs0_fdb0_data9_fifo_cen          ( fdbs0_fdb0_data9_fifo_cen          ),
    .fdbs0_fdb0_data9_fifo_dout         ( fdbs0_fdb0_data9_fifo_dout         ),
    .fdbs0_fdb0_data10_fifo_din         ( fdbs0_fdb0_data10_fifo_din         ),
    .fdbs0_fdb0_data10_fifo_a           ( fdbs0_fdb0_data10_fifo_a           ),
    .fdbs0_fdb0_data10_fifo_wen         ( fdbs0_fdb0_data10_fifo_wen         ),
    .fdbs0_fdb0_data10_fifo_cen         ( fdbs0_fdb0_data10_fifo_cen         ),
    .fdbs0_fdb0_data10_fifo_dout        ( fdbs0_fdb0_data10_fifo_dout        ),
    .fdbs0_fdb0_data11_fifo_din         ( fdbs0_fdb0_data11_fifo_din         ),
    .fdbs0_fdb0_data11_fifo_a           ( fdbs0_fdb0_data11_fifo_a           ),
    .fdbs0_fdb0_data11_fifo_wen         ( fdbs0_fdb0_data11_fifo_wen         ),
    .fdbs0_fdb0_data11_fifo_cen         ( fdbs0_fdb0_data11_fifo_cen         ),
    .fdbs0_fdb0_data11_fifo_dout        ( fdbs0_fdb0_data11_fifo_dout        ),
    .fdbs0_fdb0_data12_fifo_din         ( fdbs0_fdb0_data12_fifo_din         ),
    .fdbs0_fdb0_data12_fifo_a           ( fdbs0_fdb0_data12_fifo_a           ),
    .fdbs0_fdb0_data12_fifo_wen         ( fdbs0_fdb0_data12_fifo_wen         ),
    .fdbs0_fdb0_data12_fifo_cen         ( fdbs0_fdb0_data12_fifo_cen         ),
    .fdbs0_fdb0_data12_fifo_dout        ( fdbs0_fdb0_data12_fifo_dout        ),
    .fdbs0_fdb0_data13_fifo_din         ( fdbs0_fdb0_data13_fifo_din         ),
    .fdbs0_fdb0_data13_fifo_a           ( fdbs0_fdb0_data13_fifo_a           ),
    .fdbs0_fdb0_data13_fifo_wen         ( fdbs0_fdb0_data13_fifo_wen         ),
    .fdbs0_fdb0_data13_fifo_cen         ( fdbs0_fdb0_data13_fifo_cen         ),
    .fdbs0_fdb0_data13_fifo_dout        ( fdbs0_fdb0_data13_fifo_dout        ),
    .fdbs0_fdb0_data14_fifo_din         ( fdbs0_fdb0_data14_fifo_din         ),
    .fdbs0_fdb0_data14_fifo_a           ( fdbs0_fdb0_data14_fifo_a           ),
    .fdbs0_fdb0_data14_fifo_wen         ( fdbs0_fdb0_data14_fifo_wen         ),
    .fdbs0_fdb0_data14_fifo_cen         ( fdbs0_fdb0_data14_fifo_cen         ),
    .fdbs0_fdb0_data14_fifo_dout        ( fdbs0_fdb0_data14_fifo_dout        ),
    .fdbs0_fdb0_data15_fifo_din         ( fdbs0_fdb0_data15_fifo_din         ),
    .fdbs0_fdb0_data15_fifo_a           ( fdbs0_fdb0_data15_fifo_a           ),
    .fdbs0_fdb0_data15_fifo_wen         ( fdbs0_fdb0_data15_fifo_wen         ),
    .fdbs0_fdb0_data15_fifo_cen         ( fdbs0_fdb0_data15_fifo_cen         ),
    .fdbs0_fdb0_data15_fifo_dout        ( fdbs0_fdb0_data15_fifo_dout        ),
    .fdbs0_fdb1_bell0_cnt_qout          ( fdbs0_fdb1_bell0_cnt_qout          ),
    .fdbs0_fdb1_bell0_cnt_din           ( fdbs0_fdb1_bell0_cnt_din           ),
    .fdbs0_fdb1_bell0_cnt_w             ( fdbs0_fdb1_bell0_cnt_w             ),
    .fdbs0_fdb1_bell0_cnt_r             ( fdbs0_fdb1_bell0_cnt_r             ),
    .fdbs0_fdb1_bell0_failed_ring_q     ( fdbs0_fdb1_bell0_failed_ring_q     ),
    .fdbs0_fdb1_bell0_failed_ring_d     ( fdbs0_fdb1_bell0_failed_ring_d     ),
    .fdbs0_fdb1_bell0_failed_ring_enb   ( fdbs0_fdb1_bell0_failed_ring_enb   ),
    .fdbs0_fdb1_bell0_max_priority_q    ( fdbs0_fdb1_bell0_max_priority_q    ),
    .fdbs0_fdb1_bell0_max_priority_d    ( fdbs0_fdb1_bell0_max_priority_d    ),
    .fdbs0_fdb1_bell0_max_priority_enb  ( fdbs0_fdb1_bell0_max_priority_enb  ),
    .fdbs0_fdb1_bell0_valid_fcnt_q      ( fdbs0_fdb1_bell0_valid_fcnt_q      ),
    .fdbs0_fdb1_bell0_valid_fcnt_d      ( fdbs0_fdb1_bell0_valid_fcnt_d      ),
    .fdbs0_fdb1_bell0_valid_fcnt_enb    ( fdbs0_fdb1_bell0_valid_fcnt_enb    ),
    .fdbs0_fdb1_bell0_fcnt_q            ( fdbs0_fdb1_bell0_fcnt_q            ),
    .fdbs0_fdb1_bell0_fcnt_d            ( fdbs0_fdb1_bell0_fcnt_d            ),
    .fdbs0_fdb1_bell0_fcnt_enb          ( fdbs0_fdb1_bell0_fcnt_enb          ),
    .fdbs0_fdb1_bell1_cnt_qout          ( fdbs0_fdb1_bell1_cnt_qout          ),
    .fdbs0_fdb1_bell1_cnt_din           ( fdbs0_fdb1_bell1_cnt_din           ),
    .fdbs0_fdb1_bell1_cnt_w             ( fdbs0_fdb1_bell1_cnt_w             ),
    .fdbs0_fdb1_bell1_cnt_r             ( fdbs0_fdb1_bell1_cnt_r             ),
    .fdbs0_fdb1_bell1_failed_ring_q     ( fdbs0_fdb1_bell1_failed_ring_q     ),
    .fdbs0_fdb1_bell1_failed_ring_d     ( fdbs0_fdb1_bell1_failed_ring_d     ),
    .fdbs0_fdb1_bell1_failed_ring_enb   ( fdbs0_fdb1_bell1_failed_ring_enb   ),
    .fdbs0_fdb1_bell1_max_priority_q    ( fdbs0_fdb1_bell1_max_priority_q    ),
    .fdbs0_fdb1_bell1_max_priority_d    ( fdbs0_fdb1_bell1_max_priority_d    ),
    .fdbs0_fdb1_bell1_max_priority_enb  ( fdbs0_fdb1_bell1_max_priority_enb  ),
    .fdbs0_fdb1_bell1_valid_fcnt_q      ( fdbs0_fdb1_bell1_valid_fcnt_q      ),
    .fdbs0_fdb1_bell1_valid_fcnt_d      ( fdbs0_fdb1_bell1_valid_fcnt_d      ),
    .fdbs0_fdb1_bell1_valid_fcnt_enb    ( fdbs0_fdb1_bell1_valid_fcnt_enb    ),
    .fdbs0_fdb1_bell1_fcnt_q            ( fdbs0_fdb1_bell1_fcnt_q            ),
    .fdbs0_fdb1_bell1_fcnt_d            ( fdbs0_fdb1_bell1_fcnt_d            ),
    .fdbs0_fdb1_bell1_fcnt_enb          ( fdbs0_fdb1_bell1_fcnt_enb          ),
    .fdbs0_fdb1_bell2_cnt_qout          ( fdbs0_fdb1_bell2_cnt_qout          ),
    .fdbs0_fdb1_bell2_cnt_din           ( fdbs0_fdb1_bell2_cnt_din           ),
    .fdbs0_fdb1_bell2_cnt_w             ( fdbs0_fdb1_bell2_cnt_w             ),
    .fdbs0_fdb1_bell2_cnt_r             ( fdbs0_fdb1_bell2_cnt_r             ),
    .fdbs0_fdb1_bell2_failed_ring_q     ( fdbs0_fdb1_bell2_failed_ring_q     ),
    .fdbs0_fdb1_bell2_failed_ring_d     ( fdbs0_fdb1_bell2_failed_ring_d     ),
    .fdbs0_fdb1_bell2_failed_ring_enb   ( fdbs0_fdb1_bell2_failed_ring_enb   ),
    .fdbs0_fdb1_bell2_max_priority_q    ( fdbs0_fdb1_bell2_max_priority_q    ),
    .fdbs0_fdb1_bell2_max_priority_d    ( fdbs0_fdb1_bell2_max_priority_d    ),
    .fdbs0_fdb1_bell2_max_priority_enb  ( fdbs0_fdb1_bell2_max_priority_enb  ),
    .fdbs0_fdb1_bell2_valid_fcnt_q      ( fdbs0_fdb1_bell2_valid_fcnt_q      ),
    .fdbs0_fdb1_bell2_valid_fcnt_d      ( fdbs0_fdb1_bell2_valid_fcnt_d      ),
    .fdbs0_fdb1_bell2_valid_fcnt_enb    ( fdbs0_fdb1_bell2_valid_fcnt_enb    ),
    .fdbs0_fdb1_bell2_fcnt_q            ( fdbs0_fdb1_bell2_fcnt_q            ),
    .fdbs0_fdb1_bell2_fcnt_d            ( fdbs0_fdb1_bell2_fcnt_d            ),
    .fdbs0_fdb1_bell2_fcnt_enb          ( fdbs0_fdb1_bell2_fcnt_enb          ),
    .fdbs0_fdb1_bell3_cnt_qout          ( fdbs0_fdb1_bell3_cnt_qout          ),
    .fdbs0_fdb1_bell3_cnt_din           ( fdbs0_fdb1_bell3_cnt_din           ),
    .fdbs0_fdb1_bell3_cnt_w             ( fdbs0_fdb1_bell3_cnt_w             ),
    .fdbs0_fdb1_bell3_cnt_r             ( fdbs0_fdb1_bell3_cnt_r             ),
    .fdbs0_fdb1_bell3_failed_ring_q     ( fdbs0_fdb1_bell3_failed_ring_q     ),
    .fdbs0_fdb1_bell3_failed_ring_d     ( fdbs0_fdb1_bell3_failed_ring_d     ),
    .fdbs0_fdb1_bell3_failed_ring_enb   ( fdbs0_fdb1_bell3_failed_ring_enb   ),
    .fdbs0_fdb1_bell3_max_priority_q    ( fdbs0_fdb1_bell3_max_priority_q    ),
    .fdbs0_fdb1_bell3_max_priority_d    ( fdbs0_fdb1_bell3_max_priority_d    ),
    .fdbs0_fdb1_bell3_max_priority_enb  ( fdbs0_fdb1_bell3_max_priority_enb  ),
    .fdbs0_fdb1_bell3_valid_fcnt_q      ( fdbs0_fdb1_bell3_valid_fcnt_q      ),
    .fdbs0_fdb1_bell3_valid_fcnt_d      ( fdbs0_fdb1_bell3_valid_fcnt_d      ),
    .fdbs0_fdb1_bell3_valid_fcnt_enb    ( fdbs0_fdb1_bell3_valid_fcnt_enb    ),
    .fdbs0_fdb1_bell3_fcnt_q            ( fdbs0_fdb1_bell3_fcnt_q            ),
    .fdbs0_fdb1_bell3_fcnt_d            ( fdbs0_fdb1_bell3_fcnt_d            ),
    .fdbs0_fdb1_bell3_fcnt_enb          ( fdbs0_fdb1_bell3_fcnt_enb          ),
    .fdbs0_fdb1_bell4_cnt_qout          ( fdbs0_fdb1_bell4_cnt_qout          ),
    .fdbs0_fdb1_bell4_cnt_din           ( fdbs0_fdb1_bell4_cnt_din           ),
    .fdbs0_fdb1_bell4_cnt_w             ( fdbs0_fdb1_bell4_cnt_w             ),
    .fdbs0_fdb1_bell4_cnt_r             ( fdbs0_fdb1_bell4_cnt_r             ),
    .fdbs0_fdb1_bell4_failed_ring_q     ( fdbs0_fdb1_bell4_failed_ring_q     ),
    .fdbs0_fdb1_bell4_failed_ring_d     ( fdbs0_fdb1_bell4_failed_ring_d     ),
    .fdbs0_fdb1_bell4_failed_ring_enb   ( fdbs0_fdb1_bell4_failed_ring_enb   ),
    .fdbs0_fdb1_bell4_max_priority_q    ( fdbs0_fdb1_bell4_max_priority_q    ),
    .fdbs0_fdb1_bell4_max_priority_d    ( fdbs0_fdb1_bell4_max_priority_d    ),
    .fdbs0_fdb1_bell4_max_priority_enb  ( fdbs0_fdb1_bell4_max_priority_enb  ),
    .fdbs0_fdb1_bell4_valid_fcnt_q      ( fdbs0_fdb1_bell4_valid_fcnt_q      ),
    .fdbs0_fdb1_bell4_valid_fcnt_d      ( fdbs0_fdb1_bell4_valid_fcnt_d      ),
    .fdbs0_fdb1_bell4_valid_fcnt_enb    ( fdbs0_fdb1_bell4_valid_fcnt_enb    ),
    .fdbs0_fdb1_bell4_fcnt_q            ( fdbs0_fdb1_bell4_fcnt_q            ),
    .fdbs0_fdb1_bell4_fcnt_d            ( fdbs0_fdb1_bell4_fcnt_d            ),
    .fdbs0_fdb1_bell4_fcnt_enb          ( fdbs0_fdb1_bell4_fcnt_enb          ),
    .fdbs0_fdb1_bell5_cnt_qout          ( fdbs0_fdb1_bell5_cnt_qout          ),
    .fdbs0_fdb1_bell5_cnt_din           ( fdbs0_fdb1_bell5_cnt_din           ),
    .fdbs0_fdb1_bell5_cnt_w             ( fdbs0_fdb1_bell5_cnt_w             ),
    .fdbs0_fdb1_bell5_cnt_r             ( fdbs0_fdb1_bell5_cnt_r             ),
    .fdbs0_fdb1_bell5_failed_ring_q     ( fdbs0_fdb1_bell5_failed_ring_q     ),
    .fdbs0_fdb1_bell5_failed_ring_d     ( fdbs0_fdb1_bell5_failed_ring_d     ),
    .fdbs0_fdb1_bell5_failed_ring_enb   ( fdbs0_fdb1_bell5_failed_ring_enb   ),
    .fdbs0_fdb1_bell5_max_priority_q    ( fdbs0_fdb1_bell5_max_priority_q    ),
    .fdbs0_fdb1_bell5_max_priority_d    ( fdbs0_fdb1_bell5_max_priority_d    ),
    .fdbs0_fdb1_bell5_max_priority_enb  ( fdbs0_fdb1_bell5_max_priority_enb  ),
    .fdbs0_fdb1_bell5_valid_fcnt_q      ( fdbs0_fdb1_bell5_valid_fcnt_q      ),
    .fdbs0_fdb1_bell5_valid_fcnt_d      ( fdbs0_fdb1_bell5_valid_fcnt_d      ),
    .fdbs0_fdb1_bell5_valid_fcnt_enb    ( fdbs0_fdb1_bell5_valid_fcnt_enb    ),
    .fdbs0_fdb1_bell5_fcnt_q            ( fdbs0_fdb1_bell5_fcnt_q            ),
    .fdbs0_fdb1_bell5_fcnt_d            ( fdbs0_fdb1_bell5_fcnt_d            ),
    .fdbs0_fdb1_bell5_fcnt_enb          ( fdbs0_fdb1_bell5_fcnt_enb          ),
    .fdbs0_fdb1_bell6_cnt_qout          ( fdbs0_fdb1_bell6_cnt_qout          ),
    .fdbs0_fdb1_bell6_cnt_din           ( fdbs0_fdb1_bell6_cnt_din           ),
    .fdbs0_fdb1_bell6_cnt_w             ( fdbs0_fdb1_bell6_cnt_w             ),
    .fdbs0_fdb1_bell6_cnt_r             ( fdbs0_fdb1_bell6_cnt_r             ),
    .fdbs0_fdb1_bell6_failed_ring_q     ( fdbs0_fdb1_bell6_failed_ring_q     ),
    .fdbs0_fdb1_bell6_failed_ring_d     ( fdbs0_fdb1_bell6_failed_ring_d     ),
    .fdbs0_fdb1_bell6_failed_ring_enb   ( fdbs0_fdb1_bell6_failed_ring_enb   ),
    .fdbs0_fdb1_bell6_max_priority_q    ( fdbs0_fdb1_bell6_max_priority_q    ),
    .fdbs0_fdb1_bell6_max_priority_d    ( fdbs0_fdb1_bell6_max_priority_d    ),
    .fdbs0_fdb1_bell6_max_priority_enb  ( fdbs0_fdb1_bell6_max_priority_enb  ),
    .fdbs0_fdb1_bell6_valid_fcnt_q      ( fdbs0_fdb1_bell6_valid_fcnt_q      ),
    .fdbs0_fdb1_bell6_valid_fcnt_d      ( fdbs0_fdb1_bell6_valid_fcnt_d      ),
    .fdbs0_fdb1_bell6_valid_fcnt_enb    ( fdbs0_fdb1_bell6_valid_fcnt_enb    ),
    .fdbs0_fdb1_bell6_fcnt_q            ( fdbs0_fdb1_bell6_fcnt_q            ),
    .fdbs0_fdb1_bell6_fcnt_d            ( fdbs0_fdb1_bell6_fcnt_d            ),
    .fdbs0_fdb1_bell6_fcnt_enb          ( fdbs0_fdb1_bell6_fcnt_enb          ),
    .fdbs0_fdb1_bell7_cnt_qout          ( fdbs0_fdb1_bell7_cnt_qout          ),
    .fdbs0_fdb1_bell7_cnt_din           ( fdbs0_fdb1_bell7_cnt_din           ),
    .fdbs0_fdb1_bell7_cnt_w             ( fdbs0_fdb1_bell7_cnt_w             ),
    .fdbs0_fdb1_bell7_cnt_r             ( fdbs0_fdb1_bell7_cnt_r             ),
    .fdbs0_fdb1_bell7_failed_ring_q     ( fdbs0_fdb1_bell7_failed_ring_q     ),
    .fdbs0_fdb1_bell7_failed_ring_d     ( fdbs0_fdb1_bell7_failed_ring_d     ),
    .fdbs0_fdb1_bell7_failed_ring_enb   ( fdbs0_fdb1_bell7_failed_ring_enb   ),
    .fdbs0_fdb1_bell7_max_priority_q    ( fdbs0_fdb1_bell7_max_priority_q    ),
    .fdbs0_fdb1_bell7_max_priority_d    ( fdbs0_fdb1_bell7_max_priority_d    ),
    .fdbs0_fdb1_bell7_max_priority_enb  ( fdbs0_fdb1_bell7_max_priority_enb  ),
    .fdbs0_fdb1_bell7_valid_fcnt_q      ( fdbs0_fdb1_bell7_valid_fcnt_q      ),
    .fdbs0_fdb1_bell7_valid_fcnt_d      ( fdbs0_fdb1_bell7_valid_fcnt_d      ),
    .fdbs0_fdb1_bell7_valid_fcnt_enb    ( fdbs0_fdb1_bell7_valid_fcnt_enb    ),
    .fdbs0_fdb1_bell7_fcnt_q            ( fdbs0_fdb1_bell7_fcnt_q            ),
    .fdbs0_fdb1_bell7_fcnt_d            ( fdbs0_fdb1_bell7_fcnt_d            ),
    .fdbs0_fdb1_bell7_fcnt_enb          ( fdbs0_fdb1_bell7_fcnt_enb          ),
    .fdbs0_fdb1_bell8_cnt_qout          ( fdbs0_fdb1_bell8_cnt_qout          ),
    .fdbs0_fdb1_bell8_cnt_din           ( fdbs0_fdb1_bell8_cnt_din           ),
    .fdbs0_fdb1_bell8_cnt_w             ( fdbs0_fdb1_bell8_cnt_w             ),
    .fdbs0_fdb1_bell8_cnt_r             ( fdbs0_fdb1_bell8_cnt_r             ),
    .fdbs0_fdb1_bell8_failed_ring_q     ( fdbs0_fdb1_bell8_failed_ring_q     ),
    .fdbs0_fdb1_bell8_failed_ring_d     ( fdbs0_fdb1_bell8_failed_ring_d     ),
    .fdbs0_fdb1_bell8_failed_ring_enb   ( fdbs0_fdb1_bell8_failed_ring_enb   ),
    .fdbs0_fdb1_bell8_max_priority_q    ( fdbs0_fdb1_bell8_max_priority_q    ),
    .fdbs0_fdb1_bell8_max_priority_d    ( fdbs0_fdb1_bell8_max_priority_d    ),
    .fdbs0_fdb1_bell8_max_priority_enb  ( fdbs0_fdb1_bell8_max_priority_enb  ),
    .fdbs0_fdb1_bell8_valid_fcnt_q      ( fdbs0_fdb1_bell8_valid_fcnt_q      ),
    .fdbs0_fdb1_bell8_valid_fcnt_d      ( fdbs0_fdb1_bell8_valid_fcnt_d      ),
    .fdbs0_fdb1_bell8_valid_fcnt_enb    ( fdbs0_fdb1_bell8_valid_fcnt_enb    ),
    .fdbs0_fdb1_bell8_fcnt_q            ( fdbs0_fdb1_bell8_fcnt_q            ),
    .fdbs0_fdb1_bell8_fcnt_d            ( fdbs0_fdb1_bell8_fcnt_d            ),
    .fdbs0_fdb1_bell8_fcnt_enb          ( fdbs0_fdb1_bell8_fcnt_enb          ),
    .fdbs0_fdb1_bell9_cnt_qout          ( fdbs0_fdb1_bell9_cnt_qout          ),
    .fdbs0_fdb1_bell9_cnt_din           ( fdbs0_fdb1_bell9_cnt_din           ),
    .fdbs0_fdb1_bell9_cnt_w             ( fdbs0_fdb1_bell9_cnt_w             ),
    .fdbs0_fdb1_bell9_cnt_r             ( fdbs0_fdb1_bell9_cnt_r             ),
    .fdbs0_fdb1_bell9_failed_ring_q     ( fdbs0_fdb1_bell9_failed_ring_q     ),
    .fdbs0_fdb1_bell9_failed_ring_d     ( fdbs0_fdb1_bell9_failed_ring_d     ),
    .fdbs0_fdb1_bell9_failed_ring_enb   ( fdbs0_fdb1_bell9_failed_ring_enb   ),
    .fdbs0_fdb1_bell9_max_priority_q    ( fdbs0_fdb1_bell9_max_priority_q    ),
    .fdbs0_fdb1_bell9_max_priority_d    ( fdbs0_fdb1_bell9_max_priority_d    ),
    .fdbs0_fdb1_bell9_max_priority_enb  ( fdbs0_fdb1_bell9_max_priority_enb  ),
    .fdbs0_fdb1_bell9_valid_fcnt_q      ( fdbs0_fdb1_bell9_valid_fcnt_q      ),
    .fdbs0_fdb1_bell9_valid_fcnt_d      ( fdbs0_fdb1_bell9_valid_fcnt_d      ),
    .fdbs0_fdb1_bell9_valid_fcnt_enb    ( fdbs0_fdb1_bell9_valid_fcnt_enb    ),
    .fdbs0_fdb1_bell9_fcnt_q            ( fdbs0_fdb1_bell9_fcnt_q            ),
    .fdbs0_fdb1_bell9_fcnt_d            ( fdbs0_fdb1_bell9_fcnt_d            ),
    .fdbs0_fdb1_bell9_fcnt_enb          ( fdbs0_fdb1_bell9_fcnt_enb          ),
    .fdbs0_fdb1_bell10_cnt_qout         ( fdbs0_fdb1_bell10_cnt_qout         ),
    .fdbs0_fdb1_bell10_cnt_din          ( fdbs0_fdb1_bell10_cnt_din          ),
    .fdbs0_fdb1_bell10_cnt_w            ( fdbs0_fdb1_bell10_cnt_w            ),
    .fdbs0_fdb1_bell10_cnt_r            ( fdbs0_fdb1_bell10_cnt_r            ),
    .fdbs0_fdb1_bell10_failed_ring_q    ( fdbs0_fdb1_bell10_failed_ring_q    ),
    .fdbs0_fdb1_bell10_failed_ring_d    ( fdbs0_fdb1_bell10_failed_ring_d    ),
    .fdbs0_fdb1_bell10_failed_ring_enb  ( fdbs0_fdb1_bell10_failed_ring_enb  ),
    .fdbs0_fdb1_bell10_max_priority_q   ( fdbs0_fdb1_bell10_max_priority_q   ),
    .fdbs0_fdb1_bell10_max_priority_d   ( fdbs0_fdb1_bell10_max_priority_d   ),
    .fdbs0_fdb1_bell10_max_priority_enb ( fdbs0_fdb1_bell10_max_priority_enb ),
    .fdbs0_fdb1_bell10_valid_fcnt_q     ( fdbs0_fdb1_bell10_valid_fcnt_q     ),
    .fdbs0_fdb1_bell10_valid_fcnt_d     ( fdbs0_fdb1_bell10_valid_fcnt_d     ),
    .fdbs0_fdb1_bell10_valid_fcnt_enb   ( fdbs0_fdb1_bell10_valid_fcnt_enb   ),
    .fdbs0_fdb1_bell10_fcnt_q           ( fdbs0_fdb1_bell10_fcnt_q           ),
    .fdbs0_fdb1_bell10_fcnt_d           ( fdbs0_fdb1_bell10_fcnt_d           ),
    .fdbs0_fdb1_bell10_fcnt_enb         ( fdbs0_fdb1_bell10_fcnt_enb         ),
    .fdbs0_fdb1_bell11_cnt_qout         ( fdbs0_fdb1_bell11_cnt_qout         ),
    .fdbs0_fdb1_bell11_cnt_din          ( fdbs0_fdb1_bell11_cnt_din          ),
    .fdbs0_fdb1_bell11_cnt_w            ( fdbs0_fdb1_bell11_cnt_w            ),
    .fdbs0_fdb1_bell11_cnt_r            ( fdbs0_fdb1_bell11_cnt_r            ),
    .fdbs0_fdb1_bell11_failed_ring_q    ( fdbs0_fdb1_bell11_failed_ring_q    ),
    .fdbs0_fdb1_bell11_failed_ring_d    ( fdbs0_fdb1_bell11_failed_ring_d    ),
    .fdbs0_fdb1_bell11_failed_ring_enb  ( fdbs0_fdb1_bell11_failed_ring_enb  ),
    .fdbs0_fdb1_bell11_max_priority_q   ( fdbs0_fdb1_bell11_max_priority_q   ),
    .fdbs0_fdb1_bell11_max_priority_d   ( fdbs0_fdb1_bell11_max_priority_d   ),
    .fdbs0_fdb1_bell11_max_priority_enb ( fdbs0_fdb1_bell11_max_priority_enb ),
    .fdbs0_fdb1_bell11_valid_fcnt_q     ( fdbs0_fdb1_bell11_valid_fcnt_q     ),
    .fdbs0_fdb1_bell11_valid_fcnt_d     ( fdbs0_fdb1_bell11_valid_fcnt_d     ),
    .fdbs0_fdb1_bell11_valid_fcnt_enb   ( fdbs0_fdb1_bell11_valid_fcnt_enb   ),
    .fdbs0_fdb1_bell11_fcnt_q           ( fdbs0_fdb1_bell11_fcnt_q           ),
    .fdbs0_fdb1_bell11_fcnt_d           ( fdbs0_fdb1_bell11_fcnt_d           ),
    .fdbs0_fdb1_bell11_fcnt_enb         ( fdbs0_fdb1_bell11_fcnt_enb         ),
    .fdbs0_fdb1_bell12_cnt_qout         ( fdbs0_fdb1_bell12_cnt_qout         ),
    .fdbs0_fdb1_bell12_cnt_din          ( fdbs0_fdb1_bell12_cnt_din          ),
    .fdbs0_fdb1_bell12_cnt_w            ( fdbs0_fdb1_bell12_cnt_w            ),
    .fdbs0_fdb1_bell12_cnt_r            ( fdbs0_fdb1_bell12_cnt_r            ),
    .fdbs0_fdb1_bell12_failed_ring_q    ( fdbs0_fdb1_bell12_failed_ring_q    ),
    .fdbs0_fdb1_bell12_failed_ring_d    ( fdbs0_fdb1_bell12_failed_ring_d    ),
    .fdbs0_fdb1_bell12_failed_ring_enb  ( fdbs0_fdb1_bell12_failed_ring_enb  ),
    .fdbs0_fdb1_bell12_max_priority_q   ( fdbs0_fdb1_bell12_max_priority_q   ),
    .fdbs0_fdb1_bell12_max_priority_d   ( fdbs0_fdb1_bell12_max_priority_d   ),
    .fdbs0_fdb1_bell12_max_priority_enb ( fdbs0_fdb1_bell12_max_priority_enb ),
    .fdbs0_fdb1_bell12_valid_fcnt_q     ( fdbs0_fdb1_bell12_valid_fcnt_q     ),
    .fdbs0_fdb1_bell12_valid_fcnt_d     ( fdbs0_fdb1_bell12_valid_fcnt_d     ),
    .fdbs0_fdb1_bell12_valid_fcnt_enb   ( fdbs0_fdb1_bell12_valid_fcnt_enb   ),
    .fdbs0_fdb1_bell12_fcnt_q           ( fdbs0_fdb1_bell12_fcnt_q           ),
    .fdbs0_fdb1_bell12_fcnt_d           ( fdbs0_fdb1_bell12_fcnt_d           ),
    .fdbs0_fdb1_bell12_fcnt_enb         ( fdbs0_fdb1_bell12_fcnt_enb         ),
    .fdbs0_fdb1_bell13_cnt_qout         ( fdbs0_fdb1_bell13_cnt_qout         ),
    .fdbs0_fdb1_bell13_cnt_din          ( fdbs0_fdb1_bell13_cnt_din          ),
    .fdbs0_fdb1_bell13_cnt_w            ( fdbs0_fdb1_bell13_cnt_w            ),
    .fdbs0_fdb1_bell13_cnt_r            ( fdbs0_fdb1_bell13_cnt_r            ),
    .fdbs0_fdb1_bell13_failed_ring_q    ( fdbs0_fdb1_bell13_failed_ring_q    ),
    .fdbs0_fdb1_bell13_failed_ring_d    ( fdbs0_fdb1_bell13_failed_ring_d    ),
    .fdbs0_fdb1_bell13_failed_ring_enb  ( fdbs0_fdb1_bell13_failed_ring_enb  ),
    .fdbs0_fdb1_bell13_max_priority_q   ( fdbs0_fdb1_bell13_max_priority_q   ),
    .fdbs0_fdb1_bell13_max_priority_d   ( fdbs0_fdb1_bell13_max_priority_d   ),
    .fdbs0_fdb1_bell13_max_priority_enb ( fdbs0_fdb1_bell13_max_priority_enb ),
    .fdbs0_fdb1_bell13_valid_fcnt_q     ( fdbs0_fdb1_bell13_valid_fcnt_q     ),
    .fdbs0_fdb1_bell13_valid_fcnt_d     ( fdbs0_fdb1_bell13_valid_fcnt_d     ),
    .fdbs0_fdb1_bell13_valid_fcnt_enb   ( fdbs0_fdb1_bell13_valid_fcnt_enb   ),
    .fdbs0_fdb1_bell13_fcnt_q           ( fdbs0_fdb1_bell13_fcnt_q           ),
    .fdbs0_fdb1_bell13_fcnt_d           ( fdbs0_fdb1_bell13_fcnt_d           ),
    .fdbs0_fdb1_bell13_fcnt_enb         ( fdbs0_fdb1_bell13_fcnt_enb         ),
    .fdbs0_fdb1_bell14_cnt_qout         ( fdbs0_fdb1_bell14_cnt_qout         ),
    .fdbs0_fdb1_bell14_cnt_din          ( fdbs0_fdb1_bell14_cnt_din          ),
    .fdbs0_fdb1_bell14_cnt_w            ( fdbs0_fdb1_bell14_cnt_w            ),
    .fdbs0_fdb1_bell14_cnt_r            ( fdbs0_fdb1_bell14_cnt_r            ),
    .fdbs0_fdb1_bell14_failed_ring_q    ( fdbs0_fdb1_bell14_failed_ring_q    ),
    .fdbs0_fdb1_bell14_failed_ring_d    ( fdbs0_fdb1_bell14_failed_ring_d    ),
    .fdbs0_fdb1_bell14_failed_ring_enb  ( fdbs0_fdb1_bell14_failed_ring_enb  ),
    .fdbs0_fdb1_bell14_max_priority_q   ( fdbs0_fdb1_bell14_max_priority_q   ),
    .fdbs0_fdb1_bell14_max_priority_d   ( fdbs0_fdb1_bell14_max_priority_d   ),
    .fdbs0_fdb1_bell14_max_priority_enb ( fdbs0_fdb1_bell14_max_priority_enb ),
    .fdbs0_fdb1_bell14_valid_fcnt_q     ( fdbs0_fdb1_bell14_valid_fcnt_q     ),
    .fdbs0_fdb1_bell14_valid_fcnt_d     ( fdbs0_fdb1_bell14_valid_fcnt_d     ),
    .fdbs0_fdb1_bell14_valid_fcnt_enb   ( fdbs0_fdb1_bell14_valid_fcnt_enb   ),
    .fdbs0_fdb1_bell14_fcnt_q           ( fdbs0_fdb1_bell14_fcnt_q           ),
    .fdbs0_fdb1_bell14_fcnt_d           ( fdbs0_fdb1_bell14_fcnt_d           ),
    .fdbs0_fdb1_bell14_fcnt_enb         ( fdbs0_fdb1_bell14_fcnt_enb         ),
    .fdbs0_fdb1_bell15_cnt_qout         ( fdbs0_fdb1_bell15_cnt_qout         ),
    .fdbs0_fdb1_bell15_cnt_din          ( fdbs0_fdb1_bell15_cnt_din          ),
    .fdbs0_fdb1_bell15_cnt_w            ( fdbs0_fdb1_bell15_cnt_w            ),
    .fdbs0_fdb1_bell15_cnt_r            ( fdbs0_fdb1_bell15_cnt_r            ),
    .fdbs0_fdb1_bell15_failed_ring_q    ( fdbs0_fdb1_bell15_failed_ring_q    ),
    .fdbs0_fdb1_bell15_failed_ring_d    ( fdbs0_fdb1_bell15_failed_ring_d    ),
    .fdbs0_fdb1_bell15_failed_ring_enb  ( fdbs0_fdb1_bell15_failed_ring_enb  ),
    .fdbs0_fdb1_bell15_max_priority_q   ( fdbs0_fdb1_bell15_max_priority_q   ),
    .fdbs0_fdb1_bell15_max_priority_d   ( fdbs0_fdb1_bell15_max_priority_d   ),
    .fdbs0_fdb1_bell15_max_priority_enb ( fdbs0_fdb1_bell15_max_priority_enb ),
    .fdbs0_fdb1_bell15_valid_fcnt_q     ( fdbs0_fdb1_bell15_valid_fcnt_q     ),
    .fdbs0_fdb1_bell15_valid_fcnt_d     ( fdbs0_fdb1_bell15_valid_fcnt_d     ),
    .fdbs0_fdb1_bell15_valid_fcnt_enb   ( fdbs0_fdb1_bell15_valid_fcnt_enb   ),
    .fdbs0_fdb1_bell15_fcnt_q           ( fdbs0_fdb1_bell15_fcnt_q           ),
    .fdbs0_fdb1_bell15_fcnt_d           ( fdbs0_fdb1_bell15_fcnt_d           ),
    .fdbs0_fdb1_bell15_fcnt_enb         ( fdbs0_fdb1_bell15_fcnt_enb         ),
    .fdbs0_fdb1_control_ack_on_empty_q  ( fdbs0_fdb1_control_ack_on_empty_q  ),
    .fdbs0_fdb1_enable_enable_qout      ( fdbs0_fdb1_enable_enable_qout      ),
    .fdbs0_fdb1_enable_enable_din       ( fdbs0_fdb1_enable_enable_din       ),
    .fdbs0_fdb1_enable_enable_w         ( fdbs0_fdb1_enable_enable_w         ),
    .fdbs0_fdb1_status_status_d         ( fdbs0_fdb1_status_status_d         ),
    .fdbs0_fdb1_data0_fifo_din          ( fdbs0_fdb1_data0_fifo_din          ),
    .fdbs0_fdb1_data0_fifo_a            ( fdbs0_fdb1_data0_fifo_a            ),
    .fdbs0_fdb1_data0_fifo_wen          ( fdbs0_fdb1_data0_fifo_wen          ),
    .fdbs0_fdb1_data0_fifo_cen          ( fdbs0_fdb1_data0_fifo_cen          ),
    .fdbs0_fdb1_data0_fifo_dout         ( fdbs0_fdb1_data0_fifo_dout         ),
    .fdbs0_fdb1_data1_fifo_din          ( fdbs0_fdb1_data1_fifo_din          ),
    .fdbs0_fdb1_data1_fifo_a            ( fdbs0_fdb1_data1_fifo_a            ),
    .fdbs0_fdb1_data1_fifo_wen          ( fdbs0_fdb1_data1_fifo_wen          ),
    .fdbs0_fdb1_data1_fifo_cen          ( fdbs0_fdb1_data1_fifo_cen          ),
    .fdbs0_fdb1_data1_fifo_dout         ( fdbs0_fdb1_data1_fifo_dout         ),
    .fdbs0_fdb1_data2_fifo_din          ( fdbs0_fdb1_data2_fifo_din          ),
    .fdbs0_fdb1_data2_fifo_a            ( fdbs0_fdb1_data2_fifo_a            ),
    .fdbs0_fdb1_data2_fifo_wen          ( fdbs0_fdb1_data2_fifo_wen          ),
    .fdbs0_fdb1_data2_fifo_cen          ( fdbs0_fdb1_data2_fifo_cen          ),
    .fdbs0_fdb1_data2_fifo_dout         ( fdbs0_fdb1_data2_fifo_dout         ),
    .fdbs0_fdb1_data3_fifo_din          ( fdbs0_fdb1_data3_fifo_din          ),
    .fdbs0_fdb1_data3_fifo_a            ( fdbs0_fdb1_data3_fifo_a            ),
    .fdbs0_fdb1_data3_fifo_wen          ( fdbs0_fdb1_data3_fifo_wen          ),
    .fdbs0_fdb1_data3_fifo_cen          ( fdbs0_fdb1_data3_fifo_cen          ),
    .fdbs0_fdb1_data3_fifo_dout         ( fdbs0_fdb1_data3_fifo_dout         ),
    .fdbs0_fdb1_data4_fifo_din          ( fdbs0_fdb1_data4_fifo_din          ),
    .fdbs0_fdb1_data4_fifo_a            ( fdbs0_fdb1_data4_fifo_a            ),
    .fdbs0_fdb1_data4_fifo_wen          ( fdbs0_fdb1_data4_fifo_wen          ),
    .fdbs0_fdb1_data4_fifo_cen          ( fdbs0_fdb1_data4_fifo_cen          ),
    .fdbs0_fdb1_data4_fifo_dout         ( fdbs0_fdb1_data4_fifo_dout         ),
    .fdbs0_fdb1_data5_fifo_din          ( fdbs0_fdb1_data5_fifo_din          ),
    .fdbs0_fdb1_data5_fifo_a            ( fdbs0_fdb1_data5_fifo_a            ),
    .fdbs0_fdb1_data5_fifo_wen          ( fdbs0_fdb1_data5_fifo_wen          ),
    .fdbs0_fdb1_data5_fifo_cen          ( fdbs0_fdb1_data5_fifo_cen          ),
    .fdbs0_fdb1_data5_fifo_dout         ( fdbs0_fdb1_data5_fifo_dout         ),
    .fdbs0_fdb1_data6_fifo_din          ( fdbs0_fdb1_data6_fifo_din          ),
    .fdbs0_fdb1_data6_fifo_a            ( fdbs0_fdb1_data6_fifo_a            ),
    .fdbs0_fdb1_data6_fifo_wen          ( fdbs0_fdb1_data6_fifo_wen          ),
    .fdbs0_fdb1_data6_fifo_cen          ( fdbs0_fdb1_data6_fifo_cen          ),
    .fdbs0_fdb1_data6_fifo_dout         ( fdbs0_fdb1_data6_fifo_dout         ),
    .fdbs0_fdb1_data7_fifo_din          ( fdbs0_fdb1_data7_fifo_din          ),
    .fdbs0_fdb1_data7_fifo_a            ( fdbs0_fdb1_data7_fifo_a            ),
    .fdbs0_fdb1_data7_fifo_wen          ( fdbs0_fdb1_data7_fifo_wen          ),
    .fdbs0_fdb1_data7_fifo_cen          ( fdbs0_fdb1_data7_fifo_cen          ),
    .fdbs0_fdb1_data7_fifo_dout         ( fdbs0_fdb1_data7_fifo_dout         ),
    .fdbs0_fdb1_data8_fifo_din          ( fdbs0_fdb1_data8_fifo_din          ),
    .fdbs0_fdb1_data8_fifo_a            ( fdbs0_fdb1_data8_fifo_a            ),
    .fdbs0_fdb1_data8_fifo_wen          ( fdbs0_fdb1_data8_fifo_wen          ),
    .fdbs0_fdb1_data8_fifo_cen          ( fdbs0_fdb1_data8_fifo_cen          ),
    .fdbs0_fdb1_data8_fifo_dout         ( fdbs0_fdb1_data8_fifo_dout         ),
    .fdbs0_fdb1_data9_fifo_din          ( fdbs0_fdb1_data9_fifo_din          ),
    .fdbs0_fdb1_data9_fifo_a            ( fdbs0_fdb1_data9_fifo_a            ),
    .fdbs0_fdb1_data9_fifo_wen          ( fdbs0_fdb1_data9_fifo_wen          ),
    .fdbs0_fdb1_data9_fifo_cen          ( fdbs0_fdb1_data9_fifo_cen          ),
    .fdbs0_fdb1_data9_fifo_dout         ( fdbs0_fdb1_data9_fifo_dout         ),
    .fdbs0_fdb1_data10_fifo_din         ( fdbs0_fdb1_data10_fifo_din         ),
    .fdbs0_fdb1_data10_fifo_a           ( fdbs0_fdb1_data10_fifo_a           ),
    .fdbs0_fdb1_data10_fifo_wen         ( fdbs0_fdb1_data10_fifo_wen         ),
    .fdbs0_fdb1_data10_fifo_cen         ( fdbs0_fdb1_data10_fifo_cen         ),
    .fdbs0_fdb1_data10_fifo_dout        ( fdbs0_fdb1_data10_fifo_dout        ),
    .fdbs0_fdb1_data11_fifo_din         ( fdbs0_fdb1_data11_fifo_din         ),
    .fdbs0_fdb1_data11_fifo_a           ( fdbs0_fdb1_data11_fifo_a           ),
    .fdbs0_fdb1_data11_fifo_wen         ( fdbs0_fdb1_data11_fifo_wen         ),
    .fdbs0_fdb1_data11_fifo_cen         ( fdbs0_fdb1_data11_fifo_cen         ),
    .fdbs0_fdb1_data11_fifo_dout        ( fdbs0_fdb1_data11_fifo_dout        ),
    .fdbs0_fdb1_data12_fifo_din         ( fdbs0_fdb1_data12_fifo_din         ),
    .fdbs0_fdb1_data12_fifo_a           ( fdbs0_fdb1_data12_fifo_a           ),
    .fdbs0_fdb1_data12_fifo_wen         ( fdbs0_fdb1_data12_fifo_wen         ),
    .fdbs0_fdb1_data12_fifo_cen         ( fdbs0_fdb1_data12_fifo_cen         ),
    .fdbs0_fdb1_data12_fifo_dout        ( fdbs0_fdb1_data12_fifo_dout        ),
    .fdbs0_fdb1_data13_fifo_din         ( fdbs0_fdb1_data13_fifo_din         ),
    .fdbs0_fdb1_data13_fifo_a           ( fdbs0_fdb1_data13_fifo_a           ),
    .fdbs0_fdb1_data13_fifo_wen         ( fdbs0_fdb1_data13_fifo_wen         ),
    .fdbs0_fdb1_data13_fifo_cen         ( fdbs0_fdb1_data13_fifo_cen         ),
    .fdbs0_fdb1_data13_fifo_dout        ( fdbs0_fdb1_data13_fifo_dout        ),
    .fdbs0_fdb1_data14_fifo_din         ( fdbs0_fdb1_data14_fifo_din         ),
    .fdbs0_fdb1_data14_fifo_a           ( fdbs0_fdb1_data14_fifo_a           ),
    .fdbs0_fdb1_data14_fifo_wen         ( fdbs0_fdb1_data14_fifo_wen         ),
    .fdbs0_fdb1_data14_fifo_cen         ( fdbs0_fdb1_data14_fifo_cen         ),
    .fdbs0_fdb1_data14_fifo_dout        ( fdbs0_fdb1_data14_fifo_dout        ),
    .fdbs0_fdb1_data15_fifo_din         ( fdbs0_fdb1_data15_fifo_din         ),
    .fdbs0_fdb1_data15_fifo_a           ( fdbs0_fdb1_data15_fifo_a           ),
    .fdbs0_fdb1_data15_fifo_wen         ( fdbs0_fdb1_data15_fifo_wen         ),
    .fdbs0_fdb1_data15_fifo_cen         ( fdbs0_fdb1_data15_fifo_cen         ),
    .fdbs0_fdb1_data15_fifo_dout        ( fdbs0_fdb1_data15_fifo_dout        ) );

////////////////////////////////////////////////////////////////////////
// Configuration register module - smutex0
regmodel0_regmodel_core_smutex0_csr i_regmodel0_regmodel_core_smutex0_csr(
    .reg_clk                             ( clk_i                               ),
    .non_retention_reset_ni              ( non_retention_reset_ni              ),
    .test_mode_cgm_i                     ( test_mode_cgm_i                     ),
    .write_valid_i                       ( smutex0_write_valid                 ),
    .write_addr_i                        ( write_addr[11:0]                    ),
    .write_data_i                        ( write_data                          ),
    .write_strb_i                        ( write_strb                          ),
    .write_info_i                        ( write_info                          ),
    .write_err_o                         ( smutex0_write_err                   ),
    .read_addr_i                         ( read_addr[11:0]                     ),
    .read_valid_i                        ( smutex0_read_valid                  ),
    .read_data_o                         ( smutex0_read_data                   ),
    .read_info_i                         ( read_info                           ),
    .read_err_o                          ( smutex0_read_err                    ),
    .ready_o                             ( smutex0_ready                       ),
    .smutex0_owner0_id_q                 ( smutex0_owner0_id_q                 ),
    .smutex0_owner0_id_d                 ( smutex0_owner0_id_d                 ),
    .smutex0_owner0_id_enb               ( smutex0_owner0_id_enb               ),
    .smutex0_owner1_id_q                 ( smutex0_owner1_id_q                 ),
    .smutex0_owner1_id_d                 ( smutex0_owner1_id_d                 ),
    .smutex0_owner1_id_enb               ( smutex0_owner1_id_enb               ),
    .smutex0_owner2_id_q                 ( smutex0_owner2_id_q                 ),
    .smutex0_owner2_id_d                 ( smutex0_owner2_id_d                 ),
    .smutex0_owner2_id_enb               ( smutex0_owner2_id_enb               ),
    .smutex0_owner3_id_q                 ( smutex0_owner3_id_q                 ),
    .smutex0_owner3_id_d                 ( smutex0_owner3_id_d                 ),
    .smutex0_owner3_id_enb               ( smutex0_owner3_id_enb               ),
    .smutex0_owner4_id_q                 ( smutex0_owner4_id_q                 ),
    .smutex0_owner4_id_d                 ( smutex0_owner4_id_d                 ),
    .smutex0_owner4_id_enb               ( smutex0_owner4_id_enb               ),
    .smutex0_owner5_id_q                 ( smutex0_owner5_id_q                 ),
    .smutex0_owner5_id_d                 ( smutex0_owner5_id_d                 ),
    .smutex0_owner5_id_enb               ( smutex0_owner5_id_enb               ),
    .smutex0_owner6_id_q                 ( smutex0_owner6_id_q                 ),
    .smutex0_owner6_id_d                 ( smutex0_owner6_id_d                 ),
    .smutex0_owner6_id_enb               ( smutex0_owner6_id_enb               ),
    .smutex0_owner7_id_q                 ( smutex0_owner7_id_q                 ),
    .smutex0_owner7_id_d                 ( smutex0_owner7_id_d                 ),
    .smutex0_owner7_id_enb               ( smutex0_owner7_id_enb               ),
    .smutex0_ipc_sc_id_q                 ( smutex0_ipc_sc_id_q                 ),
    .smutex0_timeout_compare_q           ( smutex0_timeout_compare_q           ),
    .smutex0_timeout_prescale_q          ( smutex0_timeout_prescale_q          ),
    .smutex0_error_err_log_code_q        ( smutex0_error_err_log_code_q        ),
    .smutex0_error_err_log_code_d        ( smutex0_error_err_log_code_d        ),
    .smutex0_error_err_log_code_enb      ( smutex0_error_err_log_code_enb      ),
    .smutex0_error_err_log_access_q      ( smutex0_error_err_log_access_q      ),
    .smutex0_error_err_log_access_d      ( smutex0_error_err_log_access_d      ),
    .smutex0_error_err_log_access_enb    ( smutex0_error_err_log_access_enb    ),
    .smutex0_error_err_log_id_q          ( smutex0_error_err_log_id_q          ),
    .smutex0_error_err_log_id_d          ( smutex0_error_err_log_id_d          ),
    .smutex0_error_err_log_id_enb        ( smutex0_error_err_log_id_enb        ),
    .smutex0_error_err_log_multi_q       ( smutex0_error_err_log_multi_q       ),
    .smutex0_error_err_log_multi_d       ( smutex0_error_err_log_multi_d       ),
    .smutex0_error_err_log_multi_enb     ( smutex0_error_err_log_multi_enb     ),
    .smutex0_error_err_data_data_q       ( smutex0_error_err_data_data_q       ),
    .smutex0_error_err_data_data_d       ( smutex0_error_err_data_data_d       ),
    .smutex0_error_err_data_data_enb     ( smutex0_error_err_data_data_enb     ),
    .smutex0_error_err_idx_mutex_idx_q   ( smutex0_error_err_idx_mutex_idx_q   ),
    .smutex0_error_err_idx_mutex_idx_d   ( smutex0_error_err_idx_mutex_idx_d   ),
    .smutex0_error_err_idx_mutex_idx_enb ( smutex0_error_err_idx_mutex_idx_enb ) );

////////////////////////////////////////////////////////////////////////
// Configuration register module - mutex0
regmodel0_regmodel_core_mutex0_csr i_regmodel0_regmodel_core_mutex0_csr(
    .write_valid_i           ( mutex0_write_valid      ),
    .write_addr_i            ( write_addr[11:0]        ),
    .write_data_i            ( write_data              ),
    .write_strb_i            ( write_strb              ),
    .write_info_i            ( write_info              ),
    .write_err_o             ( mutex0_write_err        ),
    .read_addr_i             ( read_addr[11:0]         ),
    .read_valid_i            ( mutex0_read_valid       ),
    .read_data_o             ( mutex0_read_data        ),
    .read_info_i             ( read_info               ),
    .read_err_o              ( mutex0_read_err         ),
    .ready_o                 ( mutex0_ready            ),
    .mutex0_reqinfo          ( mutex0_reqinfo          ),
    .mutex0_mutex0_swid_qout ( mutex0_mutex0_swid_qout ),
    .mutex0_mutex0_swid_din  ( mutex0_mutex0_swid_din  ),
    .mutex0_mutex0_swid_w    ( mutex0_mutex0_swid_w    ),
    .mutex0_mutex0_swid_r    ( mutex0_mutex0_swid_r    ),
    .mutex0_mutex0_lock_qout ( mutex0_mutex0_lock_qout ),
    .mutex0_mutex0_lock_din  ( mutex0_mutex0_lock_din  ),
    .mutex0_mutex0_lock_w    ( mutex0_mutex0_lock_w    ),
    .mutex0_mutex1_swid_qout ( mutex0_mutex1_swid_qout ),
    .mutex0_mutex1_swid_din  ( mutex0_mutex1_swid_din  ),
    .mutex0_mutex1_swid_w    ( mutex0_mutex1_swid_w    ),
    .mutex0_mutex1_swid_r    ( mutex0_mutex1_swid_r    ),
    .mutex0_mutex1_lock_qout ( mutex0_mutex1_lock_qout ),
    .mutex0_mutex1_lock_din  ( mutex0_mutex1_lock_din  ),
    .mutex0_mutex1_lock_w    ( mutex0_mutex1_lock_w    ),
    .mutex0_mutex2_swid_qout ( mutex0_mutex2_swid_qout ),
    .mutex0_mutex2_swid_din  ( mutex0_mutex2_swid_din  ),
    .mutex0_mutex2_swid_w    ( mutex0_mutex2_swid_w    ),
    .mutex0_mutex2_swid_r    ( mutex0_mutex2_swid_r    ),
    .mutex0_mutex2_lock_qout ( mutex0_mutex2_lock_qout ),
    .mutex0_mutex2_lock_din  ( mutex0_mutex2_lock_din  ),
    .mutex0_mutex2_lock_w    ( mutex0_mutex2_lock_w    ),
    .mutex0_mutex3_swid_qout ( mutex0_mutex3_swid_qout ),
    .mutex0_mutex3_swid_din  ( mutex0_mutex3_swid_din  ),
    .mutex0_mutex3_swid_w    ( mutex0_mutex3_swid_w    ),
    .mutex0_mutex3_swid_r    ( mutex0_mutex3_swid_r    ),
    .mutex0_mutex3_lock_qout ( mutex0_mutex3_lock_qout ),
    .mutex0_mutex3_lock_din  ( mutex0_mutex3_lock_din  ),
    .mutex0_mutex3_lock_w    ( mutex0_mutex3_lock_w    ),
    .mutex0_mutex4_swid_qout ( mutex0_mutex4_swid_qout ),
    .mutex0_mutex4_swid_din  ( mutex0_mutex4_swid_din  ),
    .mutex0_mutex4_swid_w    ( mutex0_mutex4_swid_w    ),
    .mutex0_mutex4_swid_r    ( mutex0_mutex4_swid_r    ),
    .mutex0_mutex4_lock_qout ( mutex0_mutex4_lock_qout ),
    .mutex0_mutex4_lock_din  ( mutex0_mutex4_lock_din  ),
    .mutex0_mutex4_lock_w    ( mutex0_mutex4_lock_w    ),
    .mutex0_mutex5_swid_qout ( mutex0_mutex5_swid_qout ),
    .mutex0_mutex5_swid_din  ( mutex0_mutex5_swid_din  ),
    .mutex0_mutex5_swid_w    ( mutex0_mutex5_swid_w    ),
    .mutex0_mutex5_swid_r    ( mutex0_mutex5_swid_r    ),
    .mutex0_mutex5_lock_qout ( mutex0_mutex5_lock_qout ),
    .mutex0_mutex5_lock_din  ( mutex0_mutex5_lock_din  ),
    .mutex0_mutex5_lock_w    ( mutex0_mutex5_lock_w    ),
    .mutex0_mutex6_swid_qout ( mutex0_mutex6_swid_qout ),
    .mutex0_mutex6_swid_din  ( mutex0_mutex6_swid_din  ),
    .mutex0_mutex6_swid_w    ( mutex0_mutex6_swid_w    ),
    .mutex0_mutex6_swid_r    ( mutex0_mutex6_swid_r    ),
    .mutex0_mutex6_lock_qout ( mutex0_mutex6_lock_qout ),
    .mutex0_mutex6_lock_din  ( mutex0_mutex6_lock_din  ),
    .mutex0_mutex6_lock_w    ( mutex0_mutex6_lock_w    ),
    .mutex0_mutex7_swid_qout ( mutex0_mutex7_swid_qout ),
    .mutex0_mutex7_swid_din  ( mutex0_mutex7_swid_din  ),
    .mutex0_mutex7_swid_w    ( mutex0_mutex7_swid_w    ),
    .mutex0_mutex7_swid_r    ( mutex0_mutex7_swid_r    ),
    .mutex0_mutex7_lock_qout ( mutex0_mutex7_lock_qout ),
    .mutex0_mutex7_lock_din  ( mutex0_mutex7_lock_din  ),
    .mutex0_mutex7_lock_w    ( mutex0_mutex7_lock_w    ) );

////////////////////////////////////////////////////////////////////////
// Configuration register module - web0
regmodel0_regmodel_core_web0_csr i_regmodel0_regmodel_core_web0_csr(
    .reg_clk                              ( clk_i                                ),
    .non_retention_reset_ni               ( non_retention_reset_ni               ),
    .test_mode_cgm_i                      ( test_mode_cgm_i                      ),
    .write_valid_i                        ( web0_write_valid                     ),
    .write_addr_i                         ( write_addr[6:0]                      ),
    .write_data_i                         ( write_data                           ),
    .write_strb_i                         ( write_strb                           ),
    .write_info_i                         ( write_info                           ),
    .write_err_o                          ( web0_write_err                       ),
    .read_addr_i                          ( read_addr[6:0]                       ),
    .read_valid_i                         ( web0_read_valid                      ),
    .read_data_o                          ( web0_read_data                       ),
    .read_info_i                          ( read_info                            ),
    .read_err_o                           ( web0_read_err                        ),
    .ready_o                              ( web0_ready                           ),
    .web0_control_activate_low_pwr_edge_q ( web0_control_activate_low_pwr_edge_q ),
    .web0_control_event_suppress_edge_q   ( web0_control_event_suppress_edge_q   ),
    .web0_control_wake_now_edge_q         ( web0_control_wake_now_edge_q         ),
    .web0_control_epu_enable_edge_q       ( web0_control_epu_enable_edge_q       ),
    .web0_event_activate_low_pwr_q        ( web0_event_activate_low_pwr_q        ),
    .web0_event_activate_low_pwr_d        ( web0_event_activate_low_pwr_d        ),
    .web0_event_activate_low_pwr_enb      ( web0_event_activate_low_pwr_enb      ),
    .web0_event_event_suppress_q          ( web0_event_event_suppress_q          ),
    .web0_event_event_suppress_d          ( web0_event_event_suppress_d          ),
    .web0_event_event_suppress_enb        ( web0_event_event_suppress_enb        ),
    .web0_event_wake_now_q                ( web0_event_wake_now_q                ),
    .web0_event_wake_now_d                ( web0_event_wake_now_d                ),
    .web0_event_wake_now_enb              ( web0_event_wake_now_enb              ),
    .web0_event_epu_enable_q              ( web0_event_epu_enable_q              ),
    .web0_event_epu_enable_d              ( web0_event_epu_enable_d              ),
    .web0_event_epu_enable_enb            ( web0_event_epu_enable_enb            ),
    .web0_wake_enable0_enable_q           ( web0_wake_enable0_enable_q           ),
    .web0_wake_enable1_enable_q           ( web0_wake_enable1_enable_q           ),
    .web0_input_invert0_invert_q          ( web0_input_invert0_invert_q          ),
    .web0_input_invert1_invert_q          ( web0_input_invert1_invert_q          ) );

////////////////////////////////////////////////////////////////////////
// Configuration register module - web1
regmodel0_regmodel_core_web1_csr i_regmodel0_regmodel_core_web1_csr(
    .reg_clk                              ( clk_i                                ),
    .non_retention_reset_ni               ( non_retention_reset_ni               ),
    .test_mode_cgm_i                      ( test_mode_cgm_i                      ),
    .write_valid_i                        ( web1_write_valid                     ),
    .write_addr_i                         ( write_addr[6:0]                      ),
    .write_data_i                         ( write_data                           ),
    .write_strb_i                         ( write_strb                           ),
    .write_info_i                         ( write_info                           ),
    .write_err_o                          ( web1_write_err                       ),
    .read_addr_i                          ( read_addr[6:0]                       ),
    .read_valid_i                         ( web1_read_valid                      ),
    .read_data_o                          ( web1_read_data                       ),
    .read_info_i                          ( read_info                            ),
    .read_err_o                           ( web1_read_err                        ),
    .ready_o                              ( web1_ready                           ),
    .web1_control_activate_low_pwr_edge_q ( web1_control_activate_low_pwr_edge_q ),
    .web1_control_event_suppress_edge_q   ( web1_control_event_suppress_edge_q   ),
    .web1_control_wake_now_edge_q         ( web1_control_wake_now_edge_q         ),
    .web1_control_epu_enable_edge_q       ( web1_control_epu_enable_edge_q       ),
    .web1_event_activate_low_pwr_q        ( web1_event_activate_low_pwr_q        ),
    .web1_event_activate_low_pwr_d        ( web1_event_activate_low_pwr_d        ),
    .web1_event_activate_low_pwr_enb      ( web1_event_activate_low_pwr_enb      ),
    .web1_event_event_suppress_q          ( web1_event_event_suppress_q          ),
    .web1_event_event_suppress_d          ( web1_event_event_suppress_d          ),
    .web1_event_event_suppress_enb        ( web1_event_event_suppress_enb        ),
    .web1_event_wake_now_q                ( web1_event_wake_now_q                ),
    .web1_event_wake_now_d                ( web1_event_wake_now_d                ),
    .web1_event_wake_now_enb              ( web1_event_wake_now_enb              ),
    .web1_event_epu_enable_q              ( web1_event_epu_enable_q              ),
    .web1_event_epu_enable_d              ( web1_event_epu_enable_d              ),
    .web1_event_epu_enable_enb            ( web1_event_epu_enable_enb            ),
    .web1_wake_enable0_enable_q           ( web1_wake_enable0_enable_q           ),
    .web1_wake_enable1_enable_q           ( web1_wake_enable1_enable_q           ),
    .web1_input_invert0_invert_q          ( web1_input_invert0_invert_q          ),
    .web1_input_invert1_invert_q          ( web1_input_invert1_invert_q          ) );
// START ASSERTION
//synopsys translate_off

//coverage off
`ifdef ASSERT_ON
logic [31:0] assrt_write_mask;

assign assrt_write_mask = {
{8{write_strb[3]}}, {8{write_strb[2]}}, {8{write_strb[1]}}, {8{write_strb[0]}}
};
property fdbs0_fdb0_bell0_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h0) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb0_bell0_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell0_cnt_ext_din
ap_fdbs0_fdb0_bell0_cnt_ext_din: assert property (fdbs0_fdb0_bell0_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb0_bell0_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell0_cnt_ext_din
cp_fdbs0_fdb0_bell0_cnt_ext_din: cover property (fdbs0_fdb0_bell0_cnt_ext_din);

property fdbs0_fdb0_bell0_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h0) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb0_bell0_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell0_cnt_pulsed_w
ap_fdbs0_fdb0_bell0_cnt_pulsed_w: assert property (fdbs0_fdb0_bell0_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb0_bell0_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell0_cnt_pulsed_w
cp_fdbs0_fdb0_bell0_cnt_pulsed_w: cover property (fdbs0_fdb0_bell0_cnt_pulsed_w);

property fdbs0_fdb0_bell0_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h0) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb0_bell0_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell0_cnt_pulsed_r
ap_fdbs0_fdb0_bell0_cnt_pulsed_r: assert property (fdbs0_fdb0_bell0_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb0_bell0_cnt_r");
// sonics preserve_name cp_fdbs0_fdb0_bell0_cnt_pulsed_r
cp_fdbs0_fdb0_bell0_cnt_pulsed_r: cover property (fdbs0_fdb0_bell0_cnt_pulsed_r);

property fdbs0_fdb0_bell1_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h4) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb0_bell1_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell1_cnt_ext_din
ap_fdbs0_fdb0_bell1_cnt_ext_din: assert property (fdbs0_fdb0_bell1_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb0_bell1_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell1_cnt_ext_din
cp_fdbs0_fdb0_bell1_cnt_ext_din: cover property (fdbs0_fdb0_bell1_cnt_ext_din);

property fdbs0_fdb0_bell1_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h4) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb0_bell1_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell1_cnt_pulsed_w
ap_fdbs0_fdb0_bell1_cnt_pulsed_w: assert property (fdbs0_fdb0_bell1_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb0_bell1_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell1_cnt_pulsed_w
cp_fdbs0_fdb0_bell1_cnt_pulsed_w: cover property (fdbs0_fdb0_bell1_cnt_pulsed_w);

property fdbs0_fdb0_bell1_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h4) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb0_bell1_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell1_cnt_pulsed_r
ap_fdbs0_fdb0_bell1_cnt_pulsed_r: assert property (fdbs0_fdb0_bell1_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb0_bell1_cnt_r");
// sonics preserve_name cp_fdbs0_fdb0_bell1_cnt_pulsed_r
cp_fdbs0_fdb0_bell1_cnt_pulsed_r: cover property (fdbs0_fdb0_bell1_cnt_pulsed_r);

property fdbs0_fdb0_bell2_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h8) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb0_bell2_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell2_cnt_ext_din
ap_fdbs0_fdb0_bell2_cnt_ext_din: assert property (fdbs0_fdb0_bell2_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb0_bell2_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell2_cnt_ext_din
cp_fdbs0_fdb0_bell2_cnt_ext_din: cover property (fdbs0_fdb0_bell2_cnt_ext_din);

property fdbs0_fdb0_bell2_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h8) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb0_bell2_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell2_cnt_pulsed_w
ap_fdbs0_fdb0_bell2_cnt_pulsed_w: assert property (fdbs0_fdb0_bell2_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb0_bell2_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell2_cnt_pulsed_w
cp_fdbs0_fdb0_bell2_cnt_pulsed_w: cover property (fdbs0_fdb0_bell2_cnt_pulsed_w);

property fdbs0_fdb0_bell2_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h8) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb0_bell2_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell2_cnt_pulsed_r
ap_fdbs0_fdb0_bell2_cnt_pulsed_r: assert property (fdbs0_fdb0_bell2_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb0_bell2_cnt_r");
// sonics preserve_name cp_fdbs0_fdb0_bell2_cnt_pulsed_r
cp_fdbs0_fdb0_bell2_cnt_pulsed_r: cover property (fdbs0_fdb0_bell2_cnt_pulsed_r);

property fdbs0_fdb0_bell3_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'hc) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb0_bell3_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell3_cnt_ext_din
ap_fdbs0_fdb0_bell3_cnt_ext_din: assert property (fdbs0_fdb0_bell3_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb0_bell3_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell3_cnt_ext_din
cp_fdbs0_fdb0_bell3_cnt_ext_din: cover property (fdbs0_fdb0_bell3_cnt_ext_din);

property fdbs0_fdb0_bell3_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'hc) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb0_bell3_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell3_cnt_pulsed_w
ap_fdbs0_fdb0_bell3_cnt_pulsed_w: assert property (fdbs0_fdb0_bell3_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb0_bell3_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell3_cnt_pulsed_w
cp_fdbs0_fdb0_bell3_cnt_pulsed_w: cover property (fdbs0_fdb0_bell3_cnt_pulsed_w);

property fdbs0_fdb0_bell3_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'hc) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb0_bell3_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell3_cnt_pulsed_r
ap_fdbs0_fdb0_bell3_cnt_pulsed_r: assert property (fdbs0_fdb0_bell3_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb0_bell3_cnt_r");
// sonics preserve_name cp_fdbs0_fdb0_bell3_cnt_pulsed_r
cp_fdbs0_fdb0_bell3_cnt_pulsed_r: cover property (fdbs0_fdb0_bell3_cnt_pulsed_r);

property fdbs0_fdb0_bell4_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h10) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb0_bell4_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell4_cnt_ext_din
ap_fdbs0_fdb0_bell4_cnt_ext_din: assert property (fdbs0_fdb0_bell4_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb0_bell4_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell4_cnt_ext_din
cp_fdbs0_fdb0_bell4_cnt_ext_din: cover property (fdbs0_fdb0_bell4_cnt_ext_din);

property fdbs0_fdb0_bell4_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h10) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb0_bell4_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell4_cnt_pulsed_w
ap_fdbs0_fdb0_bell4_cnt_pulsed_w: assert property (fdbs0_fdb0_bell4_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb0_bell4_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell4_cnt_pulsed_w
cp_fdbs0_fdb0_bell4_cnt_pulsed_w: cover property (fdbs0_fdb0_bell4_cnt_pulsed_w);

property fdbs0_fdb0_bell4_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h10) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb0_bell4_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell4_cnt_pulsed_r
ap_fdbs0_fdb0_bell4_cnt_pulsed_r: assert property (fdbs0_fdb0_bell4_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb0_bell4_cnt_r");
// sonics preserve_name cp_fdbs0_fdb0_bell4_cnt_pulsed_r
cp_fdbs0_fdb0_bell4_cnt_pulsed_r: cover property (fdbs0_fdb0_bell4_cnt_pulsed_r);

property fdbs0_fdb0_bell5_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h14) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb0_bell5_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell5_cnt_ext_din
ap_fdbs0_fdb0_bell5_cnt_ext_din: assert property (fdbs0_fdb0_bell5_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb0_bell5_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell5_cnt_ext_din
cp_fdbs0_fdb0_bell5_cnt_ext_din: cover property (fdbs0_fdb0_bell5_cnt_ext_din);

property fdbs0_fdb0_bell5_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h14) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb0_bell5_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell5_cnt_pulsed_w
ap_fdbs0_fdb0_bell5_cnt_pulsed_w: assert property (fdbs0_fdb0_bell5_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb0_bell5_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell5_cnt_pulsed_w
cp_fdbs0_fdb0_bell5_cnt_pulsed_w: cover property (fdbs0_fdb0_bell5_cnt_pulsed_w);

property fdbs0_fdb0_bell5_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h14) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb0_bell5_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell5_cnt_pulsed_r
ap_fdbs0_fdb0_bell5_cnt_pulsed_r: assert property (fdbs0_fdb0_bell5_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb0_bell5_cnt_r");
// sonics preserve_name cp_fdbs0_fdb0_bell5_cnt_pulsed_r
cp_fdbs0_fdb0_bell5_cnt_pulsed_r: cover property (fdbs0_fdb0_bell5_cnt_pulsed_r);

property fdbs0_fdb0_bell6_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h18) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb0_bell6_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell6_cnt_ext_din
ap_fdbs0_fdb0_bell6_cnt_ext_din: assert property (fdbs0_fdb0_bell6_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb0_bell6_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell6_cnt_ext_din
cp_fdbs0_fdb0_bell6_cnt_ext_din: cover property (fdbs0_fdb0_bell6_cnt_ext_din);

property fdbs0_fdb0_bell6_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h18) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb0_bell6_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell6_cnt_pulsed_w
ap_fdbs0_fdb0_bell6_cnt_pulsed_w: assert property (fdbs0_fdb0_bell6_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb0_bell6_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell6_cnt_pulsed_w
cp_fdbs0_fdb0_bell6_cnt_pulsed_w: cover property (fdbs0_fdb0_bell6_cnt_pulsed_w);

property fdbs0_fdb0_bell6_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h18) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb0_bell6_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell6_cnt_pulsed_r
ap_fdbs0_fdb0_bell6_cnt_pulsed_r: assert property (fdbs0_fdb0_bell6_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb0_bell6_cnt_r");
// sonics preserve_name cp_fdbs0_fdb0_bell6_cnt_pulsed_r
cp_fdbs0_fdb0_bell6_cnt_pulsed_r: cover property (fdbs0_fdb0_bell6_cnt_pulsed_r);

property fdbs0_fdb0_bell7_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h1c) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb0_bell7_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell7_cnt_ext_din
ap_fdbs0_fdb0_bell7_cnt_ext_din: assert property (fdbs0_fdb0_bell7_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb0_bell7_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell7_cnt_ext_din
cp_fdbs0_fdb0_bell7_cnt_ext_din: cover property (fdbs0_fdb0_bell7_cnt_ext_din);

property fdbs0_fdb0_bell7_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h1c) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb0_bell7_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell7_cnt_pulsed_w
ap_fdbs0_fdb0_bell7_cnt_pulsed_w: assert property (fdbs0_fdb0_bell7_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb0_bell7_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell7_cnt_pulsed_w
cp_fdbs0_fdb0_bell7_cnt_pulsed_w: cover property (fdbs0_fdb0_bell7_cnt_pulsed_w);

property fdbs0_fdb0_bell7_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h1c) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb0_bell7_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell7_cnt_pulsed_r
ap_fdbs0_fdb0_bell7_cnt_pulsed_r: assert property (fdbs0_fdb0_bell7_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb0_bell7_cnt_r");
// sonics preserve_name cp_fdbs0_fdb0_bell7_cnt_pulsed_r
cp_fdbs0_fdb0_bell7_cnt_pulsed_r: cover property (fdbs0_fdb0_bell7_cnt_pulsed_r);

property fdbs0_fdb0_bell8_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h20) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb0_bell8_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell8_cnt_ext_din
ap_fdbs0_fdb0_bell8_cnt_ext_din: assert property (fdbs0_fdb0_bell8_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb0_bell8_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell8_cnt_ext_din
cp_fdbs0_fdb0_bell8_cnt_ext_din: cover property (fdbs0_fdb0_bell8_cnt_ext_din);

property fdbs0_fdb0_bell8_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h20) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb0_bell8_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell8_cnt_pulsed_w
ap_fdbs0_fdb0_bell8_cnt_pulsed_w: assert property (fdbs0_fdb0_bell8_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb0_bell8_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell8_cnt_pulsed_w
cp_fdbs0_fdb0_bell8_cnt_pulsed_w: cover property (fdbs0_fdb0_bell8_cnt_pulsed_w);

property fdbs0_fdb0_bell8_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h20) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb0_bell8_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell8_cnt_pulsed_r
ap_fdbs0_fdb0_bell8_cnt_pulsed_r: assert property (fdbs0_fdb0_bell8_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb0_bell8_cnt_r");
// sonics preserve_name cp_fdbs0_fdb0_bell8_cnt_pulsed_r
cp_fdbs0_fdb0_bell8_cnt_pulsed_r: cover property (fdbs0_fdb0_bell8_cnt_pulsed_r);

property fdbs0_fdb0_bell9_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h24) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb0_bell9_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell9_cnt_ext_din
ap_fdbs0_fdb0_bell9_cnt_ext_din: assert property (fdbs0_fdb0_bell9_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb0_bell9_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell9_cnt_ext_din
cp_fdbs0_fdb0_bell9_cnt_ext_din: cover property (fdbs0_fdb0_bell9_cnt_ext_din);

property fdbs0_fdb0_bell9_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h24) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb0_bell9_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell9_cnt_pulsed_w
ap_fdbs0_fdb0_bell9_cnt_pulsed_w: assert property (fdbs0_fdb0_bell9_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb0_bell9_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell9_cnt_pulsed_w
cp_fdbs0_fdb0_bell9_cnt_pulsed_w: cover property (fdbs0_fdb0_bell9_cnt_pulsed_w);

property fdbs0_fdb0_bell9_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h24) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb0_bell9_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell9_cnt_pulsed_r
ap_fdbs0_fdb0_bell9_cnt_pulsed_r: assert property (fdbs0_fdb0_bell9_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb0_bell9_cnt_r");
// sonics preserve_name cp_fdbs0_fdb0_bell9_cnt_pulsed_r
cp_fdbs0_fdb0_bell9_cnt_pulsed_r: cover property (fdbs0_fdb0_bell9_cnt_pulsed_r);

property fdbs0_fdb0_bell10_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h28) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb0_bell10_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell10_cnt_ext_din
ap_fdbs0_fdb0_bell10_cnt_ext_din: assert property (fdbs0_fdb0_bell10_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb0_bell10_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell10_cnt_ext_din
cp_fdbs0_fdb0_bell10_cnt_ext_din: cover property (fdbs0_fdb0_bell10_cnt_ext_din);

property fdbs0_fdb0_bell10_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h28) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb0_bell10_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell10_cnt_pulsed_w
ap_fdbs0_fdb0_bell10_cnt_pulsed_w: assert property (fdbs0_fdb0_bell10_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb0_bell10_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell10_cnt_pulsed_w
cp_fdbs0_fdb0_bell10_cnt_pulsed_w: cover property (fdbs0_fdb0_bell10_cnt_pulsed_w);

property fdbs0_fdb0_bell10_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h28) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb0_bell10_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell10_cnt_pulsed_r
ap_fdbs0_fdb0_bell10_cnt_pulsed_r: assert property (fdbs0_fdb0_bell10_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb0_bell10_cnt_r");
// sonics preserve_name cp_fdbs0_fdb0_bell10_cnt_pulsed_r
cp_fdbs0_fdb0_bell10_cnt_pulsed_r: cover property (fdbs0_fdb0_bell10_cnt_pulsed_r);

property fdbs0_fdb0_bell11_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h2c) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb0_bell11_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell11_cnt_ext_din
ap_fdbs0_fdb0_bell11_cnt_ext_din: assert property (fdbs0_fdb0_bell11_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb0_bell11_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell11_cnt_ext_din
cp_fdbs0_fdb0_bell11_cnt_ext_din: cover property (fdbs0_fdb0_bell11_cnt_ext_din);

property fdbs0_fdb0_bell11_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h2c) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb0_bell11_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell11_cnt_pulsed_w
ap_fdbs0_fdb0_bell11_cnt_pulsed_w: assert property (fdbs0_fdb0_bell11_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb0_bell11_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell11_cnt_pulsed_w
cp_fdbs0_fdb0_bell11_cnt_pulsed_w: cover property (fdbs0_fdb0_bell11_cnt_pulsed_w);

property fdbs0_fdb0_bell11_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h2c) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb0_bell11_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell11_cnt_pulsed_r
ap_fdbs0_fdb0_bell11_cnt_pulsed_r: assert property (fdbs0_fdb0_bell11_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb0_bell11_cnt_r");
// sonics preserve_name cp_fdbs0_fdb0_bell11_cnt_pulsed_r
cp_fdbs0_fdb0_bell11_cnt_pulsed_r: cover property (fdbs0_fdb0_bell11_cnt_pulsed_r);

property fdbs0_fdb0_bell12_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h30) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb0_bell12_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell12_cnt_ext_din
ap_fdbs0_fdb0_bell12_cnt_ext_din: assert property (fdbs0_fdb0_bell12_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb0_bell12_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell12_cnt_ext_din
cp_fdbs0_fdb0_bell12_cnt_ext_din: cover property (fdbs0_fdb0_bell12_cnt_ext_din);

property fdbs0_fdb0_bell12_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h30) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb0_bell12_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell12_cnt_pulsed_w
ap_fdbs0_fdb0_bell12_cnt_pulsed_w: assert property (fdbs0_fdb0_bell12_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb0_bell12_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell12_cnt_pulsed_w
cp_fdbs0_fdb0_bell12_cnt_pulsed_w: cover property (fdbs0_fdb0_bell12_cnt_pulsed_w);

property fdbs0_fdb0_bell12_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h30) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb0_bell12_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell12_cnt_pulsed_r
ap_fdbs0_fdb0_bell12_cnt_pulsed_r: assert property (fdbs0_fdb0_bell12_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb0_bell12_cnt_r");
// sonics preserve_name cp_fdbs0_fdb0_bell12_cnt_pulsed_r
cp_fdbs0_fdb0_bell12_cnt_pulsed_r: cover property (fdbs0_fdb0_bell12_cnt_pulsed_r);

property fdbs0_fdb0_bell13_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h34) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb0_bell13_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell13_cnt_ext_din
ap_fdbs0_fdb0_bell13_cnt_ext_din: assert property (fdbs0_fdb0_bell13_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb0_bell13_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell13_cnt_ext_din
cp_fdbs0_fdb0_bell13_cnt_ext_din: cover property (fdbs0_fdb0_bell13_cnt_ext_din);

property fdbs0_fdb0_bell13_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h34) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb0_bell13_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell13_cnt_pulsed_w
ap_fdbs0_fdb0_bell13_cnt_pulsed_w: assert property (fdbs0_fdb0_bell13_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb0_bell13_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell13_cnt_pulsed_w
cp_fdbs0_fdb0_bell13_cnt_pulsed_w: cover property (fdbs0_fdb0_bell13_cnt_pulsed_w);

property fdbs0_fdb0_bell13_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h34) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb0_bell13_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell13_cnt_pulsed_r
ap_fdbs0_fdb0_bell13_cnt_pulsed_r: assert property (fdbs0_fdb0_bell13_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb0_bell13_cnt_r");
// sonics preserve_name cp_fdbs0_fdb0_bell13_cnt_pulsed_r
cp_fdbs0_fdb0_bell13_cnt_pulsed_r: cover property (fdbs0_fdb0_bell13_cnt_pulsed_r);

property fdbs0_fdb0_bell14_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h38) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb0_bell14_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell14_cnt_ext_din
ap_fdbs0_fdb0_bell14_cnt_ext_din: assert property (fdbs0_fdb0_bell14_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb0_bell14_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell14_cnt_ext_din
cp_fdbs0_fdb0_bell14_cnt_ext_din: cover property (fdbs0_fdb0_bell14_cnt_ext_din);

property fdbs0_fdb0_bell14_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h38) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb0_bell14_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell14_cnt_pulsed_w
ap_fdbs0_fdb0_bell14_cnt_pulsed_w: assert property (fdbs0_fdb0_bell14_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb0_bell14_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell14_cnt_pulsed_w
cp_fdbs0_fdb0_bell14_cnt_pulsed_w: cover property (fdbs0_fdb0_bell14_cnt_pulsed_w);

property fdbs0_fdb0_bell14_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h38) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb0_bell14_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell14_cnt_pulsed_r
ap_fdbs0_fdb0_bell14_cnt_pulsed_r: assert property (fdbs0_fdb0_bell14_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb0_bell14_cnt_r");
// sonics preserve_name cp_fdbs0_fdb0_bell14_cnt_pulsed_r
cp_fdbs0_fdb0_bell14_cnt_pulsed_r: cover property (fdbs0_fdb0_bell14_cnt_pulsed_r);

property fdbs0_fdb0_bell15_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h3c) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb0_bell15_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell15_cnt_ext_din
ap_fdbs0_fdb0_bell15_cnt_ext_din: assert property (fdbs0_fdb0_bell15_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb0_bell15_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell15_cnt_ext_din
cp_fdbs0_fdb0_bell15_cnt_ext_din: cover property (fdbs0_fdb0_bell15_cnt_ext_din);

property fdbs0_fdb0_bell15_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h3c) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb0_bell15_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell15_cnt_pulsed_w
ap_fdbs0_fdb0_bell15_cnt_pulsed_w: assert property (fdbs0_fdb0_bell15_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb0_bell15_cnt_w");
// sonics preserve_name cp_fdbs0_fdb0_bell15_cnt_pulsed_w
cp_fdbs0_fdb0_bell15_cnt_pulsed_w: cover property (fdbs0_fdb0_bell15_cnt_pulsed_w);

property fdbs0_fdb0_bell15_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h3c) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb0_bell15_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_bell15_cnt_pulsed_r
ap_fdbs0_fdb0_bell15_cnt_pulsed_r: assert property (fdbs0_fdb0_bell15_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb0_bell15_cnt_r");
// sonics preserve_name cp_fdbs0_fdb0_bell15_cnt_pulsed_r
cp_fdbs0_fdb0_bell15_cnt_pulsed_r: cover property (fdbs0_fdb0_bell15_cnt_pulsed_r);

property fdbs0_fdb0_enable_enable_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h78) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb0_enable_enable_din == (write_data[15:0] & assrt_write_mask[15:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb0_enable_enable_ext_din
ap_fdbs0_fdb0_enable_enable_ext_din: assert property (fdbs0_fdb0_enable_enable_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb0_enable_enable_w");
// sonics preserve_name cp_fdbs0_fdb0_enable_enable_ext_din
cp_fdbs0_fdb0_enable_enable_ext_din: cover property (fdbs0_fdb0_enable_enable_ext_din);

property fdbs0_fdb0_enable_enable_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h78) & fdbs0_write_valid & fdbs0_ready & |write_strb[1:0]) |-> fdbs0_fdb0_enable_enable_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb0_enable_enable_pulsed_w
ap_fdbs0_fdb0_enable_enable_pulsed_w: assert property (fdbs0_fdb0_enable_enable_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb0_enable_enable_w");
// sonics preserve_name cp_fdbs0_fdb0_enable_enable_pulsed_w
cp_fdbs0_fdb0_enable_enable_pulsed_w: cover property (fdbs0_fdb0_enable_enable_pulsed_w);

property fdbs0_fdb1_bell0_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h200) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb1_bell0_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell0_cnt_ext_din
ap_fdbs0_fdb1_bell0_cnt_ext_din: assert property (fdbs0_fdb1_bell0_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb1_bell0_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell0_cnt_ext_din
cp_fdbs0_fdb1_bell0_cnt_ext_din: cover property (fdbs0_fdb1_bell0_cnt_ext_din);

property fdbs0_fdb1_bell0_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h200) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb1_bell0_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell0_cnt_pulsed_w
ap_fdbs0_fdb1_bell0_cnt_pulsed_w: assert property (fdbs0_fdb1_bell0_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb1_bell0_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell0_cnt_pulsed_w
cp_fdbs0_fdb1_bell0_cnt_pulsed_w: cover property (fdbs0_fdb1_bell0_cnt_pulsed_w);

property fdbs0_fdb1_bell0_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h200) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb1_bell0_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell0_cnt_pulsed_r
ap_fdbs0_fdb1_bell0_cnt_pulsed_r: assert property (fdbs0_fdb1_bell0_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb1_bell0_cnt_r");
// sonics preserve_name cp_fdbs0_fdb1_bell0_cnt_pulsed_r
cp_fdbs0_fdb1_bell0_cnt_pulsed_r: cover property (fdbs0_fdb1_bell0_cnt_pulsed_r);

property fdbs0_fdb1_bell1_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h204) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb1_bell1_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell1_cnt_ext_din
ap_fdbs0_fdb1_bell1_cnt_ext_din: assert property (fdbs0_fdb1_bell1_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb1_bell1_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell1_cnt_ext_din
cp_fdbs0_fdb1_bell1_cnt_ext_din: cover property (fdbs0_fdb1_bell1_cnt_ext_din);

property fdbs0_fdb1_bell1_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h204) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb1_bell1_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell1_cnt_pulsed_w
ap_fdbs0_fdb1_bell1_cnt_pulsed_w: assert property (fdbs0_fdb1_bell1_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb1_bell1_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell1_cnt_pulsed_w
cp_fdbs0_fdb1_bell1_cnt_pulsed_w: cover property (fdbs0_fdb1_bell1_cnt_pulsed_w);

property fdbs0_fdb1_bell1_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h204) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb1_bell1_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell1_cnt_pulsed_r
ap_fdbs0_fdb1_bell1_cnt_pulsed_r: assert property (fdbs0_fdb1_bell1_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb1_bell1_cnt_r");
// sonics preserve_name cp_fdbs0_fdb1_bell1_cnt_pulsed_r
cp_fdbs0_fdb1_bell1_cnt_pulsed_r: cover property (fdbs0_fdb1_bell1_cnt_pulsed_r);

property fdbs0_fdb1_bell2_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h208) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb1_bell2_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell2_cnt_ext_din
ap_fdbs0_fdb1_bell2_cnt_ext_din: assert property (fdbs0_fdb1_bell2_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb1_bell2_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell2_cnt_ext_din
cp_fdbs0_fdb1_bell2_cnt_ext_din: cover property (fdbs0_fdb1_bell2_cnt_ext_din);

property fdbs0_fdb1_bell2_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h208) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb1_bell2_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell2_cnt_pulsed_w
ap_fdbs0_fdb1_bell2_cnt_pulsed_w: assert property (fdbs0_fdb1_bell2_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb1_bell2_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell2_cnt_pulsed_w
cp_fdbs0_fdb1_bell2_cnt_pulsed_w: cover property (fdbs0_fdb1_bell2_cnt_pulsed_w);

property fdbs0_fdb1_bell2_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h208) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb1_bell2_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell2_cnt_pulsed_r
ap_fdbs0_fdb1_bell2_cnt_pulsed_r: assert property (fdbs0_fdb1_bell2_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb1_bell2_cnt_r");
// sonics preserve_name cp_fdbs0_fdb1_bell2_cnt_pulsed_r
cp_fdbs0_fdb1_bell2_cnt_pulsed_r: cover property (fdbs0_fdb1_bell2_cnt_pulsed_r);

property fdbs0_fdb1_bell3_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h20c) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb1_bell3_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell3_cnt_ext_din
ap_fdbs0_fdb1_bell3_cnt_ext_din: assert property (fdbs0_fdb1_bell3_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb1_bell3_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell3_cnt_ext_din
cp_fdbs0_fdb1_bell3_cnt_ext_din: cover property (fdbs0_fdb1_bell3_cnt_ext_din);

property fdbs0_fdb1_bell3_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h20c) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb1_bell3_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell3_cnt_pulsed_w
ap_fdbs0_fdb1_bell3_cnt_pulsed_w: assert property (fdbs0_fdb1_bell3_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb1_bell3_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell3_cnt_pulsed_w
cp_fdbs0_fdb1_bell3_cnt_pulsed_w: cover property (fdbs0_fdb1_bell3_cnt_pulsed_w);

property fdbs0_fdb1_bell3_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h20c) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb1_bell3_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell3_cnt_pulsed_r
ap_fdbs0_fdb1_bell3_cnt_pulsed_r: assert property (fdbs0_fdb1_bell3_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb1_bell3_cnt_r");
// sonics preserve_name cp_fdbs0_fdb1_bell3_cnt_pulsed_r
cp_fdbs0_fdb1_bell3_cnt_pulsed_r: cover property (fdbs0_fdb1_bell3_cnt_pulsed_r);

property fdbs0_fdb1_bell4_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h210) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb1_bell4_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell4_cnt_ext_din
ap_fdbs0_fdb1_bell4_cnt_ext_din: assert property (fdbs0_fdb1_bell4_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb1_bell4_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell4_cnt_ext_din
cp_fdbs0_fdb1_bell4_cnt_ext_din: cover property (fdbs0_fdb1_bell4_cnt_ext_din);

property fdbs0_fdb1_bell4_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h210) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb1_bell4_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell4_cnt_pulsed_w
ap_fdbs0_fdb1_bell4_cnt_pulsed_w: assert property (fdbs0_fdb1_bell4_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb1_bell4_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell4_cnt_pulsed_w
cp_fdbs0_fdb1_bell4_cnt_pulsed_w: cover property (fdbs0_fdb1_bell4_cnt_pulsed_w);

property fdbs0_fdb1_bell4_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h210) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb1_bell4_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell4_cnt_pulsed_r
ap_fdbs0_fdb1_bell4_cnt_pulsed_r: assert property (fdbs0_fdb1_bell4_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb1_bell4_cnt_r");
// sonics preserve_name cp_fdbs0_fdb1_bell4_cnt_pulsed_r
cp_fdbs0_fdb1_bell4_cnt_pulsed_r: cover property (fdbs0_fdb1_bell4_cnt_pulsed_r);

property fdbs0_fdb1_bell5_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h214) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb1_bell5_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell5_cnt_ext_din
ap_fdbs0_fdb1_bell5_cnt_ext_din: assert property (fdbs0_fdb1_bell5_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb1_bell5_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell5_cnt_ext_din
cp_fdbs0_fdb1_bell5_cnt_ext_din: cover property (fdbs0_fdb1_bell5_cnt_ext_din);

property fdbs0_fdb1_bell5_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h214) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb1_bell5_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell5_cnt_pulsed_w
ap_fdbs0_fdb1_bell5_cnt_pulsed_w: assert property (fdbs0_fdb1_bell5_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb1_bell5_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell5_cnt_pulsed_w
cp_fdbs0_fdb1_bell5_cnt_pulsed_w: cover property (fdbs0_fdb1_bell5_cnt_pulsed_w);

property fdbs0_fdb1_bell5_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h214) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb1_bell5_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell5_cnt_pulsed_r
ap_fdbs0_fdb1_bell5_cnt_pulsed_r: assert property (fdbs0_fdb1_bell5_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb1_bell5_cnt_r");
// sonics preserve_name cp_fdbs0_fdb1_bell5_cnt_pulsed_r
cp_fdbs0_fdb1_bell5_cnt_pulsed_r: cover property (fdbs0_fdb1_bell5_cnt_pulsed_r);

property fdbs0_fdb1_bell6_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h218) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb1_bell6_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell6_cnt_ext_din
ap_fdbs0_fdb1_bell6_cnt_ext_din: assert property (fdbs0_fdb1_bell6_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb1_bell6_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell6_cnt_ext_din
cp_fdbs0_fdb1_bell6_cnt_ext_din: cover property (fdbs0_fdb1_bell6_cnt_ext_din);

property fdbs0_fdb1_bell6_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h218) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb1_bell6_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell6_cnt_pulsed_w
ap_fdbs0_fdb1_bell6_cnt_pulsed_w: assert property (fdbs0_fdb1_bell6_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb1_bell6_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell6_cnt_pulsed_w
cp_fdbs0_fdb1_bell6_cnt_pulsed_w: cover property (fdbs0_fdb1_bell6_cnt_pulsed_w);

property fdbs0_fdb1_bell6_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h218) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb1_bell6_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell6_cnt_pulsed_r
ap_fdbs0_fdb1_bell6_cnt_pulsed_r: assert property (fdbs0_fdb1_bell6_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb1_bell6_cnt_r");
// sonics preserve_name cp_fdbs0_fdb1_bell6_cnt_pulsed_r
cp_fdbs0_fdb1_bell6_cnt_pulsed_r: cover property (fdbs0_fdb1_bell6_cnt_pulsed_r);

property fdbs0_fdb1_bell7_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h21c) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb1_bell7_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell7_cnt_ext_din
ap_fdbs0_fdb1_bell7_cnt_ext_din: assert property (fdbs0_fdb1_bell7_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb1_bell7_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell7_cnt_ext_din
cp_fdbs0_fdb1_bell7_cnt_ext_din: cover property (fdbs0_fdb1_bell7_cnt_ext_din);

property fdbs0_fdb1_bell7_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h21c) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb1_bell7_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell7_cnt_pulsed_w
ap_fdbs0_fdb1_bell7_cnt_pulsed_w: assert property (fdbs0_fdb1_bell7_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb1_bell7_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell7_cnt_pulsed_w
cp_fdbs0_fdb1_bell7_cnt_pulsed_w: cover property (fdbs0_fdb1_bell7_cnt_pulsed_w);

property fdbs0_fdb1_bell7_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h21c) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb1_bell7_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell7_cnt_pulsed_r
ap_fdbs0_fdb1_bell7_cnt_pulsed_r: assert property (fdbs0_fdb1_bell7_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb1_bell7_cnt_r");
// sonics preserve_name cp_fdbs0_fdb1_bell7_cnt_pulsed_r
cp_fdbs0_fdb1_bell7_cnt_pulsed_r: cover property (fdbs0_fdb1_bell7_cnt_pulsed_r);

property fdbs0_fdb1_bell8_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h220) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb1_bell8_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell8_cnt_ext_din
ap_fdbs0_fdb1_bell8_cnt_ext_din: assert property (fdbs0_fdb1_bell8_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb1_bell8_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell8_cnt_ext_din
cp_fdbs0_fdb1_bell8_cnt_ext_din: cover property (fdbs0_fdb1_bell8_cnt_ext_din);

property fdbs0_fdb1_bell8_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h220) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb1_bell8_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell8_cnt_pulsed_w
ap_fdbs0_fdb1_bell8_cnt_pulsed_w: assert property (fdbs0_fdb1_bell8_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb1_bell8_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell8_cnt_pulsed_w
cp_fdbs0_fdb1_bell8_cnt_pulsed_w: cover property (fdbs0_fdb1_bell8_cnt_pulsed_w);

property fdbs0_fdb1_bell8_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h220) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb1_bell8_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell8_cnt_pulsed_r
ap_fdbs0_fdb1_bell8_cnt_pulsed_r: assert property (fdbs0_fdb1_bell8_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb1_bell8_cnt_r");
// sonics preserve_name cp_fdbs0_fdb1_bell8_cnt_pulsed_r
cp_fdbs0_fdb1_bell8_cnt_pulsed_r: cover property (fdbs0_fdb1_bell8_cnt_pulsed_r);

property fdbs0_fdb1_bell9_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h224) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb1_bell9_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell9_cnt_ext_din
ap_fdbs0_fdb1_bell9_cnt_ext_din: assert property (fdbs0_fdb1_bell9_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb1_bell9_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell9_cnt_ext_din
cp_fdbs0_fdb1_bell9_cnt_ext_din: cover property (fdbs0_fdb1_bell9_cnt_ext_din);

property fdbs0_fdb1_bell9_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h224) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb1_bell9_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell9_cnt_pulsed_w
ap_fdbs0_fdb1_bell9_cnt_pulsed_w: assert property (fdbs0_fdb1_bell9_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb1_bell9_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell9_cnt_pulsed_w
cp_fdbs0_fdb1_bell9_cnt_pulsed_w: cover property (fdbs0_fdb1_bell9_cnt_pulsed_w);

property fdbs0_fdb1_bell9_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h224) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb1_bell9_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell9_cnt_pulsed_r
ap_fdbs0_fdb1_bell9_cnt_pulsed_r: assert property (fdbs0_fdb1_bell9_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb1_bell9_cnt_r");
// sonics preserve_name cp_fdbs0_fdb1_bell9_cnt_pulsed_r
cp_fdbs0_fdb1_bell9_cnt_pulsed_r: cover property (fdbs0_fdb1_bell9_cnt_pulsed_r);

property fdbs0_fdb1_bell10_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h228) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb1_bell10_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell10_cnt_ext_din
ap_fdbs0_fdb1_bell10_cnt_ext_din: assert property (fdbs0_fdb1_bell10_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb1_bell10_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell10_cnt_ext_din
cp_fdbs0_fdb1_bell10_cnt_ext_din: cover property (fdbs0_fdb1_bell10_cnt_ext_din);

property fdbs0_fdb1_bell10_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h228) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb1_bell10_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell10_cnt_pulsed_w
ap_fdbs0_fdb1_bell10_cnt_pulsed_w: assert property (fdbs0_fdb1_bell10_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb1_bell10_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell10_cnt_pulsed_w
cp_fdbs0_fdb1_bell10_cnt_pulsed_w: cover property (fdbs0_fdb1_bell10_cnt_pulsed_w);

property fdbs0_fdb1_bell10_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h228) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb1_bell10_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell10_cnt_pulsed_r
ap_fdbs0_fdb1_bell10_cnt_pulsed_r: assert property (fdbs0_fdb1_bell10_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb1_bell10_cnt_r");
// sonics preserve_name cp_fdbs0_fdb1_bell10_cnt_pulsed_r
cp_fdbs0_fdb1_bell10_cnt_pulsed_r: cover property (fdbs0_fdb1_bell10_cnt_pulsed_r);

property fdbs0_fdb1_bell11_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h22c) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb1_bell11_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell11_cnt_ext_din
ap_fdbs0_fdb1_bell11_cnt_ext_din: assert property (fdbs0_fdb1_bell11_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb1_bell11_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell11_cnt_ext_din
cp_fdbs0_fdb1_bell11_cnt_ext_din: cover property (fdbs0_fdb1_bell11_cnt_ext_din);

property fdbs0_fdb1_bell11_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h22c) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb1_bell11_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell11_cnt_pulsed_w
ap_fdbs0_fdb1_bell11_cnt_pulsed_w: assert property (fdbs0_fdb1_bell11_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb1_bell11_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell11_cnt_pulsed_w
cp_fdbs0_fdb1_bell11_cnt_pulsed_w: cover property (fdbs0_fdb1_bell11_cnt_pulsed_w);

property fdbs0_fdb1_bell11_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h22c) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb1_bell11_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell11_cnt_pulsed_r
ap_fdbs0_fdb1_bell11_cnt_pulsed_r: assert property (fdbs0_fdb1_bell11_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb1_bell11_cnt_r");
// sonics preserve_name cp_fdbs0_fdb1_bell11_cnt_pulsed_r
cp_fdbs0_fdb1_bell11_cnt_pulsed_r: cover property (fdbs0_fdb1_bell11_cnt_pulsed_r);

property fdbs0_fdb1_bell12_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h230) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb1_bell12_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell12_cnt_ext_din
ap_fdbs0_fdb1_bell12_cnt_ext_din: assert property (fdbs0_fdb1_bell12_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb1_bell12_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell12_cnt_ext_din
cp_fdbs0_fdb1_bell12_cnt_ext_din: cover property (fdbs0_fdb1_bell12_cnt_ext_din);

property fdbs0_fdb1_bell12_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h230) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb1_bell12_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell12_cnt_pulsed_w
ap_fdbs0_fdb1_bell12_cnt_pulsed_w: assert property (fdbs0_fdb1_bell12_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb1_bell12_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell12_cnt_pulsed_w
cp_fdbs0_fdb1_bell12_cnt_pulsed_w: cover property (fdbs0_fdb1_bell12_cnt_pulsed_w);

property fdbs0_fdb1_bell12_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h230) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb1_bell12_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell12_cnt_pulsed_r
ap_fdbs0_fdb1_bell12_cnt_pulsed_r: assert property (fdbs0_fdb1_bell12_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb1_bell12_cnt_r");
// sonics preserve_name cp_fdbs0_fdb1_bell12_cnt_pulsed_r
cp_fdbs0_fdb1_bell12_cnt_pulsed_r: cover property (fdbs0_fdb1_bell12_cnt_pulsed_r);

property fdbs0_fdb1_bell13_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h234) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb1_bell13_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell13_cnt_ext_din
ap_fdbs0_fdb1_bell13_cnt_ext_din: assert property (fdbs0_fdb1_bell13_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb1_bell13_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell13_cnt_ext_din
cp_fdbs0_fdb1_bell13_cnt_ext_din: cover property (fdbs0_fdb1_bell13_cnt_ext_din);

property fdbs0_fdb1_bell13_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h234) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb1_bell13_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell13_cnt_pulsed_w
ap_fdbs0_fdb1_bell13_cnt_pulsed_w: assert property (fdbs0_fdb1_bell13_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb1_bell13_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell13_cnt_pulsed_w
cp_fdbs0_fdb1_bell13_cnt_pulsed_w: cover property (fdbs0_fdb1_bell13_cnt_pulsed_w);

property fdbs0_fdb1_bell13_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h234) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb1_bell13_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell13_cnt_pulsed_r
ap_fdbs0_fdb1_bell13_cnt_pulsed_r: assert property (fdbs0_fdb1_bell13_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb1_bell13_cnt_r");
// sonics preserve_name cp_fdbs0_fdb1_bell13_cnt_pulsed_r
cp_fdbs0_fdb1_bell13_cnt_pulsed_r: cover property (fdbs0_fdb1_bell13_cnt_pulsed_r);

property fdbs0_fdb1_bell14_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h238) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb1_bell14_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell14_cnt_ext_din
ap_fdbs0_fdb1_bell14_cnt_ext_din: assert property (fdbs0_fdb1_bell14_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb1_bell14_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell14_cnt_ext_din
cp_fdbs0_fdb1_bell14_cnt_ext_din: cover property (fdbs0_fdb1_bell14_cnt_ext_din);

property fdbs0_fdb1_bell14_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h238) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb1_bell14_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell14_cnt_pulsed_w
ap_fdbs0_fdb1_bell14_cnt_pulsed_w: assert property (fdbs0_fdb1_bell14_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb1_bell14_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell14_cnt_pulsed_w
cp_fdbs0_fdb1_bell14_cnt_pulsed_w: cover property (fdbs0_fdb1_bell14_cnt_pulsed_w);

property fdbs0_fdb1_bell14_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h238) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb1_bell14_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell14_cnt_pulsed_r
ap_fdbs0_fdb1_bell14_cnt_pulsed_r: assert property (fdbs0_fdb1_bell14_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb1_bell14_cnt_r");
// sonics preserve_name cp_fdbs0_fdb1_bell14_cnt_pulsed_r
cp_fdbs0_fdb1_bell14_cnt_pulsed_r: cover property (fdbs0_fdb1_bell14_cnt_pulsed_r);

property fdbs0_fdb1_bell15_cnt_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h23c) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb1_bell15_cnt_din == (write_data[1:0] & assrt_write_mask[1:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell15_cnt_ext_din
ap_fdbs0_fdb1_bell15_cnt_ext_din: assert property (fdbs0_fdb1_bell15_cnt_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb1_bell15_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell15_cnt_ext_din
cp_fdbs0_fdb1_bell15_cnt_ext_din: cover property (fdbs0_fdb1_bell15_cnt_ext_din);

property fdbs0_fdb1_bell15_cnt_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h23c) & fdbs0_write_valid & fdbs0_ready & |write_strb[0:0]) |-> fdbs0_fdb1_bell15_cnt_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell15_cnt_pulsed_w
ap_fdbs0_fdb1_bell15_cnt_pulsed_w: assert property (fdbs0_fdb1_bell15_cnt_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb1_bell15_cnt_w");
// sonics preserve_name cp_fdbs0_fdb1_bell15_cnt_pulsed_w
cp_fdbs0_fdb1_bell15_cnt_pulsed_w: cover property (fdbs0_fdb1_bell15_cnt_pulsed_w);

property fdbs0_fdb1_bell15_cnt_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h23c) & fdbs0_read_valid & fdbs0_ready) |-> fdbs0_fdb1_bell15_cnt_r;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_bell15_cnt_pulsed_r
ap_fdbs0_fdb1_bell15_cnt_pulsed_r: assert property (fdbs0_fdb1_bell15_cnt_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on fdbs0_fdb1_bell15_cnt_r");
// sonics preserve_name cp_fdbs0_fdb1_bell15_cnt_pulsed_r
cp_fdbs0_fdb1_bell15_cnt_pulsed_r: cover property (fdbs0_fdb1_bell15_cnt_pulsed_r);

property fdbs0_fdb1_enable_enable_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h278) & fdbs0_write_valid & fdbs0_ready) |-> (fdbs0_fdb1_enable_enable_din == (write_data[15:0] & assrt_write_mask[15:0]));
endproperty
// sonics preserve_name ap_fdbs0_fdb1_enable_enable_ext_din
ap_fdbs0_fdb1_enable_enable_ext_din: assert property (fdbs0_fdb1_enable_enable_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on fdbs0_fdb1_enable_enable_w");
// sonics preserve_name cp_fdbs0_fdb1_enable_enable_ext_din
cp_fdbs0_fdb1_enable_enable_ext_din: cover property (fdbs0_fdb1_enable_enable_ext_din);

property fdbs0_fdb1_enable_enable_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h278) & fdbs0_write_valid & fdbs0_ready & |write_strb[1:0]) |-> fdbs0_fdb1_enable_enable_w;
endproperty
// sonics preserve_name ap_fdbs0_fdb1_enable_enable_pulsed_w
ap_fdbs0_fdb1_enable_enable_pulsed_w: assert property (fdbs0_fdb1_enable_enable_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on fdbs0_fdb1_enable_enable_w");
// sonics preserve_name cp_fdbs0_fdb1_enable_enable_pulsed_w
cp_fdbs0_fdb1_enable_enable_pulsed_w: cover property (fdbs0_fdb1_enable_enable_pulsed_w);

property mutex0_mutex0_swid_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h0) & mutex0_write_valid & mutex0_ready) |-> (mutex0_mutex0_swid_din == (write_data[30:0] & assrt_write_mask[30:0]));
endproperty
// sonics preserve_name ap_mutex0_mutex0_swid_ext_din
ap_mutex0_mutex0_swid_ext_din: assert property (mutex0_mutex0_swid_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on mutex0_mutex0_swid_w");
// sonics preserve_name cp_mutex0_mutex0_swid_ext_din
cp_mutex0_mutex0_swid_ext_din: cover property (mutex0_mutex0_swid_ext_din);

property mutex0_mutex0_lock_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h0) & mutex0_write_valid & mutex0_ready) |-> (mutex0_mutex0_lock_din == (write_data[31:31] & assrt_write_mask[31:31]));
endproperty
// sonics preserve_name ap_mutex0_mutex0_lock_ext_din
ap_mutex0_mutex0_lock_ext_din: assert property (mutex0_mutex0_lock_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on mutex0_mutex0_lock_w");
// sonics preserve_name cp_mutex0_mutex0_lock_ext_din
cp_mutex0_mutex0_lock_ext_din: cover property (mutex0_mutex0_lock_ext_din);

property mutex0_mutex0_swid_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h0) & mutex0_write_valid & mutex0_ready & |write_strb[3:0]) |-> mutex0_mutex0_swid_w;
endproperty
// sonics preserve_name ap_mutex0_mutex0_swid_pulsed_w
ap_mutex0_mutex0_swid_pulsed_w: assert property (mutex0_mutex0_swid_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on mutex0_mutex0_swid_w");
// sonics preserve_name cp_mutex0_mutex0_swid_pulsed_w
cp_mutex0_mutex0_swid_pulsed_w: cover property (mutex0_mutex0_swid_pulsed_w);

property mutex0_mutex0_lock_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h0) & mutex0_write_valid & mutex0_ready & |write_strb[3:3]) |-> mutex0_mutex0_lock_w;
endproperty
// sonics preserve_name ap_mutex0_mutex0_lock_pulsed_w
ap_mutex0_mutex0_lock_pulsed_w: assert property (mutex0_mutex0_lock_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on mutex0_mutex0_lock_w");
// sonics preserve_name cp_mutex0_mutex0_lock_pulsed_w
cp_mutex0_mutex0_lock_pulsed_w: cover property (mutex0_mutex0_lock_pulsed_w);

property mutex0_mutex0_swid_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h0) & mutex0_read_valid & mutex0_ready) |-> mutex0_mutex0_swid_r;
endproperty
// sonics preserve_name ap_mutex0_mutex0_swid_pulsed_r
ap_mutex0_mutex0_swid_pulsed_r: assert property (mutex0_mutex0_swid_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on mutex0_mutex0_swid_r");
// sonics preserve_name cp_mutex0_mutex0_swid_pulsed_r
cp_mutex0_mutex0_swid_pulsed_r: cover property (mutex0_mutex0_swid_pulsed_r);

property mutex0_mutex1_swid_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h4) & mutex0_write_valid & mutex0_ready) |-> (mutex0_mutex1_swid_din == (write_data[30:0] & assrt_write_mask[30:0]));
endproperty
// sonics preserve_name ap_mutex0_mutex1_swid_ext_din
ap_mutex0_mutex1_swid_ext_din: assert property (mutex0_mutex1_swid_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on mutex0_mutex1_swid_w");
// sonics preserve_name cp_mutex0_mutex1_swid_ext_din
cp_mutex0_mutex1_swid_ext_din: cover property (mutex0_mutex1_swid_ext_din);

property mutex0_mutex1_lock_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h4) & mutex0_write_valid & mutex0_ready) |-> (mutex0_mutex1_lock_din == (write_data[31:31] & assrt_write_mask[31:31]));
endproperty
// sonics preserve_name ap_mutex0_mutex1_lock_ext_din
ap_mutex0_mutex1_lock_ext_din: assert property (mutex0_mutex1_lock_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on mutex0_mutex1_lock_w");
// sonics preserve_name cp_mutex0_mutex1_lock_ext_din
cp_mutex0_mutex1_lock_ext_din: cover property (mutex0_mutex1_lock_ext_din);

property mutex0_mutex1_swid_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h4) & mutex0_write_valid & mutex0_ready & |write_strb[3:0]) |-> mutex0_mutex1_swid_w;
endproperty
// sonics preserve_name ap_mutex0_mutex1_swid_pulsed_w
ap_mutex0_mutex1_swid_pulsed_w: assert property (mutex0_mutex1_swid_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on mutex0_mutex1_swid_w");
// sonics preserve_name cp_mutex0_mutex1_swid_pulsed_w
cp_mutex0_mutex1_swid_pulsed_w: cover property (mutex0_mutex1_swid_pulsed_w);

property mutex0_mutex1_lock_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h4) & mutex0_write_valid & mutex0_ready & |write_strb[3:3]) |-> mutex0_mutex1_lock_w;
endproperty
// sonics preserve_name ap_mutex0_mutex1_lock_pulsed_w
ap_mutex0_mutex1_lock_pulsed_w: assert property (mutex0_mutex1_lock_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on mutex0_mutex1_lock_w");
// sonics preserve_name cp_mutex0_mutex1_lock_pulsed_w
cp_mutex0_mutex1_lock_pulsed_w: cover property (mutex0_mutex1_lock_pulsed_w);

property mutex0_mutex1_swid_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h4) & mutex0_read_valid & mutex0_ready) |-> mutex0_mutex1_swid_r;
endproperty
// sonics preserve_name ap_mutex0_mutex1_swid_pulsed_r
ap_mutex0_mutex1_swid_pulsed_r: assert property (mutex0_mutex1_swid_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on mutex0_mutex1_swid_r");
// sonics preserve_name cp_mutex0_mutex1_swid_pulsed_r
cp_mutex0_mutex1_swid_pulsed_r: cover property (mutex0_mutex1_swid_pulsed_r);

property mutex0_mutex2_swid_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h8) & mutex0_write_valid & mutex0_ready) |-> (mutex0_mutex2_swid_din == (write_data[30:0] & assrt_write_mask[30:0]));
endproperty
// sonics preserve_name ap_mutex0_mutex2_swid_ext_din
ap_mutex0_mutex2_swid_ext_din: assert property (mutex0_mutex2_swid_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on mutex0_mutex2_swid_w");
// sonics preserve_name cp_mutex0_mutex2_swid_ext_din
cp_mutex0_mutex2_swid_ext_din: cover property (mutex0_mutex2_swid_ext_din);

property mutex0_mutex2_lock_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h8) & mutex0_write_valid & mutex0_ready) |-> (mutex0_mutex2_lock_din == (write_data[31:31] & assrt_write_mask[31:31]));
endproperty
// sonics preserve_name ap_mutex0_mutex2_lock_ext_din
ap_mutex0_mutex2_lock_ext_din: assert property (mutex0_mutex2_lock_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on mutex0_mutex2_lock_w");
// sonics preserve_name cp_mutex0_mutex2_lock_ext_din
cp_mutex0_mutex2_lock_ext_din: cover property (mutex0_mutex2_lock_ext_din);

property mutex0_mutex2_swid_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h8) & mutex0_write_valid & mutex0_ready & |write_strb[3:0]) |-> mutex0_mutex2_swid_w;
endproperty
// sonics preserve_name ap_mutex0_mutex2_swid_pulsed_w
ap_mutex0_mutex2_swid_pulsed_w: assert property (mutex0_mutex2_swid_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on mutex0_mutex2_swid_w");
// sonics preserve_name cp_mutex0_mutex2_swid_pulsed_w
cp_mutex0_mutex2_swid_pulsed_w: cover property (mutex0_mutex2_swid_pulsed_w);

property mutex0_mutex2_lock_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h8) & mutex0_write_valid & mutex0_ready & |write_strb[3:3]) |-> mutex0_mutex2_lock_w;
endproperty
// sonics preserve_name ap_mutex0_mutex2_lock_pulsed_w
ap_mutex0_mutex2_lock_pulsed_w: assert property (mutex0_mutex2_lock_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on mutex0_mutex2_lock_w");
// sonics preserve_name cp_mutex0_mutex2_lock_pulsed_w
cp_mutex0_mutex2_lock_pulsed_w: cover property (mutex0_mutex2_lock_pulsed_w);

property mutex0_mutex2_swid_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h8) & mutex0_read_valid & mutex0_ready) |-> mutex0_mutex2_swid_r;
endproperty
// sonics preserve_name ap_mutex0_mutex2_swid_pulsed_r
ap_mutex0_mutex2_swid_pulsed_r: assert property (mutex0_mutex2_swid_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on mutex0_mutex2_swid_r");
// sonics preserve_name cp_mutex0_mutex2_swid_pulsed_r
cp_mutex0_mutex2_swid_pulsed_r: cover property (mutex0_mutex2_swid_pulsed_r);

property mutex0_mutex3_swid_ext_din;
  @(posedge clk_i)
  ((write_addr == 'hc) & mutex0_write_valid & mutex0_ready) |-> (mutex0_mutex3_swid_din == (write_data[30:0] & assrt_write_mask[30:0]));
endproperty
// sonics preserve_name ap_mutex0_mutex3_swid_ext_din
ap_mutex0_mutex3_swid_ext_din: assert property (mutex0_mutex3_swid_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on mutex0_mutex3_swid_w");
// sonics preserve_name cp_mutex0_mutex3_swid_ext_din
cp_mutex0_mutex3_swid_ext_din: cover property (mutex0_mutex3_swid_ext_din);

property mutex0_mutex3_lock_ext_din;
  @(posedge clk_i)
  ((write_addr == 'hc) & mutex0_write_valid & mutex0_ready) |-> (mutex0_mutex3_lock_din == (write_data[31:31] & assrt_write_mask[31:31]));
endproperty
// sonics preserve_name ap_mutex0_mutex3_lock_ext_din
ap_mutex0_mutex3_lock_ext_din: assert property (mutex0_mutex3_lock_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on mutex0_mutex3_lock_w");
// sonics preserve_name cp_mutex0_mutex3_lock_ext_din
cp_mutex0_mutex3_lock_ext_din: cover property (mutex0_mutex3_lock_ext_din);

property mutex0_mutex3_swid_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'hc) & mutex0_write_valid & mutex0_ready & |write_strb[3:0]) |-> mutex0_mutex3_swid_w;
endproperty
// sonics preserve_name ap_mutex0_mutex3_swid_pulsed_w
ap_mutex0_mutex3_swid_pulsed_w: assert property (mutex0_mutex3_swid_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on mutex0_mutex3_swid_w");
// sonics preserve_name cp_mutex0_mutex3_swid_pulsed_w
cp_mutex0_mutex3_swid_pulsed_w: cover property (mutex0_mutex3_swid_pulsed_w);

property mutex0_mutex3_lock_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'hc) & mutex0_write_valid & mutex0_ready & |write_strb[3:3]) |-> mutex0_mutex3_lock_w;
endproperty
// sonics preserve_name ap_mutex0_mutex3_lock_pulsed_w
ap_mutex0_mutex3_lock_pulsed_w: assert property (mutex0_mutex3_lock_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on mutex0_mutex3_lock_w");
// sonics preserve_name cp_mutex0_mutex3_lock_pulsed_w
cp_mutex0_mutex3_lock_pulsed_w: cover property (mutex0_mutex3_lock_pulsed_w);

property mutex0_mutex3_swid_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'hc) & mutex0_read_valid & mutex0_ready) |-> mutex0_mutex3_swid_r;
endproperty
// sonics preserve_name ap_mutex0_mutex3_swid_pulsed_r
ap_mutex0_mutex3_swid_pulsed_r: assert property (mutex0_mutex3_swid_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on mutex0_mutex3_swid_r");
// sonics preserve_name cp_mutex0_mutex3_swid_pulsed_r
cp_mutex0_mutex3_swid_pulsed_r: cover property (mutex0_mutex3_swid_pulsed_r);

property mutex0_mutex4_swid_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h10) & mutex0_write_valid & mutex0_ready) |-> (mutex0_mutex4_swid_din == (write_data[30:0] & assrt_write_mask[30:0]));
endproperty
// sonics preserve_name ap_mutex0_mutex4_swid_ext_din
ap_mutex0_mutex4_swid_ext_din: assert property (mutex0_mutex4_swid_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on mutex0_mutex4_swid_w");
// sonics preserve_name cp_mutex0_mutex4_swid_ext_din
cp_mutex0_mutex4_swid_ext_din: cover property (mutex0_mutex4_swid_ext_din);

property mutex0_mutex4_lock_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h10) & mutex0_write_valid & mutex0_ready) |-> (mutex0_mutex4_lock_din == (write_data[31:31] & assrt_write_mask[31:31]));
endproperty
// sonics preserve_name ap_mutex0_mutex4_lock_ext_din
ap_mutex0_mutex4_lock_ext_din: assert property (mutex0_mutex4_lock_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on mutex0_mutex4_lock_w");
// sonics preserve_name cp_mutex0_mutex4_lock_ext_din
cp_mutex0_mutex4_lock_ext_din: cover property (mutex0_mutex4_lock_ext_din);

property mutex0_mutex4_swid_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h10) & mutex0_write_valid & mutex0_ready & |write_strb[3:0]) |-> mutex0_mutex4_swid_w;
endproperty
// sonics preserve_name ap_mutex0_mutex4_swid_pulsed_w
ap_mutex0_mutex4_swid_pulsed_w: assert property (mutex0_mutex4_swid_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on mutex0_mutex4_swid_w");
// sonics preserve_name cp_mutex0_mutex4_swid_pulsed_w
cp_mutex0_mutex4_swid_pulsed_w: cover property (mutex0_mutex4_swid_pulsed_w);

property mutex0_mutex4_lock_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h10) & mutex0_write_valid & mutex0_ready & |write_strb[3:3]) |-> mutex0_mutex4_lock_w;
endproperty
// sonics preserve_name ap_mutex0_mutex4_lock_pulsed_w
ap_mutex0_mutex4_lock_pulsed_w: assert property (mutex0_mutex4_lock_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on mutex0_mutex4_lock_w");
// sonics preserve_name cp_mutex0_mutex4_lock_pulsed_w
cp_mutex0_mutex4_lock_pulsed_w: cover property (mutex0_mutex4_lock_pulsed_w);

property mutex0_mutex4_swid_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h10) & mutex0_read_valid & mutex0_ready) |-> mutex0_mutex4_swid_r;
endproperty
// sonics preserve_name ap_mutex0_mutex4_swid_pulsed_r
ap_mutex0_mutex4_swid_pulsed_r: assert property (mutex0_mutex4_swid_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on mutex0_mutex4_swid_r");
// sonics preserve_name cp_mutex0_mutex4_swid_pulsed_r
cp_mutex0_mutex4_swid_pulsed_r: cover property (mutex0_mutex4_swid_pulsed_r);

property mutex0_mutex5_swid_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h14) & mutex0_write_valid & mutex0_ready) |-> (mutex0_mutex5_swid_din == (write_data[30:0] & assrt_write_mask[30:0]));
endproperty
// sonics preserve_name ap_mutex0_mutex5_swid_ext_din
ap_mutex0_mutex5_swid_ext_din: assert property (mutex0_mutex5_swid_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on mutex0_mutex5_swid_w");
// sonics preserve_name cp_mutex0_mutex5_swid_ext_din
cp_mutex0_mutex5_swid_ext_din: cover property (mutex0_mutex5_swid_ext_din);

property mutex0_mutex5_lock_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h14) & mutex0_write_valid & mutex0_ready) |-> (mutex0_mutex5_lock_din == (write_data[31:31] & assrt_write_mask[31:31]));
endproperty
// sonics preserve_name ap_mutex0_mutex5_lock_ext_din
ap_mutex0_mutex5_lock_ext_din: assert property (mutex0_mutex5_lock_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on mutex0_mutex5_lock_w");
// sonics preserve_name cp_mutex0_mutex5_lock_ext_din
cp_mutex0_mutex5_lock_ext_din: cover property (mutex0_mutex5_lock_ext_din);

property mutex0_mutex5_swid_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h14) & mutex0_write_valid & mutex0_ready & |write_strb[3:0]) |-> mutex0_mutex5_swid_w;
endproperty
// sonics preserve_name ap_mutex0_mutex5_swid_pulsed_w
ap_mutex0_mutex5_swid_pulsed_w: assert property (mutex0_mutex5_swid_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on mutex0_mutex5_swid_w");
// sonics preserve_name cp_mutex0_mutex5_swid_pulsed_w
cp_mutex0_mutex5_swid_pulsed_w: cover property (mutex0_mutex5_swid_pulsed_w);

property mutex0_mutex5_lock_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h14) & mutex0_write_valid & mutex0_ready & |write_strb[3:3]) |-> mutex0_mutex5_lock_w;
endproperty
// sonics preserve_name ap_mutex0_mutex5_lock_pulsed_w
ap_mutex0_mutex5_lock_pulsed_w: assert property (mutex0_mutex5_lock_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on mutex0_mutex5_lock_w");
// sonics preserve_name cp_mutex0_mutex5_lock_pulsed_w
cp_mutex0_mutex5_lock_pulsed_w: cover property (mutex0_mutex5_lock_pulsed_w);

property mutex0_mutex5_swid_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h14) & mutex0_read_valid & mutex0_ready) |-> mutex0_mutex5_swid_r;
endproperty
// sonics preserve_name ap_mutex0_mutex5_swid_pulsed_r
ap_mutex0_mutex5_swid_pulsed_r: assert property (mutex0_mutex5_swid_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on mutex0_mutex5_swid_r");
// sonics preserve_name cp_mutex0_mutex5_swid_pulsed_r
cp_mutex0_mutex5_swid_pulsed_r: cover property (mutex0_mutex5_swid_pulsed_r);

property mutex0_mutex6_swid_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h18) & mutex0_write_valid & mutex0_ready) |-> (mutex0_mutex6_swid_din == (write_data[30:0] & assrt_write_mask[30:0]));
endproperty
// sonics preserve_name ap_mutex0_mutex6_swid_ext_din
ap_mutex0_mutex6_swid_ext_din: assert property (mutex0_mutex6_swid_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on mutex0_mutex6_swid_w");
// sonics preserve_name cp_mutex0_mutex6_swid_ext_din
cp_mutex0_mutex6_swid_ext_din: cover property (mutex0_mutex6_swid_ext_din);

property mutex0_mutex6_lock_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h18) & mutex0_write_valid & mutex0_ready) |-> (mutex0_mutex6_lock_din == (write_data[31:31] & assrt_write_mask[31:31]));
endproperty
// sonics preserve_name ap_mutex0_mutex6_lock_ext_din
ap_mutex0_mutex6_lock_ext_din: assert property (mutex0_mutex6_lock_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on mutex0_mutex6_lock_w");
// sonics preserve_name cp_mutex0_mutex6_lock_ext_din
cp_mutex0_mutex6_lock_ext_din: cover property (mutex0_mutex6_lock_ext_din);

property mutex0_mutex6_swid_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h18) & mutex0_write_valid & mutex0_ready & |write_strb[3:0]) |-> mutex0_mutex6_swid_w;
endproperty
// sonics preserve_name ap_mutex0_mutex6_swid_pulsed_w
ap_mutex0_mutex6_swid_pulsed_w: assert property (mutex0_mutex6_swid_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on mutex0_mutex6_swid_w");
// sonics preserve_name cp_mutex0_mutex6_swid_pulsed_w
cp_mutex0_mutex6_swid_pulsed_w: cover property (mutex0_mutex6_swid_pulsed_w);

property mutex0_mutex6_lock_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h18) & mutex0_write_valid & mutex0_ready & |write_strb[3:3]) |-> mutex0_mutex6_lock_w;
endproperty
// sonics preserve_name ap_mutex0_mutex6_lock_pulsed_w
ap_mutex0_mutex6_lock_pulsed_w: assert property (mutex0_mutex6_lock_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on mutex0_mutex6_lock_w");
// sonics preserve_name cp_mutex0_mutex6_lock_pulsed_w
cp_mutex0_mutex6_lock_pulsed_w: cover property (mutex0_mutex6_lock_pulsed_w);

property mutex0_mutex6_swid_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h18) & mutex0_read_valid & mutex0_ready) |-> mutex0_mutex6_swid_r;
endproperty
// sonics preserve_name ap_mutex0_mutex6_swid_pulsed_r
ap_mutex0_mutex6_swid_pulsed_r: assert property (mutex0_mutex6_swid_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on mutex0_mutex6_swid_r");
// sonics preserve_name cp_mutex0_mutex6_swid_pulsed_r
cp_mutex0_mutex6_swid_pulsed_r: cover property (mutex0_mutex6_swid_pulsed_r);

property mutex0_mutex7_swid_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h1c) & mutex0_write_valid & mutex0_ready) |-> (mutex0_mutex7_swid_din == (write_data[30:0] & assrt_write_mask[30:0]));
endproperty
// sonics preserve_name ap_mutex0_mutex7_swid_ext_din
ap_mutex0_mutex7_swid_ext_din: assert property (mutex0_mutex7_swid_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on mutex0_mutex7_swid_w");
// sonics preserve_name cp_mutex0_mutex7_swid_ext_din
cp_mutex0_mutex7_swid_ext_din: cover property (mutex0_mutex7_swid_ext_din);

property mutex0_mutex7_lock_ext_din;
  @(posedge clk_i)
  ((write_addr == 'h1c) & mutex0_write_valid & mutex0_ready) |-> (mutex0_mutex7_lock_din == (write_data[31:31] & assrt_write_mask[31:31]));
endproperty
// sonics preserve_name ap_mutex0_mutex7_lock_ext_din
ap_mutex0_mutex7_lock_ext_din: assert property (mutex0_mutex7_lock_ext_din) else `FB_ASSERT_ERROR_MSG("External din error on mutex0_mutex7_lock_w");
// sonics preserve_name cp_mutex0_mutex7_lock_ext_din
cp_mutex0_mutex7_lock_ext_din: cover property (mutex0_mutex7_lock_ext_din);

property mutex0_mutex7_swid_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h1c) & mutex0_write_valid & mutex0_ready & |write_strb[3:0]) |-> mutex0_mutex7_swid_w;
endproperty
// sonics preserve_name ap_mutex0_mutex7_swid_pulsed_w
ap_mutex0_mutex7_swid_pulsed_w: assert property (mutex0_mutex7_swid_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on mutex0_mutex7_swid_w");
// sonics preserve_name cp_mutex0_mutex7_swid_pulsed_w
cp_mutex0_mutex7_swid_pulsed_w: cover property (mutex0_mutex7_swid_pulsed_w);

property mutex0_mutex7_lock_pulsed_w;
  @(posedge clk_i)
  ((write_addr == 'h1c) & mutex0_write_valid & mutex0_ready & |write_strb[3:3]) |-> mutex0_mutex7_lock_w;
endproperty
// sonics preserve_name ap_mutex0_mutex7_lock_pulsed_w
ap_mutex0_mutex7_lock_pulsed_w: assert property (mutex0_mutex7_lock_pulsed_w) else `FB_ASSERT_ERROR_MSG("Write notify error on mutex0_mutex7_lock_w");
// sonics preserve_name cp_mutex0_mutex7_lock_pulsed_w
cp_mutex0_mutex7_lock_pulsed_w: cover property (mutex0_mutex7_lock_pulsed_w);

property mutex0_mutex7_swid_pulsed_r;
  @(posedge clk_i)
  ((read_addr == 'h1c) & mutex0_read_valid & mutex0_ready) |-> mutex0_mutex7_swid_r;
endproperty
// sonics preserve_name ap_mutex0_mutex7_swid_pulsed_r
ap_mutex0_mutex7_swid_pulsed_r: assert property (mutex0_mutex7_swid_pulsed_r) else `FB_ASSERT_ERROR_MSG("Read notify error on mutex0_mutex7_swid_r");
// sonics preserve_name cp_mutex0_mutex7_swid_pulsed_r
cp_mutex0_mutex7_swid_pulsed_r: cover property (mutex0_mutex7_swid_pulsed_r);

`endif
// END ASSERTION
//synopsys translate_on

//coverage on

endmodule // regmodel0_regmodel_core

////////////////////////////////////////////////////////////////////////
