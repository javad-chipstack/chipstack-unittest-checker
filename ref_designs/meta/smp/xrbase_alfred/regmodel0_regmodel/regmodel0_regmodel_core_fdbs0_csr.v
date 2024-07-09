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
module regmodel0_regmodel_core_fdbs0_csr(
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
    fdbs0_fdb1_data15_fifo_dout );
input         reg_clk; 
input         non_retention_reset_ni; 
input         test_mode_cgm_i; 
input         write_valid_i; 
input   [9:0] write_addr_i; 
input  [31:0] write_data_i; 
input   [3:0] write_strb_i; 
input   [5:0] write_info_i; 
output        write_err_o; 
input   [9:0] read_addr_i; 
input         read_valid_i; 
output [31:0] read_data_o; 
input   [5:0] read_info_i; 
output        read_err_o; 
output        ready_o; 
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
reg     [1:0] fdbs0_fdb0_bell0_cnt_din; 
reg           fdbs0_fdb0_bell0_cnt_w; 
wire          fdbs0_fdb0_bell0_cnt_r; 
reg           fdbs0_fdb0_bell0_failed_ring_q; 
reg     [1:0] fdbs0_fdb0_bell0_max_priority_q; 
reg     [4:0] fdbs0_fdb0_bell0_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb0_bell0_fcnt_q; 
reg     [1:0] fdbs0_fdb0_bell1_cnt_din; 
reg           fdbs0_fdb0_bell1_cnt_w; 
wire          fdbs0_fdb0_bell1_cnt_r; 
reg           fdbs0_fdb0_bell1_failed_ring_q; 
reg     [1:0] fdbs0_fdb0_bell1_max_priority_q; 
reg     [4:0] fdbs0_fdb0_bell1_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb0_bell1_fcnt_q; 
reg     [1:0] fdbs0_fdb0_bell2_cnt_din; 
reg           fdbs0_fdb0_bell2_cnt_w; 
wire          fdbs0_fdb0_bell2_cnt_r; 
reg           fdbs0_fdb0_bell2_failed_ring_q; 
reg     [1:0] fdbs0_fdb0_bell2_max_priority_q; 
reg     [4:0] fdbs0_fdb0_bell2_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb0_bell2_fcnt_q; 
reg     [1:0] fdbs0_fdb0_bell3_cnt_din; 
reg           fdbs0_fdb0_bell3_cnt_w; 
wire          fdbs0_fdb0_bell3_cnt_r; 
reg           fdbs0_fdb0_bell3_failed_ring_q; 
reg     [1:0] fdbs0_fdb0_bell3_max_priority_q; 
reg     [4:0] fdbs0_fdb0_bell3_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb0_bell3_fcnt_q; 
reg     [1:0] fdbs0_fdb0_bell4_cnt_din; 
reg           fdbs0_fdb0_bell4_cnt_w; 
wire          fdbs0_fdb0_bell4_cnt_r; 
reg           fdbs0_fdb0_bell4_failed_ring_q; 
reg     [1:0] fdbs0_fdb0_bell4_max_priority_q; 
reg     [4:0] fdbs0_fdb0_bell4_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb0_bell4_fcnt_q; 
reg     [1:0] fdbs0_fdb0_bell5_cnt_din; 
reg           fdbs0_fdb0_bell5_cnt_w; 
wire          fdbs0_fdb0_bell5_cnt_r; 
reg           fdbs0_fdb0_bell5_failed_ring_q; 
reg     [1:0] fdbs0_fdb0_bell5_max_priority_q; 
reg     [4:0] fdbs0_fdb0_bell5_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb0_bell5_fcnt_q; 
reg     [1:0] fdbs0_fdb0_bell6_cnt_din; 
reg           fdbs0_fdb0_bell6_cnt_w; 
wire          fdbs0_fdb0_bell6_cnt_r; 
reg           fdbs0_fdb0_bell6_failed_ring_q; 
reg     [1:0] fdbs0_fdb0_bell6_max_priority_q; 
reg     [4:0] fdbs0_fdb0_bell6_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb0_bell6_fcnt_q; 
reg     [1:0] fdbs0_fdb0_bell7_cnt_din; 
reg           fdbs0_fdb0_bell7_cnt_w; 
wire          fdbs0_fdb0_bell7_cnt_r; 
reg           fdbs0_fdb0_bell7_failed_ring_q; 
reg     [1:0] fdbs0_fdb0_bell7_max_priority_q; 
reg     [4:0] fdbs0_fdb0_bell7_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb0_bell7_fcnt_q; 
reg     [1:0] fdbs0_fdb0_bell8_cnt_din; 
reg           fdbs0_fdb0_bell8_cnt_w; 
wire          fdbs0_fdb0_bell8_cnt_r; 
reg           fdbs0_fdb0_bell8_failed_ring_q; 
reg     [1:0] fdbs0_fdb0_bell8_max_priority_q; 
reg     [4:0] fdbs0_fdb0_bell8_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb0_bell8_fcnt_q; 
reg     [1:0] fdbs0_fdb0_bell9_cnt_din; 
reg           fdbs0_fdb0_bell9_cnt_w; 
wire          fdbs0_fdb0_bell9_cnt_r; 
reg           fdbs0_fdb0_bell9_failed_ring_q; 
reg     [1:0] fdbs0_fdb0_bell9_max_priority_q; 
reg     [4:0] fdbs0_fdb0_bell9_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb0_bell9_fcnt_q; 
reg     [1:0] fdbs0_fdb0_bell10_cnt_din; 
reg           fdbs0_fdb0_bell10_cnt_w; 
wire          fdbs0_fdb0_bell10_cnt_r; 
reg           fdbs0_fdb0_bell10_failed_ring_q; 
reg     [1:0] fdbs0_fdb0_bell10_max_priority_q; 
reg     [4:0] fdbs0_fdb0_bell10_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb0_bell10_fcnt_q; 
reg     [1:0] fdbs0_fdb0_bell11_cnt_din; 
reg           fdbs0_fdb0_bell11_cnt_w; 
wire          fdbs0_fdb0_bell11_cnt_r; 
reg           fdbs0_fdb0_bell11_failed_ring_q; 
reg     [1:0] fdbs0_fdb0_bell11_max_priority_q; 
reg     [4:0] fdbs0_fdb0_bell11_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb0_bell11_fcnt_q; 
reg     [1:0] fdbs0_fdb0_bell12_cnt_din; 
reg           fdbs0_fdb0_bell12_cnt_w; 
wire          fdbs0_fdb0_bell12_cnt_r; 
reg           fdbs0_fdb0_bell12_failed_ring_q; 
reg     [1:0] fdbs0_fdb0_bell12_max_priority_q; 
reg     [4:0] fdbs0_fdb0_bell12_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb0_bell12_fcnt_q; 
reg     [1:0] fdbs0_fdb0_bell13_cnt_din; 
reg           fdbs0_fdb0_bell13_cnt_w; 
wire          fdbs0_fdb0_bell13_cnt_r; 
reg           fdbs0_fdb0_bell13_failed_ring_q; 
reg     [1:0] fdbs0_fdb0_bell13_max_priority_q; 
reg     [4:0] fdbs0_fdb0_bell13_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb0_bell13_fcnt_q; 
reg     [1:0] fdbs0_fdb0_bell14_cnt_din; 
reg           fdbs0_fdb0_bell14_cnt_w; 
wire          fdbs0_fdb0_bell14_cnt_r; 
reg           fdbs0_fdb0_bell14_failed_ring_q; 
reg     [1:0] fdbs0_fdb0_bell14_max_priority_q; 
reg     [4:0] fdbs0_fdb0_bell14_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb0_bell14_fcnt_q; 
reg     [1:0] fdbs0_fdb0_bell15_cnt_din; 
reg           fdbs0_fdb0_bell15_cnt_w; 
wire          fdbs0_fdb0_bell15_cnt_r; 
reg           fdbs0_fdb0_bell15_failed_ring_q; 
reg     [1:0] fdbs0_fdb0_bell15_max_priority_q; 
reg     [4:0] fdbs0_fdb0_bell15_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb0_bell15_fcnt_q; 
reg           fdbs0_fdb0_control_ack_on_empty_q; 
reg           fdbs0_fdb0_control_ack_on_empty; 
reg    [15:0] fdbs0_fdb0_enable_enable_din; 
reg           fdbs0_fdb0_enable_enable_w; 
reg    [31:0] fdbs0_fdb0_data0_fifo_din; 
reg     [1:0] fdbs0_fdb0_data0_fifo_a; 
reg    [31:0] fdbs0_fdb0_data0_fifo_wen; 
reg           fdbs0_fdb0_data0_fifo_cen; 
reg    [31:0] fdbs0_fdb0_data1_fifo_din; 
reg     [1:0] fdbs0_fdb0_data1_fifo_a; 
reg    [31:0] fdbs0_fdb0_data1_fifo_wen; 
reg           fdbs0_fdb0_data1_fifo_cen; 
reg    [31:0] fdbs0_fdb0_data2_fifo_din; 
reg     [1:0] fdbs0_fdb0_data2_fifo_a; 
reg    [31:0] fdbs0_fdb0_data2_fifo_wen; 
reg           fdbs0_fdb0_data2_fifo_cen; 
reg    [31:0] fdbs0_fdb0_data3_fifo_din; 
reg     [1:0] fdbs0_fdb0_data3_fifo_a; 
reg    [31:0] fdbs0_fdb0_data3_fifo_wen; 
reg           fdbs0_fdb0_data3_fifo_cen; 
reg    [31:0] fdbs0_fdb0_data4_fifo_din; 
reg     [1:0] fdbs0_fdb0_data4_fifo_a; 
reg    [31:0] fdbs0_fdb0_data4_fifo_wen; 
reg           fdbs0_fdb0_data4_fifo_cen; 
reg    [31:0] fdbs0_fdb0_data5_fifo_din; 
reg     [1:0] fdbs0_fdb0_data5_fifo_a; 
reg    [31:0] fdbs0_fdb0_data5_fifo_wen; 
reg           fdbs0_fdb0_data5_fifo_cen; 
reg    [31:0] fdbs0_fdb0_data6_fifo_din; 
reg     [1:0] fdbs0_fdb0_data6_fifo_a; 
reg    [31:0] fdbs0_fdb0_data6_fifo_wen; 
reg           fdbs0_fdb0_data6_fifo_cen; 
reg    [31:0] fdbs0_fdb0_data7_fifo_din; 
reg     [1:0] fdbs0_fdb0_data7_fifo_a; 
reg    [31:0] fdbs0_fdb0_data7_fifo_wen; 
reg           fdbs0_fdb0_data7_fifo_cen; 
reg    [31:0] fdbs0_fdb0_data8_fifo_din; 
reg     [1:0] fdbs0_fdb0_data8_fifo_a; 
reg    [31:0] fdbs0_fdb0_data8_fifo_wen; 
reg           fdbs0_fdb0_data8_fifo_cen; 
reg    [31:0] fdbs0_fdb0_data9_fifo_din; 
reg     [1:0] fdbs0_fdb0_data9_fifo_a; 
reg    [31:0] fdbs0_fdb0_data9_fifo_wen; 
reg           fdbs0_fdb0_data9_fifo_cen; 
reg    [31:0] fdbs0_fdb0_data10_fifo_din; 
reg     [1:0] fdbs0_fdb0_data10_fifo_a; 
reg    [31:0] fdbs0_fdb0_data10_fifo_wen; 
reg           fdbs0_fdb0_data10_fifo_cen; 
reg    [31:0] fdbs0_fdb0_data11_fifo_din; 
reg     [1:0] fdbs0_fdb0_data11_fifo_a; 
reg    [31:0] fdbs0_fdb0_data11_fifo_wen; 
reg           fdbs0_fdb0_data11_fifo_cen; 
reg    [31:0] fdbs0_fdb0_data12_fifo_din; 
reg     [1:0] fdbs0_fdb0_data12_fifo_a; 
reg    [31:0] fdbs0_fdb0_data12_fifo_wen; 
reg           fdbs0_fdb0_data12_fifo_cen; 
reg    [31:0] fdbs0_fdb0_data13_fifo_din; 
reg     [1:0] fdbs0_fdb0_data13_fifo_a; 
reg    [31:0] fdbs0_fdb0_data13_fifo_wen; 
reg           fdbs0_fdb0_data13_fifo_cen; 
reg    [31:0] fdbs0_fdb0_data14_fifo_din; 
reg     [1:0] fdbs0_fdb0_data14_fifo_a; 
reg    [31:0] fdbs0_fdb0_data14_fifo_wen; 
reg           fdbs0_fdb0_data14_fifo_cen; 
reg    [31:0] fdbs0_fdb0_data15_fifo_din; 
reg     [1:0] fdbs0_fdb0_data15_fifo_a; 
reg    [31:0] fdbs0_fdb0_data15_fifo_wen; 
reg           fdbs0_fdb0_data15_fifo_cen; 
reg     [1:0] fdbs0_fdb1_bell0_cnt_din; 
reg           fdbs0_fdb1_bell0_cnt_w; 
wire          fdbs0_fdb1_bell0_cnt_r; 
reg           fdbs0_fdb1_bell0_failed_ring_q; 
reg     [1:0] fdbs0_fdb1_bell0_max_priority_q; 
reg     [4:0] fdbs0_fdb1_bell0_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb1_bell0_fcnt_q; 
reg     [1:0] fdbs0_fdb1_bell1_cnt_din; 
reg           fdbs0_fdb1_bell1_cnt_w; 
wire          fdbs0_fdb1_bell1_cnt_r; 
reg           fdbs0_fdb1_bell1_failed_ring_q; 
reg     [1:0] fdbs0_fdb1_bell1_max_priority_q; 
reg     [4:0] fdbs0_fdb1_bell1_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb1_bell1_fcnt_q; 
reg     [1:0] fdbs0_fdb1_bell2_cnt_din; 
reg           fdbs0_fdb1_bell2_cnt_w; 
wire          fdbs0_fdb1_bell2_cnt_r; 
reg           fdbs0_fdb1_bell2_failed_ring_q; 
reg     [1:0] fdbs0_fdb1_bell2_max_priority_q; 
reg     [4:0] fdbs0_fdb1_bell2_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb1_bell2_fcnt_q; 
reg     [1:0] fdbs0_fdb1_bell3_cnt_din; 
reg           fdbs0_fdb1_bell3_cnt_w; 
wire          fdbs0_fdb1_bell3_cnt_r; 
reg           fdbs0_fdb1_bell3_failed_ring_q; 
reg     [1:0] fdbs0_fdb1_bell3_max_priority_q; 
reg     [4:0] fdbs0_fdb1_bell3_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb1_bell3_fcnt_q; 
reg     [1:0] fdbs0_fdb1_bell4_cnt_din; 
reg           fdbs0_fdb1_bell4_cnt_w; 
wire          fdbs0_fdb1_bell4_cnt_r; 
reg           fdbs0_fdb1_bell4_failed_ring_q; 
reg     [1:0] fdbs0_fdb1_bell4_max_priority_q; 
reg     [4:0] fdbs0_fdb1_bell4_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb1_bell4_fcnt_q; 
reg     [1:0] fdbs0_fdb1_bell5_cnt_din; 
reg           fdbs0_fdb1_bell5_cnt_w; 
wire          fdbs0_fdb1_bell5_cnt_r; 
reg           fdbs0_fdb1_bell5_failed_ring_q; 
reg     [1:0] fdbs0_fdb1_bell5_max_priority_q; 
reg     [4:0] fdbs0_fdb1_bell5_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb1_bell5_fcnt_q; 
reg     [1:0] fdbs0_fdb1_bell6_cnt_din; 
reg           fdbs0_fdb1_bell6_cnt_w; 
wire          fdbs0_fdb1_bell6_cnt_r; 
reg           fdbs0_fdb1_bell6_failed_ring_q; 
reg     [1:0] fdbs0_fdb1_bell6_max_priority_q; 
reg     [4:0] fdbs0_fdb1_bell6_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb1_bell6_fcnt_q; 
reg     [1:0] fdbs0_fdb1_bell7_cnt_din; 
reg           fdbs0_fdb1_bell7_cnt_w; 
wire          fdbs0_fdb1_bell7_cnt_r; 
reg           fdbs0_fdb1_bell7_failed_ring_q; 
reg     [1:0] fdbs0_fdb1_bell7_max_priority_q; 
reg     [4:0] fdbs0_fdb1_bell7_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb1_bell7_fcnt_q; 
reg     [1:0] fdbs0_fdb1_bell8_cnt_din; 
reg           fdbs0_fdb1_bell8_cnt_w; 
wire          fdbs0_fdb1_bell8_cnt_r; 
reg           fdbs0_fdb1_bell8_failed_ring_q; 
reg     [1:0] fdbs0_fdb1_bell8_max_priority_q; 
reg     [4:0] fdbs0_fdb1_bell8_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb1_bell8_fcnt_q; 
reg     [1:0] fdbs0_fdb1_bell9_cnt_din; 
reg           fdbs0_fdb1_bell9_cnt_w; 
wire          fdbs0_fdb1_bell9_cnt_r; 
reg           fdbs0_fdb1_bell9_failed_ring_q; 
reg     [1:0] fdbs0_fdb1_bell9_max_priority_q; 
reg     [4:0] fdbs0_fdb1_bell9_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb1_bell9_fcnt_q; 
reg     [1:0] fdbs0_fdb1_bell10_cnt_din; 
reg           fdbs0_fdb1_bell10_cnt_w; 
wire          fdbs0_fdb1_bell10_cnt_r; 
reg           fdbs0_fdb1_bell10_failed_ring_q; 
reg     [1:0] fdbs0_fdb1_bell10_max_priority_q; 
reg     [4:0] fdbs0_fdb1_bell10_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb1_bell10_fcnt_q; 
reg     [1:0] fdbs0_fdb1_bell11_cnt_din; 
reg           fdbs0_fdb1_bell11_cnt_w; 
wire          fdbs0_fdb1_bell11_cnt_r; 
reg           fdbs0_fdb1_bell11_failed_ring_q; 
reg     [1:0] fdbs0_fdb1_bell11_max_priority_q; 
reg     [4:0] fdbs0_fdb1_bell11_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb1_bell11_fcnt_q; 
reg     [1:0] fdbs0_fdb1_bell12_cnt_din; 
reg           fdbs0_fdb1_bell12_cnt_w; 
wire          fdbs0_fdb1_bell12_cnt_r; 
reg           fdbs0_fdb1_bell12_failed_ring_q; 
reg     [1:0] fdbs0_fdb1_bell12_max_priority_q; 
reg     [4:0] fdbs0_fdb1_bell12_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb1_bell12_fcnt_q; 
reg     [1:0] fdbs0_fdb1_bell13_cnt_din; 
reg           fdbs0_fdb1_bell13_cnt_w; 
wire          fdbs0_fdb1_bell13_cnt_r; 
reg           fdbs0_fdb1_bell13_failed_ring_q; 
reg     [1:0] fdbs0_fdb1_bell13_max_priority_q; 
reg     [4:0] fdbs0_fdb1_bell13_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb1_bell13_fcnt_q; 
reg     [1:0] fdbs0_fdb1_bell14_cnt_din; 
reg           fdbs0_fdb1_bell14_cnt_w; 
wire          fdbs0_fdb1_bell14_cnt_r; 
reg           fdbs0_fdb1_bell14_failed_ring_q; 
reg     [1:0] fdbs0_fdb1_bell14_max_priority_q; 
reg     [4:0] fdbs0_fdb1_bell14_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb1_bell14_fcnt_q; 
reg     [1:0] fdbs0_fdb1_bell15_cnt_din; 
reg           fdbs0_fdb1_bell15_cnt_w; 
wire          fdbs0_fdb1_bell15_cnt_r; 
reg           fdbs0_fdb1_bell15_failed_ring_q; 
reg     [1:0] fdbs0_fdb1_bell15_max_priority_q; 
reg     [4:0] fdbs0_fdb1_bell15_valid_fcnt_q; 
reg     [4:0] fdbs0_fdb1_bell15_fcnt_q; 
reg           fdbs0_fdb1_control_ack_on_empty_q; 
reg           fdbs0_fdb1_control_ack_on_empty; 
reg    [15:0] fdbs0_fdb1_enable_enable_din; 
reg           fdbs0_fdb1_enable_enable_w; 
reg    [31:0] fdbs0_fdb1_data0_fifo_din; 
reg     [1:0] fdbs0_fdb1_data0_fifo_a; 
reg    [31:0] fdbs0_fdb1_data0_fifo_wen; 
reg           fdbs0_fdb1_data0_fifo_cen; 
reg    [31:0] fdbs0_fdb1_data1_fifo_din; 
reg     [1:0] fdbs0_fdb1_data1_fifo_a; 
reg    [31:0] fdbs0_fdb1_data1_fifo_wen; 
reg           fdbs0_fdb1_data1_fifo_cen; 
reg    [31:0] fdbs0_fdb1_data2_fifo_din; 
reg     [1:0] fdbs0_fdb1_data2_fifo_a; 
reg    [31:0] fdbs0_fdb1_data2_fifo_wen; 
reg           fdbs0_fdb1_data2_fifo_cen; 
reg    [31:0] fdbs0_fdb1_data3_fifo_din; 
reg     [1:0] fdbs0_fdb1_data3_fifo_a; 
reg    [31:0] fdbs0_fdb1_data3_fifo_wen; 
reg           fdbs0_fdb1_data3_fifo_cen; 
reg    [31:0] fdbs0_fdb1_data4_fifo_din; 
reg     [1:0] fdbs0_fdb1_data4_fifo_a; 
reg    [31:0] fdbs0_fdb1_data4_fifo_wen; 
reg           fdbs0_fdb1_data4_fifo_cen; 
reg    [31:0] fdbs0_fdb1_data5_fifo_din; 
reg     [1:0] fdbs0_fdb1_data5_fifo_a; 
reg    [31:0] fdbs0_fdb1_data5_fifo_wen; 
reg           fdbs0_fdb1_data5_fifo_cen; 
reg    [31:0] fdbs0_fdb1_data6_fifo_din; 
reg     [1:0] fdbs0_fdb1_data6_fifo_a; 
reg    [31:0] fdbs0_fdb1_data6_fifo_wen; 
reg           fdbs0_fdb1_data6_fifo_cen; 
reg    [31:0] fdbs0_fdb1_data7_fifo_din; 
reg     [1:0] fdbs0_fdb1_data7_fifo_a; 
reg    [31:0] fdbs0_fdb1_data7_fifo_wen; 
reg           fdbs0_fdb1_data7_fifo_cen; 
reg    [31:0] fdbs0_fdb1_data8_fifo_din; 
reg     [1:0] fdbs0_fdb1_data8_fifo_a; 
reg    [31:0] fdbs0_fdb1_data8_fifo_wen; 
reg           fdbs0_fdb1_data8_fifo_cen; 
reg    [31:0] fdbs0_fdb1_data9_fifo_din; 
reg     [1:0] fdbs0_fdb1_data9_fifo_a; 
reg    [31:0] fdbs0_fdb1_data9_fifo_wen; 
reg           fdbs0_fdb1_data9_fifo_cen; 
reg    [31:0] fdbs0_fdb1_data10_fifo_din; 
reg     [1:0] fdbs0_fdb1_data10_fifo_a; 
reg    [31:0] fdbs0_fdb1_data10_fifo_wen; 
reg           fdbs0_fdb1_data10_fifo_cen; 
reg    [31:0] fdbs0_fdb1_data11_fifo_din; 
reg     [1:0] fdbs0_fdb1_data11_fifo_a; 
reg    [31:0] fdbs0_fdb1_data11_fifo_wen; 
reg           fdbs0_fdb1_data11_fifo_cen; 
reg    [31:0] fdbs0_fdb1_data12_fifo_din; 
reg     [1:0] fdbs0_fdb1_data12_fifo_a; 
reg    [31:0] fdbs0_fdb1_data12_fifo_wen; 
reg           fdbs0_fdb1_data12_fifo_cen; 
reg    [31:0] fdbs0_fdb1_data13_fifo_din; 
reg     [1:0] fdbs0_fdb1_data13_fifo_a; 
reg    [31:0] fdbs0_fdb1_data13_fifo_wen; 
reg           fdbs0_fdb1_data13_fifo_cen; 
reg    [31:0] fdbs0_fdb1_data14_fifo_din; 
reg     [1:0] fdbs0_fdb1_data14_fifo_a; 
reg    [31:0] fdbs0_fdb1_data14_fifo_wen; 
reg           fdbs0_fdb1_data14_fifo_cen; 
reg    [31:0] fdbs0_fdb1_data15_fifo_din; 
reg     [1:0] fdbs0_fdb1_data15_fifo_a; 
reg    [31:0] fdbs0_fdb1_data15_fifo_wen; 
reg           fdbs0_fdb1_data15_fifo_cen; 
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

wire          reg_load0_enbl = fdbs0_fdb0_bell0_failed_ring_enb
                            || fdbs0_fdb0_bell0_max_priority_enb
                            || fdbs0_fdb0_bell0_valid_fcnt_enb
                            || fdbs0_fdb0_bell0_fcnt_enb
                            || fdbs0_fdb0_bell1_failed_ring_enb
                            || fdbs0_fdb0_bell1_max_priority_enb
                            || fdbs0_fdb0_bell1_valid_fcnt_enb
                            || fdbs0_fdb0_bell1_fcnt_enb
                            || fdbs0_fdb0_bell2_failed_ring_enb
                            || fdbs0_fdb0_bell2_max_priority_enb
                            || fdbs0_fdb0_bell2_valid_fcnt_enb
                            || fdbs0_fdb0_bell2_fcnt_enb
                            || fdbs0_fdb0_bell3_failed_ring_enb
                            || fdbs0_fdb0_bell3_max_priority_enb
                            || fdbs0_fdb0_bell3_valid_fcnt_enb
                            || fdbs0_fdb0_bell3_fcnt_enb
                            || fdbs0_fdb0_bell4_failed_ring_enb
                            || fdbs0_fdb0_bell4_max_priority_enb
                            || fdbs0_fdb0_bell4_valid_fcnt_enb
                            || fdbs0_fdb0_bell4_fcnt_enb
                            || fdbs0_fdb0_bell5_failed_ring_enb
                            || fdbs0_fdb0_bell5_max_priority_enb
                            || fdbs0_fdb0_bell5_valid_fcnt_enb
                            || fdbs0_fdb0_bell5_fcnt_enb
                            || fdbs0_fdb0_bell6_failed_ring_enb
                            || fdbs0_fdb0_bell6_max_priority_enb
                            || fdbs0_fdb0_bell6_valid_fcnt_enb
                            || fdbs0_fdb0_bell6_fcnt_enb
                            || fdbs0_fdb0_bell7_failed_ring_enb
                            || fdbs0_fdb0_bell7_max_priority_enb
                            || fdbs0_fdb0_bell7_valid_fcnt_enb
                            || fdbs0_fdb0_bell7_fcnt_enb
                            || fdbs0_fdb0_bell8_failed_ring_enb
                            || fdbs0_fdb0_bell8_max_priority_enb
                            || fdbs0_fdb0_bell8_valid_fcnt_enb
                            || fdbs0_fdb0_bell8_fcnt_enb; 
wire          reg_load0_clk; 
ftc_clock_gate_latch reg_load0_clk_clock_gate_latch (
    .clk(reg_clk),
    .enable(reg_load0_enbl),
    .clock_gate_disable(1'b0),
    .test_mode(test_mode_cgm_i),
    .gated_clk(reg_load0_clk));

wire          reg_load1_enbl = fdbs0_fdb0_bell9_failed_ring_enb
                            || fdbs0_fdb0_bell9_max_priority_enb
                            || fdbs0_fdb0_bell9_valid_fcnt_enb
                            || fdbs0_fdb0_bell9_fcnt_enb
                            || fdbs0_fdb0_bell10_failed_ring_enb
                            || fdbs0_fdb0_bell10_max_priority_enb
                            || fdbs0_fdb0_bell10_valid_fcnt_enb
                            || fdbs0_fdb0_bell10_fcnt_enb
                            || fdbs0_fdb0_bell11_failed_ring_enb
                            || fdbs0_fdb0_bell11_max_priority_enb
                            || fdbs0_fdb0_bell11_valid_fcnt_enb
                            || fdbs0_fdb0_bell11_fcnt_enb
                            || fdbs0_fdb0_bell12_failed_ring_enb
                            || fdbs0_fdb0_bell12_max_priority_enb
                            || fdbs0_fdb0_bell12_valid_fcnt_enb
                            || fdbs0_fdb0_bell12_fcnt_enb
                            || fdbs0_fdb0_bell13_failed_ring_enb
                            || fdbs0_fdb0_bell13_max_priority_enb
                            || fdbs0_fdb0_bell13_valid_fcnt_enb
                            || fdbs0_fdb0_bell13_fcnt_enb
                            || fdbs0_fdb0_bell14_failed_ring_enb
                            || fdbs0_fdb0_bell14_max_priority_enb
                            || fdbs0_fdb0_bell14_valid_fcnt_enb
                            || fdbs0_fdb0_bell14_fcnt_enb
                            || fdbs0_fdb0_bell15_failed_ring_enb
                            || fdbs0_fdb0_bell15_max_priority_enb
                            || fdbs0_fdb0_bell15_valid_fcnt_enb
                            || fdbs0_fdb0_bell15_fcnt_enb
                            || fdbs0_fdb1_bell0_failed_ring_enb
                            || fdbs0_fdb1_bell0_max_priority_enb
                            || fdbs0_fdb1_bell0_valid_fcnt_enb
                            || fdbs0_fdb1_bell0_fcnt_enb
                            || fdbs0_fdb1_bell1_failed_ring_enb
                            || fdbs0_fdb1_bell1_max_priority_enb
                            || fdbs0_fdb1_bell1_valid_fcnt_enb
                            || fdbs0_fdb1_bell1_fcnt_enb; 
wire          reg_load1_clk; 
ftc_clock_gate_latch reg_load1_clk_clock_gate_latch (
    .clk(reg_clk),
    .enable(reg_load1_enbl),
    .clock_gate_disable(1'b0),
    .test_mode(test_mode_cgm_i),
    .gated_clk(reg_load1_clk));

wire          reg_load2_enbl = fdbs0_fdb1_bell2_failed_ring_enb
                            || fdbs0_fdb1_bell2_max_priority_enb
                            || fdbs0_fdb1_bell2_valid_fcnt_enb
                            || fdbs0_fdb1_bell2_fcnt_enb
                            || fdbs0_fdb1_bell3_failed_ring_enb
                            || fdbs0_fdb1_bell3_max_priority_enb
                            || fdbs0_fdb1_bell3_valid_fcnt_enb
                            || fdbs0_fdb1_bell3_fcnt_enb
                            || fdbs0_fdb1_bell4_failed_ring_enb
                            || fdbs0_fdb1_bell4_max_priority_enb
                            || fdbs0_fdb1_bell4_valid_fcnt_enb
                            || fdbs0_fdb1_bell4_fcnt_enb
                            || fdbs0_fdb1_bell5_failed_ring_enb
                            || fdbs0_fdb1_bell5_max_priority_enb
                            || fdbs0_fdb1_bell5_valid_fcnt_enb
                            || fdbs0_fdb1_bell5_fcnt_enb
                            || fdbs0_fdb1_bell6_failed_ring_enb
                            || fdbs0_fdb1_bell6_max_priority_enb
                            || fdbs0_fdb1_bell6_valid_fcnt_enb
                            || fdbs0_fdb1_bell6_fcnt_enb
                            || fdbs0_fdb1_bell7_failed_ring_enb
                            || fdbs0_fdb1_bell7_max_priority_enb
                            || fdbs0_fdb1_bell7_valid_fcnt_enb
                            || fdbs0_fdb1_bell7_fcnt_enb
                            || fdbs0_fdb1_bell8_failed_ring_enb
                            || fdbs0_fdb1_bell8_max_priority_enb
                            || fdbs0_fdb1_bell8_valid_fcnt_enb
                            || fdbs0_fdb1_bell8_fcnt_enb
                            || fdbs0_fdb1_bell9_failed_ring_enb
                            || fdbs0_fdb1_bell9_max_priority_enb
                            || fdbs0_fdb1_bell9_valid_fcnt_enb
                            || fdbs0_fdb1_bell9_fcnt_enb
                            || fdbs0_fdb1_bell10_failed_ring_enb
                            || fdbs0_fdb1_bell10_max_priority_enb
                            || fdbs0_fdb1_bell10_valid_fcnt_enb
                            || fdbs0_fdb1_bell10_fcnt_enb; 
wire          reg_load2_clk; 
ftc_clock_gate_latch reg_load2_clk_clock_gate_latch (
    .clk(reg_clk),
    .enable(reg_load2_enbl),
    .clock_gate_disable(1'b0),
    .test_mode(test_mode_cgm_i),
    .gated_clk(reg_load2_clk));

wire          reg_load3_enbl = fdbs0_fdb1_bell11_failed_ring_enb
                            || fdbs0_fdb1_bell11_max_priority_enb
                            || fdbs0_fdb1_bell11_valid_fcnt_enb
                            || fdbs0_fdb1_bell11_fcnt_enb
                            || fdbs0_fdb1_bell12_failed_ring_enb
                            || fdbs0_fdb1_bell12_max_priority_enb
                            || fdbs0_fdb1_bell12_valid_fcnt_enb
                            || fdbs0_fdb1_bell12_fcnt_enb
                            || fdbs0_fdb1_bell13_failed_ring_enb
                            || fdbs0_fdb1_bell13_max_priority_enb
                            || fdbs0_fdb1_bell13_valid_fcnt_enb
                            || fdbs0_fdb1_bell13_fcnt_enb
                            || fdbs0_fdb1_bell14_failed_ring_enb
                            || fdbs0_fdb1_bell14_max_priority_enb
                            || fdbs0_fdb1_bell14_valid_fcnt_enb
                            || fdbs0_fdb1_bell14_fcnt_enb
                            || fdbs0_fdb1_bell15_failed_ring_enb
                            || fdbs0_fdb1_bell15_max_priority_enb
                            || fdbs0_fdb1_bell15_valid_fcnt_enb
                            || fdbs0_fdb1_bell15_fcnt_enb; 
wire          reg_load3_clk; 
ftc_clock_gate_latch reg_load3_clk_clock_gate_latch (
    .clk(reg_clk),
    .enable(reg_load3_enbl),
    .clock_gate_disable(1'b0),
    .test_mode(test_mode_cgm_i),
    .gated_clk(reg_load3_clk));

////////////////////////////////////////////////////////////////////////
// Config Register Block Write Logic

// ------------------------------------------------------------
// register: fdb0_bell0                            offset: 0x0
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell0_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb0_bell0_failed_ring_enb) begin
      fdbs0_fdb0_bell0_failed_ring_q <= fdbs0_fdb0_bell0_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell0_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb0_bell0_max_priority_enb) begin
      fdbs0_fdb0_bell0_max_priority_q <= fdbs0_fdb0_bell0_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell0_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell0_valid_fcnt_enb) begin
      fdbs0_fdb0_bell0_valid_fcnt_q <= fdbs0_fdb0_bell0_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell0_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell0_fcnt_enb) begin
      fdbs0_fdb0_bell0_fcnt_q <= fdbs0_fdb0_bell0_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb0_bell1                            offset: 0x4
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell1_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb0_bell1_failed_ring_enb) begin
      fdbs0_fdb0_bell1_failed_ring_q <= fdbs0_fdb0_bell1_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell1_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb0_bell1_max_priority_enb) begin
      fdbs0_fdb0_bell1_max_priority_q <= fdbs0_fdb0_bell1_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell1_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell1_valid_fcnt_enb) begin
      fdbs0_fdb0_bell1_valid_fcnt_q <= fdbs0_fdb0_bell1_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell1_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell1_fcnt_enb) begin
      fdbs0_fdb0_bell1_fcnt_q <= fdbs0_fdb0_bell1_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb0_bell2                            offset: 0x8
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell2_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb0_bell2_failed_ring_enb) begin
      fdbs0_fdb0_bell2_failed_ring_q <= fdbs0_fdb0_bell2_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell2_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb0_bell2_max_priority_enb) begin
      fdbs0_fdb0_bell2_max_priority_q <= fdbs0_fdb0_bell2_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell2_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell2_valid_fcnt_enb) begin
      fdbs0_fdb0_bell2_valid_fcnt_q <= fdbs0_fdb0_bell2_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell2_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell2_fcnt_enb) begin
      fdbs0_fdb0_bell2_fcnt_q <= fdbs0_fdb0_bell2_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb0_bell3                            offset: 0xc
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell3_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb0_bell3_failed_ring_enb) begin
      fdbs0_fdb0_bell3_failed_ring_q <= fdbs0_fdb0_bell3_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell3_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb0_bell3_max_priority_enb) begin
      fdbs0_fdb0_bell3_max_priority_q <= fdbs0_fdb0_bell3_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell3_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell3_valid_fcnt_enb) begin
      fdbs0_fdb0_bell3_valid_fcnt_q <= fdbs0_fdb0_bell3_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell3_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell3_fcnt_enb) begin
      fdbs0_fdb0_bell3_fcnt_q <= fdbs0_fdb0_bell3_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb0_bell4                            offset: 0x10
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell4_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb0_bell4_failed_ring_enb) begin
      fdbs0_fdb0_bell4_failed_ring_q <= fdbs0_fdb0_bell4_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell4_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb0_bell4_max_priority_enb) begin
      fdbs0_fdb0_bell4_max_priority_q <= fdbs0_fdb0_bell4_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell4_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell4_valid_fcnt_enb) begin
      fdbs0_fdb0_bell4_valid_fcnt_q <= fdbs0_fdb0_bell4_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell4_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell4_fcnt_enb) begin
      fdbs0_fdb0_bell4_fcnt_q <= fdbs0_fdb0_bell4_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb0_bell5                            offset: 0x14
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell5_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb0_bell5_failed_ring_enb) begin
      fdbs0_fdb0_bell5_failed_ring_q <= fdbs0_fdb0_bell5_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell5_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb0_bell5_max_priority_enb) begin
      fdbs0_fdb0_bell5_max_priority_q <= fdbs0_fdb0_bell5_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell5_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell5_valid_fcnt_enb) begin
      fdbs0_fdb0_bell5_valid_fcnt_q <= fdbs0_fdb0_bell5_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell5_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell5_fcnt_enb) begin
      fdbs0_fdb0_bell5_fcnt_q <= fdbs0_fdb0_bell5_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb0_bell6                            offset: 0x18
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell6_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb0_bell6_failed_ring_enb) begin
      fdbs0_fdb0_bell6_failed_ring_q <= fdbs0_fdb0_bell6_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell6_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb0_bell6_max_priority_enb) begin
      fdbs0_fdb0_bell6_max_priority_q <= fdbs0_fdb0_bell6_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell6_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell6_valid_fcnt_enb) begin
      fdbs0_fdb0_bell6_valid_fcnt_q <= fdbs0_fdb0_bell6_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell6_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell6_fcnt_enb) begin
      fdbs0_fdb0_bell6_fcnt_q <= fdbs0_fdb0_bell6_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb0_bell7                            offset: 0x1c
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell7_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb0_bell7_failed_ring_enb) begin
      fdbs0_fdb0_bell7_failed_ring_q <= fdbs0_fdb0_bell7_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell7_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb0_bell7_max_priority_enb) begin
      fdbs0_fdb0_bell7_max_priority_q <= fdbs0_fdb0_bell7_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell7_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell7_valid_fcnt_enb) begin
      fdbs0_fdb0_bell7_valid_fcnt_q <= fdbs0_fdb0_bell7_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell7_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell7_fcnt_enb) begin
      fdbs0_fdb0_bell7_fcnt_q <= fdbs0_fdb0_bell7_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb0_bell8                            offset: 0x20
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell8_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb0_bell8_failed_ring_enb) begin
      fdbs0_fdb0_bell8_failed_ring_q <= fdbs0_fdb0_bell8_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell8_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb0_bell8_max_priority_enb) begin
      fdbs0_fdb0_bell8_max_priority_q <= fdbs0_fdb0_bell8_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell8_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell8_valid_fcnt_enb) begin
      fdbs0_fdb0_bell8_valid_fcnt_q <= fdbs0_fdb0_bell8_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell8_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell8_fcnt_enb) begin
      fdbs0_fdb0_bell8_fcnt_q <= fdbs0_fdb0_bell8_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb0_bell9                            offset: 0x24
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell9_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb0_bell9_failed_ring_enb) begin
      fdbs0_fdb0_bell9_failed_ring_q <= fdbs0_fdb0_bell9_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell9_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb0_bell9_max_priority_enb) begin
      fdbs0_fdb0_bell9_max_priority_q <= fdbs0_fdb0_bell9_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell9_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell9_valid_fcnt_enb) begin
      fdbs0_fdb0_bell9_valid_fcnt_q <= fdbs0_fdb0_bell9_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell9_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell9_fcnt_enb) begin
      fdbs0_fdb0_bell9_fcnt_q <= fdbs0_fdb0_bell9_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb0_bell10                           offset: 0x28
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell10_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb0_bell10_failed_ring_enb) begin
      fdbs0_fdb0_bell10_failed_ring_q <= fdbs0_fdb0_bell10_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell10_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb0_bell10_max_priority_enb) begin
      fdbs0_fdb0_bell10_max_priority_q <= fdbs0_fdb0_bell10_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell10_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell10_valid_fcnt_enb) begin
      fdbs0_fdb0_bell10_valid_fcnt_q <= fdbs0_fdb0_bell10_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell10_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell10_fcnt_enb) begin
      fdbs0_fdb0_bell10_fcnt_q <= fdbs0_fdb0_bell10_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb0_bell11                           offset: 0x2c
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell11_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb0_bell11_failed_ring_enb) begin
      fdbs0_fdb0_bell11_failed_ring_q <= fdbs0_fdb0_bell11_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell11_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb0_bell11_max_priority_enb) begin
      fdbs0_fdb0_bell11_max_priority_q <= fdbs0_fdb0_bell11_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell11_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell11_valid_fcnt_enb) begin
      fdbs0_fdb0_bell11_valid_fcnt_q <= fdbs0_fdb0_bell11_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell11_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell11_fcnt_enb) begin
      fdbs0_fdb0_bell11_fcnt_q <= fdbs0_fdb0_bell11_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb0_bell12                           offset: 0x30
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell12_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb0_bell12_failed_ring_enb) begin
      fdbs0_fdb0_bell12_failed_ring_q <= fdbs0_fdb0_bell12_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell12_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb0_bell12_max_priority_enb) begin
      fdbs0_fdb0_bell12_max_priority_q <= fdbs0_fdb0_bell12_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell12_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell12_valid_fcnt_enb) begin
      fdbs0_fdb0_bell12_valid_fcnt_q <= fdbs0_fdb0_bell12_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell12_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell12_fcnt_enb) begin
      fdbs0_fdb0_bell12_fcnt_q <= fdbs0_fdb0_bell12_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb0_bell13                           offset: 0x34
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell13_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb0_bell13_failed_ring_enb) begin
      fdbs0_fdb0_bell13_failed_ring_q <= fdbs0_fdb0_bell13_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell13_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb0_bell13_max_priority_enb) begin
      fdbs0_fdb0_bell13_max_priority_q <= fdbs0_fdb0_bell13_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell13_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell13_valid_fcnt_enb) begin
      fdbs0_fdb0_bell13_valid_fcnt_q <= fdbs0_fdb0_bell13_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell13_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell13_fcnt_enb) begin
      fdbs0_fdb0_bell13_fcnt_q <= fdbs0_fdb0_bell13_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb0_bell14                           offset: 0x38
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell14_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb0_bell14_failed_ring_enb) begin
      fdbs0_fdb0_bell14_failed_ring_q <= fdbs0_fdb0_bell14_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell14_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb0_bell14_max_priority_enb) begin
      fdbs0_fdb0_bell14_max_priority_q <= fdbs0_fdb0_bell14_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell14_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell14_valid_fcnt_enb) begin
      fdbs0_fdb0_bell14_valid_fcnt_q <= fdbs0_fdb0_bell14_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell14_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell14_fcnt_enb) begin
      fdbs0_fdb0_bell14_fcnt_q <= fdbs0_fdb0_bell14_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb0_bell15                           offset: 0x3c
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell15_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb0_bell15_failed_ring_enb) begin
      fdbs0_fdb0_bell15_failed_ring_q <= fdbs0_fdb0_bell15_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell15_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb0_bell15_max_priority_enb) begin
      fdbs0_fdb0_bell15_max_priority_q <= fdbs0_fdb0_bell15_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell15_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell15_valid_fcnt_enb) begin
      fdbs0_fdb0_bell15_valid_fcnt_q <= fdbs0_fdb0_bell15_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_bell15_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb0_bell15_fcnt_enb) begin
      fdbs0_fdb0_bell15_fcnt_q <= fdbs0_fdb0_bell15_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb0_control                          offset: 0x74
// field   : ack_on_empty,  type:STD, sw:RW, hw:RO, msb:0, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb0_control_ack_on_empty_q <= 1'h0;
   end
   else if (write_valid_i) begin
      fdbs0_fdb0_control_ack_on_empty_q <= fdbs0_fdb0_control_ack_on_empty;
   end
end
// ------------------------------------------------------------
// register: fdb0_status                           offset: 0x7c
// field   : status,  type:STD, sw:RO, hw:WO, msb:15, lsb:0
// *** No internal storage needed.
// ------------------------------------------------------------
// register: fdb1_bell0                            offset: 0x200
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell0_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb1_bell0_failed_ring_enb) begin
      fdbs0_fdb1_bell0_failed_ring_q <= fdbs0_fdb1_bell0_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell0_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb1_bell0_max_priority_enb) begin
      fdbs0_fdb1_bell0_max_priority_q <= fdbs0_fdb1_bell0_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell0_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell0_valid_fcnt_enb) begin
      fdbs0_fdb1_bell0_valid_fcnt_q <= fdbs0_fdb1_bell0_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell0_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell0_fcnt_enb) begin
      fdbs0_fdb1_bell0_fcnt_q <= fdbs0_fdb1_bell0_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb1_bell1                            offset: 0x204
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell1_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb1_bell1_failed_ring_enb) begin
      fdbs0_fdb1_bell1_failed_ring_q <= fdbs0_fdb1_bell1_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell1_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb1_bell1_max_priority_enb) begin
      fdbs0_fdb1_bell1_max_priority_q <= fdbs0_fdb1_bell1_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell1_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell1_valid_fcnt_enb) begin
      fdbs0_fdb1_bell1_valid_fcnt_q <= fdbs0_fdb1_bell1_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load1_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell1_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell1_fcnt_enb) begin
      fdbs0_fdb1_bell1_fcnt_q <= fdbs0_fdb1_bell1_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb1_bell2                            offset: 0x208
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell2_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb1_bell2_failed_ring_enb) begin
      fdbs0_fdb1_bell2_failed_ring_q <= fdbs0_fdb1_bell2_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell2_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb1_bell2_max_priority_enb) begin
      fdbs0_fdb1_bell2_max_priority_q <= fdbs0_fdb1_bell2_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell2_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell2_valid_fcnt_enb) begin
      fdbs0_fdb1_bell2_valid_fcnt_q <= fdbs0_fdb1_bell2_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell2_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell2_fcnt_enb) begin
      fdbs0_fdb1_bell2_fcnt_q <= fdbs0_fdb1_bell2_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb1_bell3                            offset: 0x20c
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell3_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb1_bell3_failed_ring_enb) begin
      fdbs0_fdb1_bell3_failed_ring_q <= fdbs0_fdb1_bell3_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell3_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb1_bell3_max_priority_enb) begin
      fdbs0_fdb1_bell3_max_priority_q <= fdbs0_fdb1_bell3_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell3_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell3_valid_fcnt_enb) begin
      fdbs0_fdb1_bell3_valid_fcnt_q <= fdbs0_fdb1_bell3_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell3_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell3_fcnt_enb) begin
      fdbs0_fdb1_bell3_fcnt_q <= fdbs0_fdb1_bell3_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb1_bell4                            offset: 0x210
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell4_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb1_bell4_failed_ring_enb) begin
      fdbs0_fdb1_bell4_failed_ring_q <= fdbs0_fdb1_bell4_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell4_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb1_bell4_max_priority_enb) begin
      fdbs0_fdb1_bell4_max_priority_q <= fdbs0_fdb1_bell4_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell4_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell4_valid_fcnt_enb) begin
      fdbs0_fdb1_bell4_valid_fcnt_q <= fdbs0_fdb1_bell4_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell4_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell4_fcnt_enb) begin
      fdbs0_fdb1_bell4_fcnt_q <= fdbs0_fdb1_bell4_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb1_bell5                            offset: 0x214
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell5_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb1_bell5_failed_ring_enb) begin
      fdbs0_fdb1_bell5_failed_ring_q <= fdbs0_fdb1_bell5_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell5_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb1_bell5_max_priority_enb) begin
      fdbs0_fdb1_bell5_max_priority_q <= fdbs0_fdb1_bell5_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell5_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell5_valid_fcnt_enb) begin
      fdbs0_fdb1_bell5_valid_fcnt_q <= fdbs0_fdb1_bell5_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell5_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell5_fcnt_enb) begin
      fdbs0_fdb1_bell5_fcnt_q <= fdbs0_fdb1_bell5_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb1_bell6                            offset: 0x218
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell6_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb1_bell6_failed_ring_enb) begin
      fdbs0_fdb1_bell6_failed_ring_q <= fdbs0_fdb1_bell6_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell6_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb1_bell6_max_priority_enb) begin
      fdbs0_fdb1_bell6_max_priority_q <= fdbs0_fdb1_bell6_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell6_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell6_valid_fcnt_enb) begin
      fdbs0_fdb1_bell6_valid_fcnt_q <= fdbs0_fdb1_bell6_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell6_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell6_fcnt_enb) begin
      fdbs0_fdb1_bell6_fcnt_q <= fdbs0_fdb1_bell6_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb1_bell7                            offset: 0x21c
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell7_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb1_bell7_failed_ring_enb) begin
      fdbs0_fdb1_bell7_failed_ring_q <= fdbs0_fdb1_bell7_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell7_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb1_bell7_max_priority_enb) begin
      fdbs0_fdb1_bell7_max_priority_q <= fdbs0_fdb1_bell7_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell7_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell7_valid_fcnt_enb) begin
      fdbs0_fdb1_bell7_valid_fcnt_q <= fdbs0_fdb1_bell7_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell7_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell7_fcnt_enb) begin
      fdbs0_fdb1_bell7_fcnt_q <= fdbs0_fdb1_bell7_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb1_bell8                            offset: 0x220
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell8_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb1_bell8_failed_ring_enb) begin
      fdbs0_fdb1_bell8_failed_ring_q <= fdbs0_fdb1_bell8_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell8_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb1_bell8_max_priority_enb) begin
      fdbs0_fdb1_bell8_max_priority_q <= fdbs0_fdb1_bell8_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell8_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell8_valid_fcnt_enb) begin
      fdbs0_fdb1_bell8_valid_fcnt_q <= fdbs0_fdb1_bell8_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell8_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell8_fcnt_enb) begin
      fdbs0_fdb1_bell8_fcnt_q <= fdbs0_fdb1_bell8_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb1_bell9                            offset: 0x224
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell9_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb1_bell9_failed_ring_enb) begin
      fdbs0_fdb1_bell9_failed_ring_q <= fdbs0_fdb1_bell9_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell9_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb1_bell9_max_priority_enb) begin
      fdbs0_fdb1_bell9_max_priority_q <= fdbs0_fdb1_bell9_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell9_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell9_valid_fcnt_enb) begin
      fdbs0_fdb1_bell9_valid_fcnt_q <= fdbs0_fdb1_bell9_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell9_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell9_fcnt_enb) begin
      fdbs0_fdb1_bell9_fcnt_q <= fdbs0_fdb1_bell9_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb1_bell10                           offset: 0x228
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell10_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb1_bell10_failed_ring_enb) begin
      fdbs0_fdb1_bell10_failed_ring_q <= fdbs0_fdb1_bell10_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell10_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb1_bell10_max_priority_enb) begin
      fdbs0_fdb1_bell10_max_priority_q <= fdbs0_fdb1_bell10_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell10_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell10_valid_fcnt_enb) begin
      fdbs0_fdb1_bell10_valid_fcnt_q <= fdbs0_fdb1_bell10_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load2_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell10_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell10_fcnt_enb) begin
      fdbs0_fdb1_bell10_fcnt_q <= fdbs0_fdb1_bell10_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb1_bell11                           offset: 0x22c
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell11_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb1_bell11_failed_ring_enb) begin
      fdbs0_fdb1_bell11_failed_ring_q <= fdbs0_fdb1_bell11_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell11_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb1_bell11_max_priority_enb) begin
      fdbs0_fdb1_bell11_max_priority_q <= fdbs0_fdb1_bell11_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell11_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell11_valid_fcnt_enb) begin
      fdbs0_fdb1_bell11_valid_fcnt_q <= fdbs0_fdb1_bell11_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell11_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell11_fcnt_enb) begin
      fdbs0_fdb1_bell11_fcnt_q <= fdbs0_fdb1_bell11_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb1_bell12                           offset: 0x230
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell12_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb1_bell12_failed_ring_enb) begin
      fdbs0_fdb1_bell12_failed_ring_q <= fdbs0_fdb1_bell12_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell12_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb1_bell12_max_priority_enb) begin
      fdbs0_fdb1_bell12_max_priority_q <= fdbs0_fdb1_bell12_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell12_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell12_valid_fcnt_enb) begin
      fdbs0_fdb1_bell12_valid_fcnt_q <= fdbs0_fdb1_bell12_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell12_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell12_fcnt_enb) begin
      fdbs0_fdb1_bell12_fcnt_q <= fdbs0_fdb1_bell12_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb1_bell13                           offset: 0x234
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell13_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb1_bell13_failed_ring_enb) begin
      fdbs0_fdb1_bell13_failed_ring_q <= fdbs0_fdb1_bell13_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell13_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb1_bell13_max_priority_enb) begin
      fdbs0_fdb1_bell13_max_priority_q <= fdbs0_fdb1_bell13_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell13_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell13_valid_fcnt_enb) begin
      fdbs0_fdb1_bell13_valid_fcnt_q <= fdbs0_fdb1_bell13_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell13_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell13_fcnt_enb) begin
      fdbs0_fdb1_bell13_fcnt_q <= fdbs0_fdb1_bell13_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb1_bell14                           offset: 0x238
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell14_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb1_bell14_failed_ring_enb) begin
      fdbs0_fdb1_bell14_failed_ring_q <= fdbs0_fdb1_bell14_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell14_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb1_bell14_max_priority_enb) begin
      fdbs0_fdb1_bell14_max_priority_q <= fdbs0_fdb1_bell14_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell14_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell14_valid_fcnt_enb) begin
      fdbs0_fdb1_bell14_valid_fcnt_q <= fdbs0_fdb1_bell14_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell14_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell14_fcnt_enb) begin
      fdbs0_fdb1_bell14_fcnt_q <= fdbs0_fdb1_bell14_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb1_bell15                           offset: 0x23c
// field   : failed_ring,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell15_failed_ring_q <= 1'h0;
   end
   else if (fdbs0_fdb1_bell15_failed_ring_enb) begin
      fdbs0_fdb1_bell15_failed_ring_q <= fdbs0_fdb1_bell15_failed_ring_d;
   end
end
// field   : max_priority,  type:STD, sw:RO, hw:RW, msb:6, lsb:5
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell15_max_priority_q <= 2'h0;
   end
   else if (fdbs0_fdb1_bell15_max_priority_enb) begin
      fdbs0_fdb1_bell15_max_priority_q <= fdbs0_fdb1_bell15_max_priority_d;
   end
end
// field   : valid_fcnt,  type:STD, sw:RO, hw:RW, msb:12, lsb:8
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell15_valid_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell15_valid_fcnt_enb) begin
      fdbs0_fdb1_bell15_valid_fcnt_q <= fdbs0_fdb1_bell15_valid_fcnt_d;
   end
end
// field   : fcnt,  type:STD, sw:RO, hw:RW, msb:20, lsb:16
always @(posedge reg_load3_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_bell15_fcnt_q <= 5'h00;
   end
   else if (fdbs0_fdb1_bell15_fcnt_enb) begin
      fdbs0_fdb1_bell15_fcnt_q <= fdbs0_fdb1_bell15_fcnt_d;
   end
end
// ------------------------------------------------------------
// register: fdb1_control                          offset: 0x274
// field   : ack_on_empty,  type:STD, sw:RW, hw:RO, msb:0, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      fdbs0_fdb1_control_ack_on_empty_q <= 1'h0;
   end
   else if (write_valid_i) begin
      fdbs0_fdb1_control_ack_on_empty_q <= fdbs0_fdb1_control_ack_on_empty;
   end
end
// ------------------------------------------------------------
// register: fdb1_status                           offset: 0x27c
// field   : status,  type:STD, sw:RO, hw:WO, msb:15, lsb:0
// *** No internal storage needed.

////////////////////////////////////////////////////////////////////////
// STD/STP/INT Register/Field Write Logic

wire   [31:0] fdbs0_fdb0_control; 
reg    [31:0] fdbs0_fdb0_control_wrdata0; 
always @(*) begin
   fdbs0_fdb0_control_wrdata0 = (write_data_masked | (fdbs0_fdb0_control[31:0] & ~write_strobe_mask));
   if (write_addr_i == 10'h074) begin
      fdbs0_fdb0_control_ack_on_empty = fdbs0_fdb0_control_wrdata0[0:0];
   end else begin
      fdbs0_fdb0_control_ack_on_empty = fdbs0_fdb0_control_ack_on_empty_q;
   end
end

wire   [31:0] fdbs0_fdb1_control; 
reg    [31:0] fdbs0_fdb1_control_wrdata0; 
always @(*) begin
   fdbs0_fdb1_control_wrdata0 = (write_data_masked | (fdbs0_fdb1_control[31:0] & ~write_strobe_mask));
   if (write_addr_i == 10'h274) begin
      fdbs0_fdb1_control_ack_on_empty = fdbs0_fdb1_control_wrdata0[0:0];
   end else begin
      fdbs0_fdb1_control_ack_on_empty = fdbs0_fdb1_control_ack_on_empty_q;
   end
end


////////////////////////////////////////////////////////////////////////
// EXT Register/Field Write Logic

wire   [31:0] fdbs0_fdb0_bell0; 
wire   [31:0] fdbs0_fdb0_bell0_wrdata0 = (write_data_masked | (fdbs0_fdb0_bell0[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb0_bell1; 
wire   [31:0] fdbs0_fdb0_bell1_wrdata0 = (write_data_masked | (fdbs0_fdb0_bell1[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb0_bell2; 
wire   [31:0] fdbs0_fdb0_bell2_wrdata0 = (write_data_masked | (fdbs0_fdb0_bell2[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb0_bell3; 
wire   [31:0] fdbs0_fdb0_bell3_wrdata0 = (write_data_masked | (fdbs0_fdb0_bell3[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb0_bell4; 
wire   [31:0] fdbs0_fdb0_bell4_wrdata0 = (write_data_masked | (fdbs0_fdb0_bell4[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb0_bell5; 
wire   [31:0] fdbs0_fdb0_bell5_wrdata0 = (write_data_masked | (fdbs0_fdb0_bell5[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb0_bell6; 
wire   [31:0] fdbs0_fdb0_bell6_wrdata0 = (write_data_masked | (fdbs0_fdb0_bell6[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb0_bell7; 
wire   [31:0] fdbs0_fdb0_bell7_wrdata0 = (write_data_masked | (fdbs0_fdb0_bell7[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb0_bell8; 
wire   [31:0] fdbs0_fdb0_bell8_wrdata0 = (write_data_masked | (fdbs0_fdb0_bell8[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb0_bell9; 
wire   [31:0] fdbs0_fdb0_bell9_wrdata0 = (write_data_masked | (fdbs0_fdb0_bell9[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb0_bell10; 
wire   [31:0] fdbs0_fdb0_bell10_wrdata0 = (write_data_masked | (fdbs0_fdb0_bell10[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb0_bell11; 
wire   [31:0] fdbs0_fdb0_bell11_wrdata0 = (write_data_masked | (fdbs0_fdb0_bell11[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb0_bell12; 
wire   [31:0] fdbs0_fdb0_bell12_wrdata0 = (write_data_masked | (fdbs0_fdb0_bell12[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb0_bell13; 
wire   [31:0] fdbs0_fdb0_bell13_wrdata0 = (write_data_masked | (fdbs0_fdb0_bell13[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb0_bell14; 
wire   [31:0] fdbs0_fdb0_bell14_wrdata0 = (write_data_masked | (fdbs0_fdb0_bell14[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb0_bell15; 
wire   [31:0] fdbs0_fdb0_bell15_wrdata0 = (write_data_masked | (fdbs0_fdb0_bell15[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb0_enable; 
wire   [31:0] fdbs0_fdb0_enable_wrdata0 = (write_data_masked | (fdbs0_fdb0_enable[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb1_bell0; 
wire   [31:0] fdbs0_fdb1_bell0_wrdata0 = (write_data_masked | (fdbs0_fdb1_bell0[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb1_bell1; 
wire   [31:0] fdbs0_fdb1_bell1_wrdata0 = (write_data_masked | (fdbs0_fdb1_bell1[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb1_bell2; 
wire   [31:0] fdbs0_fdb1_bell2_wrdata0 = (write_data_masked | (fdbs0_fdb1_bell2[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb1_bell3; 
wire   [31:0] fdbs0_fdb1_bell3_wrdata0 = (write_data_masked | (fdbs0_fdb1_bell3[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb1_bell4; 
wire   [31:0] fdbs0_fdb1_bell4_wrdata0 = (write_data_masked | (fdbs0_fdb1_bell4[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb1_bell5; 
wire   [31:0] fdbs0_fdb1_bell5_wrdata0 = (write_data_masked | (fdbs0_fdb1_bell5[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb1_bell6; 
wire   [31:0] fdbs0_fdb1_bell6_wrdata0 = (write_data_masked | (fdbs0_fdb1_bell6[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb1_bell7; 
wire   [31:0] fdbs0_fdb1_bell7_wrdata0 = (write_data_masked | (fdbs0_fdb1_bell7[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb1_bell8; 
wire   [31:0] fdbs0_fdb1_bell8_wrdata0 = (write_data_masked | (fdbs0_fdb1_bell8[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb1_bell9; 
wire   [31:0] fdbs0_fdb1_bell9_wrdata0 = (write_data_masked | (fdbs0_fdb1_bell9[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb1_bell10; 
wire   [31:0] fdbs0_fdb1_bell10_wrdata0 = (write_data_masked | (fdbs0_fdb1_bell10[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb1_bell11; 
wire   [31:0] fdbs0_fdb1_bell11_wrdata0 = (write_data_masked | (fdbs0_fdb1_bell11[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb1_bell12; 
wire   [31:0] fdbs0_fdb1_bell12_wrdata0 = (write_data_masked | (fdbs0_fdb1_bell12[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb1_bell13; 
wire   [31:0] fdbs0_fdb1_bell13_wrdata0 = (write_data_masked | (fdbs0_fdb1_bell13[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb1_bell14; 
wire   [31:0] fdbs0_fdb1_bell14_wrdata0 = (write_data_masked | (fdbs0_fdb1_bell14[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb1_bell15; 
wire   [31:0] fdbs0_fdb1_bell15_wrdata0 = (write_data_masked | (fdbs0_fdb1_bell15[31:0] & ~write_strobe_mask)); 
wire   [31:0] fdbs0_fdb1_enable; 
wire   [31:0] fdbs0_fdb1_enable_wrdata0 = (write_data_masked | (fdbs0_fdb1_enable[31:0] & ~write_strobe_mask)); 

always @(*) begin
    fdbs0_fdb0_bell0_cnt_din = 2'd0;
    fdbs0_fdb0_bell0_cnt_w = 1'd0;
    fdbs0_fdb0_bell1_cnt_din = 2'd0;
    fdbs0_fdb0_bell1_cnt_w = 1'd0;
    fdbs0_fdb0_bell2_cnt_din = 2'd0;
    fdbs0_fdb0_bell2_cnt_w = 1'd0;
    fdbs0_fdb0_bell3_cnt_din = 2'd0;
    fdbs0_fdb0_bell3_cnt_w = 1'd0;
    fdbs0_fdb0_bell4_cnt_din = 2'd0;
    fdbs0_fdb0_bell4_cnt_w = 1'd0;
    fdbs0_fdb0_bell5_cnt_din = 2'd0;
    fdbs0_fdb0_bell5_cnt_w = 1'd0;
    fdbs0_fdb0_bell6_cnt_din = 2'd0;
    fdbs0_fdb0_bell6_cnt_w = 1'd0;
    fdbs0_fdb0_bell7_cnt_din = 2'd0;
    fdbs0_fdb0_bell7_cnt_w = 1'd0;
    fdbs0_fdb0_bell8_cnt_din = 2'd0;
    fdbs0_fdb0_bell8_cnt_w = 1'd0;
    fdbs0_fdb0_bell9_cnt_din = 2'd0;
    fdbs0_fdb0_bell9_cnt_w = 1'd0;
    fdbs0_fdb0_bell10_cnt_din = 2'd0;
    fdbs0_fdb0_bell10_cnt_w = 1'd0;
    fdbs0_fdb0_bell11_cnt_din = 2'd0;
    fdbs0_fdb0_bell11_cnt_w = 1'd0;
    fdbs0_fdb0_bell12_cnt_din = 2'd0;
    fdbs0_fdb0_bell12_cnt_w = 1'd0;
    fdbs0_fdb0_bell13_cnt_din = 2'd0;
    fdbs0_fdb0_bell13_cnt_w = 1'd0;
    fdbs0_fdb0_bell14_cnt_din = 2'd0;
    fdbs0_fdb0_bell14_cnt_w = 1'd0;
    fdbs0_fdb0_bell15_cnt_din = 2'd0;
    fdbs0_fdb0_bell15_cnt_w = 1'd0;
    fdbs0_fdb0_enable_enable_din = 16'd0;
    fdbs0_fdb0_enable_enable_w = 1'd0;
    fdbs0_fdb1_bell0_cnt_din = 2'd0;
    fdbs0_fdb1_bell0_cnt_w = 1'd0;
    fdbs0_fdb1_bell1_cnt_din = 2'd0;
    fdbs0_fdb1_bell1_cnt_w = 1'd0;
    fdbs0_fdb1_bell2_cnt_din = 2'd0;
    fdbs0_fdb1_bell2_cnt_w = 1'd0;
    fdbs0_fdb1_bell3_cnt_din = 2'd0;
    fdbs0_fdb1_bell3_cnt_w = 1'd0;
    fdbs0_fdb1_bell4_cnt_din = 2'd0;
    fdbs0_fdb1_bell4_cnt_w = 1'd0;
    fdbs0_fdb1_bell5_cnt_din = 2'd0;
    fdbs0_fdb1_bell5_cnt_w = 1'd0;
    fdbs0_fdb1_bell6_cnt_din = 2'd0;
    fdbs0_fdb1_bell6_cnt_w = 1'd0;
    fdbs0_fdb1_bell7_cnt_din = 2'd0;
    fdbs0_fdb1_bell7_cnt_w = 1'd0;
    fdbs0_fdb1_bell8_cnt_din = 2'd0;
    fdbs0_fdb1_bell8_cnt_w = 1'd0;
    fdbs0_fdb1_bell9_cnt_din = 2'd0;
    fdbs0_fdb1_bell9_cnt_w = 1'd0;
    fdbs0_fdb1_bell10_cnt_din = 2'd0;
    fdbs0_fdb1_bell10_cnt_w = 1'd0;
    fdbs0_fdb1_bell11_cnt_din = 2'd0;
    fdbs0_fdb1_bell11_cnt_w = 1'd0;
    fdbs0_fdb1_bell12_cnt_din = 2'd0;
    fdbs0_fdb1_bell12_cnt_w = 1'd0;
    fdbs0_fdb1_bell13_cnt_din = 2'd0;
    fdbs0_fdb1_bell13_cnt_w = 1'd0;
    fdbs0_fdb1_bell14_cnt_din = 2'd0;
    fdbs0_fdb1_bell14_cnt_w = 1'd0;
    fdbs0_fdb1_bell15_cnt_din = 2'd0;
    fdbs0_fdb1_bell15_cnt_w = 1'd0;
    fdbs0_fdb1_enable_enable_din = 16'd0;
    fdbs0_fdb1_enable_enable_w = 1'd0;

    if (write_valid_i) begin
        case (write_addr_i)
           10'h000: begin
               fdbs0_fdb0_bell0_cnt_din = fdbs0_fdb0_bell0_wrdata0[1:0];
               fdbs0_fdb0_bell0_cnt_w = write_strb_i[0];
           end
           10'h004: begin
               fdbs0_fdb0_bell1_cnt_din = fdbs0_fdb0_bell1_wrdata0[1:0];
               fdbs0_fdb0_bell1_cnt_w = write_strb_i[0];
           end
           10'h008: begin
               fdbs0_fdb0_bell2_cnt_din = fdbs0_fdb0_bell2_wrdata0[1:0];
               fdbs0_fdb0_bell2_cnt_w = write_strb_i[0];
           end
           10'h00c: begin
               fdbs0_fdb0_bell3_cnt_din = fdbs0_fdb0_bell3_wrdata0[1:0];
               fdbs0_fdb0_bell3_cnt_w = write_strb_i[0];
           end
           10'h010: begin
               fdbs0_fdb0_bell4_cnt_din = fdbs0_fdb0_bell4_wrdata0[1:0];
               fdbs0_fdb0_bell4_cnt_w = write_strb_i[0];
           end
           10'h014: begin
               fdbs0_fdb0_bell5_cnt_din = fdbs0_fdb0_bell5_wrdata0[1:0];
               fdbs0_fdb0_bell5_cnt_w = write_strb_i[0];
           end
           10'h018: begin
               fdbs0_fdb0_bell6_cnt_din = fdbs0_fdb0_bell6_wrdata0[1:0];
               fdbs0_fdb0_bell6_cnt_w = write_strb_i[0];
           end
           10'h01c: begin
               fdbs0_fdb0_bell7_cnt_din = fdbs0_fdb0_bell7_wrdata0[1:0];
               fdbs0_fdb0_bell7_cnt_w = write_strb_i[0];
           end
           10'h020: begin
               fdbs0_fdb0_bell8_cnt_din = fdbs0_fdb0_bell8_wrdata0[1:0];
               fdbs0_fdb0_bell8_cnt_w = write_strb_i[0];
           end
           10'h024: begin
               fdbs0_fdb0_bell9_cnt_din = fdbs0_fdb0_bell9_wrdata0[1:0];
               fdbs0_fdb0_bell9_cnt_w = write_strb_i[0];
           end
           10'h028: begin
               fdbs0_fdb0_bell10_cnt_din = fdbs0_fdb0_bell10_wrdata0[1:0];
               fdbs0_fdb0_bell10_cnt_w = write_strb_i[0];
           end
           10'h02c: begin
               fdbs0_fdb0_bell11_cnt_din = fdbs0_fdb0_bell11_wrdata0[1:0];
               fdbs0_fdb0_bell11_cnt_w = write_strb_i[0];
           end
           10'h030: begin
               fdbs0_fdb0_bell12_cnt_din = fdbs0_fdb0_bell12_wrdata0[1:0];
               fdbs0_fdb0_bell12_cnt_w = write_strb_i[0];
           end
           10'h034: begin
               fdbs0_fdb0_bell13_cnt_din = fdbs0_fdb0_bell13_wrdata0[1:0];
               fdbs0_fdb0_bell13_cnt_w = write_strb_i[0];
           end
           10'h038: begin
               fdbs0_fdb0_bell14_cnt_din = fdbs0_fdb0_bell14_wrdata0[1:0];
               fdbs0_fdb0_bell14_cnt_w = write_strb_i[0];
           end
           10'h03c: begin
               fdbs0_fdb0_bell15_cnt_din = fdbs0_fdb0_bell15_wrdata0[1:0];
               fdbs0_fdb0_bell15_cnt_w = write_strb_i[0];
           end
           10'h078: begin
               fdbs0_fdb0_enable_enable_din = fdbs0_fdb0_enable_wrdata0[15:0];
               fdbs0_fdb0_enable_enable_w = write_strb_i[0] || write_strb_i[1];
           end
           10'h200: begin
               fdbs0_fdb1_bell0_cnt_din = fdbs0_fdb1_bell0_wrdata0[1:0];
               fdbs0_fdb1_bell0_cnt_w = write_strb_i[0];
           end
           10'h204: begin
               fdbs0_fdb1_bell1_cnt_din = fdbs0_fdb1_bell1_wrdata0[1:0];
               fdbs0_fdb1_bell1_cnt_w = write_strb_i[0];
           end
           10'h208: begin
               fdbs0_fdb1_bell2_cnt_din = fdbs0_fdb1_bell2_wrdata0[1:0];
               fdbs0_fdb1_bell2_cnt_w = write_strb_i[0];
           end
           10'h20c: begin
               fdbs0_fdb1_bell3_cnt_din = fdbs0_fdb1_bell3_wrdata0[1:0];
               fdbs0_fdb1_bell3_cnt_w = write_strb_i[0];
           end
           10'h210: begin
               fdbs0_fdb1_bell4_cnt_din = fdbs0_fdb1_bell4_wrdata0[1:0];
               fdbs0_fdb1_bell4_cnt_w = write_strb_i[0];
           end
           10'h214: begin
               fdbs0_fdb1_bell5_cnt_din = fdbs0_fdb1_bell5_wrdata0[1:0];
               fdbs0_fdb1_bell5_cnt_w = write_strb_i[0];
           end
           10'h218: begin
               fdbs0_fdb1_bell6_cnt_din = fdbs0_fdb1_bell6_wrdata0[1:0];
               fdbs0_fdb1_bell6_cnt_w = write_strb_i[0];
           end
           10'h21c: begin
               fdbs0_fdb1_bell7_cnt_din = fdbs0_fdb1_bell7_wrdata0[1:0];
               fdbs0_fdb1_bell7_cnt_w = write_strb_i[0];
           end
           10'h220: begin
               fdbs0_fdb1_bell8_cnt_din = fdbs0_fdb1_bell8_wrdata0[1:0];
               fdbs0_fdb1_bell8_cnt_w = write_strb_i[0];
           end
           10'h224: begin
               fdbs0_fdb1_bell9_cnt_din = fdbs0_fdb1_bell9_wrdata0[1:0];
               fdbs0_fdb1_bell9_cnt_w = write_strb_i[0];
           end
           10'h228: begin
               fdbs0_fdb1_bell10_cnt_din = fdbs0_fdb1_bell10_wrdata0[1:0];
               fdbs0_fdb1_bell10_cnt_w = write_strb_i[0];
           end
           10'h22c: begin
               fdbs0_fdb1_bell11_cnt_din = fdbs0_fdb1_bell11_wrdata0[1:0];
               fdbs0_fdb1_bell11_cnt_w = write_strb_i[0];
           end
           10'h230: begin
               fdbs0_fdb1_bell12_cnt_din = fdbs0_fdb1_bell12_wrdata0[1:0];
               fdbs0_fdb1_bell12_cnt_w = write_strb_i[0];
           end
           10'h234: begin
               fdbs0_fdb1_bell13_cnt_din = fdbs0_fdb1_bell13_wrdata0[1:0];
               fdbs0_fdb1_bell13_cnt_w = write_strb_i[0];
           end
           10'h238: begin
               fdbs0_fdb1_bell14_cnt_din = fdbs0_fdb1_bell14_wrdata0[1:0];
               fdbs0_fdb1_bell14_cnt_w = write_strb_i[0];
           end
           10'h23c: begin
               fdbs0_fdb1_bell15_cnt_din = fdbs0_fdb1_bell15_wrdata0[1:0];
               fdbs0_fdb1_bell15_cnt_w = write_strb_i[0];
           end
           10'h278: begin
               fdbs0_fdb1_enable_enable_din = fdbs0_fdb1_enable_wrdata0[15:0];
               fdbs0_fdb1_enable_enable_w = write_strb_i[0] || write_strb_i[1];
           end
           default: begin 
               fdbs0_fdb0_bell0_cnt_din = 2'd0;
               fdbs0_fdb0_bell0_cnt_w = 1'd0;
               fdbs0_fdb0_bell1_cnt_din = 2'd0;
               fdbs0_fdb0_bell1_cnt_w = 1'd0;
               fdbs0_fdb0_bell2_cnt_din = 2'd0;
               fdbs0_fdb0_bell2_cnt_w = 1'd0;
               fdbs0_fdb0_bell3_cnt_din = 2'd0;
               fdbs0_fdb0_bell3_cnt_w = 1'd0;
               fdbs0_fdb0_bell4_cnt_din = 2'd0;
               fdbs0_fdb0_bell4_cnt_w = 1'd0;
               fdbs0_fdb0_bell5_cnt_din = 2'd0;
               fdbs0_fdb0_bell5_cnt_w = 1'd0;
               fdbs0_fdb0_bell6_cnt_din = 2'd0;
               fdbs0_fdb0_bell6_cnt_w = 1'd0;
               fdbs0_fdb0_bell7_cnt_din = 2'd0;
               fdbs0_fdb0_bell7_cnt_w = 1'd0;
               fdbs0_fdb0_bell8_cnt_din = 2'd0;
               fdbs0_fdb0_bell8_cnt_w = 1'd0;
               fdbs0_fdb0_bell9_cnt_din = 2'd0;
               fdbs0_fdb0_bell9_cnt_w = 1'd0;
               fdbs0_fdb0_bell10_cnt_din = 2'd0;
               fdbs0_fdb0_bell10_cnt_w = 1'd0;
               fdbs0_fdb0_bell11_cnt_din = 2'd0;
               fdbs0_fdb0_bell11_cnt_w = 1'd0;
               fdbs0_fdb0_bell12_cnt_din = 2'd0;
               fdbs0_fdb0_bell12_cnt_w = 1'd0;
               fdbs0_fdb0_bell13_cnt_din = 2'd0;
               fdbs0_fdb0_bell13_cnt_w = 1'd0;
               fdbs0_fdb0_bell14_cnt_din = 2'd0;
               fdbs0_fdb0_bell14_cnt_w = 1'd0;
               fdbs0_fdb0_bell15_cnt_din = 2'd0;
               fdbs0_fdb0_bell15_cnt_w = 1'd0;
               fdbs0_fdb0_enable_enable_din = 16'd0;
               fdbs0_fdb0_enable_enable_w = 1'd0;
               fdbs0_fdb1_bell0_cnt_din = 2'd0;
               fdbs0_fdb1_bell0_cnt_w = 1'd0;
               fdbs0_fdb1_bell1_cnt_din = 2'd0;
               fdbs0_fdb1_bell1_cnt_w = 1'd0;
               fdbs0_fdb1_bell2_cnt_din = 2'd0;
               fdbs0_fdb1_bell2_cnt_w = 1'd0;
               fdbs0_fdb1_bell3_cnt_din = 2'd0;
               fdbs0_fdb1_bell3_cnt_w = 1'd0;
               fdbs0_fdb1_bell4_cnt_din = 2'd0;
               fdbs0_fdb1_bell4_cnt_w = 1'd0;
               fdbs0_fdb1_bell5_cnt_din = 2'd0;
               fdbs0_fdb1_bell5_cnt_w = 1'd0;
               fdbs0_fdb1_bell6_cnt_din = 2'd0;
               fdbs0_fdb1_bell6_cnt_w = 1'd0;
               fdbs0_fdb1_bell7_cnt_din = 2'd0;
               fdbs0_fdb1_bell7_cnt_w = 1'd0;
               fdbs0_fdb1_bell8_cnt_din = 2'd0;
               fdbs0_fdb1_bell8_cnt_w = 1'd0;
               fdbs0_fdb1_bell9_cnt_din = 2'd0;
               fdbs0_fdb1_bell9_cnt_w = 1'd0;
               fdbs0_fdb1_bell10_cnt_din = 2'd0;
               fdbs0_fdb1_bell10_cnt_w = 1'd0;
               fdbs0_fdb1_bell11_cnt_din = 2'd0;
               fdbs0_fdb1_bell11_cnt_w = 1'd0;
               fdbs0_fdb1_bell12_cnt_din = 2'd0;
               fdbs0_fdb1_bell12_cnt_w = 1'd0;
               fdbs0_fdb1_bell13_cnt_din = 2'd0;
               fdbs0_fdb1_bell13_cnt_w = 1'd0;
               fdbs0_fdb1_bell14_cnt_din = 2'd0;
               fdbs0_fdb1_bell14_cnt_w = 1'd0;
               fdbs0_fdb1_bell15_cnt_din = 2'd0;
               fdbs0_fdb1_bell15_cnt_w = 1'd0;
               fdbs0_fdb1_enable_enable_din = 16'd0;
               fdbs0_fdb1_enable_enable_w = 1'd0;
           end
        endcase
    end
end

////////////////////////////////////////////////////////////////////////
// RAM Register Read/Write Logic
reg           mem_extend; 

// ------------------------------------------------------------
// register: fdb0_data0_fifo                       offset: 0x80
//                                     width:  32  depth:   4
reg           fdbs0_fdb0_data0_fifo_mem_access; 
reg           fdbs0_fdb0_data0_fifo_mem_ready; 
reg           fdbs0_fdb0_data0_fifo_miss; 
always @(*) begin
    fdbs0_fdb0_data0_fifo_mem_access = 1'b0;
    fdbs0_fdb0_data0_fifo_mem_ready  = 1'b1;
    fdbs0_fdb0_data0_fifo_miss = 1'b1;
    fdbs0_fdb0_data0_fifo_din = 32'd0;
    fdbs0_fdb0_data0_fifo_a = 2'd0;
    fdbs0_fdb0_data0_fifo_wen = {32{1'b1}};
    fdbs0_fdb0_data0_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h8) begin
            fdbs0_fdb0_data0_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb0_data0_fifo_miss = 1'b0;
            fdbs0_fdb0_data0_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data0_fifo_cen  = mem_extend;
            fdbs0_fdb0_data0_fifo_mem_ready  = fdbs0_fdb0_data0_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h8) begin
            fdbs0_fdb0_data0_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb0_data0_fifo_miss = 1'b0;
            fdbs0_fdb0_data0_fifo_cen  = mem_extend;
            fdbs0_fdb0_data0_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data0_fifo_mem_ready  = 1'b1;
            fdbs0_fdb0_data0_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb0_data0_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb0_data1_fifo                       offset: 0x90
//                                     width:  32  depth:   4
reg           fdbs0_fdb0_data1_fifo_mem_access; 
reg           fdbs0_fdb0_data1_fifo_mem_ready; 
reg           fdbs0_fdb0_data1_fifo_miss; 
always @(*) begin
    fdbs0_fdb0_data1_fifo_mem_access = 1'b0;
    fdbs0_fdb0_data1_fifo_mem_ready  = 1'b1;
    fdbs0_fdb0_data1_fifo_miss = 1'b1;
    fdbs0_fdb0_data1_fifo_din = 32'd0;
    fdbs0_fdb0_data1_fifo_a = 2'd0;
    fdbs0_fdb0_data1_fifo_wen = {32{1'b1}};
    fdbs0_fdb0_data1_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h9) begin
            fdbs0_fdb0_data1_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb0_data1_fifo_miss = 1'b0;
            fdbs0_fdb0_data1_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data1_fifo_cen  = mem_extend;
            fdbs0_fdb0_data1_fifo_mem_ready  = fdbs0_fdb0_data1_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h9) begin
            fdbs0_fdb0_data1_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb0_data1_fifo_miss = 1'b0;
            fdbs0_fdb0_data1_fifo_cen  = mem_extend;
            fdbs0_fdb0_data1_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data1_fifo_mem_ready  = 1'b1;
            fdbs0_fdb0_data1_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb0_data1_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb0_data2_fifo                       offset: 0xa0
//                                     width:  32  depth:   4
reg           fdbs0_fdb0_data2_fifo_mem_access; 
reg           fdbs0_fdb0_data2_fifo_mem_ready; 
reg           fdbs0_fdb0_data2_fifo_miss; 
always @(*) begin
    fdbs0_fdb0_data2_fifo_mem_access = 1'b0;
    fdbs0_fdb0_data2_fifo_mem_ready  = 1'b1;
    fdbs0_fdb0_data2_fifo_miss = 1'b1;
    fdbs0_fdb0_data2_fifo_din = 32'd0;
    fdbs0_fdb0_data2_fifo_a = 2'd0;
    fdbs0_fdb0_data2_fifo_wen = {32{1'b1}};
    fdbs0_fdb0_data2_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'ha) begin
            fdbs0_fdb0_data2_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb0_data2_fifo_miss = 1'b0;
            fdbs0_fdb0_data2_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data2_fifo_cen  = mem_extend;
            fdbs0_fdb0_data2_fifo_mem_ready  = fdbs0_fdb0_data2_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'ha) begin
            fdbs0_fdb0_data2_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb0_data2_fifo_miss = 1'b0;
            fdbs0_fdb0_data2_fifo_cen  = mem_extend;
            fdbs0_fdb0_data2_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data2_fifo_mem_ready  = 1'b1;
            fdbs0_fdb0_data2_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb0_data2_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb0_data3_fifo                       offset: 0xb0
//                                     width:  32  depth:   4
reg           fdbs0_fdb0_data3_fifo_mem_access; 
reg           fdbs0_fdb0_data3_fifo_mem_ready; 
reg           fdbs0_fdb0_data3_fifo_miss; 
always @(*) begin
    fdbs0_fdb0_data3_fifo_mem_access = 1'b0;
    fdbs0_fdb0_data3_fifo_mem_ready  = 1'b1;
    fdbs0_fdb0_data3_fifo_miss = 1'b1;
    fdbs0_fdb0_data3_fifo_din = 32'd0;
    fdbs0_fdb0_data3_fifo_a = 2'd0;
    fdbs0_fdb0_data3_fifo_wen = {32{1'b1}};
    fdbs0_fdb0_data3_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'hb) begin
            fdbs0_fdb0_data3_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb0_data3_fifo_miss = 1'b0;
            fdbs0_fdb0_data3_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data3_fifo_cen  = mem_extend;
            fdbs0_fdb0_data3_fifo_mem_ready  = fdbs0_fdb0_data3_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'hb) begin
            fdbs0_fdb0_data3_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb0_data3_fifo_miss = 1'b0;
            fdbs0_fdb0_data3_fifo_cen  = mem_extend;
            fdbs0_fdb0_data3_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data3_fifo_mem_ready  = 1'b1;
            fdbs0_fdb0_data3_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb0_data3_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb0_data4_fifo                       offset: 0xc0
//                                     width:  32  depth:   4
reg           fdbs0_fdb0_data4_fifo_mem_access; 
reg           fdbs0_fdb0_data4_fifo_mem_ready; 
reg           fdbs0_fdb0_data4_fifo_miss; 
always @(*) begin
    fdbs0_fdb0_data4_fifo_mem_access = 1'b0;
    fdbs0_fdb0_data4_fifo_mem_ready  = 1'b1;
    fdbs0_fdb0_data4_fifo_miss = 1'b1;
    fdbs0_fdb0_data4_fifo_din = 32'd0;
    fdbs0_fdb0_data4_fifo_a = 2'd0;
    fdbs0_fdb0_data4_fifo_wen = {32{1'b1}};
    fdbs0_fdb0_data4_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'hc) begin
            fdbs0_fdb0_data4_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb0_data4_fifo_miss = 1'b0;
            fdbs0_fdb0_data4_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data4_fifo_cen  = mem_extend;
            fdbs0_fdb0_data4_fifo_mem_ready  = fdbs0_fdb0_data4_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'hc) begin
            fdbs0_fdb0_data4_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb0_data4_fifo_miss = 1'b0;
            fdbs0_fdb0_data4_fifo_cen  = mem_extend;
            fdbs0_fdb0_data4_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data4_fifo_mem_ready  = 1'b1;
            fdbs0_fdb0_data4_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb0_data4_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb0_data5_fifo                       offset: 0xd0
//                                     width:  32  depth:   4
reg           fdbs0_fdb0_data5_fifo_mem_access; 
reg           fdbs0_fdb0_data5_fifo_mem_ready; 
reg           fdbs0_fdb0_data5_fifo_miss; 
always @(*) begin
    fdbs0_fdb0_data5_fifo_mem_access = 1'b0;
    fdbs0_fdb0_data5_fifo_mem_ready  = 1'b1;
    fdbs0_fdb0_data5_fifo_miss = 1'b1;
    fdbs0_fdb0_data5_fifo_din = 32'd0;
    fdbs0_fdb0_data5_fifo_a = 2'd0;
    fdbs0_fdb0_data5_fifo_wen = {32{1'b1}};
    fdbs0_fdb0_data5_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'hd) begin
            fdbs0_fdb0_data5_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb0_data5_fifo_miss = 1'b0;
            fdbs0_fdb0_data5_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data5_fifo_cen  = mem_extend;
            fdbs0_fdb0_data5_fifo_mem_ready  = fdbs0_fdb0_data5_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'hd) begin
            fdbs0_fdb0_data5_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb0_data5_fifo_miss = 1'b0;
            fdbs0_fdb0_data5_fifo_cen  = mem_extend;
            fdbs0_fdb0_data5_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data5_fifo_mem_ready  = 1'b1;
            fdbs0_fdb0_data5_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb0_data5_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb0_data6_fifo                       offset: 0xe0
//                                     width:  32  depth:   4
reg           fdbs0_fdb0_data6_fifo_mem_access; 
reg           fdbs0_fdb0_data6_fifo_mem_ready; 
reg           fdbs0_fdb0_data6_fifo_miss; 
always @(*) begin
    fdbs0_fdb0_data6_fifo_mem_access = 1'b0;
    fdbs0_fdb0_data6_fifo_mem_ready  = 1'b1;
    fdbs0_fdb0_data6_fifo_miss = 1'b1;
    fdbs0_fdb0_data6_fifo_din = 32'd0;
    fdbs0_fdb0_data6_fifo_a = 2'd0;
    fdbs0_fdb0_data6_fifo_wen = {32{1'b1}};
    fdbs0_fdb0_data6_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'he) begin
            fdbs0_fdb0_data6_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb0_data6_fifo_miss = 1'b0;
            fdbs0_fdb0_data6_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data6_fifo_cen  = mem_extend;
            fdbs0_fdb0_data6_fifo_mem_ready  = fdbs0_fdb0_data6_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'he) begin
            fdbs0_fdb0_data6_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb0_data6_fifo_miss = 1'b0;
            fdbs0_fdb0_data6_fifo_cen  = mem_extend;
            fdbs0_fdb0_data6_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data6_fifo_mem_ready  = 1'b1;
            fdbs0_fdb0_data6_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb0_data6_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb0_data7_fifo                       offset: 0xf0
//                                     width:  32  depth:   4
reg           fdbs0_fdb0_data7_fifo_mem_access; 
reg           fdbs0_fdb0_data7_fifo_mem_ready; 
reg           fdbs0_fdb0_data7_fifo_miss; 
always @(*) begin
    fdbs0_fdb0_data7_fifo_mem_access = 1'b0;
    fdbs0_fdb0_data7_fifo_mem_ready  = 1'b1;
    fdbs0_fdb0_data7_fifo_miss = 1'b1;
    fdbs0_fdb0_data7_fifo_din = 32'd0;
    fdbs0_fdb0_data7_fifo_a = 2'd0;
    fdbs0_fdb0_data7_fifo_wen = {32{1'b1}};
    fdbs0_fdb0_data7_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'hf) begin
            fdbs0_fdb0_data7_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb0_data7_fifo_miss = 1'b0;
            fdbs0_fdb0_data7_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data7_fifo_cen  = mem_extend;
            fdbs0_fdb0_data7_fifo_mem_ready  = fdbs0_fdb0_data7_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'hf) begin
            fdbs0_fdb0_data7_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb0_data7_fifo_miss = 1'b0;
            fdbs0_fdb0_data7_fifo_cen  = mem_extend;
            fdbs0_fdb0_data7_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data7_fifo_mem_ready  = 1'b1;
            fdbs0_fdb0_data7_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb0_data7_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb0_data8_fifo                       offset: 0x100
//                                     width:  32  depth:   4
reg           fdbs0_fdb0_data8_fifo_mem_access; 
reg           fdbs0_fdb0_data8_fifo_mem_ready; 
reg           fdbs0_fdb0_data8_fifo_miss; 
always @(*) begin
    fdbs0_fdb0_data8_fifo_mem_access = 1'b0;
    fdbs0_fdb0_data8_fifo_mem_ready  = 1'b1;
    fdbs0_fdb0_data8_fifo_miss = 1'b1;
    fdbs0_fdb0_data8_fifo_din = 32'd0;
    fdbs0_fdb0_data8_fifo_a = 2'd0;
    fdbs0_fdb0_data8_fifo_wen = {32{1'b1}};
    fdbs0_fdb0_data8_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h10) begin
            fdbs0_fdb0_data8_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb0_data8_fifo_miss = 1'b0;
            fdbs0_fdb0_data8_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data8_fifo_cen  = mem_extend;
            fdbs0_fdb0_data8_fifo_mem_ready  = fdbs0_fdb0_data8_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h10) begin
            fdbs0_fdb0_data8_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb0_data8_fifo_miss = 1'b0;
            fdbs0_fdb0_data8_fifo_cen  = mem_extend;
            fdbs0_fdb0_data8_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data8_fifo_mem_ready  = 1'b1;
            fdbs0_fdb0_data8_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb0_data8_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb0_data9_fifo                       offset: 0x110
//                                     width:  32  depth:   4
reg           fdbs0_fdb0_data9_fifo_mem_access; 
reg           fdbs0_fdb0_data9_fifo_mem_ready; 
reg           fdbs0_fdb0_data9_fifo_miss; 
always @(*) begin
    fdbs0_fdb0_data9_fifo_mem_access = 1'b0;
    fdbs0_fdb0_data9_fifo_mem_ready  = 1'b1;
    fdbs0_fdb0_data9_fifo_miss = 1'b1;
    fdbs0_fdb0_data9_fifo_din = 32'd0;
    fdbs0_fdb0_data9_fifo_a = 2'd0;
    fdbs0_fdb0_data9_fifo_wen = {32{1'b1}};
    fdbs0_fdb0_data9_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h11) begin
            fdbs0_fdb0_data9_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb0_data9_fifo_miss = 1'b0;
            fdbs0_fdb0_data9_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data9_fifo_cen  = mem_extend;
            fdbs0_fdb0_data9_fifo_mem_ready  = fdbs0_fdb0_data9_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h11) begin
            fdbs0_fdb0_data9_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb0_data9_fifo_miss = 1'b0;
            fdbs0_fdb0_data9_fifo_cen  = mem_extend;
            fdbs0_fdb0_data9_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data9_fifo_mem_ready  = 1'b1;
            fdbs0_fdb0_data9_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb0_data9_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb0_data10_fifo                      offset: 0x120
//                                     width:  32  depth:   4
reg           fdbs0_fdb0_data10_fifo_mem_access; 
reg           fdbs0_fdb0_data10_fifo_mem_ready; 
reg           fdbs0_fdb0_data10_fifo_miss; 
always @(*) begin
    fdbs0_fdb0_data10_fifo_mem_access = 1'b0;
    fdbs0_fdb0_data10_fifo_mem_ready  = 1'b1;
    fdbs0_fdb0_data10_fifo_miss = 1'b1;
    fdbs0_fdb0_data10_fifo_din = 32'd0;
    fdbs0_fdb0_data10_fifo_a = 2'd0;
    fdbs0_fdb0_data10_fifo_wen = {32{1'b1}};
    fdbs0_fdb0_data10_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h12) begin
            fdbs0_fdb0_data10_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb0_data10_fifo_miss = 1'b0;
            fdbs0_fdb0_data10_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data10_fifo_cen  = mem_extend;
            fdbs0_fdb0_data10_fifo_mem_ready  = fdbs0_fdb0_data10_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h12) begin
            fdbs0_fdb0_data10_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb0_data10_fifo_miss = 1'b0;
            fdbs0_fdb0_data10_fifo_cen  = mem_extend;
            fdbs0_fdb0_data10_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data10_fifo_mem_ready  = 1'b1;
            fdbs0_fdb0_data10_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb0_data10_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb0_data11_fifo                      offset: 0x130
//                                     width:  32  depth:   4
reg           fdbs0_fdb0_data11_fifo_mem_access; 
reg           fdbs0_fdb0_data11_fifo_mem_ready; 
reg           fdbs0_fdb0_data11_fifo_miss; 
always @(*) begin
    fdbs0_fdb0_data11_fifo_mem_access = 1'b0;
    fdbs0_fdb0_data11_fifo_mem_ready  = 1'b1;
    fdbs0_fdb0_data11_fifo_miss = 1'b1;
    fdbs0_fdb0_data11_fifo_din = 32'd0;
    fdbs0_fdb0_data11_fifo_a = 2'd0;
    fdbs0_fdb0_data11_fifo_wen = {32{1'b1}};
    fdbs0_fdb0_data11_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h13) begin
            fdbs0_fdb0_data11_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb0_data11_fifo_miss = 1'b0;
            fdbs0_fdb0_data11_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data11_fifo_cen  = mem_extend;
            fdbs0_fdb0_data11_fifo_mem_ready  = fdbs0_fdb0_data11_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h13) begin
            fdbs0_fdb0_data11_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb0_data11_fifo_miss = 1'b0;
            fdbs0_fdb0_data11_fifo_cen  = mem_extend;
            fdbs0_fdb0_data11_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data11_fifo_mem_ready  = 1'b1;
            fdbs0_fdb0_data11_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb0_data11_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb0_data12_fifo                      offset: 0x140
//                                     width:  32  depth:   4
reg           fdbs0_fdb0_data12_fifo_mem_access; 
reg           fdbs0_fdb0_data12_fifo_mem_ready; 
reg           fdbs0_fdb0_data12_fifo_miss; 
always @(*) begin
    fdbs0_fdb0_data12_fifo_mem_access = 1'b0;
    fdbs0_fdb0_data12_fifo_mem_ready  = 1'b1;
    fdbs0_fdb0_data12_fifo_miss = 1'b1;
    fdbs0_fdb0_data12_fifo_din = 32'd0;
    fdbs0_fdb0_data12_fifo_a = 2'd0;
    fdbs0_fdb0_data12_fifo_wen = {32{1'b1}};
    fdbs0_fdb0_data12_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h14) begin
            fdbs0_fdb0_data12_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb0_data12_fifo_miss = 1'b0;
            fdbs0_fdb0_data12_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data12_fifo_cen  = mem_extend;
            fdbs0_fdb0_data12_fifo_mem_ready  = fdbs0_fdb0_data12_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h14) begin
            fdbs0_fdb0_data12_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb0_data12_fifo_miss = 1'b0;
            fdbs0_fdb0_data12_fifo_cen  = mem_extend;
            fdbs0_fdb0_data12_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data12_fifo_mem_ready  = 1'b1;
            fdbs0_fdb0_data12_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb0_data12_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb0_data13_fifo                      offset: 0x150
//                                     width:  32  depth:   4
reg           fdbs0_fdb0_data13_fifo_mem_access; 
reg           fdbs0_fdb0_data13_fifo_mem_ready; 
reg           fdbs0_fdb0_data13_fifo_miss; 
always @(*) begin
    fdbs0_fdb0_data13_fifo_mem_access = 1'b0;
    fdbs0_fdb0_data13_fifo_mem_ready  = 1'b1;
    fdbs0_fdb0_data13_fifo_miss = 1'b1;
    fdbs0_fdb0_data13_fifo_din = 32'd0;
    fdbs0_fdb0_data13_fifo_a = 2'd0;
    fdbs0_fdb0_data13_fifo_wen = {32{1'b1}};
    fdbs0_fdb0_data13_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h15) begin
            fdbs0_fdb0_data13_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb0_data13_fifo_miss = 1'b0;
            fdbs0_fdb0_data13_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data13_fifo_cen  = mem_extend;
            fdbs0_fdb0_data13_fifo_mem_ready  = fdbs0_fdb0_data13_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h15) begin
            fdbs0_fdb0_data13_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb0_data13_fifo_miss = 1'b0;
            fdbs0_fdb0_data13_fifo_cen  = mem_extend;
            fdbs0_fdb0_data13_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data13_fifo_mem_ready  = 1'b1;
            fdbs0_fdb0_data13_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb0_data13_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb0_data14_fifo                      offset: 0x160
//                                     width:  32  depth:   4
reg           fdbs0_fdb0_data14_fifo_mem_access; 
reg           fdbs0_fdb0_data14_fifo_mem_ready; 
reg           fdbs0_fdb0_data14_fifo_miss; 
always @(*) begin
    fdbs0_fdb0_data14_fifo_mem_access = 1'b0;
    fdbs0_fdb0_data14_fifo_mem_ready  = 1'b1;
    fdbs0_fdb0_data14_fifo_miss = 1'b1;
    fdbs0_fdb0_data14_fifo_din = 32'd0;
    fdbs0_fdb0_data14_fifo_a = 2'd0;
    fdbs0_fdb0_data14_fifo_wen = {32{1'b1}};
    fdbs0_fdb0_data14_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h16) begin
            fdbs0_fdb0_data14_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb0_data14_fifo_miss = 1'b0;
            fdbs0_fdb0_data14_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data14_fifo_cen  = mem_extend;
            fdbs0_fdb0_data14_fifo_mem_ready  = fdbs0_fdb0_data14_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h16) begin
            fdbs0_fdb0_data14_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb0_data14_fifo_miss = 1'b0;
            fdbs0_fdb0_data14_fifo_cen  = mem_extend;
            fdbs0_fdb0_data14_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data14_fifo_mem_ready  = 1'b1;
            fdbs0_fdb0_data14_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb0_data14_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb0_data15_fifo                      offset: 0x170
//                                     width:  32  depth:   4
reg           fdbs0_fdb0_data15_fifo_mem_access; 
reg           fdbs0_fdb0_data15_fifo_mem_ready; 
reg           fdbs0_fdb0_data15_fifo_miss; 
always @(*) begin
    fdbs0_fdb0_data15_fifo_mem_access = 1'b0;
    fdbs0_fdb0_data15_fifo_mem_ready  = 1'b1;
    fdbs0_fdb0_data15_fifo_miss = 1'b1;
    fdbs0_fdb0_data15_fifo_din = 32'd0;
    fdbs0_fdb0_data15_fifo_a = 2'd0;
    fdbs0_fdb0_data15_fifo_wen = {32{1'b1}};
    fdbs0_fdb0_data15_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h17) begin
            fdbs0_fdb0_data15_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb0_data15_fifo_miss = 1'b0;
            fdbs0_fdb0_data15_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data15_fifo_cen  = mem_extend;
            fdbs0_fdb0_data15_fifo_mem_ready  = fdbs0_fdb0_data15_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h17) begin
            fdbs0_fdb0_data15_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb0_data15_fifo_miss = 1'b0;
            fdbs0_fdb0_data15_fifo_cen  = mem_extend;
            fdbs0_fdb0_data15_fifo_mem_access = 1'b1;
            fdbs0_fdb0_data15_fifo_mem_ready  = 1'b1;
            fdbs0_fdb0_data15_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb0_data15_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb1_data0_fifo                       offset: 0x280
//                                     width:  32  depth:   4
reg           fdbs0_fdb1_data0_fifo_mem_access; 
reg           fdbs0_fdb1_data0_fifo_mem_ready; 
reg           fdbs0_fdb1_data0_fifo_miss; 
always @(*) begin
    fdbs0_fdb1_data0_fifo_mem_access = 1'b0;
    fdbs0_fdb1_data0_fifo_mem_ready  = 1'b1;
    fdbs0_fdb1_data0_fifo_miss = 1'b1;
    fdbs0_fdb1_data0_fifo_din = 32'd0;
    fdbs0_fdb1_data0_fifo_a = 2'd0;
    fdbs0_fdb1_data0_fifo_wen = {32{1'b1}};
    fdbs0_fdb1_data0_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h28) begin
            fdbs0_fdb1_data0_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb1_data0_fifo_miss = 1'b0;
            fdbs0_fdb1_data0_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data0_fifo_cen  = mem_extend;
            fdbs0_fdb1_data0_fifo_mem_ready  = fdbs0_fdb1_data0_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h28) begin
            fdbs0_fdb1_data0_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb1_data0_fifo_miss = 1'b0;
            fdbs0_fdb1_data0_fifo_cen  = mem_extend;
            fdbs0_fdb1_data0_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data0_fifo_mem_ready  = 1'b1;
            fdbs0_fdb1_data0_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb1_data0_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb1_data1_fifo                       offset: 0x290
//                                     width:  32  depth:   4
reg           fdbs0_fdb1_data1_fifo_mem_access; 
reg           fdbs0_fdb1_data1_fifo_mem_ready; 
reg           fdbs0_fdb1_data1_fifo_miss; 
always @(*) begin
    fdbs0_fdb1_data1_fifo_mem_access = 1'b0;
    fdbs0_fdb1_data1_fifo_mem_ready  = 1'b1;
    fdbs0_fdb1_data1_fifo_miss = 1'b1;
    fdbs0_fdb1_data1_fifo_din = 32'd0;
    fdbs0_fdb1_data1_fifo_a = 2'd0;
    fdbs0_fdb1_data1_fifo_wen = {32{1'b1}};
    fdbs0_fdb1_data1_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h29) begin
            fdbs0_fdb1_data1_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb1_data1_fifo_miss = 1'b0;
            fdbs0_fdb1_data1_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data1_fifo_cen  = mem_extend;
            fdbs0_fdb1_data1_fifo_mem_ready  = fdbs0_fdb1_data1_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h29) begin
            fdbs0_fdb1_data1_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb1_data1_fifo_miss = 1'b0;
            fdbs0_fdb1_data1_fifo_cen  = mem_extend;
            fdbs0_fdb1_data1_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data1_fifo_mem_ready  = 1'b1;
            fdbs0_fdb1_data1_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb1_data1_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb1_data2_fifo                       offset: 0x2a0
//                                     width:  32  depth:   4
reg           fdbs0_fdb1_data2_fifo_mem_access; 
reg           fdbs0_fdb1_data2_fifo_mem_ready; 
reg           fdbs0_fdb1_data2_fifo_miss; 
always @(*) begin
    fdbs0_fdb1_data2_fifo_mem_access = 1'b0;
    fdbs0_fdb1_data2_fifo_mem_ready  = 1'b1;
    fdbs0_fdb1_data2_fifo_miss = 1'b1;
    fdbs0_fdb1_data2_fifo_din = 32'd0;
    fdbs0_fdb1_data2_fifo_a = 2'd0;
    fdbs0_fdb1_data2_fifo_wen = {32{1'b1}};
    fdbs0_fdb1_data2_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h2a) begin
            fdbs0_fdb1_data2_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb1_data2_fifo_miss = 1'b0;
            fdbs0_fdb1_data2_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data2_fifo_cen  = mem_extend;
            fdbs0_fdb1_data2_fifo_mem_ready  = fdbs0_fdb1_data2_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h2a) begin
            fdbs0_fdb1_data2_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb1_data2_fifo_miss = 1'b0;
            fdbs0_fdb1_data2_fifo_cen  = mem_extend;
            fdbs0_fdb1_data2_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data2_fifo_mem_ready  = 1'b1;
            fdbs0_fdb1_data2_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb1_data2_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb1_data3_fifo                       offset: 0x2b0
//                                     width:  32  depth:   4
reg           fdbs0_fdb1_data3_fifo_mem_access; 
reg           fdbs0_fdb1_data3_fifo_mem_ready; 
reg           fdbs0_fdb1_data3_fifo_miss; 
always @(*) begin
    fdbs0_fdb1_data3_fifo_mem_access = 1'b0;
    fdbs0_fdb1_data3_fifo_mem_ready  = 1'b1;
    fdbs0_fdb1_data3_fifo_miss = 1'b1;
    fdbs0_fdb1_data3_fifo_din = 32'd0;
    fdbs0_fdb1_data3_fifo_a = 2'd0;
    fdbs0_fdb1_data3_fifo_wen = {32{1'b1}};
    fdbs0_fdb1_data3_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h2b) begin
            fdbs0_fdb1_data3_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb1_data3_fifo_miss = 1'b0;
            fdbs0_fdb1_data3_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data3_fifo_cen  = mem_extend;
            fdbs0_fdb1_data3_fifo_mem_ready  = fdbs0_fdb1_data3_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h2b) begin
            fdbs0_fdb1_data3_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb1_data3_fifo_miss = 1'b0;
            fdbs0_fdb1_data3_fifo_cen  = mem_extend;
            fdbs0_fdb1_data3_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data3_fifo_mem_ready  = 1'b1;
            fdbs0_fdb1_data3_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb1_data3_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb1_data4_fifo                       offset: 0x2c0
//                                     width:  32  depth:   4
reg           fdbs0_fdb1_data4_fifo_mem_access; 
reg           fdbs0_fdb1_data4_fifo_mem_ready; 
reg           fdbs0_fdb1_data4_fifo_miss; 
always @(*) begin
    fdbs0_fdb1_data4_fifo_mem_access = 1'b0;
    fdbs0_fdb1_data4_fifo_mem_ready  = 1'b1;
    fdbs0_fdb1_data4_fifo_miss = 1'b1;
    fdbs0_fdb1_data4_fifo_din = 32'd0;
    fdbs0_fdb1_data4_fifo_a = 2'd0;
    fdbs0_fdb1_data4_fifo_wen = {32{1'b1}};
    fdbs0_fdb1_data4_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h2c) begin
            fdbs0_fdb1_data4_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb1_data4_fifo_miss = 1'b0;
            fdbs0_fdb1_data4_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data4_fifo_cen  = mem_extend;
            fdbs0_fdb1_data4_fifo_mem_ready  = fdbs0_fdb1_data4_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h2c) begin
            fdbs0_fdb1_data4_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb1_data4_fifo_miss = 1'b0;
            fdbs0_fdb1_data4_fifo_cen  = mem_extend;
            fdbs0_fdb1_data4_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data4_fifo_mem_ready  = 1'b1;
            fdbs0_fdb1_data4_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb1_data4_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb1_data5_fifo                       offset: 0x2d0
//                                     width:  32  depth:   4
reg           fdbs0_fdb1_data5_fifo_mem_access; 
reg           fdbs0_fdb1_data5_fifo_mem_ready; 
reg           fdbs0_fdb1_data5_fifo_miss; 
always @(*) begin
    fdbs0_fdb1_data5_fifo_mem_access = 1'b0;
    fdbs0_fdb1_data5_fifo_mem_ready  = 1'b1;
    fdbs0_fdb1_data5_fifo_miss = 1'b1;
    fdbs0_fdb1_data5_fifo_din = 32'd0;
    fdbs0_fdb1_data5_fifo_a = 2'd0;
    fdbs0_fdb1_data5_fifo_wen = {32{1'b1}};
    fdbs0_fdb1_data5_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h2d) begin
            fdbs0_fdb1_data5_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb1_data5_fifo_miss = 1'b0;
            fdbs0_fdb1_data5_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data5_fifo_cen  = mem_extend;
            fdbs0_fdb1_data5_fifo_mem_ready  = fdbs0_fdb1_data5_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h2d) begin
            fdbs0_fdb1_data5_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb1_data5_fifo_miss = 1'b0;
            fdbs0_fdb1_data5_fifo_cen  = mem_extend;
            fdbs0_fdb1_data5_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data5_fifo_mem_ready  = 1'b1;
            fdbs0_fdb1_data5_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb1_data5_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb1_data6_fifo                       offset: 0x2e0
//                                     width:  32  depth:   4
reg           fdbs0_fdb1_data6_fifo_mem_access; 
reg           fdbs0_fdb1_data6_fifo_mem_ready; 
reg           fdbs0_fdb1_data6_fifo_miss; 
always @(*) begin
    fdbs0_fdb1_data6_fifo_mem_access = 1'b0;
    fdbs0_fdb1_data6_fifo_mem_ready  = 1'b1;
    fdbs0_fdb1_data6_fifo_miss = 1'b1;
    fdbs0_fdb1_data6_fifo_din = 32'd0;
    fdbs0_fdb1_data6_fifo_a = 2'd0;
    fdbs0_fdb1_data6_fifo_wen = {32{1'b1}};
    fdbs0_fdb1_data6_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h2e) begin
            fdbs0_fdb1_data6_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb1_data6_fifo_miss = 1'b0;
            fdbs0_fdb1_data6_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data6_fifo_cen  = mem_extend;
            fdbs0_fdb1_data6_fifo_mem_ready  = fdbs0_fdb1_data6_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h2e) begin
            fdbs0_fdb1_data6_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb1_data6_fifo_miss = 1'b0;
            fdbs0_fdb1_data6_fifo_cen  = mem_extend;
            fdbs0_fdb1_data6_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data6_fifo_mem_ready  = 1'b1;
            fdbs0_fdb1_data6_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb1_data6_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb1_data7_fifo                       offset: 0x2f0
//                                     width:  32  depth:   4
reg           fdbs0_fdb1_data7_fifo_mem_access; 
reg           fdbs0_fdb1_data7_fifo_mem_ready; 
reg           fdbs0_fdb1_data7_fifo_miss; 
always @(*) begin
    fdbs0_fdb1_data7_fifo_mem_access = 1'b0;
    fdbs0_fdb1_data7_fifo_mem_ready  = 1'b1;
    fdbs0_fdb1_data7_fifo_miss = 1'b1;
    fdbs0_fdb1_data7_fifo_din = 32'd0;
    fdbs0_fdb1_data7_fifo_a = 2'd0;
    fdbs0_fdb1_data7_fifo_wen = {32{1'b1}};
    fdbs0_fdb1_data7_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h2f) begin
            fdbs0_fdb1_data7_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb1_data7_fifo_miss = 1'b0;
            fdbs0_fdb1_data7_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data7_fifo_cen  = mem_extend;
            fdbs0_fdb1_data7_fifo_mem_ready  = fdbs0_fdb1_data7_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h2f) begin
            fdbs0_fdb1_data7_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb1_data7_fifo_miss = 1'b0;
            fdbs0_fdb1_data7_fifo_cen  = mem_extend;
            fdbs0_fdb1_data7_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data7_fifo_mem_ready  = 1'b1;
            fdbs0_fdb1_data7_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb1_data7_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb1_data8_fifo                       offset: 0x300
//                                     width:  32  depth:   4
reg           fdbs0_fdb1_data8_fifo_mem_access; 
reg           fdbs0_fdb1_data8_fifo_mem_ready; 
reg           fdbs0_fdb1_data8_fifo_miss; 
always @(*) begin
    fdbs0_fdb1_data8_fifo_mem_access = 1'b0;
    fdbs0_fdb1_data8_fifo_mem_ready  = 1'b1;
    fdbs0_fdb1_data8_fifo_miss = 1'b1;
    fdbs0_fdb1_data8_fifo_din = 32'd0;
    fdbs0_fdb1_data8_fifo_a = 2'd0;
    fdbs0_fdb1_data8_fifo_wen = {32{1'b1}};
    fdbs0_fdb1_data8_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h30) begin
            fdbs0_fdb1_data8_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb1_data8_fifo_miss = 1'b0;
            fdbs0_fdb1_data8_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data8_fifo_cen  = mem_extend;
            fdbs0_fdb1_data8_fifo_mem_ready  = fdbs0_fdb1_data8_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h30) begin
            fdbs0_fdb1_data8_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb1_data8_fifo_miss = 1'b0;
            fdbs0_fdb1_data8_fifo_cen  = mem_extend;
            fdbs0_fdb1_data8_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data8_fifo_mem_ready  = 1'b1;
            fdbs0_fdb1_data8_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb1_data8_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb1_data9_fifo                       offset: 0x310
//                                     width:  32  depth:   4
reg           fdbs0_fdb1_data9_fifo_mem_access; 
reg           fdbs0_fdb1_data9_fifo_mem_ready; 
reg           fdbs0_fdb1_data9_fifo_miss; 
always @(*) begin
    fdbs0_fdb1_data9_fifo_mem_access = 1'b0;
    fdbs0_fdb1_data9_fifo_mem_ready  = 1'b1;
    fdbs0_fdb1_data9_fifo_miss = 1'b1;
    fdbs0_fdb1_data9_fifo_din = 32'd0;
    fdbs0_fdb1_data9_fifo_a = 2'd0;
    fdbs0_fdb1_data9_fifo_wen = {32{1'b1}};
    fdbs0_fdb1_data9_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h31) begin
            fdbs0_fdb1_data9_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb1_data9_fifo_miss = 1'b0;
            fdbs0_fdb1_data9_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data9_fifo_cen  = mem_extend;
            fdbs0_fdb1_data9_fifo_mem_ready  = fdbs0_fdb1_data9_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h31) begin
            fdbs0_fdb1_data9_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb1_data9_fifo_miss = 1'b0;
            fdbs0_fdb1_data9_fifo_cen  = mem_extend;
            fdbs0_fdb1_data9_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data9_fifo_mem_ready  = 1'b1;
            fdbs0_fdb1_data9_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb1_data9_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb1_data10_fifo                      offset: 0x320
//                                     width:  32  depth:   4
reg           fdbs0_fdb1_data10_fifo_mem_access; 
reg           fdbs0_fdb1_data10_fifo_mem_ready; 
reg           fdbs0_fdb1_data10_fifo_miss; 
always @(*) begin
    fdbs0_fdb1_data10_fifo_mem_access = 1'b0;
    fdbs0_fdb1_data10_fifo_mem_ready  = 1'b1;
    fdbs0_fdb1_data10_fifo_miss = 1'b1;
    fdbs0_fdb1_data10_fifo_din = 32'd0;
    fdbs0_fdb1_data10_fifo_a = 2'd0;
    fdbs0_fdb1_data10_fifo_wen = {32{1'b1}};
    fdbs0_fdb1_data10_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h32) begin
            fdbs0_fdb1_data10_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb1_data10_fifo_miss = 1'b0;
            fdbs0_fdb1_data10_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data10_fifo_cen  = mem_extend;
            fdbs0_fdb1_data10_fifo_mem_ready  = fdbs0_fdb1_data10_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h32) begin
            fdbs0_fdb1_data10_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb1_data10_fifo_miss = 1'b0;
            fdbs0_fdb1_data10_fifo_cen  = mem_extend;
            fdbs0_fdb1_data10_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data10_fifo_mem_ready  = 1'b1;
            fdbs0_fdb1_data10_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb1_data10_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb1_data11_fifo                      offset: 0x330
//                                     width:  32  depth:   4
reg           fdbs0_fdb1_data11_fifo_mem_access; 
reg           fdbs0_fdb1_data11_fifo_mem_ready; 
reg           fdbs0_fdb1_data11_fifo_miss; 
always @(*) begin
    fdbs0_fdb1_data11_fifo_mem_access = 1'b0;
    fdbs0_fdb1_data11_fifo_mem_ready  = 1'b1;
    fdbs0_fdb1_data11_fifo_miss = 1'b1;
    fdbs0_fdb1_data11_fifo_din = 32'd0;
    fdbs0_fdb1_data11_fifo_a = 2'd0;
    fdbs0_fdb1_data11_fifo_wen = {32{1'b1}};
    fdbs0_fdb1_data11_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h33) begin
            fdbs0_fdb1_data11_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb1_data11_fifo_miss = 1'b0;
            fdbs0_fdb1_data11_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data11_fifo_cen  = mem_extend;
            fdbs0_fdb1_data11_fifo_mem_ready  = fdbs0_fdb1_data11_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h33) begin
            fdbs0_fdb1_data11_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb1_data11_fifo_miss = 1'b0;
            fdbs0_fdb1_data11_fifo_cen  = mem_extend;
            fdbs0_fdb1_data11_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data11_fifo_mem_ready  = 1'b1;
            fdbs0_fdb1_data11_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb1_data11_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb1_data12_fifo                      offset: 0x340
//                                     width:  32  depth:   4
reg           fdbs0_fdb1_data12_fifo_mem_access; 
reg           fdbs0_fdb1_data12_fifo_mem_ready; 
reg           fdbs0_fdb1_data12_fifo_miss; 
always @(*) begin
    fdbs0_fdb1_data12_fifo_mem_access = 1'b0;
    fdbs0_fdb1_data12_fifo_mem_ready  = 1'b1;
    fdbs0_fdb1_data12_fifo_miss = 1'b1;
    fdbs0_fdb1_data12_fifo_din = 32'd0;
    fdbs0_fdb1_data12_fifo_a = 2'd0;
    fdbs0_fdb1_data12_fifo_wen = {32{1'b1}};
    fdbs0_fdb1_data12_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h34) begin
            fdbs0_fdb1_data12_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb1_data12_fifo_miss = 1'b0;
            fdbs0_fdb1_data12_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data12_fifo_cen  = mem_extend;
            fdbs0_fdb1_data12_fifo_mem_ready  = fdbs0_fdb1_data12_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h34) begin
            fdbs0_fdb1_data12_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb1_data12_fifo_miss = 1'b0;
            fdbs0_fdb1_data12_fifo_cen  = mem_extend;
            fdbs0_fdb1_data12_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data12_fifo_mem_ready  = 1'b1;
            fdbs0_fdb1_data12_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb1_data12_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb1_data13_fifo                      offset: 0x350
//                                     width:  32  depth:   4
reg           fdbs0_fdb1_data13_fifo_mem_access; 
reg           fdbs0_fdb1_data13_fifo_mem_ready; 
reg           fdbs0_fdb1_data13_fifo_miss; 
always @(*) begin
    fdbs0_fdb1_data13_fifo_mem_access = 1'b0;
    fdbs0_fdb1_data13_fifo_mem_ready  = 1'b1;
    fdbs0_fdb1_data13_fifo_miss = 1'b1;
    fdbs0_fdb1_data13_fifo_din = 32'd0;
    fdbs0_fdb1_data13_fifo_a = 2'd0;
    fdbs0_fdb1_data13_fifo_wen = {32{1'b1}};
    fdbs0_fdb1_data13_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h35) begin
            fdbs0_fdb1_data13_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb1_data13_fifo_miss = 1'b0;
            fdbs0_fdb1_data13_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data13_fifo_cen  = mem_extend;
            fdbs0_fdb1_data13_fifo_mem_ready  = fdbs0_fdb1_data13_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h35) begin
            fdbs0_fdb1_data13_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb1_data13_fifo_miss = 1'b0;
            fdbs0_fdb1_data13_fifo_cen  = mem_extend;
            fdbs0_fdb1_data13_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data13_fifo_mem_ready  = 1'b1;
            fdbs0_fdb1_data13_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb1_data13_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb1_data14_fifo                      offset: 0x360
//                                     width:  32  depth:   4
reg           fdbs0_fdb1_data14_fifo_mem_access; 
reg           fdbs0_fdb1_data14_fifo_mem_ready; 
reg           fdbs0_fdb1_data14_fifo_miss; 
always @(*) begin
    fdbs0_fdb1_data14_fifo_mem_access = 1'b0;
    fdbs0_fdb1_data14_fifo_mem_ready  = 1'b1;
    fdbs0_fdb1_data14_fifo_miss = 1'b1;
    fdbs0_fdb1_data14_fifo_din = 32'd0;
    fdbs0_fdb1_data14_fifo_a = 2'd0;
    fdbs0_fdb1_data14_fifo_wen = {32{1'b1}};
    fdbs0_fdb1_data14_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h36) begin
            fdbs0_fdb1_data14_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb1_data14_fifo_miss = 1'b0;
            fdbs0_fdb1_data14_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data14_fifo_cen  = mem_extend;
            fdbs0_fdb1_data14_fifo_mem_ready  = fdbs0_fdb1_data14_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h36) begin
            fdbs0_fdb1_data14_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb1_data14_fifo_miss = 1'b0;
            fdbs0_fdb1_data14_fifo_cen  = mem_extend;
            fdbs0_fdb1_data14_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data14_fifo_mem_ready  = 1'b1;
            fdbs0_fdb1_data14_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb1_data14_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

// ------------------------------------------------------------
// register: fdb1_data15_fifo                      offset: 0x370
//                                     width:  32  depth:   4
reg           fdbs0_fdb1_data15_fifo_mem_access; 
reg           fdbs0_fdb1_data15_fifo_mem_ready; 
reg           fdbs0_fdb1_data15_fifo_miss; 
always @(*) begin
    fdbs0_fdb1_data15_fifo_mem_access = 1'b0;
    fdbs0_fdb1_data15_fifo_mem_ready  = 1'b1;
    fdbs0_fdb1_data15_fifo_miss = 1'b1;
    fdbs0_fdb1_data15_fifo_din = 32'd0;
    fdbs0_fdb1_data15_fifo_a = 2'd0;
    fdbs0_fdb1_data15_fifo_wen = {32{1'b1}};
    fdbs0_fdb1_data15_fifo_cen = {1{1'b1}};

    if (read_valid_i) begin
        if (read_addr_i[9:4] == 6'h37) begin
            fdbs0_fdb1_data15_fifo_a    = read_addr_i[3:2];
            fdbs0_fdb1_data15_fifo_miss = 1'b0;
            fdbs0_fdb1_data15_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data15_fifo_cen  = mem_extend;
            fdbs0_fdb1_data15_fifo_mem_ready  = fdbs0_fdb1_data15_fifo_cen;
        end
    end
    else
    if (write_valid_i) begin
        if (write_addr_i[9:4] == 6'h37) begin
            fdbs0_fdb1_data15_fifo_a    = write_addr_i[3:2];
            fdbs0_fdb1_data15_fifo_miss = 1'b0;
            fdbs0_fdb1_data15_fifo_cen  = mem_extend;
            fdbs0_fdb1_data15_fifo_mem_access = 1'b1;
            fdbs0_fdb1_data15_fifo_mem_ready  = 1'b1;
            fdbs0_fdb1_data15_fifo_wen = ~{
                    {8{write_strb_i[3]}},
                    {8{write_strb_i[2]}},
                    {8{write_strb_i[1]}},
                    {8{write_strb_i[0]}} };
            fdbs0_fdb1_data15_fifo_din = {
                    write_data_i[31:0] };
        end
    end
end

wire          mem_ready  = fdbs0_fdb0_data0_fifo_mem_ready
                        && fdbs0_fdb0_data1_fifo_mem_ready
                        && fdbs0_fdb0_data2_fifo_mem_ready
                        && fdbs0_fdb0_data3_fifo_mem_ready
                        && fdbs0_fdb0_data4_fifo_mem_ready
                        && fdbs0_fdb0_data5_fifo_mem_ready
                        && fdbs0_fdb0_data6_fifo_mem_ready
                        && fdbs0_fdb0_data7_fifo_mem_ready
                        && fdbs0_fdb0_data8_fifo_mem_ready
                        && fdbs0_fdb0_data9_fifo_mem_ready
                        && fdbs0_fdb0_data10_fifo_mem_ready
                        && fdbs0_fdb0_data11_fifo_mem_ready
                        && fdbs0_fdb0_data12_fifo_mem_ready
                        && fdbs0_fdb0_data13_fifo_mem_ready
                        && fdbs0_fdb0_data14_fifo_mem_ready
                        && fdbs0_fdb0_data15_fifo_mem_ready
                        && fdbs0_fdb1_data0_fifo_mem_ready
                        && fdbs0_fdb1_data1_fifo_mem_ready
                        && fdbs0_fdb1_data2_fifo_mem_ready
                        && fdbs0_fdb1_data3_fifo_mem_ready
                        && fdbs0_fdb1_data4_fifo_mem_ready
                        && fdbs0_fdb1_data5_fifo_mem_ready
                        && fdbs0_fdb1_data6_fifo_mem_ready
                        && fdbs0_fdb1_data7_fifo_mem_ready
                        && fdbs0_fdb1_data8_fifo_mem_ready
                        && fdbs0_fdb1_data9_fifo_mem_ready
                        && fdbs0_fdb1_data10_fifo_mem_ready
                        && fdbs0_fdb1_data11_fifo_mem_ready
                        && fdbs0_fdb1_data12_fifo_mem_ready
                        && fdbs0_fdb1_data13_fifo_mem_ready
                        && fdbs0_fdb1_data14_fifo_mem_ready
                        && fdbs0_fdb1_data15_fifo_mem_ready; 
always @(posedge reg_clk or negedge non_retention_reset_ni)
   if (!non_retention_reset_ni) begin 
      mem_extend <= 1'b0;
   end 
   else 
      mem_extend <= !mem_ready;

wire          mem_access = fdbs0_fdb0_data0_fifo_mem_access
                        || fdbs0_fdb0_data1_fifo_mem_access
                        || fdbs0_fdb0_data2_fifo_mem_access
                        || fdbs0_fdb0_data3_fifo_mem_access
                        || fdbs0_fdb0_data4_fifo_mem_access
                        || fdbs0_fdb0_data5_fifo_mem_access
                        || fdbs0_fdb0_data6_fifo_mem_access
                        || fdbs0_fdb0_data7_fifo_mem_access
                        || fdbs0_fdb0_data8_fifo_mem_access
                        || fdbs0_fdb0_data9_fifo_mem_access
                        || fdbs0_fdb0_data10_fifo_mem_access
                        || fdbs0_fdb0_data11_fifo_mem_access
                        || fdbs0_fdb0_data12_fifo_mem_access
                        || fdbs0_fdb0_data13_fifo_mem_access
                        || fdbs0_fdb0_data14_fifo_mem_access
                        || fdbs0_fdb0_data15_fifo_mem_access
                        || fdbs0_fdb1_data0_fifo_mem_access
                        || fdbs0_fdb1_data1_fifo_mem_access
                        || fdbs0_fdb1_data2_fifo_mem_access
                        || fdbs0_fdb1_data3_fifo_mem_access
                        || fdbs0_fdb1_data4_fifo_mem_access
                        || fdbs0_fdb1_data5_fifo_mem_access
                        || fdbs0_fdb1_data6_fifo_mem_access
                        || fdbs0_fdb1_data7_fifo_mem_access
                        || fdbs0_fdb1_data8_fifo_mem_access
                        || fdbs0_fdb1_data9_fifo_mem_access
                        || fdbs0_fdb1_data10_fifo_mem_access
                        || fdbs0_fdb1_data11_fifo_mem_access
                        || fdbs0_fdb1_data12_fifo_mem_access
                        || fdbs0_fdb1_data13_fifo_mem_access
                        || fdbs0_fdb1_data14_fifo_mem_access
                        || fdbs0_fdb1_data15_fifo_mem_access; 
wire          ram_miss   = fdbs0_fdb0_data0_fifo_miss
                        && fdbs0_fdb0_data1_fifo_miss
                        && fdbs0_fdb0_data2_fifo_miss
                        && fdbs0_fdb0_data3_fifo_miss
                        && fdbs0_fdb0_data4_fifo_miss
                        && fdbs0_fdb0_data5_fifo_miss
                        && fdbs0_fdb0_data6_fifo_miss
                        && fdbs0_fdb0_data7_fifo_miss
                        && fdbs0_fdb0_data8_fifo_miss
                        && fdbs0_fdb0_data9_fifo_miss
                        && fdbs0_fdb0_data10_fifo_miss
                        && fdbs0_fdb0_data11_fifo_miss
                        && fdbs0_fdb0_data12_fifo_miss
                        && fdbs0_fdb0_data13_fifo_miss
                        && fdbs0_fdb0_data14_fifo_miss
                        && fdbs0_fdb0_data15_fifo_miss
                        && fdbs0_fdb1_data0_fifo_miss
                        && fdbs0_fdb1_data1_fifo_miss
                        && fdbs0_fdb1_data2_fifo_miss
                        && fdbs0_fdb1_data3_fifo_miss
                        && fdbs0_fdb1_data4_fifo_miss
                        && fdbs0_fdb1_data5_fifo_miss
                        && fdbs0_fdb1_data6_fifo_miss
                        && fdbs0_fdb1_data7_fifo_miss
                        && fdbs0_fdb1_data8_fifo_miss
                        && fdbs0_fdb1_data9_fifo_miss
                        && fdbs0_fdb1_data10_fifo_miss
                        && fdbs0_fdb1_data11_fifo_miss
                        && fdbs0_fdb1_data12_fifo_miss
                        && fdbs0_fdb1_data13_fifo_miss
                        && fdbs0_fdb1_data14_fifo_miss
                        && fdbs0_fdb1_data15_fifo_miss; 

////////////////////////////////////////////////////////////////////////
// Read/Write Ready Logic

assign ready_o = mem_ready || !mem_access;

////////////////////////////////////////////////////////////////////////
// Configuration Register Read Logic

// sonics preserve_name fdbs0_fdb0_bell0
assign        fdbs0_fdb0_bell0 = {
              11'd0,
              fdbs0_fdb0_bell0_fcnt_q,
              3'd0,
              fdbs0_fdb0_bell0_valid_fcnt_q,
              1'd0,
              fdbs0_fdb0_bell0_max_priority_q,
              fdbs0_fdb0_bell0_failed_ring_q,
              2'd0,
              fdbs0_fdb0_bell0_cnt_qout};

// sonics preserve_name fdbs0_fdb0_bell1
assign        fdbs0_fdb0_bell1 = {
              11'd0,
              fdbs0_fdb0_bell1_fcnt_q,
              3'd0,
              fdbs0_fdb0_bell1_valid_fcnt_q,
              1'd0,
              fdbs0_fdb0_bell1_max_priority_q,
              fdbs0_fdb0_bell1_failed_ring_q,
              2'd0,
              fdbs0_fdb0_bell1_cnt_qout};

// sonics preserve_name fdbs0_fdb0_bell2
assign        fdbs0_fdb0_bell2 = {
              11'd0,
              fdbs0_fdb0_bell2_fcnt_q,
              3'd0,
              fdbs0_fdb0_bell2_valid_fcnt_q,
              1'd0,
              fdbs0_fdb0_bell2_max_priority_q,
              fdbs0_fdb0_bell2_failed_ring_q,
              2'd0,
              fdbs0_fdb0_bell2_cnt_qout};

// sonics preserve_name fdbs0_fdb0_bell3
assign        fdbs0_fdb0_bell3 = {
              11'd0,
              fdbs0_fdb0_bell3_fcnt_q,
              3'd0,
              fdbs0_fdb0_bell3_valid_fcnt_q,
              1'd0,
              fdbs0_fdb0_bell3_max_priority_q,
              fdbs0_fdb0_bell3_failed_ring_q,
              2'd0,
              fdbs0_fdb0_bell3_cnt_qout};

// sonics preserve_name fdbs0_fdb0_bell4
assign        fdbs0_fdb0_bell4 = {
              11'd0,
              fdbs0_fdb0_bell4_fcnt_q,
              3'd0,
              fdbs0_fdb0_bell4_valid_fcnt_q,
              1'd0,
              fdbs0_fdb0_bell4_max_priority_q,
              fdbs0_fdb0_bell4_failed_ring_q,
              2'd0,
              fdbs0_fdb0_bell4_cnt_qout};

// sonics preserve_name fdbs0_fdb0_bell5
assign        fdbs0_fdb0_bell5 = {
              11'd0,
              fdbs0_fdb0_bell5_fcnt_q,
              3'd0,
              fdbs0_fdb0_bell5_valid_fcnt_q,
              1'd0,
              fdbs0_fdb0_bell5_max_priority_q,
              fdbs0_fdb0_bell5_failed_ring_q,
              2'd0,
              fdbs0_fdb0_bell5_cnt_qout};

// sonics preserve_name fdbs0_fdb0_bell6
assign        fdbs0_fdb0_bell6 = {
              11'd0,
              fdbs0_fdb0_bell6_fcnt_q,
              3'd0,
              fdbs0_fdb0_bell6_valid_fcnt_q,
              1'd0,
              fdbs0_fdb0_bell6_max_priority_q,
              fdbs0_fdb0_bell6_failed_ring_q,
              2'd0,
              fdbs0_fdb0_bell6_cnt_qout};

// sonics preserve_name fdbs0_fdb0_bell7
assign        fdbs0_fdb0_bell7 = {
              11'd0,
              fdbs0_fdb0_bell7_fcnt_q,
              3'd0,
              fdbs0_fdb0_bell7_valid_fcnt_q,
              1'd0,
              fdbs0_fdb0_bell7_max_priority_q,
              fdbs0_fdb0_bell7_failed_ring_q,
              2'd0,
              fdbs0_fdb0_bell7_cnt_qout};

// sonics preserve_name fdbs0_fdb0_bell8
assign        fdbs0_fdb0_bell8 = {
              11'd0,
              fdbs0_fdb0_bell8_fcnt_q,
              3'd0,
              fdbs0_fdb0_bell8_valid_fcnt_q,
              1'd0,
              fdbs0_fdb0_bell8_max_priority_q,
              fdbs0_fdb0_bell8_failed_ring_q,
              2'd0,
              fdbs0_fdb0_bell8_cnt_qout};

// sonics preserve_name fdbs0_fdb0_bell9
assign        fdbs0_fdb0_bell9 = {
              11'd0,
              fdbs0_fdb0_bell9_fcnt_q,
              3'd0,
              fdbs0_fdb0_bell9_valid_fcnt_q,
              1'd0,
              fdbs0_fdb0_bell9_max_priority_q,
              fdbs0_fdb0_bell9_failed_ring_q,
              2'd0,
              fdbs0_fdb0_bell9_cnt_qout};

// sonics preserve_name fdbs0_fdb0_bell10
assign        fdbs0_fdb0_bell10 = {
              11'd0,
              fdbs0_fdb0_bell10_fcnt_q,
              3'd0,
              fdbs0_fdb0_bell10_valid_fcnt_q,
              1'd0,
              fdbs0_fdb0_bell10_max_priority_q,
              fdbs0_fdb0_bell10_failed_ring_q,
              2'd0,
              fdbs0_fdb0_bell10_cnt_qout};

// sonics preserve_name fdbs0_fdb0_bell11
assign        fdbs0_fdb0_bell11 = {
              11'd0,
              fdbs0_fdb0_bell11_fcnt_q,
              3'd0,
              fdbs0_fdb0_bell11_valid_fcnt_q,
              1'd0,
              fdbs0_fdb0_bell11_max_priority_q,
              fdbs0_fdb0_bell11_failed_ring_q,
              2'd0,
              fdbs0_fdb0_bell11_cnt_qout};

// sonics preserve_name fdbs0_fdb0_bell12
assign        fdbs0_fdb0_bell12 = {
              11'd0,
              fdbs0_fdb0_bell12_fcnt_q,
              3'd0,
              fdbs0_fdb0_bell12_valid_fcnt_q,
              1'd0,
              fdbs0_fdb0_bell12_max_priority_q,
              fdbs0_fdb0_bell12_failed_ring_q,
              2'd0,
              fdbs0_fdb0_bell12_cnt_qout};

// sonics preserve_name fdbs0_fdb0_bell13
assign        fdbs0_fdb0_bell13 = {
              11'd0,
              fdbs0_fdb0_bell13_fcnt_q,
              3'd0,
              fdbs0_fdb0_bell13_valid_fcnt_q,
              1'd0,
              fdbs0_fdb0_bell13_max_priority_q,
              fdbs0_fdb0_bell13_failed_ring_q,
              2'd0,
              fdbs0_fdb0_bell13_cnt_qout};

// sonics preserve_name fdbs0_fdb0_bell14
assign        fdbs0_fdb0_bell14 = {
              11'd0,
              fdbs0_fdb0_bell14_fcnt_q,
              3'd0,
              fdbs0_fdb0_bell14_valid_fcnt_q,
              1'd0,
              fdbs0_fdb0_bell14_max_priority_q,
              fdbs0_fdb0_bell14_failed_ring_q,
              2'd0,
              fdbs0_fdb0_bell14_cnt_qout};

// sonics preserve_name fdbs0_fdb0_bell15
assign        fdbs0_fdb0_bell15 = {
              11'd0,
              fdbs0_fdb0_bell15_fcnt_q,
              3'd0,
              fdbs0_fdb0_bell15_valid_fcnt_q,
              1'd0,
              fdbs0_fdb0_bell15_max_priority_q,
              fdbs0_fdb0_bell15_failed_ring_q,
              2'd0,
              fdbs0_fdb0_bell15_cnt_qout};

// sonics preserve_name fdbs0_fdb0_control
assign        fdbs0_fdb0_control = {
              31'd0,
              fdbs0_fdb0_control_ack_on_empty_q};

// sonics preserve_name fdbs0_fdb0_enable
assign        fdbs0_fdb0_enable = {
              16'd0,
              fdbs0_fdb0_enable_enable_qout};

// sonics preserve_name fdbs0_fdb0_status
wire   [31:0] fdbs0_fdb0_status = {
              16'd0,
              fdbs0_fdb0_status_status_d};

// sonics preserve_name fdbs0_fdb0_data0_fifo
wire   [31:0] fdbs0_fdb0_data0_fifo = {
              fdbs0_fdb0_data0_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb0_data1_fifo
wire   [31:0] fdbs0_fdb0_data1_fifo = {
              fdbs0_fdb0_data1_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb0_data2_fifo
wire   [31:0] fdbs0_fdb0_data2_fifo = {
              fdbs0_fdb0_data2_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb0_data3_fifo
wire   [31:0] fdbs0_fdb0_data3_fifo = {
              fdbs0_fdb0_data3_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb0_data4_fifo
wire   [31:0] fdbs0_fdb0_data4_fifo = {
              fdbs0_fdb0_data4_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb0_data5_fifo
wire   [31:0] fdbs0_fdb0_data5_fifo = {
              fdbs0_fdb0_data5_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb0_data6_fifo
wire   [31:0] fdbs0_fdb0_data6_fifo = {
              fdbs0_fdb0_data6_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb0_data7_fifo
wire   [31:0] fdbs0_fdb0_data7_fifo = {
              fdbs0_fdb0_data7_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb0_data8_fifo
wire   [31:0] fdbs0_fdb0_data8_fifo = {
              fdbs0_fdb0_data8_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb0_data9_fifo
wire   [31:0] fdbs0_fdb0_data9_fifo = {
              fdbs0_fdb0_data9_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb0_data10_fifo
wire   [31:0] fdbs0_fdb0_data10_fifo = {
              fdbs0_fdb0_data10_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb0_data11_fifo
wire   [31:0] fdbs0_fdb0_data11_fifo = {
              fdbs0_fdb0_data11_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb0_data12_fifo
wire   [31:0] fdbs0_fdb0_data12_fifo = {
              fdbs0_fdb0_data12_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb0_data13_fifo
wire   [31:0] fdbs0_fdb0_data13_fifo = {
              fdbs0_fdb0_data13_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb0_data14_fifo
wire   [31:0] fdbs0_fdb0_data14_fifo = {
              fdbs0_fdb0_data14_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb0_data15_fifo
wire   [31:0] fdbs0_fdb0_data15_fifo = {
              fdbs0_fdb0_data15_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb1_bell0
assign        fdbs0_fdb1_bell0 = {
              11'd0,
              fdbs0_fdb1_bell0_fcnt_q,
              3'd0,
              fdbs0_fdb1_bell0_valid_fcnt_q,
              1'd0,
              fdbs0_fdb1_bell0_max_priority_q,
              fdbs0_fdb1_bell0_failed_ring_q,
              2'd0,
              fdbs0_fdb1_bell0_cnt_qout};

// sonics preserve_name fdbs0_fdb1_bell1
assign        fdbs0_fdb1_bell1 = {
              11'd0,
              fdbs0_fdb1_bell1_fcnt_q,
              3'd0,
              fdbs0_fdb1_bell1_valid_fcnt_q,
              1'd0,
              fdbs0_fdb1_bell1_max_priority_q,
              fdbs0_fdb1_bell1_failed_ring_q,
              2'd0,
              fdbs0_fdb1_bell1_cnt_qout};

// sonics preserve_name fdbs0_fdb1_bell2
assign        fdbs0_fdb1_bell2 = {
              11'd0,
              fdbs0_fdb1_bell2_fcnt_q,
              3'd0,
              fdbs0_fdb1_bell2_valid_fcnt_q,
              1'd0,
              fdbs0_fdb1_bell2_max_priority_q,
              fdbs0_fdb1_bell2_failed_ring_q,
              2'd0,
              fdbs0_fdb1_bell2_cnt_qout};

// sonics preserve_name fdbs0_fdb1_bell3
assign        fdbs0_fdb1_bell3 = {
              11'd0,
              fdbs0_fdb1_bell3_fcnt_q,
              3'd0,
              fdbs0_fdb1_bell3_valid_fcnt_q,
              1'd0,
              fdbs0_fdb1_bell3_max_priority_q,
              fdbs0_fdb1_bell3_failed_ring_q,
              2'd0,
              fdbs0_fdb1_bell3_cnt_qout};

// sonics preserve_name fdbs0_fdb1_bell4
assign        fdbs0_fdb1_bell4 = {
              11'd0,
              fdbs0_fdb1_bell4_fcnt_q,
              3'd0,
              fdbs0_fdb1_bell4_valid_fcnt_q,
              1'd0,
              fdbs0_fdb1_bell4_max_priority_q,
              fdbs0_fdb1_bell4_failed_ring_q,
              2'd0,
              fdbs0_fdb1_bell4_cnt_qout};

// sonics preserve_name fdbs0_fdb1_bell5
assign        fdbs0_fdb1_bell5 = {
              11'd0,
              fdbs0_fdb1_bell5_fcnt_q,
              3'd0,
              fdbs0_fdb1_bell5_valid_fcnt_q,
              1'd0,
              fdbs0_fdb1_bell5_max_priority_q,
              fdbs0_fdb1_bell5_failed_ring_q,
              2'd0,
              fdbs0_fdb1_bell5_cnt_qout};

// sonics preserve_name fdbs0_fdb1_bell6
assign        fdbs0_fdb1_bell6 = {
              11'd0,
              fdbs0_fdb1_bell6_fcnt_q,
              3'd0,
              fdbs0_fdb1_bell6_valid_fcnt_q,
              1'd0,
              fdbs0_fdb1_bell6_max_priority_q,
              fdbs0_fdb1_bell6_failed_ring_q,
              2'd0,
              fdbs0_fdb1_bell6_cnt_qout};

// sonics preserve_name fdbs0_fdb1_bell7
assign        fdbs0_fdb1_bell7 = {
              11'd0,
              fdbs0_fdb1_bell7_fcnt_q,
              3'd0,
              fdbs0_fdb1_bell7_valid_fcnt_q,
              1'd0,
              fdbs0_fdb1_bell7_max_priority_q,
              fdbs0_fdb1_bell7_failed_ring_q,
              2'd0,
              fdbs0_fdb1_bell7_cnt_qout};

// sonics preserve_name fdbs0_fdb1_bell8
assign        fdbs0_fdb1_bell8 = {
              11'd0,
              fdbs0_fdb1_bell8_fcnt_q,
              3'd0,
              fdbs0_fdb1_bell8_valid_fcnt_q,
              1'd0,
              fdbs0_fdb1_bell8_max_priority_q,
              fdbs0_fdb1_bell8_failed_ring_q,
              2'd0,
              fdbs0_fdb1_bell8_cnt_qout};

// sonics preserve_name fdbs0_fdb1_bell9
assign        fdbs0_fdb1_bell9 = {
              11'd0,
              fdbs0_fdb1_bell9_fcnt_q,
              3'd0,
              fdbs0_fdb1_bell9_valid_fcnt_q,
              1'd0,
              fdbs0_fdb1_bell9_max_priority_q,
              fdbs0_fdb1_bell9_failed_ring_q,
              2'd0,
              fdbs0_fdb1_bell9_cnt_qout};

// sonics preserve_name fdbs0_fdb1_bell10
assign        fdbs0_fdb1_bell10 = {
              11'd0,
              fdbs0_fdb1_bell10_fcnt_q,
              3'd0,
              fdbs0_fdb1_bell10_valid_fcnt_q,
              1'd0,
              fdbs0_fdb1_bell10_max_priority_q,
              fdbs0_fdb1_bell10_failed_ring_q,
              2'd0,
              fdbs0_fdb1_bell10_cnt_qout};

// sonics preserve_name fdbs0_fdb1_bell11
assign        fdbs0_fdb1_bell11 = {
              11'd0,
              fdbs0_fdb1_bell11_fcnt_q,
              3'd0,
              fdbs0_fdb1_bell11_valid_fcnt_q,
              1'd0,
              fdbs0_fdb1_bell11_max_priority_q,
              fdbs0_fdb1_bell11_failed_ring_q,
              2'd0,
              fdbs0_fdb1_bell11_cnt_qout};

// sonics preserve_name fdbs0_fdb1_bell12
assign        fdbs0_fdb1_bell12 = {
              11'd0,
              fdbs0_fdb1_bell12_fcnt_q,
              3'd0,
              fdbs0_fdb1_bell12_valid_fcnt_q,
              1'd0,
              fdbs0_fdb1_bell12_max_priority_q,
              fdbs0_fdb1_bell12_failed_ring_q,
              2'd0,
              fdbs0_fdb1_bell12_cnt_qout};

// sonics preserve_name fdbs0_fdb1_bell13
assign        fdbs0_fdb1_bell13 = {
              11'd0,
              fdbs0_fdb1_bell13_fcnt_q,
              3'd0,
              fdbs0_fdb1_bell13_valid_fcnt_q,
              1'd0,
              fdbs0_fdb1_bell13_max_priority_q,
              fdbs0_fdb1_bell13_failed_ring_q,
              2'd0,
              fdbs0_fdb1_bell13_cnt_qout};

// sonics preserve_name fdbs0_fdb1_bell14
assign        fdbs0_fdb1_bell14 = {
              11'd0,
              fdbs0_fdb1_bell14_fcnt_q,
              3'd0,
              fdbs0_fdb1_bell14_valid_fcnt_q,
              1'd0,
              fdbs0_fdb1_bell14_max_priority_q,
              fdbs0_fdb1_bell14_failed_ring_q,
              2'd0,
              fdbs0_fdb1_bell14_cnt_qout};

// sonics preserve_name fdbs0_fdb1_bell15
assign        fdbs0_fdb1_bell15 = {
              11'd0,
              fdbs0_fdb1_bell15_fcnt_q,
              3'd0,
              fdbs0_fdb1_bell15_valid_fcnt_q,
              1'd0,
              fdbs0_fdb1_bell15_max_priority_q,
              fdbs0_fdb1_bell15_failed_ring_q,
              2'd0,
              fdbs0_fdb1_bell15_cnt_qout};

// sonics preserve_name fdbs0_fdb1_control
assign        fdbs0_fdb1_control = {
              31'd0,
              fdbs0_fdb1_control_ack_on_empty_q};

// sonics preserve_name fdbs0_fdb1_enable
assign        fdbs0_fdb1_enable = {
              16'd0,
              fdbs0_fdb1_enable_enable_qout};

// sonics preserve_name fdbs0_fdb1_status
wire   [31:0] fdbs0_fdb1_status = {
              16'd0,
              fdbs0_fdb1_status_status_d};

// sonics preserve_name fdbs0_fdb1_data0_fifo
wire   [31:0] fdbs0_fdb1_data0_fifo = {
              fdbs0_fdb1_data0_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb1_data1_fifo
wire   [31:0] fdbs0_fdb1_data1_fifo = {
              fdbs0_fdb1_data1_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb1_data2_fifo
wire   [31:0] fdbs0_fdb1_data2_fifo = {
              fdbs0_fdb1_data2_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb1_data3_fifo
wire   [31:0] fdbs0_fdb1_data3_fifo = {
              fdbs0_fdb1_data3_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb1_data4_fifo
wire   [31:0] fdbs0_fdb1_data4_fifo = {
              fdbs0_fdb1_data4_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb1_data5_fifo
wire   [31:0] fdbs0_fdb1_data5_fifo = {
              fdbs0_fdb1_data5_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb1_data6_fifo
wire   [31:0] fdbs0_fdb1_data6_fifo = {
              fdbs0_fdb1_data6_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb1_data7_fifo
wire   [31:0] fdbs0_fdb1_data7_fifo = {
              fdbs0_fdb1_data7_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb1_data8_fifo
wire   [31:0] fdbs0_fdb1_data8_fifo = {
              fdbs0_fdb1_data8_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb1_data9_fifo
wire   [31:0] fdbs0_fdb1_data9_fifo = {
              fdbs0_fdb1_data9_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb1_data10_fifo
wire   [31:0] fdbs0_fdb1_data10_fifo = {
              fdbs0_fdb1_data10_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb1_data11_fifo
wire   [31:0] fdbs0_fdb1_data11_fifo = {
              fdbs0_fdb1_data11_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb1_data12_fifo
wire   [31:0] fdbs0_fdb1_data12_fifo = {
              fdbs0_fdb1_data12_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb1_data13_fifo
wire   [31:0] fdbs0_fdb1_data13_fifo = {
              fdbs0_fdb1_data13_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb1_data14_fifo
wire   [31:0] fdbs0_fdb1_data14_fifo = {
              fdbs0_fdb1_data14_fifo_dout[31:0]};

// sonics preserve_name fdbs0_fdb1_data15_fifo
wire   [31:0] fdbs0_fdb1_data15_fifo = {
              fdbs0_fdb1_data15_fifo_dout[31:0]};


////////////////////////////////////////////////////////////////////////
// Config Register Block Read Decoder

// LEVEL 0 ===================================
reg    [31:0] reg_word0_0; 
always @(*) begin
    case (read_addr_i[6:2])
       5'h0 :  reg_word0_0 = fdbs0_fdb0_bell0;
       5'h1 :  reg_word0_0 = fdbs0_fdb0_bell1;
       5'h2 :  reg_word0_0 = fdbs0_fdb0_bell2;
       5'h3 :  reg_word0_0 = fdbs0_fdb0_bell3;
       5'h4 :  reg_word0_0 = fdbs0_fdb0_bell4;
       5'h5 :  reg_word0_0 = fdbs0_fdb0_bell5;
       5'h6 :  reg_word0_0 = fdbs0_fdb0_bell6;
       5'h7 :  reg_word0_0 = fdbs0_fdb0_bell7;
       5'h8 :  reg_word0_0 = fdbs0_fdb0_bell8;
       5'h9 :  reg_word0_0 = fdbs0_fdb0_bell9;
       5'ha :  reg_word0_0 = fdbs0_fdb0_bell10;
       5'hb :  reg_word0_0 = fdbs0_fdb0_bell11;
       5'hc :  reg_word0_0 = fdbs0_fdb0_bell12;
       5'hd :  reg_word0_0 = fdbs0_fdb0_bell13;
       5'he :  reg_word0_0 = fdbs0_fdb0_bell14;
       5'hf :  reg_word0_0 = fdbs0_fdb0_bell15;
       5'h1d:  reg_word0_0 = fdbs0_fdb0_control;
       5'h1e:  reg_word0_0 = fdbs0_fdb0_enable;
       5'h1f:  reg_word0_0 = fdbs0_fdb0_status;
       default: reg_word0_0 = 32'd0;
    endcase
end

reg    [31:0] reg_word0_4; 
always @(*) begin
    case (read_addr_i[6:2])
       5'h0 :  reg_word0_4 = fdbs0_fdb1_bell0;
       5'h1 :  reg_word0_4 = fdbs0_fdb1_bell1;
       5'h2 :  reg_word0_4 = fdbs0_fdb1_bell2;
       5'h3 :  reg_word0_4 = fdbs0_fdb1_bell3;
       5'h4 :  reg_word0_4 = fdbs0_fdb1_bell4;
       5'h5 :  reg_word0_4 = fdbs0_fdb1_bell5;
       5'h6 :  reg_word0_4 = fdbs0_fdb1_bell6;
       5'h7 :  reg_word0_4 = fdbs0_fdb1_bell7;
       5'h8 :  reg_word0_4 = fdbs0_fdb1_bell8;
       5'h9 :  reg_word0_4 = fdbs0_fdb1_bell9;
       5'ha :  reg_word0_4 = fdbs0_fdb1_bell10;
       5'hb :  reg_word0_4 = fdbs0_fdb1_bell11;
       5'hc :  reg_word0_4 = fdbs0_fdb1_bell12;
       5'hd :  reg_word0_4 = fdbs0_fdb1_bell13;
       5'he :  reg_word0_4 = fdbs0_fdb1_bell14;
       5'hf :  reg_word0_4 = fdbs0_fdb1_bell15;
       5'h1d:  reg_word0_4 = fdbs0_fdb1_control;
       5'h1e:  reg_word0_4 = fdbs0_fdb1_enable;
       5'h1f:  reg_word0_4 = fdbs0_fdb1_status;
       default: reg_word0_4 = 32'd0;
    endcase
end

// LEVEL 1 ===================================
reg    [31:0] reg_word1_0; 
always @(*) begin
    case (read_addr_i[9:7])
       3'h0 :  reg_word1_0 = reg_word0_0;
       3'h4 :  reg_word1_0 = reg_word0_4;
       default: reg_word1_0 = 32'd0;
    endcase
end

reg    [31:0] reg_word_ram; 
always @(*) begin
    casez (read_addr_i[9:2])
       8'b001000??:  reg_word_ram = fdbs0_fdb0_data0_fifo;
       8'b001001??:  reg_word_ram = fdbs0_fdb0_data1_fifo;
       8'b001010??:  reg_word_ram = fdbs0_fdb0_data2_fifo;
       8'b001011??:  reg_word_ram = fdbs0_fdb0_data3_fifo;
       8'b001100??:  reg_word_ram = fdbs0_fdb0_data4_fifo;
       8'b001101??:  reg_word_ram = fdbs0_fdb0_data5_fifo;
       8'b001110??:  reg_word_ram = fdbs0_fdb0_data6_fifo;
       8'b001111??:  reg_word_ram = fdbs0_fdb0_data7_fifo;
       8'b010000??:  reg_word_ram = fdbs0_fdb0_data8_fifo;
       8'b010001??:  reg_word_ram = fdbs0_fdb0_data9_fifo;
       8'b010010??:  reg_word_ram = fdbs0_fdb0_data10_fifo;
       8'b010011??:  reg_word_ram = fdbs0_fdb0_data11_fifo;
       8'b010100??:  reg_word_ram = fdbs0_fdb0_data12_fifo;
       8'b010101??:  reg_word_ram = fdbs0_fdb0_data13_fifo;
       8'b010110??:  reg_word_ram = fdbs0_fdb0_data14_fifo;
       8'b010111??:  reg_word_ram = fdbs0_fdb0_data15_fifo;
       8'b101000??:  reg_word_ram = fdbs0_fdb1_data0_fifo;
       8'b101001??:  reg_word_ram = fdbs0_fdb1_data1_fifo;
       8'b101010??:  reg_word_ram = fdbs0_fdb1_data2_fifo;
       8'b101011??:  reg_word_ram = fdbs0_fdb1_data3_fifo;
       8'b101100??:  reg_word_ram = fdbs0_fdb1_data4_fifo;
       8'b101101??:  reg_word_ram = fdbs0_fdb1_data5_fifo;
       8'b101110??:  reg_word_ram = fdbs0_fdb1_data6_fifo;
       8'b101111??:  reg_word_ram = fdbs0_fdb1_data7_fifo;
       8'b110000??:  reg_word_ram = fdbs0_fdb1_data8_fifo;
       8'b110001??:  reg_word_ram = fdbs0_fdb1_data9_fifo;
       8'b110010??:  reg_word_ram = fdbs0_fdb1_data10_fifo;
       8'b110011??:  reg_word_ram = fdbs0_fdb1_data11_fifo;
       8'b110100??:  reg_word_ram = fdbs0_fdb1_data12_fifo;
       8'b110101??:  reg_word_ram = fdbs0_fdb1_data13_fifo;
       8'b110110??:  reg_word_ram = fdbs0_fdb1_data14_fifo;
       8'b110111??:  reg_word_ram = fdbs0_fdb1_data15_fifo;
       default: reg_word_ram = 32'd0;
    endcase
end

wire   [31:0] reg_word = reg_word1_0 | reg_word_ram; 
assign read_data_o = reg_word & {32{read_valid_i}};

////////////////////////////////////////////////////////////////////////
// Read Address Hole Detection
reg           reg_read_hole; 
always @(*) begin
    casez (read_addr_i[9:2])
       8'h0 , 8'h1 , 8'h2 , 8'h3 , 8'h4 , 8'h5 , 8'h6 , 8'h7 , 
       8'h8 , 8'h9 , 8'ha , 8'hb , 8'hc , 8'hd , 8'he , 8'hf , 
       8'h1d, 8'h1e, 8'h1f, 8'h80, 8'h81, 8'h82, 8'h83, 8'h84, 
       8'h85, 8'h86, 8'h87, 8'h88, 8'h89, 8'h8a, 8'h8b, 8'h8c, 
       8'h8d, 8'h8e, 8'h8f, 8'h9d, 8'h9e, 8'h9f:
          reg_read_hole = 1'b0;
       default: reg_read_hole = 1'b1;
    endcase
end
assign read_err_o = reg_read_hole && ram_miss;

////////////////////////////////////////////////////////////////////////
// Read Notify

assign fdbs0_fdb0_bell0_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h0 );
assign fdbs0_fdb0_bell1_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h1 );
assign fdbs0_fdb0_bell2_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h2 );
assign fdbs0_fdb0_bell3_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h3 );
assign fdbs0_fdb0_bell4_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h4 );
assign fdbs0_fdb0_bell5_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h5 );
assign fdbs0_fdb0_bell6_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h6 );
assign fdbs0_fdb0_bell7_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h7 );
assign fdbs0_fdb0_bell8_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h8 );
assign fdbs0_fdb0_bell9_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h9 );
assign fdbs0_fdb0_bell10_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'ha );
assign fdbs0_fdb0_bell11_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'hb );
assign fdbs0_fdb0_bell12_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'hc );
assign fdbs0_fdb0_bell13_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'hd );
assign fdbs0_fdb0_bell14_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'he );
assign fdbs0_fdb0_bell15_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'hf );
assign fdbs0_fdb1_bell0_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h80);
assign fdbs0_fdb1_bell1_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h81);
assign fdbs0_fdb1_bell2_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h82);
assign fdbs0_fdb1_bell3_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h83);
assign fdbs0_fdb1_bell4_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h84);
assign fdbs0_fdb1_bell5_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h85);
assign fdbs0_fdb1_bell6_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h86);
assign fdbs0_fdb1_bell7_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h87);
assign fdbs0_fdb1_bell8_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h88);
assign fdbs0_fdb1_bell9_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h89);
assign fdbs0_fdb1_bell10_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h8a);
assign fdbs0_fdb1_bell11_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h8b);
assign fdbs0_fdb1_bell12_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h8c);
assign fdbs0_fdb1_bell13_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h8d);
assign fdbs0_fdb1_bell14_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h8e);
assign fdbs0_fdb1_bell15_cnt_r = read_valid_i && (read_addr_i[9:2] == 8'h8f);

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
    casez (write_addr_i[9:2])
       8'h0 , 8'h1 , 8'h2 , 8'h3 , 8'h4 , 8'h5 , 8'h6 , 8'h7 , 
       8'h8 , 8'h9 , 8'ha , 8'hb , 8'hc , 8'hd , 8'he , 8'hf , 
       8'h1d, 8'h1e, 8'h80, 8'h81, 8'h82, 8'h83, 8'h84, 8'h85, 
       8'h86, 8'h87, 8'h88, 8'h89, 8'h8a, 8'h8b, 8'h8c, 8'h8d, 
       8'h8e, 8'h8f, 8'h9d, 8'h9e:
          reg_write_hole = 1'b0;
       default: reg_write_hole = 1'b1;
    endcase
end
assign write_err_o = reg_write_hole && ram_miss;

assign fdbs0_reqinfo = (write_valid_i) ? write_info_i : read_info_i;

endmodule // regmodel0_regmodel_core_fdbs0_csr

////////////////////////////////////////////////////////////////////////
