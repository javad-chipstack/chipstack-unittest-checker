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
// soccomp Version 10.3.0 (2ed27f84a)
// (c) Meta Platforms, Inc. and affiliates. Confidential and proprietary.
// Started soccomp on: Tue Dec 13 16:10:20 2022
// SONICS_PATH = :/nfs/project/ipgen/src/valerioc/fbrepo/common/build_root/install/studio/../extensions/include
// PYTHONPATH = PythonPathUnset
// /nfs/regress_03_ash/sonics/nightly/sonics-no-sysc-py3-daily-20221213_140241/install/studio-10.3/sonics_code/soccomp.py --relative --uvm_test --designdir ./smp --instance xrbase --post_process /nfs/project/ipgen/src/valerioc/fbrepo/common/src/neev/ipBuilder/neev/ipBuilder/GenerateIPDefs.py{"levels":"1|tile"} xrbase_alfred_smp.conf
// @generated

////////////////////////////////////////////////////////////////////////
// Register Core SV Interface Module

module regmodel0_regmodel(clk_i, sys_reset_ni, sys_test_mode_cgm_i, sys_test_mode_async_i,
                regmodel0_regmodel_ocp2_if,
                regmodel0_regmodel_sfdbs0_sfdb0_src0_if,
                regmodel0_regmodel_sfdbs0_sfdb0_src1_if,
                regmodel0_regmodel_sfdbs0_sfdb0_src2_if,
                regmodel0_regmodel_sfdbs0_sfdb0_src3_if,
                regmodel0_regmodel_sfdbs0_sfdb0_src4_if,
                regmodel0_regmodel_sfdbs0_sfdb0_src5_if,
                regmodel0_regmodel_sfdbs0_sfdb0_src6_if,
                regmodel0_regmodel_sfdbs0_sfdb0_src7_if,
                regmodel0_regmodel_sfdbs0_sfdb0_src8_if,
                regmodel0_regmodel_sfdbs0_sfdb0_src9_if,
                regmodel0_regmodel_sfdbs0_sfdb0_src10_if,
                regmodel0_regmodel_sfdbs0_sfdb0_src11_if,
                regmodel0_regmodel_sfdbs0_sfdb0_src12_if,
                regmodel0_regmodel_sfdbs0_sfdb0_src13_if,
                regmodel0_regmodel_sfdbs0_sfdb0_src14_if,
                regmodel0_regmodel_sfdbs0_sfdb0_src15_if,
                regmodel0_regmodel_sfdbs0_sfdb0_tgt_if,
                regmodel0_regmodel_sfdbs0_ipc_sc_if,
                regmodel0_regmodel_sfdbs0_error_err_log_if,
                regmodel0_regmodel_sfdbs0_error_err_data_if,
                regmodel0_regmodel_sfdbs0_error_err_idx_if,
                regmodel0_regmodel_sfdbs0_sfdb1_src0_if,
                regmodel0_regmodel_sfdbs0_sfdb1_src1_if,
                regmodel0_regmodel_sfdbs0_sfdb1_src2_if,
                regmodel0_regmodel_sfdbs0_sfdb1_src3_if,
                regmodel0_regmodel_sfdbs0_sfdb1_src4_if,
                regmodel0_regmodel_sfdbs0_sfdb1_src5_if,
                regmodel0_regmodel_sfdbs0_sfdb1_src6_if,
                regmodel0_regmodel_sfdbs0_sfdb1_src7_if,
                regmodel0_regmodel_sfdbs0_sfdb1_src8_if,
                regmodel0_regmodel_sfdbs0_sfdb1_src9_if,
                regmodel0_regmodel_sfdbs0_sfdb1_src10_if,
                regmodel0_regmodel_sfdbs0_sfdb1_src11_if,
                regmodel0_regmodel_sfdbs0_sfdb1_src12_if,
                regmodel0_regmodel_sfdbs0_sfdb1_src13_if,
                regmodel0_regmodel_sfdbs0_sfdb1_src14_if,
                regmodel0_regmodel_sfdbs0_sfdb1_src15_if,
                regmodel0_regmodel_sfdbs0_sfdb1_tgt_if,
                regmodel0_regmodel_fdbs0_fdb0_bell0_if,
                regmodel0_regmodel_fdbs0_fdb0_bell1_if,
                regmodel0_regmodel_fdbs0_fdb0_bell2_if,
                regmodel0_regmodel_fdbs0_fdb0_bell3_if,
                regmodel0_regmodel_fdbs0_fdb0_bell4_if,
                regmodel0_regmodel_fdbs0_fdb0_bell5_if,
                regmodel0_regmodel_fdbs0_fdb0_bell6_if,
                regmodel0_regmodel_fdbs0_fdb0_bell7_if,
                regmodel0_regmodel_fdbs0_fdb0_bell8_if,
                regmodel0_regmodel_fdbs0_fdb0_bell9_if,
                regmodel0_regmodel_fdbs0_fdb0_bell10_if,
                regmodel0_regmodel_fdbs0_fdb0_bell11_if,
                regmodel0_regmodel_fdbs0_fdb0_bell12_if,
                regmodel0_regmodel_fdbs0_fdb0_bell13_if,
                regmodel0_regmodel_fdbs0_fdb0_bell14_if,
                regmodel0_regmodel_fdbs0_fdb0_bell15_if,
                regmodel0_regmodel_fdbs0_fdb0_control_if,
                regmodel0_regmodel_fdbs0_fdb0_enable_if,
                regmodel0_regmodel_fdbs0_fdb0_status_if,
                regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if,
                regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if,
                regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if,
                regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if,
                regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if,
                regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if,
                regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if,
                regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if,
                regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if,
                regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if,
                regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if,
                regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if,
                regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if,
                regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if,
                regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if,
                regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if,
                regmodel0_regmodel_fdbs0_fdb1_bell0_if,
                regmodel0_regmodel_fdbs0_fdb1_bell1_if,
                regmodel0_regmodel_fdbs0_fdb1_bell2_if,
                regmodel0_regmodel_fdbs0_fdb1_bell3_if,
                regmodel0_regmodel_fdbs0_fdb1_bell4_if,
                regmodel0_regmodel_fdbs0_fdb1_bell5_if,
                regmodel0_regmodel_fdbs0_fdb1_bell6_if,
                regmodel0_regmodel_fdbs0_fdb1_bell7_if,
                regmodel0_regmodel_fdbs0_fdb1_bell8_if,
                regmodel0_regmodel_fdbs0_fdb1_bell9_if,
                regmodel0_regmodel_fdbs0_fdb1_bell10_if,
                regmodel0_regmodel_fdbs0_fdb1_bell11_if,
                regmodel0_regmodel_fdbs0_fdb1_bell12_if,
                regmodel0_regmodel_fdbs0_fdb1_bell13_if,
                regmodel0_regmodel_fdbs0_fdb1_bell14_if,
                regmodel0_regmodel_fdbs0_fdb1_bell15_if,
                regmodel0_regmodel_fdbs0_fdb1_control_if,
                regmodel0_regmodel_fdbs0_fdb1_enable_if,
                regmodel0_regmodel_fdbs0_fdb1_status_if,
                regmodel0_regmodel_fdbs0_fdb1_data0_fifo_if,
                regmodel0_regmodel_fdbs0_fdb1_data1_fifo_if,
                regmodel0_regmodel_fdbs0_fdb1_data2_fifo_if,
                regmodel0_regmodel_fdbs0_fdb1_data3_fifo_if,
                regmodel0_regmodel_fdbs0_fdb1_data4_fifo_if,
                regmodel0_regmodel_fdbs0_fdb1_data5_fifo_if,
                regmodel0_regmodel_fdbs0_fdb1_data6_fifo_if,
                regmodel0_regmodel_fdbs0_fdb1_data7_fifo_if,
                regmodel0_regmodel_fdbs0_fdb1_data8_fifo_if,
                regmodel0_regmodel_fdbs0_fdb1_data9_fifo_if,
                regmodel0_regmodel_fdbs0_fdb1_data10_fifo_if,
                regmodel0_regmodel_fdbs0_fdb1_data11_fifo_if,
                regmodel0_regmodel_fdbs0_fdb1_data12_fifo_if,
                regmodel0_regmodel_fdbs0_fdb1_data13_fifo_if,
                regmodel0_regmodel_fdbs0_fdb1_data14_fifo_if,
                regmodel0_regmodel_fdbs0_fdb1_data15_fifo_if,
                regmodel0_regmodel_smutex0_owner0_if,
                regmodel0_regmodel_smutex0_owner1_if,
                regmodel0_regmodel_smutex0_owner2_if,
                regmodel0_regmodel_smutex0_owner3_if,
                regmodel0_regmodel_smutex0_owner4_if,
                regmodel0_regmodel_smutex0_owner5_if,
                regmodel0_regmodel_smutex0_owner6_if,
                regmodel0_regmodel_smutex0_owner7_if,
                regmodel0_regmodel_smutex0_ipc_sc_if,
                regmodel0_regmodel_smutex0_timeout_if,
                regmodel0_regmodel_smutex0_error_err_log_if,
                regmodel0_regmodel_smutex0_error_err_data_if,
                regmodel0_regmodel_smutex0_error_err_idx_if,
                regmodel0_regmodel_mutex0_mutex0_if,
                regmodel0_regmodel_mutex0_mutex1_if,
                regmodel0_regmodel_mutex0_mutex2_if,
                regmodel0_regmodel_mutex0_mutex3_if,
                regmodel0_regmodel_mutex0_mutex4_if,
                regmodel0_regmodel_mutex0_mutex5_if,
                regmodel0_regmodel_mutex0_mutex6_if,
                regmodel0_regmodel_mutex0_mutex7_if,
                regmodel0_regmodel_web0_control_if,
                regmodel0_regmodel_web0_event_if,
                regmodel0_regmodel_web0_wake_enable0_if,
                regmodel0_regmodel_web0_wake_enable1_if,
                regmodel0_regmodel_web0_input_invert0_if,
                regmodel0_regmodel_web0_input_invert1_if,
                regmodel0_regmodel_web1_control_if,
                regmodel0_regmodel_web1_event_if,
                regmodel0_regmodel_web1_wake_enable0_if,
                regmodel0_regmodel_web1_wake_enable1_if,
                regmodel0_regmodel_web1_input_invert0_if,
                regmodel0_regmodel_web1_input_invert1_if);

    // Interface clk type clock of regmodel0_regmodel
    input             clk_i;

    // Interface sys type system of regmodel0_regmodel
    input             sys_reset_ni;
    input             sys_test_mode_cgm_i;
    input             sys_test_mode_async_i;

    // Interface ocp2 type ocp2 of regmodel0_regmodel
    regmodel0_regmodel_ocp2_interface.slave            regmodel0_regmodel_ocp2_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src0 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb0_src0_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src1 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb0_src1_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src2 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb0_src2_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src3 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb0_src3_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src4 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb0_src4_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src5 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb0_src5_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src6 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb0_src6_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src7 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb0_src7_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src8 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb0_src8_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src9 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb0_src9_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src10 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb0_src10_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src11 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb0_src11_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src12 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb0_src12_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src13 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb0_src13_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src14 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb0_src14_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_src15 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb0_src15_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb0_tgt type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb0_tgt_interface.mp            regmodel0_regmodel_sfdbs0_sfdb0_tgt_if;

    // Interface regmodel0_regmodel_sfdbs0_ipc_sc type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_ipc_sc_interface.mp            regmodel0_regmodel_sfdbs0_ipc_sc_if;

    // Interface regmodel0_regmodel_sfdbs0_error_err_log type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_error_err_log_interface.mp            regmodel0_regmodel_sfdbs0_error_err_log_if;

    // Interface regmodel0_regmodel_sfdbs0_error_err_data type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_error_err_data_interface.mp            regmodel0_regmodel_sfdbs0_error_err_data_if;

    // Interface regmodel0_regmodel_sfdbs0_error_err_idx type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_error_err_idx_interface.mp            regmodel0_regmodel_sfdbs0_error_err_idx_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src0 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb1_src0_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src1 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb1_src1_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src2 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb1_src2_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src3 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb1_src3_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src4 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb1_src4_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src5 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb1_src5_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src6 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb1_src6_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src7 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb1_src7_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src8 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb1_src8_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src9 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb1_src9_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src10 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb1_src10_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src11 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb1_src11_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src12 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb1_src12_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src13 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb1_src13_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src14 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb1_src14_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_src15 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface.mp            regmodel0_regmodel_sfdbs0_sfdb1_src15_if;

    // Interface regmodel0_regmodel_sfdbs0_sfdb1_tgt type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_sfdbs0_sfdb1_tgt_interface.mp            regmodel0_regmodel_sfdbs0_sfdb1_tgt_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell0 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb0_bell0_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell1 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb0_bell1_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell2 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb0_bell2_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell3 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb0_bell3_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell4 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb0_bell4_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell5 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb0_bell5_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell6 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb0_bell6_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell7 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb0_bell7_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell8 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb0_bell8_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell9 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb0_bell9_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell10 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb0_bell10_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell11 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb0_bell11_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell12 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb0_bell12_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell13 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb0_bell13_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell14 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb0_bell14_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_bell15 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb0_bell15_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_control type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_control_interface.mp            regmodel0_regmodel_fdbs0_fdb0_control_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_enable type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_enable_interface.mp            regmodel0_regmodel_fdbs0_fdb0_enable_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_status type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_status_interface.mp            regmodel0_regmodel_fdbs0_fdb0_status_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_data0_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_data1_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_data2_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_data3_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_data4_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_data5_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_data6_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_data7_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_data8_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_data9_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_data10_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_data11_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_data12_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_data13_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_data14_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb0_data15_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell0 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb1_bell0_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell1 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb1_bell1_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell2 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb1_bell2_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell3 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb1_bell3_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell4 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb1_bell4_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell5 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb1_bell5_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell6 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb1_bell6_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell7 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb1_bell7_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell8 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb1_bell8_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell9 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb1_bell9_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell10 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb1_bell10_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell11 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb1_bell11_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell12 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb1_bell12_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell13 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb1_bell13_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell14 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb1_bell14_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_bell15 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_bell_interface.mp            regmodel0_regmodel_fdbs0_fdb1_bell15_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_control type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_control_interface.mp            regmodel0_regmodel_fdbs0_fdb1_control_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_enable type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_enable_interface.mp            regmodel0_regmodel_fdbs0_fdb1_enable_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_status type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_status_interface.mp            regmodel0_regmodel_fdbs0_fdb1_status_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_data0_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb1_data0_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_data1_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb1_data1_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_data2_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb1_data2_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_data3_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb1_data3_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_data4_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb1_data4_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_data5_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb1_data5_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_data6_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb1_data6_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_data7_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb1_data7_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_data8_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb1_data8_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_data9_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb1_data9_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_data10_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb1_data10_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_data11_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb1_data11_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_data12_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb1_data12_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_data13_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb1_data13_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_data14_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb1_data14_fifo_if;

    // Interface regmodel0_regmodel_fdbs0_fdb1_data15_fifo type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface.mp            regmodel0_regmodel_fdbs0_fdb1_data15_fifo_if;

    // Interface regmodel0_regmodel_smutex0_owner0 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_smutex0_owner_interface.mp            regmodel0_regmodel_smutex0_owner0_if;

    // Interface regmodel0_regmodel_smutex0_owner1 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_smutex0_owner_interface.mp            regmodel0_regmodel_smutex0_owner1_if;

    // Interface regmodel0_regmodel_smutex0_owner2 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_smutex0_owner_interface.mp            regmodel0_regmodel_smutex0_owner2_if;

    // Interface regmodel0_regmodel_smutex0_owner3 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_smutex0_owner_interface.mp            regmodel0_regmodel_smutex0_owner3_if;

    // Interface regmodel0_regmodel_smutex0_owner4 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_smutex0_owner_interface.mp            regmodel0_regmodel_smutex0_owner4_if;

    // Interface regmodel0_regmodel_smutex0_owner5 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_smutex0_owner_interface.mp            regmodel0_regmodel_smutex0_owner5_if;

    // Interface regmodel0_regmodel_smutex0_owner6 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_smutex0_owner_interface.mp            regmodel0_regmodel_smutex0_owner6_if;

    // Interface regmodel0_regmodel_smutex0_owner7 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_smutex0_owner_interface.mp            regmodel0_regmodel_smutex0_owner7_if;

    // Interface regmodel0_regmodel_smutex0_ipc_sc type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_smutex0_ipc_sc_interface.mp            regmodel0_regmodel_smutex0_ipc_sc_if;

    // Interface regmodel0_regmodel_smutex0_timeout type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_smutex0_timeout_interface.mp            regmodel0_regmodel_smutex0_timeout_if;

    // Interface regmodel0_regmodel_smutex0_error_err_log type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_smutex0_error_err_log_interface.mp            regmodel0_regmodel_smutex0_error_err_log_if;

    // Interface regmodel0_regmodel_smutex0_error_err_data type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_smutex0_error_err_data_interface.mp            regmodel0_regmodel_smutex0_error_err_data_if;

    // Interface regmodel0_regmodel_smutex0_error_err_idx type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_smutex0_error_err_idx_interface.mp            regmodel0_regmodel_smutex0_error_err_idx_if;

    // Interface regmodel0_regmodel_mutex0_mutex0 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_mutex0_mutex_interface.mp            regmodel0_regmodel_mutex0_mutex0_if;

    // Interface regmodel0_regmodel_mutex0_mutex1 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_mutex0_mutex_interface.mp            regmodel0_regmodel_mutex0_mutex1_if;

    // Interface regmodel0_regmodel_mutex0_mutex2 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_mutex0_mutex_interface.mp            regmodel0_regmodel_mutex0_mutex2_if;

    // Interface regmodel0_regmodel_mutex0_mutex3 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_mutex0_mutex_interface.mp            regmodel0_regmodel_mutex0_mutex3_if;

    // Interface regmodel0_regmodel_mutex0_mutex4 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_mutex0_mutex_interface.mp            regmodel0_regmodel_mutex0_mutex4_if;

    // Interface regmodel0_regmodel_mutex0_mutex5 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_mutex0_mutex_interface.mp            regmodel0_regmodel_mutex0_mutex5_if;

    // Interface regmodel0_regmodel_mutex0_mutex6 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_mutex0_mutex_interface.mp            regmodel0_regmodel_mutex0_mutex6_if;

    // Interface regmodel0_regmodel_mutex0_mutex7 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_mutex0_mutex_interface.mp            regmodel0_regmodel_mutex0_mutex7_if;

    // Interface regmodel0_regmodel_web0_control type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_web0_control_interface.mp            regmodel0_regmodel_web0_control_if;

    // Interface regmodel0_regmodel_web0_event type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_web0_event_interface.mp            regmodel0_regmodel_web0_event_if;

    // Interface regmodel0_regmodel_web0_wake_enable0 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_web0_wake_enable0_interface.mp            regmodel0_regmodel_web0_wake_enable0_if;

    // Interface regmodel0_regmodel_web0_wake_enable1 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_web0_wake_enable1_interface.mp            regmodel0_regmodel_web0_wake_enable1_if;

    // Interface regmodel0_regmodel_web0_input_invert0 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_web0_input_invert0_interface.mp            regmodel0_regmodel_web0_input_invert0_if;

    // Interface regmodel0_regmodel_web0_input_invert1 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_web0_input_invert1_interface.mp            regmodel0_regmodel_web0_input_invert1_if;

    // Interface regmodel0_regmodel_web1_control type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_web1_control_interface.mp            regmodel0_regmodel_web1_control_if;

    // Interface regmodel0_regmodel_web1_event type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_web1_event_interface.mp            regmodel0_regmodel_web1_event_if;

    // Interface regmodel0_regmodel_web1_wake_enable0 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_web1_wake_enable0_interface.mp            regmodel0_regmodel_web1_wake_enable0_if;

    // Interface regmodel0_regmodel_web1_wake_enable1 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_web1_wake_enable1_interface.mp            regmodel0_regmodel_web1_wake_enable1_if;

    // Interface regmodel0_regmodel_web1_input_invert0 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_web1_input_invert0_interface.mp            regmodel0_regmodel_web1_input_invert0_if;

    // Interface regmodel0_regmodel_web1_input_invert1 type sv_interface of regmodel0_regmodel
    regmodel0_regmodel_web1_input_invert1_interface.mp            regmodel0_regmodel_web1_input_invert1_if;

////////////////////////////////////////
// ocp2 - SW access interface to port mapping
wire          ocp_mreset_n; 
assign ocp_mreset_n = regmodel0_regmodel_ocp2_if.mreset_n;
wire    [2:0] ocp_mcmd; 
assign ocp_mcmd = regmodel0_regmodel_ocp2_if.mcmd;
wire   [14:0] ocp_maddr; 
assign ocp_maddr = regmodel0_regmodel_ocp2_if.maddr;
wire    [3:0] ocp_mbyteen; 
assign ocp_mbyteen = regmodel0_regmodel_ocp2_if.mbyteen;
wire    [5:0] ocp_mreqinfo; 
assign ocp_mreqinfo = regmodel0_regmodel_ocp2_if.mreqinfo;
wire          ocp_scmdaccept; 
assign regmodel0_regmodel_ocp2_if.scmdaccept = ocp_scmdaccept;
wire   [31:0] ocp_mdata; 
assign ocp_mdata = regmodel0_regmodel_ocp2_if.mdata;
wire    [1:0] ocp_sresp; 
assign regmodel0_regmodel_ocp2_if.sresp = ocp_sresp;
wire   [31:0] ocp_sdata; 
assign regmodel0_regmodel_ocp2_if.sdata = ocp_sdata;
wire          ocp_mrespaccept; 
assign ocp_mrespaccept = regmodel0_regmodel_ocp2_if.mrespaccept;

////////////////////////////////////////
// sfdbs0 - Interface to configregs port mapping
wire    [5:0] sfdbs0_sfdb0_src0_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src0_if.id_q = sfdbs0_sfdb0_src0_id_q;
wire    [2:0] sfdbs0_sfdb0_src0_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src0_if.size_q = sfdbs0_sfdb0_src0_size_q;
wire    [5:0] sfdbs0_sfdb0_src1_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src1_if.id_q = sfdbs0_sfdb0_src1_id_q;
wire    [2:0] sfdbs0_sfdb0_src1_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src1_if.size_q = sfdbs0_sfdb0_src1_size_q;
wire    [5:0] sfdbs0_sfdb0_src2_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src2_if.id_q = sfdbs0_sfdb0_src2_id_q;
wire    [2:0] sfdbs0_sfdb0_src2_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src2_if.size_q = sfdbs0_sfdb0_src2_size_q;
wire    [5:0] sfdbs0_sfdb0_src3_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src3_if.id_q = sfdbs0_sfdb0_src3_id_q;
wire    [2:0] sfdbs0_sfdb0_src3_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src3_if.size_q = sfdbs0_sfdb0_src3_size_q;
wire    [5:0] sfdbs0_sfdb0_src4_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src4_if.id_q = sfdbs0_sfdb0_src4_id_q;
wire    [2:0] sfdbs0_sfdb0_src4_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src4_if.size_q = sfdbs0_sfdb0_src4_size_q;
wire    [5:0] sfdbs0_sfdb0_src5_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src5_if.id_q = sfdbs0_sfdb0_src5_id_q;
wire    [2:0] sfdbs0_sfdb0_src5_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src5_if.size_q = sfdbs0_sfdb0_src5_size_q;
wire    [5:0] sfdbs0_sfdb0_src6_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src6_if.id_q = sfdbs0_sfdb0_src6_id_q;
wire    [2:0] sfdbs0_sfdb0_src6_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src6_if.size_q = sfdbs0_sfdb0_src6_size_q;
wire    [5:0] sfdbs0_sfdb0_src7_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src7_if.id_q = sfdbs0_sfdb0_src7_id_q;
wire    [2:0] sfdbs0_sfdb0_src7_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src7_if.size_q = sfdbs0_sfdb0_src7_size_q;
wire    [5:0] sfdbs0_sfdb0_src8_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src8_if.id_q = sfdbs0_sfdb0_src8_id_q;
wire    [2:0] sfdbs0_sfdb0_src8_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src8_if.size_q = sfdbs0_sfdb0_src8_size_q;
wire    [5:0] sfdbs0_sfdb0_src9_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src9_if.id_q = sfdbs0_sfdb0_src9_id_q;
wire    [2:0] sfdbs0_sfdb0_src9_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src9_if.size_q = sfdbs0_sfdb0_src9_size_q;
wire    [5:0] sfdbs0_sfdb0_src10_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src10_if.id_q = sfdbs0_sfdb0_src10_id_q;
wire    [2:0] sfdbs0_sfdb0_src10_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src10_if.size_q = sfdbs0_sfdb0_src10_size_q;
wire    [5:0] sfdbs0_sfdb0_src11_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src11_if.id_q = sfdbs0_sfdb0_src11_id_q;
wire    [2:0] sfdbs0_sfdb0_src11_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src11_if.size_q = sfdbs0_sfdb0_src11_size_q;
wire    [5:0] sfdbs0_sfdb0_src12_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src12_if.id_q = sfdbs0_sfdb0_src12_id_q;
wire    [2:0] sfdbs0_sfdb0_src12_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src12_if.size_q = sfdbs0_sfdb0_src12_size_q;
wire    [5:0] sfdbs0_sfdb0_src13_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src13_if.id_q = sfdbs0_sfdb0_src13_id_q;
wire    [2:0] sfdbs0_sfdb0_src13_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src13_if.size_q = sfdbs0_sfdb0_src13_size_q;
wire    [5:0] sfdbs0_sfdb0_src14_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src14_if.id_q = sfdbs0_sfdb0_src14_id_q;
wire    [2:0] sfdbs0_sfdb0_src14_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src14_if.size_q = sfdbs0_sfdb0_src14_size_q;
wire    [5:0] sfdbs0_sfdb0_src15_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src15_if.id_q = sfdbs0_sfdb0_src15_id_q;
wire    [2:0] sfdbs0_sfdb0_src15_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_src15_if.size_q = sfdbs0_sfdb0_src15_size_q;
wire    [5:0] sfdbs0_sfdb0_tgt_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb0_tgt_if.id_q = sfdbs0_sfdb0_tgt_id_q;
wire    [5:0] sfdbs0_ipc_sc_id_q; 
assign regmodel0_regmodel_sfdbs0_ipc_sc_if.id_q = sfdbs0_ipc_sc_id_q;
wire    [2:0] sfdbs0_error_err_log_code_q; 
assign regmodel0_regmodel_sfdbs0_error_err_log_if.code_q = sfdbs0_error_err_log_code_q;
wire    [2:0] sfdbs0_error_err_log_code_d; 
assign sfdbs0_error_err_log_code_d = regmodel0_regmodel_sfdbs0_error_err_log_if.code_d;
wire          sfdbs0_error_err_log_code_enb; 
assign sfdbs0_error_err_log_code_enb = regmodel0_regmodel_sfdbs0_error_err_log_if.code_enb;
wire          sfdbs0_error_err_log_access_q; 
assign regmodel0_regmodel_sfdbs0_error_err_log_if.access_q = sfdbs0_error_err_log_access_q;
wire          sfdbs0_error_err_log_access_d; 
assign sfdbs0_error_err_log_access_d = regmodel0_regmodel_sfdbs0_error_err_log_if.access_d;
wire          sfdbs0_error_err_log_access_enb; 
assign sfdbs0_error_err_log_access_enb = regmodel0_regmodel_sfdbs0_error_err_log_if.access_enb;
wire    [5:0] sfdbs0_error_err_log_id_q; 
assign regmodel0_regmodel_sfdbs0_error_err_log_if.id_q = sfdbs0_error_err_log_id_q;
wire    [5:0] sfdbs0_error_err_log_id_d; 
assign sfdbs0_error_err_log_id_d = regmodel0_regmodel_sfdbs0_error_err_log_if.id_d;
wire          sfdbs0_error_err_log_id_enb; 
assign sfdbs0_error_err_log_id_enb = regmodel0_regmodel_sfdbs0_error_err_log_if.id_enb;
wire          sfdbs0_error_err_log_multi_q; 
assign regmodel0_regmodel_sfdbs0_error_err_log_if.multi_q = sfdbs0_error_err_log_multi_q;
wire          sfdbs0_error_err_log_multi_d; 
assign sfdbs0_error_err_log_multi_d = regmodel0_regmodel_sfdbs0_error_err_log_if.multi_d;
wire          sfdbs0_error_err_log_multi_enb; 
assign sfdbs0_error_err_log_multi_enb = regmodel0_regmodel_sfdbs0_error_err_log_if.multi_enb;
wire   [31:0] sfdbs0_error_err_data_data_q; 
assign regmodel0_regmodel_sfdbs0_error_err_data_if.data_q = sfdbs0_error_err_data_data_q;
wire   [31:0] sfdbs0_error_err_data_data_d; 
assign sfdbs0_error_err_data_data_d = regmodel0_regmodel_sfdbs0_error_err_data_if.data_d;
wire          sfdbs0_error_err_data_data_enb; 
assign sfdbs0_error_err_data_data_enb = regmodel0_regmodel_sfdbs0_error_err_data_if.data_enb;
wire    [4:0] sfdbs0_error_err_idx_slice_idx_q; 
assign regmodel0_regmodel_sfdbs0_error_err_idx_if.slice_idx_q = sfdbs0_error_err_idx_slice_idx_q;
wire    [4:0] sfdbs0_error_err_idx_slice_idx_d; 
assign sfdbs0_error_err_idx_slice_idx_d = regmodel0_regmodel_sfdbs0_error_err_idx_if.slice_idx_d;
wire          sfdbs0_error_err_idx_slice_idx_enb; 
assign sfdbs0_error_err_idx_slice_idx_enb = regmodel0_regmodel_sfdbs0_error_err_idx_if.slice_idx_enb;
wire    [3:0] sfdbs0_error_err_idx_group_idx_q; 
assign regmodel0_regmodel_sfdbs0_error_err_idx_if.group_idx_q = sfdbs0_error_err_idx_group_idx_q;
wire    [3:0] sfdbs0_error_err_idx_group_idx_d; 
assign sfdbs0_error_err_idx_group_idx_d = regmodel0_regmodel_sfdbs0_error_err_idx_if.group_idx_d;
wire          sfdbs0_error_err_idx_group_idx_enb; 
assign sfdbs0_error_err_idx_group_idx_enb = regmodel0_regmodel_sfdbs0_error_err_idx_if.group_idx_enb;
wire    [5:0] sfdbs0_sfdb1_src0_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src0_if.id_q = sfdbs0_sfdb1_src0_id_q;
wire    [2:0] sfdbs0_sfdb1_src0_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src0_if.size_q = sfdbs0_sfdb1_src0_size_q;
wire    [5:0] sfdbs0_sfdb1_src1_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src1_if.id_q = sfdbs0_sfdb1_src1_id_q;
wire    [2:0] sfdbs0_sfdb1_src1_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src1_if.size_q = sfdbs0_sfdb1_src1_size_q;
wire    [5:0] sfdbs0_sfdb1_src2_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src2_if.id_q = sfdbs0_sfdb1_src2_id_q;
wire    [2:0] sfdbs0_sfdb1_src2_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src2_if.size_q = sfdbs0_sfdb1_src2_size_q;
wire    [5:0] sfdbs0_sfdb1_src3_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src3_if.id_q = sfdbs0_sfdb1_src3_id_q;
wire    [2:0] sfdbs0_sfdb1_src3_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src3_if.size_q = sfdbs0_sfdb1_src3_size_q;
wire    [5:0] sfdbs0_sfdb1_src4_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src4_if.id_q = sfdbs0_sfdb1_src4_id_q;
wire    [2:0] sfdbs0_sfdb1_src4_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src4_if.size_q = sfdbs0_sfdb1_src4_size_q;
wire    [5:0] sfdbs0_sfdb1_src5_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src5_if.id_q = sfdbs0_sfdb1_src5_id_q;
wire    [2:0] sfdbs0_sfdb1_src5_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src5_if.size_q = sfdbs0_sfdb1_src5_size_q;
wire    [5:0] sfdbs0_sfdb1_src6_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src6_if.id_q = sfdbs0_sfdb1_src6_id_q;
wire    [2:0] sfdbs0_sfdb1_src6_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src6_if.size_q = sfdbs0_sfdb1_src6_size_q;
wire    [5:0] sfdbs0_sfdb1_src7_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src7_if.id_q = sfdbs0_sfdb1_src7_id_q;
wire    [2:0] sfdbs0_sfdb1_src7_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src7_if.size_q = sfdbs0_sfdb1_src7_size_q;
wire    [5:0] sfdbs0_sfdb1_src8_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src8_if.id_q = sfdbs0_sfdb1_src8_id_q;
wire    [2:0] sfdbs0_sfdb1_src8_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src8_if.size_q = sfdbs0_sfdb1_src8_size_q;
wire    [5:0] sfdbs0_sfdb1_src9_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src9_if.id_q = sfdbs0_sfdb1_src9_id_q;
wire    [2:0] sfdbs0_sfdb1_src9_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src9_if.size_q = sfdbs0_sfdb1_src9_size_q;
wire    [5:0] sfdbs0_sfdb1_src10_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src10_if.id_q = sfdbs0_sfdb1_src10_id_q;
wire    [2:0] sfdbs0_sfdb1_src10_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src10_if.size_q = sfdbs0_sfdb1_src10_size_q;
wire    [5:0] sfdbs0_sfdb1_src11_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src11_if.id_q = sfdbs0_sfdb1_src11_id_q;
wire    [2:0] sfdbs0_sfdb1_src11_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src11_if.size_q = sfdbs0_sfdb1_src11_size_q;
wire    [5:0] sfdbs0_sfdb1_src12_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src12_if.id_q = sfdbs0_sfdb1_src12_id_q;
wire    [2:0] sfdbs0_sfdb1_src12_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src12_if.size_q = sfdbs0_sfdb1_src12_size_q;
wire    [5:0] sfdbs0_sfdb1_src13_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src13_if.id_q = sfdbs0_sfdb1_src13_id_q;
wire    [2:0] sfdbs0_sfdb1_src13_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src13_if.size_q = sfdbs0_sfdb1_src13_size_q;
wire    [5:0] sfdbs0_sfdb1_src14_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src14_if.id_q = sfdbs0_sfdb1_src14_id_q;
wire    [2:0] sfdbs0_sfdb1_src14_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src14_if.size_q = sfdbs0_sfdb1_src14_size_q;
wire    [5:0] sfdbs0_sfdb1_src15_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src15_if.id_q = sfdbs0_sfdb1_src15_id_q;
wire    [2:0] sfdbs0_sfdb1_src15_size_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_src15_if.size_q = sfdbs0_sfdb1_src15_size_q;
wire    [5:0] sfdbs0_sfdb1_tgt_id_q; 
assign regmodel0_regmodel_sfdbs0_sfdb1_tgt_if.id_q = sfdbs0_sfdb1_tgt_id_q;

////////////////////////////////////////
// fdbs0 - Interface to configregs port mapping
wire    [5:0] fdbs0_reqinfo; 
assign regmodel0_regmodel_fdbs0_fdb0_bell0_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb0_bell0_cnt_qout; 
assign fdbs0_fdb0_bell0_cnt_qout = regmodel0_regmodel_fdbs0_fdb0_bell0_if.cnt_qout;
wire    [1:0] fdbs0_fdb0_bell0_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb0_bell0_if.cnt_din = fdbs0_fdb0_bell0_cnt_din;
wire          fdbs0_fdb0_bell0_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb0_bell0_if.cnt_w = fdbs0_fdb0_bell0_cnt_w;
wire          fdbs0_fdb0_bell0_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb0_bell0_if.cnt_r = fdbs0_fdb0_bell0_cnt_r;
wire          fdbs0_fdb0_bell0_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell0_if.failed_ring_q = fdbs0_fdb0_bell0_failed_ring_q;
wire          fdbs0_fdb0_bell0_failed_ring_d; 
assign fdbs0_fdb0_bell0_failed_ring_d = regmodel0_regmodel_fdbs0_fdb0_bell0_if.failed_ring_d;
wire          fdbs0_fdb0_bell0_failed_ring_enb; 
assign fdbs0_fdb0_bell0_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb0_bell0_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb0_bell0_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell0_if.max_priority_q = fdbs0_fdb0_bell0_max_priority_q;
wire    [1:0] fdbs0_fdb0_bell0_max_priority_d; 
assign fdbs0_fdb0_bell0_max_priority_d = regmodel0_regmodel_fdbs0_fdb0_bell0_if.max_priority_d;
wire          fdbs0_fdb0_bell0_max_priority_enb; 
assign fdbs0_fdb0_bell0_max_priority_enb = regmodel0_regmodel_fdbs0_fdb0_bell0_if.max_priority_enb;
wire    [4:0] fdbs0_fdb0_bell0_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell0_if.valid_fcnt_q = fdbs0_fdb0_bell0_valid_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell0_valid_fcnt_d; 
assign fdbs0_fdb0_bell0_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell0_if.valid_fcnt_d;
wire          fdbs0_fdb0_bell0_valid_fcnt_enb; 
assign fdbs0_fdb0_bell0_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell0_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb0_bell0_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell0_if.fcnt_q = fdbs0_fdb0_bell0_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell0_fcnt_d; 
assign fdbs0_fdb0_bell0_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell0_if.fcnt_d;
wire          fdbs0_fdb0_bell0_fcnt_enb; 
assign fdbs0_fdb0_bell0_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell0_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb0_bell1_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb0_bell1_cnt_qout; 
assign fdbs0_fdb0_bell1_cnt_qout = regmodel0_regmodel_fdbs0_fdb0_bell1_if.cnt_qout;
wire    [1:0] fdbs0_fdb0_bell1_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb0_bell1_if.cnt_din = fdbs0_fdb0_bell1_cnt_din;
wire          fdbs0_fdb0_bell1_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb0_bell1_if.cnt_w = fdbs0_fdb0_bell1_cnt_w;
wire          fdbs0_fdb0_bell1_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb0_bell1_if.cnt_r = fdbs0_fdb0_bell1_cnt_r;
wire          fdbs0_fdb0_bell1_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell1_if.failed_ring_q = fdbs0_fdb0_bell1_failed_ring_q;
wire          fdbs0_fdb0_bell1_failed_ring_d; 
assign fdbs0_fdb0_bell1_failed_ring_d = regmodel0_regmodel_fdbs0_fdb0_bell1_if.failed_ring_d;
wire          fdbs0_fdb0_bell1_failed_ring_enb; 
assign fdbs0_fdb0_bell1_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb0_bell1_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb0_bell1_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell1_if.max_priority_q = fdbs0_fdb0_bell1_max_priority_q;
wire    [1:0] fdbs0_fdb0_bell1_max_priority_d; 
assign fdbs0_fdb0_bell1_max_priority_d = regmodel0_regmodel_fdbs0_fdb0_bell1_if.max_priority_d;
wire          fdbs0_fdb0_bell1_max_priority_enb; 
assign fdbs0_fdb0_bell1_max_priority_enb = regmodel0_regmodel_fdbs0_fdb0_bell1_if.max_priority_enb;
wire    [4:0] fdbs0_fdb0_bell1_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell1_if.valid_fcnt_q = fdbs0_fdb0_bell1_valid_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell1_valid_fcnt_d; 
assign fdbs0_fdb0_bell1_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell1_if.valid_fcnt_d;
wire          fdbs0_fdb0_bell1_valid_fcnt_enb; 
assign fdbs0_fdb0_bell1_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell1_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb0_bell1_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell1_if.fcnt_q = fdbs0_fdb0_bell1_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell1_fcnt_d; 
assign fdbs0_fdb0_bell1_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell1_if.fcnt_d;
wire          fdbs0_fdb0_bell1_fcnt_enb; 
assign fdbs0_fdb0_bell1_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell1_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb0_bell2_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb0_bell2_cnt_qout; 
assign fdbs0_fdb0_bell2_cnt_qout = regmodel0_regmodel_fdbs0_fdb0_bell2_if.cnt_qout;
wire    [1:0] fdbs0_fdb0_bell2_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb0_bell2_if.cnt_din = fdbs0_fdb0_bell2_cnt_din;
wire          fdbs0_fdb0_bell2_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb0_bell2_if.cnt_w = fdbs0_fdb0_bell2_cnt_w;
wire          fdbs0_fdb0_bell2_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb0_bell2_if.cnt_r = fdbs0_fdb0_bell2_cnt_r;
wire          fdbs0_fdb0_bell2_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell2_if.failed_ring_q = fdbs0_fdb0_bell2_failed_ring_q;
wire          fdbs0_fdb0_bell2_failed_ring_d; 
assign fdbs0_fdb0_bell2_failed_ring_d = regmodel0_regmodel_fdbs0_fdb0_bell2_if.failed_ring_d;
wire          fdbs0_fdb0_bell2_failed_ring_enb; 
assign fdbs0_fdb0_bell2_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb0_bell2_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb0_bell2_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell2_if.max_priority_q = fdbs0_fdb0_bell2_max_priority_q;
wire    [1:0] fdbs0_fdb0_bell2_max_priority_d; 
assign fdbs0_fdb0_bell2_max_priority_d = regmodel0_regmodel_fdbs0_fdb0_bell2_if.max_priority_d;
wire          fdbs0_fdb0_bell2_max_priority_enb; 
assign fdbs0_fdb0_bell2_max_priority_enb = regmodel0_regmodel_fdbs0_fdb0_bell2_if.max_priority_enb;
wire    [4:0] fdbs0_fdb0_bell2_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell2_if.valid_fcnt_q = fdbs0_fdb0_bell2_valid_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell2_valid_fcnt_d; 
assign fdbs0_fdb0_bell2_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell2_if.valid_fcnt_d;
wire          fdbs0_fdb0_bell2_valid_fcnt_enb; 
assign fdbs0_fdb0_bell2_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell2_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb0_bell2_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell2_if.fcnt_q = fdbs0_fdb0_bell2_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell2_fcnt_d; 
assign fdbs0_fdb0_bell2_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell2_if.fcnt_d;
wire          fdbs0_fdb0_bell2_fcnt_enb; 
assign fdbs0_fdb0_bell2_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell2_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb0_bell3_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb0_bell3_cnt_qout; 
assign fdbs0_fdb0_bell3_cnt_qout = regmodel0_regmodel_fdbs0_fdb0_bell3_if.cnt_qout;
wire    [1:0] fdbs0_fdb0_bell3_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb0_bell3_if.cnt_din = fdbs0_fdb0_bell3_cnt_din;
wire          fdbs0_fdb0_bell3_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb0_bell3_if.cnt_w = fdbs0_fdb0_bell3_cnt_w;
wire          fdbs0_fdb0_bell3_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb0_bell3_if.cnt_r = fdbs0_fdb0_bell3_cnt_r;
wire          fdbs0_fdb0_bell3_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell3_if.failed_ring_q = fdbs0_fdb0_bell3_failed_ring_q;
wire          fdbs0_fdb0_bell3_failed_ring_d; 
assign fdbs0_fdb0_bell3_failed_ring_d = regmodel0_regmodel_fdbs0_fdb0_bell3_if.failed_ring_d;
wire          fdbs0_fdb0_bell3_failed_ring_enb; 
assign fdbs0_fdb0_bell3_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb0_bell3_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb0_bell3_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell3_if.max_priority_q = fdbs0_fdb0_bell3_max_priority_q;
wire    [1:0] fdbs0_fdb0_bell3_max_priority_d; 
assign fdbs0_fdb0_bell3_max_priority_d = regmodel0_regmodel_fdbs0_fdb0_bell3_if.max_priority_d;
wire          fdbs0_fdb0_bell3_max_priority_enb; 
assign fdbs0_fdb0_bell3_max_priority_enb = regmodel0_regmodel_fdbs0_fdb0_bell3_if.max_priority_enb;
wire    [4:0] fdbs0_fdb0_bell3_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell3_if.valid_fcnt_q = fdbs0_fdb0_bell3_valid_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell3_valid_fcnt_d; 
assign fdbs0_fdb0_bell3_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell3_if.valid_fcnt_d;
wire          fdbs0_fdb0_bell3_valid_fcnt_enb; 
assign fdbs0_fdb0_bell3_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell3_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb0_bell3_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell3_if.fcnt_q = fdbs0_fdb0_bell3_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell3_fcnt_d; 
assign fdbs0_fdb0_bell3_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell3_if.fcnt_d;
wire          fdbs0_fdb0_bell3_fcnt_enb; 
assign fdbs0_fdb0_bell3_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell3_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb0_bell4_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb0_bell4_cnt_qout; 
assign fdbs0_fdb0_bell4_cnt_qout = regmodel0_regmodel_fdbs0_fdb0_bell4_if.cnt_qout;
wire    [1:0] fdbs0_fdb0_bell4_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb0_bell4_if.cnt_din = fdbs0_fdb0_bell4_cnt_din;
wire          fdbs0_fdb0_bell4_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb0_bell4_if.cnt_w = fdbs0_fdb0_bell4_cnt_w;
wire          fdbs0_fdb0_bell4_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb0_bell4_if.cnt_r = fdbs0_fdb0_bell4_cnt_r;
wire          fdbs0_fdb0_bell4_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell4_if.failed_ring_q = fdbs0_fdb0_bell4_failed_ring_q;
wire          fdbs0_fdb0_bell4_failed_ring_d; 
assign fdbs0_fdb0_bell4_failed_ring_d = regmodel0_regmodel_fdbs0_fdb0_bell4_if.failed_ring_d;
wire          fdbs0_fdb0_bell4_failed_ring_enb; 
assign fdbs0_fdb0_bell4_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb0_bell4_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb0_bell4_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell4_if.max_priority_q = fdbs0_fdb0_bell4_max_priority_q;
wire    [1:0] fdbs0_fdb0_bell4_max_priority_d; 
assign fdbs0_fdb0_bell4_max_priority_d = regmodel0_regmodel_fdbs0_fdb0_bell4_if.max_priority_d;
wire          fdbs0_fdb0_bell4_max_priority_enb; 
assign fdbs0_fdb0_bell4_max_priority_enb = regmodel0_regmodel_fdbs0_fdb0_bell4_if.max_priority_enb;
wire    [4:0] fdbs0_fdb0_bell4_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell4_if.valid_fcnt_q = fdbs0_fdb0_bell4_valid_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell4_valid_fcnt_d; 
assign fdbs0_fdb0_bell4_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell4_if.valid_fcnt_d;
wire          fdbs0_fdb0_bell4_valid_fcnt_enb; 
assign fdbs0_fdb0_bell4_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell4_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb0_bell4_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell4_if.fcnt_q = fdbs0_fdb0_bell4_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell4_fcnt_d; 
assign fdbs0_fdb0_bell4_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell4_if.fcnt_d;
wire          fdbs0_fdb0_bell4_fcnt_enb; 
assign fdbs0_fdb0_bell4_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell4_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb0_bell5_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb0_bell5_cnt_qout; 
assign fdbs0_fdb0_bell5_cnt_qout = regmodel0_regmodel_fdbs0_fdb0_bell5_if.cnt_qout;
wire    [1:0] fdbs0_fdb0_bell5_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb0_bell5_if.cnt_din = fdbs0_fdb0_bell5_cnt_din;
wire          fdbs0_fdb0_bell5_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb0_bell5_if.cnt_w = fdbs0_fdb0_bell5_cnt_w;
wire          fdbs0_fdb0_bell5_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb0_bell5_if.cnt_r = fdbs0_fdb0_bell5_cnt_r;
wire          fdbs0_fdb0_bell5_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell5_if.failed_ring_q = fdbs0_fdb0_bell5_failed_ring_q;
wire          fdbs0_fdb0_bell5_failed_ring_d; 
assign fdbs0_fdb0_bell5_failed_ring_d = regmodel0_regmodel_fdbs0_fdb0_bell5_if.failed_ring_d;
wire          fdbs0_fdb0_bell5_failed_ring_enb; 
assign fdbs0_fdb0_bell5_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb0_bell5_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb0_bell5_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell5_if.max_priority_q = fdbs0_fdb0_bell5_max_priority_q;
wire    [1:0] fdbs0_fdb0_bell5_max_priority_d; 
assign fdbs0_fdb0_bell5_max_priority_d = regmodel0_regmodel_fdbs0_fdb0_bell5_if.max_priority_d;
wire          fdbs0_fdb0_bell5_max_priority_enb; 
assign fdbs0_fdb0_bell5_max_priority_enb = regmodel0_regmodel_fdbs0_fdb0_bell5_if.max_priority_enb;
wire    [4:0] fdbs0_fdb0_bell5_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell5_if.valid_fcnt_q = fdbs0_fdb0_bell5_valid_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell5_valid_fcnt_d; 
assign fdbs0_fdb0_bell5_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell5_if.valid_fcnt_d;
wire          fdbs0_fdb0_bell5_valid_fcnt_enb; 
assign fdbs0_fdb0_bell5_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell5_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb0_bell5_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell5_if.fcnt_q = fdbs0_fdb0_bell5_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell5_fcnt_d; 
assign fdbs0_fdb0_bell5_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell5_if.fcnt_d;
wire          fdbs0_fdb0_bell5_fcnt_enb; 
assign fdbs0_fdb0_bell5_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell5_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb0_bell6_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb0_bell6_cnt_qout; 
assign fdbs0_fdb0_bell6_cnt_qout = regmodel0_regmodel_fdbs0_fdb0_bell6_if.cnt_qout;
wire    [1:0] fdbs0_fdb0_bell6_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb0_bell6_if.cnt_din = fdbs0_fdb0_bell6_cnt_din;
wire          fdbs0_fdb0_bell6_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb0_bell6_if.cnt_w = fdbs0_fdb0_bell6_cnt_w;
wire          fdbs0_fdb0_bell6_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb0_bell6_if.cnt_r = fdbs0_fdb0_bell6_cnt_r;
wire          fdbs0_fdb0_bell6_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell6_if.failed_ring_q = fdbs0_fdb0_bell6_failed_ring_q;
wire          fdbs0_fdb0_bell6_failed_ring_d; 
assign fdbs0_fdb0_bell6_failed_ring_d = regmodel0_regmodel_fdbs0_fdb0_bell6_if.failed_ring_d;
wire          fdbs0_fdb0_bell6_failed_ring_enb; 
assign fdbs0_fdb0_bell6_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb0_bell6_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb0_bell6_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell6_if.max_priority_q = fdbs0_fdb0_bell6_max_priority_q;
wire    [1:0] fdbs0_fdb0_bell6_max_priority_d; 
assign fdbs0_fdb0_bell6_max_priority_d = regmodel0_regmodel_fdbs0_fdb0_bell6_if.max_priority_d;
wire          fdbs0_fdb0_bell6_max_priority_enb; 
assign fdbs0_fdb0_bell6_max_priority_enb = regmodel0_regmodel_fdbs0_fdb0_bell6_if.max_priority_enb;
wire    [4:0] fdbs0_fdb0_bell6_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell6_if.valid_fcnt_q = fdbs0_fdb0_bell6_valid_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell6_valid_fcnt_d; 
assign fdbs0_fdb0_bell6_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell6_if.valid_fcnt_d;
wire          fdbs0_fdb0_bell6_valid_fcnt_enb; 
assign fdbs0_fdb0_bell6_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell6_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb0_bell6_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell6_if.fcnt_q = fdbs0_fdb0_bell6_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell6_fcnt_d; 
assign fdbs0_fdb0_bell6_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell6_if.fcnt_d;
wire          fdbs0_fdb0_bell6_fcnt_enb; 
assign fdbs0_fdb0_bell6_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell6_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb0_bell7_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb0_bell7_cnt_qout; 
assign fdbs0_fdb0_bell7_cnt_qout = regmodel0_regmodel_fdbs0_fdb0_bell7_if.cnt_qout;
wire    [1:0] fdbs0_fdb0_bell7_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb0_bell7_if.cnt_din = fdbs0_fdb0_bell7_cnt_din;
wire          fdbs0_fdb0_bell7_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb0_bell7_if.cnt_w = fdbs0_fdb0_bell7_cnt_w;
wire          fdbs0_fdb0_bell7_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb0_bell7_if.cnt_r = fdbs0_fdb0_bell7_cnt_r;
wire          fdbs0_fdb0_bell7_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell7_if.failed_ring_q = fdbs0_fdb0_bell7_failed_ring_q;
wire          fdbs0_fdb0_bell7_failed_ring_d; 
assign fdbs0_fdb0_bell7_failed_ring_d = regmodel0_regmodel_fdbs0_fdb0_bell7_if.failed_ring_d;
wire          fdbs0_fdb0_bell7_failed_ring_enb; 
assign fdbs0_fdb0_bell7_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb0_bell7_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb0_bell7_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell7_if.max_priority_q = fdbs0_fdb0_bell7_max_priority_q;
wire    [1:0] fdbs0_fdb0_bell7_max_priority_d; 
assign fdbs0_fdb0_bell7_max_priority_d = regmodel0_regmodel_fdbs0_fdb0_bell7_if.max_priority_d;
wire          fdbs0_fdb0_bell7_max_priority_enb; 
assign fdbs0_fdb0_bell7_max_priority_enb = regmodel0_regmodel_fdbs0_fdb0_bell7_if.max_priority_enb;
wire    [4:0] fdbs0_fdb0_bell7_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell7_if.valid_fcnt_q = fdbs0_fdb0_bell7_valid_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell7_valid_fcnt_d; 
assign fdbs0_fdb0_bell7_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell7_if.valid_fcnt_d;
wire          fdbs0_fdb0_bell7_valid_fcnt_enb; 
assign fdbs0_fdb0_bell7_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell7_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb0_bell7_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell7_if.fcnt_q = fdbs0_fdb0_bell7_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell7_fcnt_d; 
assign fdbs0_fdb0_bell7_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell7_if.fcnt_d;
wire          fdbs0_fdb0_bell7_fcnt_enb; 
assign fdbs0_fdb0_bell7_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell7_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb0_bell8_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb0_bell8_cnt_qout; 
assign fdbs0_fdb0_bell8_cnt_qout = regmodel0_regmodel_fdbs0_fdb0_bell8_if.cnt_qout;
wire    [1:0] fdbs0_fdb0_bell8_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb0_bell8_if.cnt_din = fdbs0_fdb0_bell8_cnt_din;
wire          fdbs0_fdb0_bell8_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb0_bell8_if.cnt_w = fdbs0_fdb0_bell8_cnt_w;
wire          fdbs0_fdb0_bell8_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb0_bell8_if.cnt_r = fdbs0_fdb0_bell8_cnt_r;
wire          fdbs0_fdb0_bell8_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell8_if.failed_ring_q = fdbs0_fdb0_bell8_failed_ring_q;
wire          fdbs0_fdb0_bell8_failed_ring_d; 
assign fdbs0_fdb0_bell8_failed_ring_d = regmodel0_regmodel_fdbs0_fdb0_bell8_if.failed_ring_d;
wire          fdbs0_fdb0_bell8_failed_ring_enb; 
assign fdbs0_fdb0_bell8_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb0_bell8_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb0_bell8_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell8_if.max_priority_q = fdbs0_fdb0_bell8_max_priority_q;
wire    [1:0] fdbs0_fdb0_bell8_max_priority_d; 
assign fdbs0_fdb0_bell8_max_priority_d = regmodel0_regmodel_fdbs0_fdb0_bell8_if.max_priority_d;
wire          fdbs0_fdb0_bell8_max_priority_enb; 
assign fdbs0_fdb0_bell8_max_priority_enb = regmodel0_regmodel_fdbs0_fdb0_bell8_if.max_priority_enb;
wire    [4:0] fdbs0_fdb0_bell8_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell8_if.valid_fcnt_q = fdbs0_fdb0_bell8_valid_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell8_valid_fcnt_d; 
assign fdbs0_fdb0_bell8_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell8_if.valid_fcnt_d;
wire          fdbs0_fdb0_bell8_valid_fcnt_enb; 
assign fdbs0_fdb0_bell8_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell8_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb0_bell8_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell8_if.fcnt_q = fdbs0_fdb0_bell8_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell8_fcnt_d; 
assign fdbs0_fdb0_bell8_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell8_if.fcnt_d;
wire          fdbs0_fdb0_bell8_fcnt_enb; 
assign fdbs0_fdb0_bell8_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell8_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb0_bell9_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb0_bell9_cnt_qout; 
assign fdbs0_fdb0_bell9_cnt_qout = regmodel0_regmodel_fdbs0_fdb0_bell9_if.cnt_qout;
wire    [1:0] fdbs0_fdb0_bell9_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb0_bell9_if.cnt_din = fdbs0_fdb0_bell9_cnt_din;
wire          fdbs0_fdb0_bell9_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb0_bell9_if.cnt_w = fdbs0_fdb0_bell9_cnt_w;
wire          fdbs0_fdb0_bell9_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb0_bell9_if.cnt_r = fdbs0_fdb0_bell9_cnt_r;
wire          fdbs0_fdb0_bell9_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell9_if.failed_ring_q = fdbs0_fdb0_bell9_failed_ring_q;
wire          fdbs0_fdb0_bell9_failed_ring_d; 
assign fdbs0_fdb0_bell9_failed_ring_d = regmodel0_regmodel_fdbs0_fdb0_bell9_if.failed_ring_d;
wire          fdbs0_fdb0_bell9_failed_ring_enb; 
assign fdbs0_fdb0_bell9_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb0_bell9_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb0_bell9_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell9_if.max_priority_q = fdbs0_fdb0_bell9_max_priority_q;
wire    [1:0] fdbs0_fdb0_bell9_max_priority_d; 
assign fdbs0_fdb0_bell9_max_priority_d = regmodel0_regmodel_fdbs0_fdb0_bell9_if.max_priority_d;
wire          fdbs0_fdb0_bell9_max_priority_enb; 
assign fdbs0_fdb0_bell9_max_priority_enb = regmodel0_regmodel_fdbs0_fdb0_bell9_if.max_priority_enb;
wire    [4:0] fdbs0_fdb0_bell9_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell9_if.valid_fcnt_q = fdbs0_fdb0_bell9_valid_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell9_valid_fcnt_d; 
assign fdbs0_fdb0_bell9_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell9_if.valid_fcnt_d;
wire          fdbs0_fdb0_bell9_valid_fcnt_enb; 
assign fdbs0_fdb0_bell9_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell9_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb0_bell9_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell9_if.fcnt_q = fdbs0_fdb0_bell9_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell9_fcnt_d; 
assign fdbs0_fdb0_bell9_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell9_if.fcnt_d;
wire          fdbs0_fdb0_bell9_fcnt_enb; 
assign fdbs0_fdb0_bell9_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell9_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb0_bell10_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb0_bell10_cnt_qout; 
assign fdbs0_fdb0_bell10_cnt_qout = regmodel0_regmodel_fdbs0_fdb0_bell10_if.cnt_qout;
wire    [1:0] fdbs0_fdb0_bell10_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb0_bell10_if.cnt_din = fdbs0_fdb0_bell10_cnt_din;
wire          fdbs0_fdb0_bell10_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb0_bell10_if.cnt_w = fdbs0_fdb0_bell10_cnt_w;
wire          fdbs0_fdb0_bell10_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb0_bell10_if.cnt_r = fdbs0_fdb0_bell10_cnt_r;
wire          fdbs0_fdb0_bell10_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell10_if.failed_ring_q = fdbs0_fdb0_bell10_failed_ring_q;
wire          fdbs0_fdb0_bell10_failed_ring_d; 
assign fdbs0_fdb0_bell10_failed_ring_d = regmodel0_regmodel_fdbs0_fdb0_bell10_if.failed_ring_d;
wire          fdbs0_fdb0_bell10_failed_ring_enb; 
assign fdbs0_fdb0_bell10_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb0_bell10_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb0_bell10_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell10_if.max_priority_q = fdbs0_fdb0_bell10_max_priority_q;
wire    [1:0] fdbs0_fdb0_bell10_max_priority_d; 
assign fdbs0_fdb0_bell10_max_priority_d = regmodel0_regmodel_fdbs0_fdb0_bell10_if.max_priority_d;
wire          fdbs0_fdb0_bell10_max_priority_enb; 
assign fdbs0_fdb0_bell10_max_priority_enb = regmodel0_regmodel_fdbs0_fdb0_bell10_if.max_priority_enb;
wire    [4:0] fdbs0_fdb0_bell10_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell10_if.valid_fcnt_q = fdbs0_fdb0_bell10_valid_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell10_valid_fcnt_d; 
assign fdbs0_fdb0_bell10_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell10_if.valid_fcnt_d;
wire          fdbs0_fdb0_bell10_valid_fcnt_enb; 
assign fdbs0_fdb0_bell10_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell10_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb0_bell10_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell10_if.fcnt_q = fdbs0_fdb0_bell10_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell10_fcnt_d; 
assign fdbs0_fdb0_bell10_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell10_if.fcnt_d;
wire          fdbs0_fdb0_bell10_fcnt_enb; 
assign fdbs0_fdb0_bell10_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell10_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb0_bell11_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb0_bell11_cnt_qout; 
assign fdbs0_fdb0_bell11_cnt_qout = regmodel0_regmodel_fdbs0_fdb0_bell11_if.cnt_qout;
wire    [1:0] fdbs0_fdb0_bell11_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb0_bell11_if.cnt_din = fdbs0_fdb0_bell11_cnt_din;
wire          fdbs0_fdb0_bell11_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb0_bell11_if.cnt_w = fdbs0_fdb0_bell11_cnt_w;
wire          fdbs0_fdb0_bell11_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb0_bell11_if.cnt_r = fdbs0_fdb0_bell11_cnt_r;
wire          fdbs0_fdb0_bell11_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell11_if.failed_ring_q = fdbs0_fdb0_bell11_failed_ring_q;
wire          fdbs0_fdb0_bell11_failed_ring_d; 
assign fdbs0_fdb0_bell11_failed_ring_d = regmodel0_regmodel_fdbs0_fdb0_bell11_if.failed_ring_d;
wire          fdbs0_fdb0_bell11_failed_ring_enb; 
assign fdbs0_fdb0_bell11_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb0_bell11_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb0_bell11_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell11_if.max_priority_q = fdbs0_fdb0_bell11_max_priority_q;
wire    [1:0] fdbs0_fdb0_bell11_max_priority_d; 
assign fdbs0_fdb0_bell11_max_priority_d = regmodel0_regmodel_fdbs0_fdb0_bell11_if.max_priority_d;
wire          fdbs0_fdb0_bell11_max_priority_enb; 
assign fdbs0_fdb0_bell11_max_priority_enb = regmodel0_regmodel_fdbs0_fdb0_bell11_if.max_priority_enb;
wire    [4:0] fdbs0_fdb0_bell11_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell11_if.valid_fcnt_q = fdbs0_fdb0_bell11_valid_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell11_valid_fcnt_d; 
assign fdbs0_fdb0_bell11_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell11_if.valid_fcnt_d;
wire          fdbs0_fdb0_bell11_valid_fcnt_enb; 
assign fdbs0_fdb0_bell11_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell11_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb0_bell11_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell11_if.fcnt_q = fdbs0_fdb0_bell11_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell11_fcnt_d; 
assign fdbs0_fdb0_bell11_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell11_if.fcnt_d;
wire          fdbs0_fdb0_bell11_fcnt_enb; 
assign fdbs0_fdb0_bell11_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell11_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb0_bell12_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb0_bell12_cnt_qout; 
assign fdbs0_fdb0_bell12_cnt_qout = regmodel0_regmodel_fdbs0_fdb0_bell12_if.cnt_qout;
wire    [1:0] fdbs0_fdb0_bell12_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb0_bell12_if.cnt_din = fdbs0_fdb0_bell12_cnt_din;
wire          fdbs0_fdb0_bell12_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb0_bell12_if.cnt_w = fdbs0_fdb0_bell12_cnt_w;
wire          fdbs0_fdb0_bell12_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb0_bell12_if.cnt_r = fdbs0_fdb0_bell12_cnt_r;
wire          fdbs0_fdb0_bell12_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell12_if.failed_ring_q = fdbs0_fdb0_bell12_failed_ring_q;
wire          fdbs0_fdb0_bell12_failed_ring_d; 
assign fdbs0_fdb0_bell12_failed_ring_d = regmodel0_regmodel_fdbs0_fdb0_bell12_if.failed_ring_d;
wire          fdbs0_fdb0_bell12_failed_ring_enb; 
assign fdbs0_fdb0_bell12_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb0_bell12_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb0_bell12_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell12_if.max_priority_q = fdbs0_fdb0_bell12_max_priority_q;
wire    [1:0] fdbs0_fdb0_bell12_max_priority_d; 
assign fdbs0_fdb0_bell12_max_priority_d = regmodel0_regmodel_fdbs0_fdb0_bell12_if.max_priority_d;
wire          fdbs0_fdb0_bell12_max_priority_enb; 
assign fdbs0_fdb0_bell12_max_priority_enb = regmodel0_regmodel_fdbs0_fdb0_bell12_if.max_priority_enb;
wire    [4:0] fdbs0_fdb0_bell12_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell12_if.valid_fcnt_q = fdbs0_fdb0_bell12_valid_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell12_valid_fcnt_d; 
assign fdbs0_fdb0_bell12_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell12_if.valid_fcnt_d;
wire          fdbs0_fdb0_bell12_valid_fcnt_enb; 
assign fdbs0_fdb0_bell12_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell12_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb0_bell12_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell12_if.fcnt_q = fdbs0_fdb0_bell12_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell12_fcnt_d; 
assign fdbs0_fdb0_bell12_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell12_if.fcnt_d;
wire          fdbs0_fdb0_bell12_fcnt_enb; 
assign fdbs0_fdb0_bell12_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell12_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb0_bell13_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb0_bell13_cnt_qout; 
assign fdbs0_fdb0_bell13_cnt_qout = regmodel0_regmodel_fdbs0_fdb0_bell13_if.cnt_qout;
wire    [1:0] fdbs0_fdb0_bell13_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb0_bell13_if.cnt_din = fdbs0_fdb0_bell13_cnt_din;
wire          fdbs0_fdb0_bell13_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb0_bell13_if.cnt_w = fdbs0_fdb0_bell13_cnt_w;
wire          fdbs0_fdb0_bell13_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb0_bell13_if.cnt_r = fdbs0_fdb0_bell13_cnt_r;
wire          fdbs0_fdb0_bell13_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell13_if.failed_ring_q = fdbs0_fdb0_bell13_failed_ring_q;
wire          fdbs0_fdb0_bell13_failed_ring_d; 
assign fdbs0_fdb0_bell13_failed_ring_d = regmodel0_regmodel_fdbs0_fdb0_bell13_if.failed_ring_d;
wire          fdbs0_fdb0_bell13_failed_ring_enb; 
assign fdbs0_fdb0_bell13_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb0_bell13_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb0_bell13_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell13_if.max_priority_q = fdbs0_fdb0_bell13_max_priority_q;
wire    [1:0] fdbs0_fdb0_bell13_max_priority_d; 
assign fdbs0_fdb0_bell13_max_priority_d = regmodel0_regmodel_fdbs0_fdb0_bell13_if.max_priority_d;
wire          fdbs0_fdb0_bell13_max_priority_enb; 
assign fdbs0_fdb0_bell13_max_priority_enb = regmodel0_regmodel_fdbs0_fdb0_bell13_if.max_priority_enb;
wire    [4:0] fdbs0_fdb0_bell13_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell13_if.valid_fcnt_q = fdbs0_fdb0_bell13_valid_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell13_valid_fcnt_d; 
assign fdbs0_fdb0_bell13_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell13_if.valid_fcnt_d;
wire          fdbs0_fdb0_bell13_valid_fcnt_enb; 
assign fdbs0_fdb0_bell13_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell13_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb0_bell13_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell13_if.fcnt_q = fdbs0_fdb0_bell13_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell13_fcnt_d; 
assign fdbs0_fdb0_bell13_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell13_if.fcnt_d;
wire          fdbs0_fdb0_bell13_fcnt_enb; 
assign fdbs0_fdb0_bell13_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell13_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb0_bell14_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb0_bell14_cnt_qout; 
assign fdbs0_fdb0_bell14_cnt_qout = regmodel0_regmodel_fdbs0_fdb0_bell14_if.cnt_qout;
wire    [1:0] fdbs0_fdb0_bell14_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb0_bell14_if.cnt_din = fdbs0_fdb0_bell14_cnt_din;
wire          fdbs0_fdb0_bell14_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb0_bell14_if.cnt_w = fdbs0_fdb0_bell14_cnt_w;
wire          fdbs0_fdb0_bell14_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb0_bell14_if.cnt_r = fdbs0_fdb0_bell14_cnt_r;
wire          fdbs0_fdb0_bell14_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell14_if.failed_ring_q = fdbs0_fdb0_bell14_failed_ring_q;
wire          fdbs0_fdb0_bell14_failed_ring_d; 
assign fdbs0_fdb0_bell14_failed_ring_d = regmodel0_regmodel_fdbs0_fdb0_bell14_if.failed_ring_d;
wire          fdbs0_fdb0_bell14_failed_ring_enb; 
assign fdbs0_fdb0_bell14_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb0_bell14_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb0_bell14_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell14_if.max_priority_q = fdbs0_fdb0_bell14_max_priority_q;
wire    [1:0] fdbs0_fdb0_bell14_max_priority_d; 
assign fdbs0_fdb0_bell14_max_priority_d = regmodel0_regmodel_fdbs0_fdb0_bell14_if.max_priority_d;
wire          fdbs0_fdb0_bell14_max_priority_enb; 
assign fdbs0_fdb0_bell14_max_priority_enb = regmodel0_regmodel_fdbs0_fdb0_bell14_if.max_priority_enb;
wire    [4:0] fdbs0_fdb0_bell14_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell14_if.valid_fcnt_q = fdbs0_fdb0_bell14_valid_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell14_valid_fcnt_d; 
assign fdbs0_fdb0_bell14_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell14_if.valid_fcnt_d;
wire          fdbs0_fdb0_bell14_valid_fcnt_enb; 
assign fdbs0_fdb0_bell14_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell14_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb0_bell14_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell14_if.fcnt_q = fdbs0_fdb0_bell14_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell14_fcnt_d; 
assign fdbs0_fdb0_bell14_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell14_if.fcnt_d;
wire          fdbs0_fdb0_bell14_fcnt_enb; 
assign fdbs0_fdb0_bell14_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell14_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb0_bell15_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb0_bell15_cnt_qout; 
assign fdbs0_fdb0_bell15_cnt_qout = regmodel0_regmodel_fdbs0_fdb0_bell15_if.cnt_qout;
wire    [1:0] fdbs0_fdb0_bell15_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb0_bell15_if.cnt_din = fdbs0_fdb0_bell15_cnt_din;
wire          fdbs0_fdb0_bell15_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb0_bell15_if.cnt_w = fdbs0_fdb0_bell15_cnt_w;
wire          fdbs0_fdb0_bell15_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb0_bell15_if.cnt_r = fdbs0_fdb0_bell15_cnt_r;
wire          fdbs0_fdb0_bell15_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell15_if.failed_ring_q = fdbs0_fdb0_bell15_failed_ring_q;
wire          fdbs0_fdb0_bell15_failed_ring_d; 
assign fdbs0_fdb0_bell15_failed_ring_d = regmodel0_regmodel_fdbs0_fdb0_bell15_if.failed_ring_d;
wire          fdbs0_fdb0_bell15_failed_ring_enb; 
assign fdbs0_fdb0_bell15_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb0_bell15_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb0_bell15_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell15_if.max_priority_q = fdbs0_fdb0_bell15_max_priority_q;
wire    [1:0] fdbs0_fdb0_bell15_max_priority_d; 
assign fdbs0_fdb0_bell15_max_priority_d = regmodel0_regmodel_fdbs0_fdb0_bell15_if.max_priority_d;
wire          fdbs0_fdb0_bell15_max_priority_enb; 
assign fdbs0_fdb0_bell15_max_priority_enb = regmodel0_regmodel_fdbs0_fdb0_bell15_if.max_priority_enb;
wire    [4:0] fdbs0_fdb0_bell15_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell15_if.valid_fcnt_q = fdbs0_fdb0_bell15_valid_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell15_valid_fcnt_d; 
assign fdbs0_fdb0_bell15_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell15_if.valid_fcnt_d;
wire          fdbs0_fdb0_bell15_valid_fcnt_enb; 
assign fdbs0_fdb0_bell15_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell15_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb0_bell15_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb0_bell15_if.fcnt_q = fdbs0_fdb0_bell15_fcnt_q;
wire    [4:0] fdbs0_fdb0_bell15_fcnt_d; 
assign fdbs0_fdb0_bell15_fcnt_d = regmodel0_regmodel_fdbs0_fdb0_bell15_if.fcnt_d;
wire          fdbs0_fdb0_bell15_fcnt_enb; 
assign fdbs0_fdb0_bell15_fcnt_enb = regmodel0_regmodel_fdbs0_fdb0_bell15_if.fcnt_enb;
wire          fdbs0_fdb0_control_ack_on_empty_q; 
assign regmodel0_regmodel_fdbs0_fdb0_control_if.ack_on_empty_q = fdbs0_fdb0_control_ack_on_empty_q;
assign regmodel0_regmodel_fdbs0_fdb0_enable_if.reqinfo = fdbs0_reqinfo;
wire   [15:0] fdbs0_fdb0_enable_enable_qout; 
assign fdbs0_fdb0_enable_enable_qout = regmodel0_regmodel_fdbs0_fdb0_enable_if.enable_qout;
wire   [15:0] fdbs0_fdb0_enable_enable_din; 
assign regmodel0_regmodel_fdbs0_fdb0_enable_if.enable_din = fdbs0_fdb0_enable_enable_din;
wire          fdbs0_fdb0_enable_enable_w; 
assign regmodel0_regmodel_fdbs0_fdb0_enable_if.enable_w = fdbs0_fdb0_enable_enable_w;
wire   [15:0] fdbs0_fdb0_status_status_d; 
assign fdbs0_fdb0_status_status_d = regmodel0_regmodel_fdbs0_fdb0_status_if.status_d;
wire   [31:0] fdbs0_fdb0_data0_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if.din = fdbs0_fdb0_data0_fifo_din;
wire    [1:0] fdbs0_fdb0_data0_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if.a = fdbs0_fdb0_data0_fifo_a;
wire   [31:0] fdbs0_fdb0_data0_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if.wen = fdbs0_fdb0_data0_fifo_wen;
wire          fdbs0_fdb0_data0_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if.cen = fdbs0_fdb0_data0_fifo_cen;
wire   [31:0] fdbs0_fdb0_data0_fifo_dout; 
assign fdbs0_fdb0_data0_fifo_dout = regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb0_data1_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if.din = fdbs0_fdb0_data1_fifo_din;
wire    [1:0] fdbs0_fdb0_data1_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if.a = fdbs0_fdb0_data1_fifo_a;
wire   [31:0] fdbs0_fdb0_data1_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if.wen = fdbs0_fdb0_data1_fifo_wen;
wire          fdbs0_fdb0_data1_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if.cen = fdbs0_fdb0_data1_fifo_cen;
wire   [31:0] fdbs0_fdb0_data1_fifo_dout; 
assign fdbs0_fdb0_data1_fifo_dout = regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb0_data2_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if.din = fdbs0_fdb0_data2_fifo_din;
wire    [1:0] fdbs0_fdb0_data2_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if.a = fdbs0_fdb0_data2_fifo_a;
wire   [31:0] fdbs0_fdb0_data2_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if.wen = fdbs0_fdb0_data2_fifo_wen;
wire          fdbs0_fdb0_data2_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if.cen = fdbs0_fdb0_data2_fifo_cen;
wire   [31:0] fdbs0_fdb0_data2_fifo_dout; 
assign fdbs0_fdb0_data2_fifo_dout = regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb0_data3_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if.din = fdbs0_fdb0_data3_fifo_din;
wire    [1:0] fdbs0_fdb0_data3_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if.a = fdbs0_fdb0_data3_fifo_a;
wire   [31:0] fdbs0_fdb0_data3_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if.wen = fdbs0_fdb0_data3_fifo_wen;
wire          fdbs0_fdb0_data3_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if.cen = fdbs0_fdb0_data3_fifo_cen;
wire   [31:0] fdbs0_fdb0_data3_fifo_dout; 
assign fdbs0_fdb0_data3_fifo_dout = regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb0_data4_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if.din = fdbs0_fdb0_data4_fifo_din;
wire    [1:0] fdbs0_fdb0_data4_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if.a = fdbs0_fdb0_data4_fifo_a;
wire   [31:0] fdbs0_fdb0_data4_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if.wen = fdbs0_fdb0_data4_fifo_wen;
wire          fdbs0_fdb0_data4_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if.cen = fdbs0_fdb0_data4_fifo_cen;
wire   [31:0] fdbs0_fdb0_data4_fifo_dout; 
assign fdbs0_fdb0_data4_fifo_dout = regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb0_data5_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if.din = fdbs0_fdb0_data5_fifo_din;
wire    [1:0] fdbs0_fdb0_data5_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if.a = fdbs0_fdb0_data5_fifo_a;
wire   [31:0] fdbs0_fdb0_data5_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if.wen = fdbs0_fdb0_data5_fifo_wen;
wire          fdbs0_fdb0_data5_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if.cen = fdbs0_fdb0_data5_fifo_cen;
wire   [31:0] fdbs0_fdb0_data5_fifo_dout; 
assign fdbs0_fdb0_data5_fifo_dout = regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb0_data6_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if.din = fdbs0_fdb0_data6_fifo_din;
wire    [1:0] fdbs0_fdb0_data6_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if.a = fdbs0_fdb0_data6_fifo_a;
wire   [31:0] fdbs0_fdb0_data6_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if.wen = fdbs0_fdb0_data6_fifo_wen;
wire          fdbs0_fdb0_data6_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if.cen = fdbs0_fdb0_data6_fifo_cen;
wire   [31:0] fdbs0_fdb0_data6_fifo_dout; 
assign fdbs0_fdb0_data6_fifo_dout = regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb0_data7_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if.din = fdbs0_fdb0_data7_fifo_din;
wire    [1:0] fdbs0_fdb0_data7_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if.a = fdbs0_fdb0_data7_fifo_a;
wire   [31:0] fdbs0_fdb0_data7_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if.wen = fdbs0_fdb0_data7_fifo_wen;
wire          fdbs0_fdb0_data7_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if.cen = fdbs0_fdb0_data7_fifo_cen;
wire   [31:0] fdbs0_fdb0_data7_fifo_dout; 
assign fdbs0_fdb0_data7_fifo_dout = regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb0_data8_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if.din = fdbs0_fdb0_data8_fifo_din;
wire    [1:0] fdbs0_fdb0_data8_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if.a = fdbs0_fdb0_data8_fifo_a;
wire   [31:0] fdbs0_fdb0_data8_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if.wen = fdbs0_fdb0_data8_fifo_wen;
wire          fdbs0_fdb0_data8_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if.cen = fdbs0_fdb0_data8_fifo_cen;
wire   [31:0] fdbs0_fdb0_data8_fifo_dout; 
assign fdbs0_fdb0_data8_fifo_dout = regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb0_data9_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if.din = fdbs0_fdb0_data9_fifo_din;
wire    [1:0] fdbs0_fdb0_data9_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if.a = fdbs0_fdb0_data9_fifo_a;
wire   [31:0] fdbs0_fdb0_data9_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if.wen = fdbs0_fdb0_data9_fifo_wen;
wire          fdbs0_fdb0_data9_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if.cen = fdbs0_fdb0_data9_fifo_cen;
wire   [31:0] fdbs0_fdb0_data9_fifo_dout; 
assign fdbs0_fdb0_data9_fifo_dout = regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb0_data10_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if.din = fdbs0_fdb0_data10_fifo_din;
wire    [1:0] fdbs0_fdb0_data10_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if.a = fdbs0_fdb0_data10_fifo_a;
wire   [31:0] fdbs0_fdb0_data10_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if.wen = fdbs0_fdb0_data10_fifo_wen;
wire          fdbs0_fdb0_data10_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if.cen = fdbs0_fdb0_data10_fifo_cen;
wire   [31:0] fdbs0_fdb0_data10_fifo_dout; 
assign fdbs0_fdb0_data10_fifo_dout = regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb0_data11_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if.din = fdbs0_fdb0_data11_fifo_din;
wire    [1:0] fdbs0_fdb0_data11_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if.a = fdbs0_fdb0_data11_fifo_a;
wire   [31:0] fdbs0_fdb0_data11_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if.wen = fdbs0_fdb0_data11_fifo_wen;
wire          fdbs0_fdb0_data11_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if.cen = fdbs0_fdb0_data11_fifo_cen;
wire   [31:0] fdbs0_fdb0_data11_fifo_dout; 
assign fdbs0_fdb0_data11_fifo_dout = regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb0_data12_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if.din = fdbs0_fdb0_data12_fifo_din;
wire    [1:0] fdbs0_fdb0_data12_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if.a = fdbs0_fdb0_data12_fifo_a;
wire   [31:0] fdbs0_fdb0_data12_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if.wen = fdbs0_fdb0_data12_fifo_wen;
wire          fdbs0_fdb0_data12_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if.cen = fdbs0_fdb0_data12_fifo_cen;
wire   [31:0] fdbs0_fdb0_data12_fifo_dout; 
assign fdbs0_fdb0_data12_fifo_dout = regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb0_data13_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if.din = fdbs0_fdb0_data13_fifo_din;
wire    [1:0] fdbs0_fdb0_data13_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if.a = fdbs0_fdb0_data13_fifo_a;
wire   [31:0] fdbs0_fdb0_data13_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if.wen = fdbs0_fdb0_data13_fifo_wen;
wire          fdbs0_fdb0_data13_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if.cen = fdbs0_fdb0_data13_fifo_cen;
wire   [31:0] fdbs0_fdb0_data13_fifo_dout; 
assign fdbs0_fdb0_data13_fifo_dout = regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb0_data14_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if.din = fdbs0_fdb0_data14_fifo_din;
wire    [1:0] fdbs0_fdb0_data14_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if.a = fdbs0_fdb0_data14_fifo_a;
wire   [31:0] fdbs0_fdb0_data14_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if.wen = fdbs0_fdb0_data14_fifo_wen;
wire          fdbs0_fdb0_data14_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if.cen = fdbs0_fdb0_data14_fifo_cen;
wire   [31:0] fdbs0_fdb0_data14_fifo_dout; 
assign fdbs0_fdb0_data14_fifo_dout = regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb0_data15_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if.din = fdbs0_fdb0_data15_fifo_din;
wire    [1:0] fdbs0_fdb0_data15_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if.a = fdbs0_fdb0_data15_fifo_a;
wire   [31:0] fdbs0_fdb0_data15_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if.wen = fdbs0_fdb0_data15_fifo_wen;
wire          fdbs0_fdb0_data15_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if.cen = fdbs0_fdb0_data15_fifo_cen;
wire   [31:0] fdbs0_fdb0_data15_fifo_dout; 
assign fdbs0_fdb0_data15_fifo_dout = regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if.reqinfo = fdbs0_reqinfo;
assign regmodel0_regmodel_fdbs0_fdb1_bell0_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb1_bell0_cnt_qout; 
assign fdbs0_fdb1_bell0_cnt_qout = regmodel0_regmodel_fdbs0_fdb1_bell0_if.cnt_qout;
wire    [1:0] fdbs0_fdb1_bell0_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb1_bell0_if.cnt_din = fdbs0_fdb1_bell0_cnt_din;
wire          fdbs0_fdb1_bell0_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb1_bell0_if.cnt_w = fdbs0_fdb1_bell0_cnt_w;
wire          fdbs0_fdb1_bell0_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb1_bell0_if.cnt_r = fdbs0_fdb1_bell0_cnt_r;
wire          fdbs0_fdb1_bell0_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell0_if.failed_ring_q = fdbs0_fdb1_bell0_failed_ring_q;
wire          fdbs0_fdb1_bell0_failed_ring_d; 
assign fdbs0_fdb1_bell0_failed_ring_d = regmodel0_regmodel_fdbs0_fdb1_bell0_if.failed_ring_d;
wire          fdbs0_fdb1_bell0_failed_ring_enb; 
assign fdbs0_fdb1_bell0_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb1_bell0_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb1_bell0_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell0_if.max_priority_q = fdbs0_fdb1_bell0_max_priority_q;
wire    [1:0] fdbs0_fdb1_bell0_max_priority_d; 
assign fdbs0_fdb1_bell0_max_priority_d = regmodel0_regmodel_fdbs0_fdb1_bell0_if.max_priority_d;
wire          fdbs0_fdb1_bell0_max_priority_enb; 
assign fdbs0_fdb1_bell0_max_priority_enb = regmodel0_regmodel_fdbs0_fdb1_bell0_if.max_priority_enb;
wire    [4:0] fdbs0_fdb1_bell0_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell0_if.valid_fcnt_q = fdbs0_fdb1_bell0_valid_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell0_valid_fcnt_d; 
assign fdbs0_fdb1_bell0_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell0_if.valid_fcnt_d;
wire          fdbs0_fdb1_bell0_valid_fcnt_enb; 
assign fdbs0_fdb1_bell0_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell0_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb1_bell0_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell0_if.fcnt_q = fdbs0_fdb1_bell0_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell0_fcnt_d; 
assign fdbs0_fdb1_bell0_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell0_if.fcnt_d;
wire          fdbs0_fdb1_bell0_fcnt_enb; 
assign fdbs0_fdb1_bell0_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell0_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb1_bell1_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb1_bell1_cnt_qout; 
assign fdbs0_fdb1_bell1_cnt_qout = regmodel0_regmodel_fdbs0_fdb1_bell1_if.cnt_qout;
wire    [1:0] fdbs0_fdb1_bell1_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb1_bell1_if.cnt_din = fdbs0_fdb1_bell1_cnt_din;
wire          fdbs0_fdb1_bell1_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb1_bell1_if.cnt_w = fdbs0_fdb1_bell1_cnt_w;
wire          fdbs0_fdb1_bell1_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb1_bell1_if.cnt_r = fdbs0_fdb1_bell1_cnt_r;
wire          fdbs0_fdb1_bell1_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell1_if.failed_ring_q = fdbs0_fdb1_bell1_failed_ring_q;
wire          fdbs0_fdb1_bell1_failed_ring_d; 
assign fdbs0_fdb1_bell1_failed_ring_d = regmodel0_regmodel_fdbs0_fdb1_bell1_if.failed_ring_d;
wire          fdbs0_fdb1_bell1_failed_ring_enb; 
assign fdbs0_fdb1_bell1_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb1_bell1_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb1_bell1_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell1_if.max_priority_q = fdbs0_fdb1_bell1_max_priority_q;
wire    [1:0] fdbs0_fdb1_bell1_max_priority_d; 
assign fdbs0_fdb1_bell1_max_priority_d = regmodel0_regmodel_fdbs0_fdb1_bell1_if.max_priority_d;
wire          fdbs0_fdb1_bell1_max_priority_enb; 
assign fdbs0_fdb1_bell1_max_priority_enb = regmodel0_regmodel_fdbs0_fdb1_bell1_if.max_priority_enb;
wire    [4:0] fdbs0_fdb1_bell1_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell1_if.valid_fcnt_q = fdbs0_fdb1_bell1_valid_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell1_valid_fcnt_d; 
assign fdbs0_fdb1_bell1_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell1_if.valid_fcnt_d;
wire          fdbs0_fdb1_bell1_valid_fcnt_enb; 
assign fdbs0_fdb1_bell1_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell1_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb1_bell1_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell1_if.fcnt_q = fdbs0_fdb1_bell1_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell1_fcnt_d; 
assign fdbs0_fdb1_bell1_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell1_if.fcnt_d;
wire          fdbs0_fdb1_bell1_fcnt_enb; 
assign fdbs0_fdb1_bell1_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell1_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb1_bell2_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb1_bell2_cnt_qout; 
assign fdbs0_fdb1_bell2_cnt_qout = regmodel0_regmodel_fdbs0_fdb1_bell2_if.cnt_qout;
wire    [1:0] fdbs0_fdb1_bell2_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb1_bell2_if.cnt_din = fdbs0_fdb1_bell2_cnt_din;
wire          fdbs0_fdb1_bell2_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb1_bell2_if.cnt_w = fdbs0_fdb1_bell2_cnt_w;
wire          fdbs0_fdb1_bell2_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb1_bell2_if.cnt_r = fdbs0_fdb1_bell2_cnt_r;
wire          fdbs0_fdb1_bell2_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell2_if.failed_ring_q = fdbs0_fdb1_bell2_failed_ring_q;
wire          fdbs0_fdb1_bell2_failed_ring_d; 
assign fdbs0_fdb1_bell2_failed_ring_d = regmodel0_regmodel_fdbs0_fdb1_bell2_if.failed_ring_d;
wire          fdbs0_fdb1_bell2_failed_ring_enb; 
assign fdbs0_fdb1_bell2_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb1_bell2_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb1_bell2_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell2_if.max_priority_q = fdbs0_fdb1_bell2_max_priority_q;
wire    [1:0] fdbs0_fdb1_bell2_max_priority_d; 
assign fdbs0_fdb1_bell2_max_priority_d = regmodel0_regmodel_fdbs0_fdb1_bell2_if.max_priority_d;
wire          fdbs0_fdb1_bell2_max_priority_enb; 
assign fdbs0_fdb1_bell2_max_priority_enb = regmodel0_regmodel_fdbs0_fdb1_bell2_if.max_priority_enb;
wire    [4:0] fdbs0_fdb1_bell2_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell2_if.valid_fcnt_q = fdbs0_fdb1_bell2_valid_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell2_valid_fcnt_d; 
assign fdbs0_fdb1_bell2_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell2_if.valid_fcnt_d;
wire          fdbs0_fdb1_bell2_valid_fcnt_enb; 
assign fdbs0_fdb1_bell2_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell2_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb1_bell2_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell2_if.fcnt_q = fdbs0_fdb1_bell2_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell2_fcnt_d; 
assign fdbs0_fdb1_bell2_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell2_if.fcnt_d;
wire          fdbs0_fdb1_bell2_fcnt_enb; 
assign fdbs0_fdb1_bell2_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell2_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb1_bell3_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb1_bell3_cnt_qout; 
assign fdbs0_fdb1_bell3_cnt_qout = regmodel0_regmodel_fdbs0_fdb1_bell3_if.cnt_qout;
wire    [1:0] fdbs0_fdb1_bell3_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb1_bell3_if.cnt_din = fdbs0_fdb1_bell3_cnt_din;
wire          fdbs0_fdb1_bell3_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb1_bell3_if.cnt_w = fdbs0_fdb1_bell3_cnt_w;
wire          fdbs0_fdb1_bell3_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb1_bell3_if.cnt_r = fdbs0_fdb1_bell3_cnt_r;
wire          fdbs0_fdb1_bell3_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell3_if.failed_ring_q = fdbs0_fdb1_bell3_failed_ring_q;
wire          fdbs0_fdb1_bell3_failed_ring_d; 
assign fdbs0_fdb1_bell3_failed_ring_d = regmodel0_regmodel_fdbs0_fdb1_bell3_if.failed_ring_d;
wire          fdbs0_fdb1_bell3_failed_ring_enb; 
assign fdbs0_fdb1_bell3_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb1_bell3_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb1_bell3_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell3_if.max_priority_q = fdbs0_fdb1_bell3_max_priority_q;
wire    [1:0] fdbs0_fdb1_bell3_max_priority_d; 
assign fdbs0_fdb1_bell3_max_priority_d = regmodel0_regmodel_fdbs0_fdb1_bell3_if.max_priority_d;
wire          fdbs0_fdb1_bell3_max_priority_enb; 
assign fdbs0_fdb1_bell3_max_priority_enb = regmodel0_regmodel_fdbs0_fdb1_bell3_if.max_priority_enb;
wire    [4:0] fdbs0_fdb1_bell3_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell3_if.valid_fcnt_q = fdbs0_fdb1_bell3_valid_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell3_valid_fcnt_d; 
assign fdbs0_fdb1_bell3_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell3_if.valid_fcnt_d;
wire          fdbs0_fdb1_bell3_valid_fcnt_enb; 
assign fdbs0_fdb1_bell3_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell3_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb1_bell3_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell3_if.fcnt_q = fdbs0_fdb1_bell3_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell3_fcnt_d; 
assign fdbs0_fdb1_bell3_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell3_if.fcnt_d;
wire          fdbs0_fdb1_bell3_fcnt_enb; 
assign fdbs0_fdb1_bell3_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell3_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb1_bell4_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb1_bell4_cnt_qout; 
assign fdbs0_fdb1_bell4_cnt_qout = regmodel0_regmodel_fdbs0_fdb1_bell4_if.cnt_qout;
wire    [1:0] fdbs0_fdb1_bell4_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb1_bell4_if.cnt_din = fdbs0_fdb1_bell4_cnt_din;
wire          fdbs0_fdb1_bell4_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb1_bell4_if.cnt_w = fdbs0_fdb1_bell4_cnt_w;
wire          fdbs0_fdb1_bell4_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb1_bell4_if.cnt_r = fdbs0_fdb1_bell4_cnt_r;
wire          fdbs0_fdb1_bell4_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell4_if.failed_ring_q = fdbs0_fdb1_bell4_failed_ring_q;
wire          fdbs0_fdb1_bell4_failed_ring_d; 
assign fdbs0_fdb1_bell4_failed_ring_d = regmodel0_regmodel_fdbs0_fdb1_bell4_if.failed_ring_d;
wire          fdbs0_fdb1_bell4_failed_ring_enb; 
assign fdbs0_fdb1_bell4_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb1_bell4_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb1_bell4_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell4_if.max_priority_q = fdbs0_fdb1_bell4_max_priority_q;
wire    [1:0] fdbs0_fdb1_bell4_max_priority_d; 
assign fdbs0_fdb1_bell4_max_priority_d = regmodel0_regmodel_fdbs0_fdb1_bell4_if.max_priority_d;
wire          fdbs0_fdb1_bell4_max_priority_enb; 
assign fdbs0_fdb1_bell4_max_priority_enb = regmodel0_regmodel_fdbs0_fdb1_bell4_if.max_priority_enb;
wire    [4:0] fdbs0_fdb1_bell4_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell4_if.valid_fcnt_q = fdbs0_fdb1_bell4_valid_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell4_valid_fcnt_d; 
assign fdbs0_fdb1_bell4_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell4_if.valid_fcnt_d;
wire          fdbs0_fdb1_bell4_valid_fcnt_enb; 
assign fdbs0_fdb1_bell4_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell4_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb1_bell4_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell4_if.fcnt_q = fdbs0_fdb1_bell4_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell4_fcnt_d; 
assign fdbs0_fdb1_bell4_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell4_if.fcnt_d;
wire          fdbs0_fdb1_bell4_fcnt_enb; 
assign fdbs0_fdb1_bell4_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell4_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb1_bell5_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb1_bell5_cnt_qout; 
assign fdbs0_fdb1_bell5_cnt_qout = regmodel0_regmodel_fdbs0_fdb1_bell5_if.cnt_qout;
wire    [1:0] fdbs0_fdb1_bell5_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb1_bell5_if.cnt_din = fdbs0_fdb1_bell5_cnt_din;
wire          fdbs0_fdb1_bell5_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb1_bell5_if.cnt_w = fdbs0_fdb1_bell5_cnt_w;
wire          fdbs0_fdb1_bell5_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb1_bell5_if.cnt_r = fdbs0_fdb1_bell5_cnt_r;
wire          fdbs0_fdb1_bell5_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell5_if.failed_ring_q = fdbs0_fdb1_bell5_failed_ring_q;
wire          fdbs0_fdb1_bell5_failed_ring_d; 
assign fdbs0_fdb1_bell5_failed_ring_d = regmodel0_regmodel_fdbs0_fdb1_bell5_if.failed_ring_d;
wire          fdbs0_fdb1_bell5_failed_ring_enb; 
assign fdbs0_fdb1_bell5_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb1_bell5_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb1_bell5_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell5_if.max_priority_q = fdbs0_fdb1_bell5_max_priority_q;
wire    [1:0] fdbs0_fdb1_bell5_max_priority_d; 
assign fdbs0_fdb1_bell5_max_priority_d = regmodel0_regmodel_fdbs0_fdb1_bell5_if.max_priority_d;
wire          fdbs0_fdb1_bell5_max_priority_enb; 
assign fdbs0_fdb1_bell5_max_priority_enb = regmodel0_regmodel_fdbs0_fdb1_bell5_if.max_priority_enb;
wire    [4:0] fdbs0_fdb1_bell5_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell5_if.valid_fcnt_q = fdbs0_fdb1_bell5_valid_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell5_valid_fcnt_d; 
assign fdbs0_fdb1_bell5_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell5_if.valid_fcnt_d;
wire          fdbs0_fdb1_bell5_valid_fcnt_enb; 
assign fdbs0_fdb1_bell5_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell5_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb1_bell5_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell5_if.fcnt_q = fdbs0_fdb1_bell5_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell5_fcnt_d; 
assign fdbs0_fdb1_bell5_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell5_if.fcnt_d;
wire          fdbs0_fdb1_bell5_fcnt_enb; 
assign fdbs0_fdb1_bell5_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell5_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb1_bell6_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb1_bell6_cnt_qout; 
assign fdbs0_fdb1_bell6_cnt_qout = regmodel0_regmodel_fdbs0_fdb1_bell6_if.cnt_qout;
wire    [1:0] fdbs0_fdb1_bell6_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb1_bell6_if.cnt_din = fdbs0_fdb1_bell6_cnt_din;
wire          fdbs0_fdb1_bell6_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb1_bell6_if.cnt_w = fdbs0_fdb1_bell6_cnt_w;
wire          fdbs0_fdb1_bell6_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb1_bell6_if.cnt_r = fdbs0_fdb1_bell6_cnt_r;
wire          fdbs0_fdb1_bell6_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell6_if.failed_ring_q = fdbs0_fdb1_bell6_failed_ring_q;
wire          fdbs0_fdb1_bell6_failed_ring_d; 
assign fdbs0_fdb1_bell6_failed_ring_d = regmodel0_regmodel_fdbs0_fdb1_bell6_if.failed_ring_d;
wire          fdbs0_fdb1_bell6_failed_ring_enb; 
assign fdbs0_fdb1_bell6_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb1_bell6_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb1_bell6_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell6_if.max_priority_q = fdbs0_fdb1_bell6_max_priority_q;
wire    [1:0] fdbs0_fdb1_bell6_max_priority_d; 
assign fdbs0_fdb1_bell6_max_priority_d = regmodel0_regmodel_fdbs0_fdb1_bell6_if.max_priority_d;
wire          fdbs0_fdb1_bell6_max_priority_enb; 
assign fdbs0_fdb1_bell6_max_priority_enb = regmodel0_regmodel_fdbs0_fdb1_bell6_if.max_priority_enb;
wire    [4:0] fdbs0_fdb1_bell6_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell6_if.valid_fcnt_q = fdbs0_fdb1_bell6_valid_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell6_valid_fcnt_d; 
assign fdbs0_fdb1_bell6_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell6_if.valid_fcnt_d;
wire          fdbs0_fdb1_bell6_valid_fcnt_enb; 
assign fdbs0_fdb1_bell6_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell6_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb1_bell6_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell6_if.fcnt_q = fdbs0_fdb1_bell6_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell6_fcnt_d; 
assign fdbs0_fdb1_bell6_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell6_if.fcnt_d;
wire          fdbs0_fdb1_bell6_fcnt_enb; 
assign fdbs0_fdb1_bell6_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell6_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb1_bell7_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb1_bell7_cnt_qout; 
assign fdbs0_fdb1_bell7_cnt_qout = regmodel0_regmodel_fdbs0_fdb1_bell7_if.cnt_qout;
wire    [1:0] fdbs0_fdb1_bell7_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb1_bell7_if.cnt_din = fdbs0_fdb1_bell7_cnt_din;
wire          fdbs0_fdb1_bell7_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb1_bell7_if.cnt_w = fdbs0_fdb1_bell7_cnt_w;
wire          fdbs0_fdb1_bell7_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb1_bell7_if.cnt_r = fdbs0_fdb1_bell7_cnt_r;
wire          fdbs0_fdb1_bell7_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell7_if.failed_ring_q = fdbs0_fdb1_bell7_failed_ring_q;
wire          fdbs0_fdb1_bell7_failed_ring_d; 
assign fdbs0_fdb1_bell7_failed_ring_d = regmodel0_regmodel_fdbs0_fdb1_bell7_if.failed_ring_d;
wire          fdbs0_fdb1_bell7_failed_ring_enb; 
assign fdbs0_fdb1_bell7_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb1_bell7_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb1_bell7_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell7_if.max_priority_q = fdbs0_fdb1_bell7_max_priority_q;
wire    [1:0] fdbs0_fdb1_bell7_max_priority_d; 
assign fdbs0_fdb1_bell7_max_priority_d = regmodel0_regmodel_fdbs0_fdb1_bell7_if.max_priority_d;
wire          fdbs0_fdb1_bell7_max_priority_enb; 
assign fdbs0_fdb1_bell7_max_priority_enb = regmodel0_regmodel_fdbs0_fdb1_bell7_if.max_priority_enb;
wire    [4:0] fdbs0_fdb1_bell7_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell7_if.valid_fcnt_q = fdbs0_fdb1_bell7_valid_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell7_valid_fcnt_d; 
assign fdbs0_fdb1_bell7_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell7_if.valid_fcnt_d;
wire          fdbs0_fdb1_bell7_valid_fcnt_enb; 
assign fdbs0_fdb1_bell7_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell7_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb1_bell7_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell7_if.fcnt_q = fdbs0_fdb1_bell7_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell7_fcnt_d; 
assign fdbs0_fdb1_bell7_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell7_if.fcnt_d;
wire          fdbs0_fdb1_bell7_fcnt_enb; 
assign fdbs0_fdb1_bell7_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell7_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb1_bell8_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb1_bell8_cnt_qout; 
assign fdbs0_fdb1_bell8_cnt_qout = regmodel0_regmodel_fdbs0_fdb1_bell8_if.cnt_qout;
wire    [1:0] fdbs0_fdb1_bell8_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb1_bell8_if.cnt_din = fdbs0_fdb1_bell8_cnt_din;
wire          fdbs0_fdb1_bell8_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb1_bell8_if.cnt_w = fdbs0_fdb1_bell8_cnt_w;
wire          fdbs0_fdb1_bell8_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb1_bell8_if.cnt_r = fdbs0_fdb1_bell8_cnt_r;
wire          fdbs0_fdb1_bell8_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell8_if.failed_ring_q = fdbs0_fdb1_bell8_failed_ring_q;
wire          fdbs0_fdb1_bell8_failed_ring_d; 
assign fdbs0_fdb1_bell8_failed_ring_d = regmodel0_regmodel_fdbs0_fdb1_bell8_if.failed_ring_d;
wire          fdbs0_fdb1_bell8_failed_ring_enb; 
assign fdbs0_fdb1_bell8_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb1_bell8_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb1_bell8_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell8_if.max_priority_q = fdbs0_fdb1_bell8_max_priority_q;
wire    [1:0] fdbs0_fdb1_bell8_max_priority_d; 
assign fdbs0_fdb1_bell8_max_priority_d = regmodel0_regmodel_fdbs0_fdb1_bell8_if.max_priority_d;
wire          fdbs0_fdb1_bell8_max_priority_enb; 
assign fdbs0_fdb1_bell8_max_priority_enb = regmodel0_regmodel_fdbs0_fdb1_bell8_if.max_priority_enb;
wire    [4:0] fdbs0_fdb1_bell8_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell8_if.valid_fcnt_q = fdbs0_fdb1_bell8_valid_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell8_valid_fcnt_d; 
assign fdbs0_fdb1_bell8_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell8_if.valid_fcnt_d;
wire          fdbs0_fdb1_bell8_valid_fcnt_enb; 
assign fdbs0_fdb1_bell8_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell8_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb1_bell8_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell8_if.fcnt_q = fdbs0_fdb1_bell8_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell8_fcnt_d; 
assign fdbs0_fdb1_bell8_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell8_if.fcnt_d;
wire          fdbs0_fdb1_bell8_fcnt_enb; 
assign fdbs0_fdb1_bell8_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell8_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb1_bell9_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb1_bell9_cnt_qout; 
assign fdbs0_fdb1_bell9_cnt_qout = regmodel0_regmodel_fdbs0_fdb1_bell9_if.cnt_qout;
wire    [1:0] fdbs0_fdb1_bell9_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb1_bell9_if.cnt_din = fdbs0_fdb1_bell9_cnt_din;
wire          fdbs0_fdb1_bell9_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb1_bell9_if.cnt_w = fdbs0_fdb1_bell9_cnt_w;
wire          fdbs0_fdb1_bell9_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb1_bell9_if.cnt_r = fdbs0_fdb1_bell9_cnt_r;
wire          fdbs0_fdb1_bell9_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell9_if.failed_ring_q = fdbs0_fdb1_bell9_failed_ring_q;
wire          fdbs0_fdb1_bell9_failed_ring_d; 
assign fdbs0_fdb1_bell9_failed_ring_d = regmodel0_regmodel_fdbs0_fdb1_bell9_if.failed_ring_d;
wire          fdbs0_fdb1_bell9_failed_ring_enb; 
assign fdbs0_fdb1_bell9_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb1_bell9_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb1_bell9_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell9_if.max_priority_q = fdbs0_fdb1_bell9_max_priority_q;
wire    [1:0] fdbs0_fdb1_bell9_max_priority_d; 
assign fdbs0_fdb1_bell9_max_priority_d = regmodel0_regmodel_fdbs0_fdb1_bell9_if.max_priority_d;
wire          fdbs0_fdb1_bell9_max_priority_enb; 
assign fdbs0_fdb1_bell9_max_priority_enb = regmodel0_regmodel_fdbs0_fdb1_bell9_if.max_priority_enb;
wire    [4:0] fdbs0_fdb1_bell9_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell9_if.valid_fcnt_q = fdbs0_fdb1_bell9_valid_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell9_valid_fcnt_d; 
assign fdbs0_fdb1_bell9_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell9_if.valid_fcnt_d;
wire          fdbs0_fdb1_bell9_valid_fcnt_enb; 
assign fdbs0_fdb1_bell9_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell9_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb1_bell9_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell9_if.fcnt_q = fdbs0_fdb1_bell9_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell9_fcnt_d; 
assign fdbs0_fdb1_bell9_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell9_if.fcnt_d;
wire          fdbs0_fdb1_bell9_fcnt_enb; 
assign fdbs0_fdb1_bell9_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell9_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb1_bell10_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb1_bell10_cnt_qout; 
assign fdbs0_fdb1_bell10_cnt_qout = regmodel0_regmodel_fdbs0_fdb1_bell10_if.cnt_qout;
wire    [1:0] fdbs0_fdb1_bell10_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb1_bell10_if.cnt_din = fdbs0_fdb1_bell10_cnt_din;
wire          fdbs0_fdb1_bell10_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb1_bell10_if.cnt_w = fdbs0_fdb1_bell10_cnt_w;
wire          fdbs0_fdb1_bell10_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb1_bell10_if.cnt_r = fdbs0_fdb1_bell10_cnt_r;
wire          fdbs0_fdb1_bell10_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell10_if.failed_ring_q = fdbs0_fdb1_bell10_failed_ring_q;
wire          fdbs0_fdb1_bell10_failed_ring_d; 
assign fdbs0_fdb1_bell10_failed_ring_d = regmodel0_regmodel_fdbs0_fdb1_bell10_if.failed_ring_d;
wire          fdbs0_fdb1_bell10_failed_ring_enb; 
assign fdbs0_fdb1_bell10_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb1_bell10_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb1_bell10_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell10_if.max_priority_q = fdbs0_fdb1_bell10_max_priority_q;
wire    [1:0] fdbs0_fdb1_bell10_max_priority_d; 
assign fdbs0_fdb1_bell10_max_priority_d = regmodel0_regmodel_fdbs0_fdb1_bell10_if.max_priority_d;
wire          fdbs0_fdb1_bell10_max_priority_enb; 
assign fdbs0_fdb1_bell10_max_priority_enb = regmodel0_regmodel_fdbs0_fdb1_bell10_if.max_priority_enb;
wire    [4:0] fdbs0_fdb1_bell10_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell10_if.valid_fcnt_q = fdbs0_fdb1_bell10_valid_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell10_valid_fcnt_d; 
assign fdbs0_fdb1_bell10_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell10_if.valid_fcnt_d;
wire          fdbs0_fdb1_bell10_valid_fcnt_enb; 
assign fdbs0_fdb1_bell10_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell10_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb1_bell10_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell10_if.fcnt_q = fdbs0_fdb1_bell10_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell10_fcnt_d; 
assign fdbs0_fdb1_bell10_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell10_if.fcnt_d;
wire          fdbs0_fdb1_bell10_fcnt_enb; 
assign fdbs0_fdb1_bell10_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell10_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb1_bell11_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb1_bell11_cnt_qout; 
assign fdbs0_fdb1_bell11_cnt_qout = regmodel0_regmodel_fdbs0_fdb1_bell11_if.cnt_qout;
wire    [1:0] fdbs0_fdb1_bell11_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb1_bell11_if.cnt_din = fdbs0_fdb1_bell11_cnt_din;
wire          fdbs0_fdb1_bell11_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb1_bell11_if.cnt_w = fdbs0_fdb1_bell11_cnt_w;
wire          fdbs0_fdb1_bell11_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb1_bell11_if.cnt_r = fdbs0_fdb1_bell11_cnt_r;
wire          fdbs0_fdb1_bell11_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell11_if.failed_ring_q = fdbs0_fdb1_bell11_failed_ring_q;
wire          fdbs0_fdb1_bell11_failed_ring_d; 
assign fdbs0_fdb1_bell11_failed_ring_d = regmodel0_regmodel_fdbs0_fdb1_bell11_if.failed_ring_d;
wire          fdbs0_fdb1_bell11_failed_ring_enb; 
assign fdbs0_fdb1_bell11_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb1_bell11_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb1_bell11_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell11_if.max_priority_q = fdbs0_fdb1_bell11_max_priority_q;
wire    [1:0] fdbs0_fdb1_bell11_max_priority_d; 
assign fdbs0_fdb1_bell11_max_priority_d = regmodel0_regmodel_fdbs0_fdb1_bell11_if.max_priority_d;
wire          fdbs0_fdb1_bell11_max_priority_enb; 
assign fdbs0_fdb1_bell11_max_priority_enb = regmodel0_regmodel_fdbs0_fdb1_bell11_if.max_priority_enb;
wire    [4:0] fdbs0_fdb1_bell11_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell11_if.valid_fcnt_q = fdbs0_fdb1_bell11_valid_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell11_valid_fcnt_d; 
assign fdbs0_fdb1_bell11_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell11_if.valid_fcnt_d;
wire          fdbs0_fdb1_bell11_valid_fcnt_enb; 
assign fdbs0_fdb1_bell11_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell11_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb1_bell11_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell11_if.fcnt_q = fdbs0_fdb1_bell11_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell11_fcnt_d; 
assign fdbs0_fdb1_bell11_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell11_if.fcnt_d;
wire          fdbs0_fdb1_bell11_fcnt_enb; 
assign fdbs0_fdb1_bell11_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell11_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb1_bell12_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb1_bell12_cnt_qout; 
assign fdbs0_fdb1_bell12_cnt_qout = regmodel0_regmodel_fdbs0_fdb1_bell12_if.cnt_qout;
wire    [1:0] fdbs0_fdb1_bell12_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb1_bell12_if.cnt_din = fdbs0_fdb1_bell12_cnt_din;
wire          fdbs0_fdb1_bell12_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb1_bell12_if.cnt_w = fdbs0_fdb1_bell12_cnt_w;
wire          fdbs0_fdb1_bell12_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb1_bell12_if.cnt_r = fdbs0_fdb1_bell12_cnt_r;
wire          fdbs0_fdb1_bell12_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell12_if.failed_ring_q = fdbs0_fdb1_bell12_failed_ring_q;
wire          fdbs0_fdb1_bell12_failed_ring_d; 
assign fdbs0_fdb1_bell12_failed_ring_d = regmodel0_regmodel_fdbs0_fdb1_bell12_if.failed_ring_d;
wire          fdbs0_fdb1_bell12_failed_ring_enb; 
assign fdbs0_fdb1_bell12_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb1_bell12_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb1_bell12_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell12_if.max_priority_q = fdbs0_fdb1_bell12_max_priority_q;
wire    [1:0] fdbs0_fdb1_bell12_max_priority_d; 
assign fdbs0_fdb1_bell12_max_priority_d = regmodel0_regmodel_fdbs0_fdb1_bell12_if.max_priority_d;
wire          fdbs0_fdb1_bell12_max_priority_enb; 
assign fdbs0_fdb1_bell12_max_priority_enb = regmodel0_regmodel_fdbs0_fdb1_bell12_if.max_priority_enb;
wire    [4:0] fdbs0_fdb1_bell12_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell12_if.valid_fcnt_q = fdbs0_fdb1_bell12_valid_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell12_valid_fcnt_d; 
assign fdbs0_fdb1_bell12_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell12_if.valid_fcnt_d;
wire          fdbs0_fdb1_bell12_valid_fcnt_enb; 
assign fdbs0_fdb1_bell12_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell12_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb1_bell12_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell12_if.fcnt_q = fdbs0_fdb1_bell12_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell12_fcnt_d; 
assign fdbs0_fdb1_bell12_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell12_if.fcnt_d;
wire          fdbs0_fdb1_bell12_fcnt_enb; 
assign fdbs0_fdb1_bell12_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell12_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb1_bell13_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb1_bell13_cnt_qout; 
assign fdbs0_fdb1_bell13_cnt_qout = regmodel0_regmodel_fdbs0_fdb1_bell13_if.cnt_qout;
wire    [1:0] fdbs0_fdb1_bell13_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb1_bell13_if.cnt_din = fdbs0_fdb1_bell13_cnt_din;
wire          fdbs0_fdb1_bell13_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb1_bell13_if.cnt_w = fdbs0_fdb1_bell13_cnt_w;
wire          fdbs0_fdb1_bell13_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb1_bell13_if.cnt_r = fdbs0_fdb1_bell13_cnt_r;
wire          fdbs0_fdb1_bell13_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell13_if.failed_ring_q = fdbs0_fdb1_bell13_failed_ring_q;
wire          fdbs0_fdb1_bell13_failed_ring_d; 
assign fdbs0_fdb1_bell13_failed_ring_d = regmodel0_regmodel_fdbs0_fdb1_bell13_if.failed_ring_d;
wire          fdbs0_fdb1_bell13_failed_ring_enb; 
assign fdbs0_fdb1_bell13_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb1_bell13_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb1_bell13_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell13_if.max_priority_q = fdbs0_fdb1_bell13_max_priority_q;
wire    [1:0] fdbs0_fdb1_bell13_max_priority_d; 
assign fdbs0_fdb1_bell13_max_priority_d = regmodel0_regmodel_fdbs0_fdb1_bell13_if.max_priority_d;
wire          fdbs0_fdb1_bell13_max_priority_enb; 
assign fdbs0_fdb1_bell13_max_priority_enb = regmodel0_regmodel_fdbs0_fdb1_bell13_if.max_priority_enb;
wire    [4:0] fdbs0_fdb1_bell13_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell13_if.valid_fcnt_q = fdbs0_fdb1_bell13_valid_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell13_valid_fcnt_d; 
assign fdbs0_fdb1_bell13_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell13_if.valid_fcnt_d;
wire          fdbs0_fdb1_bell13_valid_fcnt_enb; 
assign fdbs0_fdb1_bell13_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell13_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb1_bell13_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell13_if.fcnt_q = fdbs0_fdb1_bell13_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell13_fcnt_d; 
assign fdbs0_fdb1_bell13_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell13_if.fcnt_d;
wire          fdbs0_fdb1_bell13_fcnt_enb; 
assign fdbs0_fdb1_bell13_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell13_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb1_bell14_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb1_bell14_cnt_qout; 
assign fdbs0_fdb1_bell14_cnt_qout = regmodel0_regmodel_fdbs0_fdb1_bell14_if.cnt_qout;
wire    [1:0] fdbs0_fdb1_bell14_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb1_bell14_if.cnt_din = fdbs0_fdb1_bell14_cnt_din;
wire          fdbs0_fdb1_bell14_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb1_bell14_if.cnt_w = fdbs0_fdb1_bell14_cnt_w;
wire          fdbs0_fdb1_bell14_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb1_bell14_if.cnt_r = fdbs0_fdb1_bell14_cnt_r;
wire          fdbs0_fdb1_bell14_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell14_if.failed_ring_q = fdbs0_fdb1_bell14_failed_ring_q;
wire          fdbs0_fdb1_bell14_failed_ring_d; 
assign fdbs0_fdb1_bell14_failed_ring_d = regmodel0_regmodel_fdbs0_fdb1_bell14_if.failed_ring_d;
wire          fdbs0_fdb1_bell14_failed_ring_enb; 
assign fdbs0_fdb1_bell14_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb1_bell14_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb1_bell14_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell14_if.max_priority_q = fdbs0_fdb1_bell14_max_priority_q;
wire    [1:0] fdbs0_fdb1_bell14_max_priority_d; 
assign fdbs0_fdb1_bell14_max_priority_d = regmodel0_regmodel_fdbs0_fdb1_bell14_if.max_priority_d;
wire          fdbs0_fdb1_bell14_max_priority_enb; 
assign fdbs0_fdb1_bell14_max_priority_enb = regmodel0_regmodel_fdbs0_fdb1_bell14_if.max_priority_enb;
wire    [4:0] fdbs0_fdb1_bell14_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell14_if.valid_fcnt_q = fdbs0_fdb1_bell14_valid_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell14_valid_fcnt_d; 
assign fdbs0_fdb1_bell14_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell14_if.valid_fcnt_d;
wire          fdbs0_fdb1_bell14_valid_fcnt_enb; 
assign fdbs0_fdb1_bell14_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell14_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb1_bell14_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell14_if.fcnt_q = fdbs0_fdb1_bell14_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell14_fcnt_d; 
assign fdbs0_fdb1_bell14_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell14_if.fcnt_d;
wire          fdbs0_fdb1_bell14_fcnt_enb; 
assign fdbs0_fdb1_bell14_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell14_if.fcnt_enb;
assign regmodel0_regmodel_fdbs0_fdb1_bell15_if.reqinfo = fdbs0_reqinfo;
wire    [1:0] fdbs0_fdb1_bell15_cnt_qout; 
assign fdbs0_fdb1_bell15_cnt_qout = regmodel0_regmodel_fdbs0_fdb1_bell15_if.cnt_qout;
wire    [1:0] fdbs0_fdb1_bell15_cnt_din; 
assign regmodel0_regmodel_fdbs0_fdb1_bell15_if.cnt_din = fdbs0_fdb1_bell15_cnt_din;
wire          fdbs0_fdb1_bell15_cnt_w; 
assign regmodel0_regmodel_fdbs0_fdb1_bell15_if.cnt_w = fdbs0_fdb1_bell15_cnt_w;
wire          fdbs0_fdb1_bell15_cnt_r; 
assign regmodel0_regmodel_fdbs0_fdb1_bell15_if.cnt_r = fdbs0_fdb1_bell15_cnt_r;
wire          fdbs0_fdb1_bell15_failed_ring_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell15_if.failed_ring_q = fdbs0_fdb1_bell15_failed_ring_q;
wire          fdbs0_fdb1_bell15_failed_ring_d; 
assign fdbs0_fdb1_bell15_failed_ring_d = regmodel0_regmodel_fdbs0_fdb1_bell15_if.failed_ring_d;
wire          fdbs0_fdb1_bell15_failed_ring_enb; 
assign fdbs0_fdb1_bell15_failed_ring_enb = regmodel0_regmodel_fdbs0_fdb1_bell15_if.failed_ring_enb;
wire    [1:0] fdbs0_fdb1_bell15_max_priority_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell15_if.max_priority_q = fdbs0_fdb1_bell15_max_priority_q;
wire    [1:0] fdbs0_fdb1_bell15_max_priority_d; 
assign fdbs0_fdb1_bell15_max_priority_d = regmodel0_regmodel_fdbs0_fdb1_bell15_if.max_priority_d;
wire          fdbs0_fdb1_bell15_max_priority_enb; 
assign fdbs0_fdb1_bell15_max_priority_enb = regmodel0_regmodel_fdbs0_fdb1_bell15_if.max_priority_enb;
wire    [4:0] fdbs0_fdb1_bell15_valid_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell15_if.valid_fcnt_q = fdbs0_fdb1_bell15_valid_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell15_valid_fcnt_d; 
assign fdbs0_fdb1_bell15_valid_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell15_if.valid_fcnt_d;
wire          fdbs0_fdb1_bell15_valid_fcnt_enb; 
assign fdbs0_fdb1_bell15_valid_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell15_if.valid_fcnt_enb;
wire    [4:0] fdbs0_fdb1_bell15_fcnt_q; 
assign regmodel0_regmodel_fdbs0_fdb1_bell15_if.fcnt_q = fdbs0_fdb1_bell15_fcnt_q;
wire    [4:0] fdbs0_fdb1_bell15_fcnt_d; 
assign fdbs0_fdb1_bell15_fcnt_d = regmodel0_regmodel_fdbs0_fdb1_bell15_if.fcnt_d;
wire          fdbs0_fdb1_bell15_fcnt_enb; 
assign fdbs0_fdb1_bell15_fcnt_enb = regmodel0_regmodel_fdbs0_fdb1_bell15_if.fcnt_enb;
wire          fdbs0_fdb1_control_ack_on_empty_q; 
assign regmodel0_regmodel_fdbs0_fdb1_control_if.ack_on_empty_q = fdbs0_fdb1_control_ack_on_empty_q;
assign regmodel0_regmodel_fdbs0_fdb1_enable_if.reqinfo = fdbs0_reqinfo;
wire   [15:0] fdbs0_fdb1_enable_enable_qout; 
assign fdbs0_fdb1_enable_enable_qout = regmodel0_regmodel_fdbs0_fdb1_enable_if.enable_qout;
wire   [15:0] fdbs0_fdb1_enable_enable_din; 
assign regmodel0_regmodel_fdbs0_fdb1_enable_if.enable_din = fdbs0_fdb1_enable_enable_din;
wire          fdbs0_fdb1_enable_enable_w; 
assign regmodel0_regmodel_fdbs0_fdb1_enable_if.enable_w = fdbs0_fdb1_enable_enable_w;
wire   [15:0] fdbs0_fdb1_status_status_d; 
assign fdbs0_fdb1_status_status_d = regmodel0_regmodel_fdbs0_fdb1_status_if.status_d;
wire   [31:0] fdbs0_fdb1_data0_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb1_data0_fifo_if.din = fdbs0_fdb1_data0_fifo_din;
wire    [1:0] fdbs0_fdb1_data0_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb1_data0_fifo_if.a = fdbs0_fdb1_data0_fifo_a;
wire   [31:0] fdbs0_fdb1_data0_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb1_data0_fifo_if.wen = fdbs0_fdb1_data0_fifo_wen;
wire          fdbs0_fdb1_data0_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb1_data0_fifo_if.cen = fdbs0_fdb1_data0_fifo_cen;
wire   [31:0] fdbs0_fdb1_data0_fifo_dout; 
assign fdbs0_fdb1_data0_fifo_dout = regmodel0_regmodel_fdbs0_fdb1_data0_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb1_data0_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb1_data1_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb1_data1_fifo_if.din = fdbs0_fdb1_data1_fifo_din;
wire    [1:0] fdbs0_fdb1_data1_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb1_data1_fifo_if.a = fdbs0_fdb1_data1_fifo_a;
wire   [31:0] fdbs0_fdb1_data1_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb1_data1_fifo_if.wen = fdbs0_fdb1_data1_fifo_wen;
wire          fdbs0_fdb1_data1_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb1_data1_fifo_if.cen = fdbs0_fdb1_data1_fifo_cen;
wire   [31:0] fdbs0_fdb1_data1_fifo_dout; 
assign fdbs0_fdb1_data1_fifo_dout = regmodel0_regmodel_fdbs0_fdb1_data1_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb1_data1_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb1_data2_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb1_data2_fifo_if.din = fdbs0_fdb1_data2_fifo_din;
wire    [1:0] fdbs0_fdb1_data2_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb1_data2_fifo_if.a = fdbs0_fdb1_data2_fifo_a;
wire   [31:0] fdbs0_fdb1_data2_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb1_data2_fifo_if.wen = fdbs0_fdb1_data2_fifo_wen;
wire          fdbs0_fdb1_data2_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb1_data2_fifo_if.cen = fdbs0_fdb1_data2_fifo_cen;
wire   [31:0] fdbs0_fdb1_data2_fifo_dout; 
assign fdbs0_fdb1_data2_fifo_dout = regmodel0_regmodel_fdbs0_fdb1_data2_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb1_data2_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb1_data3_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb1_data3_fifo_if.din = fdbs0_fdb1_data3_fifo_din;
wire    [1:0] fdbs0_fdb1_data3_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb1_data3_fifo_if.a = fdbs0_fdb1_data3_fifo_a;
wire   [31:0] fdbs0_fdb1_data3_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb1_data3_fifo_if.wen = fdbs0_fdb1_data3_fifo_wen;
wire          fdbs0_fdb1_data3_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb1_data3_fifo_if.cen = fdbs0_fdb1_data3_fifo_cen;
wire   [31:0] fdbs0_fdb1_data3_fifo_dout; 
assign fdbs0_fdb1_data3_fifo_dout = regmodel0_regmodel_fdbs0_fdb1_data3_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb1_data3_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb1_data4_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb1_data4_fifo_if.din = fdbs0_fdb1_data4_fifo_din;
wire    [1:0] fdbs0_fdb1_data4_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb1_data4_fifo_if.a = fdbs0_fdb1_data4_fifo_a;
wire   [31:0] fdbs0_fdb1_data4_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb1_data4_fifo_if.wen = fdbs0_fdb1_data4_fifo_wen;
wire          fdbs0_fdb1_data4_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb1_data4_fifo_if.cen = fdbs0_fdb1_data4_fifo_cen;
wire   [31:0] fdbs0_fdb1_data4_fifo_dout; 
assign fdbs0_fdb1_data4_fifo_dout = regmodel0_regmodel_fdbs0_fdb1_data4_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb1_data4_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb1_data5_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb1_data5_fifo_if.din = fdbs0_fdb1_data5_fifo_din;
wire    [1:0] fdbs0_fdb1_data5_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb1_data5_fifo_if.a = fdbs0_fdb1_data5_fifo_a;
wire   [31:0] fdbs0_fdb1_data5_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb1_data5_fifo_if.wen = fdbs0_fdb1_data5_fifo_wen;
wire          fdbs0_fdb1_data5_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb1_data5_fifo_if.cen = fdbs0_fdb1_data5_fifo_cen;
wire   [31:0] fdbs0_fdb1_data5_fifo_dout; 
assign fdbs0_fdb1_data5_fifo_dout = regmodel0_regmodel_fdbs0_fdb1_data5_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb1_data5_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb1_data6_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb1_data6_fifo_if.din = fdbs0_fdb1_data6_fifo_din;
wire    [1:0] fdbs0_fdb1_data6_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb1_data6_fifo_if.a = fdbs0_fdb1_data6_fifo_a;
wire   [31:0] fdbs0_fdb1_data6_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb1_data6_fifo_if.wen = fdbs0_fdb1_data6_fifo_wen;
wire          fdbs0_fdb1_data6_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb1_data6_fifo_if.cen = fdbs0_fdb1_data6_fifo_cen;
wire   [31:0] fdbs0_fdb1_data6_fifo_dout; 
assign fdbs0_fdb1_data6_fifo_dout = regmodel0_regmodel_fdbs0_fdb1_data6_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb1_data6_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb1_data7_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb1_data7_fifo_if.din = fdbs0_fdb1_data7_fifo_din;
wire    [1:0] fdbs0_fdb1_data7_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb1_data7_fifo_if.a = fdbs0_fdb1_data7_fifo_a;
wire   [31:0] fdbs0_fdb1_data7_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb1_data7_fifo_if.wen = fdbs0_fdb1_data7_fifo_wen;
wire          fdbs0_fdb1_data7_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb1_data7_fifo_if.cen = fdbs0_fdb1_data7_fifo_cen;
wire   [31:0] fdbs0_fdb1_data7_fifo_dout; 
assign fdbs0_fdb1_data7_fifo_dout = regmodel0_regmodel_fdbs0_fdb1_data7_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb1_data7_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb1_data8_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb1_data8_fifo_if.din = fdbs0_fdb1_data8_fifo_din;
wire    [1:0] fdbs0_fdb1_data8_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb1_data8_fifo_if.a = fdbs0_fdb1_data8_fifo_a;
wire   [31:0] fdbs0_fdb1_data8_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb1_data8_fifo_if.wen = fdbs0_fdb1_data8_fifo_wen;
wire          fdbs0_fdb1_data8_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb1_data8_fifo_if.cen = fdbs0_fdb1_data8_fifo_cen;
wire   [31:0] fdbs0_fdb1_data8_fifo_dout; 
assign fdbs0_fdb1_data8_fifo_dout = regmodel0_regmodel_fdbs0_fdb1_data8_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb1_data8_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb1_data9_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb1_data9_fifo_if.din = fdbs0_fdb1_data9_fifo_din;
wire    [1:0] fdbs0_fdb1_data9_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb1_data9_fifo_if.a = fdbs0_fdb1_data9_fifo_a;
wire   [31:0] fdbs0_fdb1_data9_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb1_data9_fifo_if.wen = fdbs0_fdb1_data9_fifo_wen;
wire          fdbs0_fdb1_data9_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb1_data9_fifo_if.cen = fdbs0_fdb1_data9_fifo_cen;
wire   [31:0] fdbs0_fdb1_data9_fifo_dout; 
assign fdbs0_fdb1_data9_fifo_dout = regmodel0_regmodel_fdbs0_fdb1_data9_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb1_data9_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb1_data10_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb1_data10_fifo_if.din = fdbs0_fdb1_data10_fifo_din;
wire    [1:0] fdbs0_fdb1_data10_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb1_data10_fifo_if.a = fdbs0_fdb1_data10_fifo_a;
wire   [31:0] fdbs0_fdb1_data10_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb1_data10_fifo_if.wen = fdbs0_fdb1_data10_fifo_wen;
wire          fdbs0_fdb1_data10_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb1_data10_fifo_if.cen = fdbs0_fdb1_data10_fifo_cen;
wire   [31:0] fdbs0_fdb1_data10_fifo_dout; 
assign fdbs0_fdb1_data10_fifo_dout = regmodel0_regmodel_fdbs0_fdb1_data10_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb1_data10_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb1_data11_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb1_data11_fifo_if.din = fdbs0_fdb1_data11_fifo_din;
wire    [1:0] fdbs0_fdb1_data11_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb1_data11_fifo_if.a = fdbs0_fdb1_data11_fifo_a;
wire   [31:0] fdbs0_fdb1_data11_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb1_data11_fifo_if.wen = fdbs0_fdb1_data11_fifo_wen;
wire          fdbs0_fdb1_data11_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb1_data11_fifo_if.cen = fdbs0_fdb1_data11_fifo_cen;
wire   [31:0] fdbs0_fdb1_data11_fifo_dout; 
assign fdbs0_fdb1_data11_fifo_dout = regmodel0_regmodel_fdbs0_fdb1_data11_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb1_data11_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb1_data12_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb1_data12_fifo_if.din = fdbs0_fdb1_data12_fifo_din;
wire    [1:0] fdbs0_fdb1_data12_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb1_data12_fifo_if.a = fdbs0_fdb1_data12_fifo_a;
wire   [31:0] fdbs0_fdb1_data12_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb1_data12_fifo_if.wen = fdbs0_fdb1_data12_fifo_wen;
wire          fdbs0_fdb1_data12_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb1_data12_fifo_if.cen = fdbs0_fdb1_data12_fifo_cen;
wire   [31:0] fdbs0_fdb1_data12_fifo_dout; 
assign fdbs0_fdb1_data12_fifo_dout = regmodel0_regmodel_fdbs0_fdb1_data12_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb1_data12_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb1_data13_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb1_data13_fifo_if.din = fdbs0_fdb1_data13_fifo_din;
wire    [1:0] fdbs0_fdb1_data13_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb1_data13_fifo_if.a = fdbs0_fdb1_data13_fifo_a;
wire   [31:0] fdbs0_fdb1_data13_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb1_data13_fifo_if.wen = fdbs0_fdb1_data13_fifo_wen;
wire          fdbs0_fdb1_data13_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb1_data13_fifo_if.cen = fdbs0_fdb1_data13_fifo_cen;
wire   [31:0] fdbs0_fdb1_data13_fifo_dout; 
assign fdbs0_fdb1_data13_fifo_dout = regmodel0_regmodel_fdbs0_fdb1_data13_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb1_data13_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb1_data14_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb1_data14_fifo_if.din = fdbs0_fdb1_data14_fifo_din;
wire    [1:0] fdbs0_fdb1_data14_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb1_data14_fifo_if.a = fdbs0_fdb1_data14_fifo_a;
wire   [31:0] fdbs0_fdb1_data14_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb1_data14_fifo_if.wen = fdbs0_fdb1_data14_fifo_wen;
wire          fdbs0_fdb1_data14_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb1_data14_fifo_if.cen = fdbs0_fdb1_data14_fifo_cen;
wire   [31:0] fdbs0_fdb1_data14_fifo_dout; 
assign fdbs0_fdb1_data14_fifo_dout = regmodel0_regmodel_fdbs0_fdb1_data14_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb1_data14_fifo_if.reqinfo = fdbs0_reqinfo;
wire   [31:0] fdbs0_fdb1_data15_fifo_din; 
assign regmodel0_regmodel_fdbs0_fdb1_data15_fifo_if.din = fdbs0_fdb1_data15_fifo_din;
wire    [1:0] fdbs0_fdb1_data15_fifo_a; 
assign regmodel0_regmodel_fdbs0_fdb1_data15_fifo_if.a = fdbs0_fdb1_data15_fifo_a;
wire   [31:0] fdbs0_fdb1_data15_fifo_wen; 
assign regmodel0_regmodel_fdbs0_fdb1_data15_fifo_if.wen = fdbs0_fdb1_data15_fifo_wen;
wire          fdbs0_fdb1_data15_fifo_cen; 
assign regmodel0_regmodel_fdbs0_fdb1_data15_fifo_if.cen = fdbs0_fdb1_data15_fifo_cen;
wire   [31:0] fdbs0_fdb1_data15_fifo_dout; 
assign fdbs0_fdb1_data15_fifo_dout = regmodel0_regmodel_fdbs0_fdb1_data15_fifo_if.dout;
assign regmodel0_regmodel_fdbs0_fdb1_data15_fifo_if.reqinfo = fdbs0_reqinfo;

////////////////////////////////////////
// smutex0 - Interface to configregs port mapping
wire    [5:0] smutex0_owner0_id_q; 
assign regmodel0_regmodel_smutex0_owner0_if.id_q = smutex0_owner0_id_q;
wire    [5:0] smutex0_owner0_id_d; 
assign smutex0_owner0_id_d = regmodel0_regmodel_smutex0_owner0_if.id_d;
wire          smutex0_owner0_id_enb; 
assign smutex0_owner0_id_enb = regmodel0_regmodel_smutex0_owner0_if.id_enb;
wire    [5:0] smutex0_owner1_id_q; 
assign regmodel0_regmodel_smutex0_owner1_if.id_q = smutex0_owner1_id_q;
wire    [5:0] smutex0_owner1_id_d; 
assign smutex0_owner1_id_d = regmodel0_regmodel_smutex0_owner1_if.id_d;
wire          smutex0_owner1_id_enb; 
assign smutex0_owner1_id_enb = regmodel0_regmodel_smutex0_owner1_if.id_enb;
wire    [5:0] smutex0_owner2_id_q; 
assign regmodel0_regmodel_smutex0_owner2_if.id_q = smutex0_owner2_id_q;
wire    [5:0] smutex0_owner2_id_d; 
assign smutex0_owner2_id_d = regmodel0_regmodel_smutex0_owner2_if.id_d;
wire          smutex0_owner2_id_enb; 
assign smutex0_owner2_id_enb = regmodel0_regmodel_smutex0_owner2_if.id_enb;
wire    [5:0] smutex0_owner3_id_q; 
assign regmodel0_regmodel_smutex0_owner3_if.id_q = smutex0_owner3_id_q;
wire    [5:0] smutex0_owner3_id_d; 
assign smutex0_owner3_id_d = regmodel0_regmodel_smutex0_owner3_if.id_d;
wire          smutex0_owner3_id_enb; 
assign smutex0_owner3_id_enb = regmodel0_regmodel_smutex0_owner3_if.id_enb;
wire    [5:0] smutex0_owner4_id_q; 
assign regmodel0_regmodel_smutex0_owner4_if.id_q = smutex0_owner4_id_q;
wire    [5:0] smutex0_owner4_id_d; 
assign smutex0_owner4_id_d = regmodel0_regmodel_smutex0_owner4_if.id_d;
wire          smutex0_owner4_id_enb; 
assign smutex0_owner4_id_enb = regmodel0_regmodel_smutex0_owner4_if.id_enb;
wire    [5:0] smutex0_owner5_id_q; 
assign regmodel0_regmodel_smutex0_owner5_if.id_q = smutex0_owner5_id_q;
wire    [5:0] smutex0_owner5_id_d; 
assign smutex0_owner5_id_d = regmodel0_regmodel_smutex0_owner5_if.id_d;
wire          smutex0_owner5_id_enb; 
assign smutex0_owner5_id_enb = regmodel0_regmodel_smutex0_owner5_if.id_enb;
wire    [5:0] smutex0_owner6_id_q; 
assign regmodel0_regmodel_smutex0_owner6_if.id_q = smutex0_owner6_id_q;
wire    [5:0] smutex0_owner6_id_d; 
assign smutex0_owner6_id_d = regmodel0_regmodel_smutex0_owner6_if.id_d;
wire          smutex0_owner6_id_enb; 
assign smutex0_owner6_id_enb = regmodel0_regmodel_smutex0_owner6_if.id_enb;
wire    [5:0] smutex0_owner7_id_q; 
assign regmodel0_regmodel_smutex0_owner7_if.id_q = smutex0_owner7_id_q;
wire    [5:0] smutex0_owner7_id_d; 
assign smutex0_owner7_id_d = regmodel0_regmodel_smutex0_owner7_if.id_d;
wire          smutex0_owner7_id_enb; 
assign smutex0_owner7_id_enb = regmodel0_regmodel_smutex0_owner7_if.id_enb;
wire    [5:0] smutex0_ipc_sc_id_q; 
assign regmodel0_regmodel_smutex0_ipc_sc_if.id_q = smutex0_ipc_sc_id_q;
wire    [7:0] smutex0_timeout_compare_q; 
assign regmodel0_regmodel_smutex0_timeout_if.compare_q = smutex0_timeout_compare_q;
wire    [1:0] smutex0_timeout_prescale_q; 
assign regmodel0_regmodel_smutex0_timeout_if.prescale_q = smutex0_timeout_prescale_q;
wire    [2:0] smutex0_error_err_log_code_q; 
assign regmodel0_regmodel_smutex0_error_err_log_if.code_q = smutex0_error_err_log_code_q;
wire    [2:0] smutex0_error_err_log_code_d; 
assign smutex0_error_err_log_code_d = regmodel0_regmodel_smutex0_error_err_log_if.code_d;
wire          smutex0_error_err_log_code_enb; 
assign smutex0_error_err_log_code_enb = regmodel0_regmodel_smutex0_error_err_log_if.code_enb;
wire          smutex0_error_err_log_access_q; 
assign regmodel0_regmodel_smutex0_error_err_log_if.access_q = smutex0_error_err_log_access_q;
wire          smutex0_error_err_log_access_d; 
assign smutex0_error_err_log_access_d = regmodel0_regmodel_smutex0_error_err_log_if.access_d;
wire          smutex0_error_err_log_access_enb; 
assign smutex0_error_err_log_access_enb = regmodel0_regmodel_smutex0_error_err_log_if.access_enb;
wire    [5:0] smutex0_error_err_log_id_q; 
assign regmodel0_regmodel_smutex0_error_err_log_if.id_q = smutex0_error_err_log_id_q;
wire    [5:0] smutex0_error_err_log_id_d; 
assign smutex0_error_err_log_id_d = regmodel0_regmodel_smutex0_error_err_log_if.id_d;
wire          smutex0_error_err_log_id_enb; 
assign smutex0_error_err_log_id_enb = regmodel0_regmodel_smutex0_error_err_log_if.id_enb;
wire          smutex0_error_err_log_multi_q; 
assign regmodel0_regmodel_smutex0_error_err_log_if.multi_q = smutex0_error_err_log_multi_q;
wire          smutex0_error_err_log_multi_d; 
assign smutex0_error_err_log_multi_d = regmodel0_regmodel_smutex0_error_err_log_if.multi_d;
wire          smutex0_error_err_log_multi_enb; 
assign smutex0_error_err_log_multi_enb = regmodel0_regmodel_smutex0_error_err_log_if.multi_enb;
wire   [31:0] smutex0_error_err_data_data_q; 
assign regmodel0_regmodel_smutex0_error_err_data_if.data_q = smutex0_error_err_data_data_q;
wire   [31:0] smutex0_error_err_data_data_d; 
assign smutex0_error_err_data_data_d = regmodel0_regmodel_smutex0_error_err_data_if.data_d;
wire          smutex0_error_err_data_data_enb; 
assign smutex0_error_err_data_data_enb = regmodel0_regmodel_smutex0_error_err_data_if.data_enb;
wire    [4:0] smutex0_error_err_idx_mutex_idx_q; 
assign regmodel0_regmodel_smutex0_error_err_idx_if.mutex_idx_q = smutex0_error_err_idx_mutex_idx_q;
wire    [4:0] smutex0_error_err_idx_mutex_idx_d; 
assign smutex0_error_err_idx_mutex_idx_d = regmodel0_regmodel_smutex0_error_err_idx_if.mutex_idx_d;
wire          smutex0_error_err_idx_mutex_idx_enb; 
assign smutex0_error_err_idx_mutex_idx_enb = regmodel0_regmodel_smutex0_error_err_idx_if.mutex_idx_enb;

////////////////////////////////////////
// mutex0 - Interface to configregs port mapping
wire    [5:0] mutex0_reqinfo; 
assign regmodel0_regmodel_mutex0_mutex0_if.reqinfo = mutex0_reqinfo;
wire   [30:0] mutex0_mutex0_swid_qout; 
assign mutex0_mutex0_swid_qout = regmodel0_regmodel_mutex0_mutex0_if.swid_qout;
wire   [30:0] mutex0_mutex0_swid_din; 
assign regmodel0_regmodel_mutex0_mutex0_if.swid_din = mutex0_mutex0_swid_din;
wire          mutex0_mutex0_swid_w; 
assign regmodel0_regmodel_mutex0_mutex0_if.swid_w = mutex0_mutex0_swid_w;
wire          mutex0_mutex0_swid_r; 
assign regmodel0_regmodel_mutex0_mutex0_if.swid_r = mutex0_mutex0_swid_r;
wire          mutex0_mutex0_lock_qout; 
assign mutex0_mutex0_lock_qout = regmodel0_regmodel_mutex0_mutex0_if.lock_qout;
wire          mutex0_mutex0_lock_din; 
assign regmodel0_regmodel_mutex0_mutex0_if.lock_din = mutex0_mutex0_lock_din;
wire          mutex0_mutex0_lock_w; 
assign regmodel0_regmodel_mutex0_mutex0_if.lock_w = mutex0_mutex0_lock_w;
assign regmodel0_regmodel_mutex0_mutex1_if.reqinfo = mutex0_reqinfo;
wire   [30:0] mutex0_mutex1_swid_qout; 
assign mutex0_mutex1_swid_qout = regmodel0_regmodel_mutex0_mutex1_if.swid_qout;
wire   [30:0] mutex0_mutex1_swid_din; 
assign regmodel0_regmodel_mutex0_mutex1_if.swid_din = mutex0_mutex1_swid_din;
wire          mutex0_mutex1_swid_w; 
assign regmodel0_regmodel_mutex0_mutex1_if.swid_w = mutex0_mutex1_swid_w;
wire          mutex0_mutex1_swid_r; 
assign regmodel0_regmodel_mutex0_mutex1_if.swid_r = mutex0_mutex1_swid_r;
wire          mutex0_mutex1_lock_qout; 
assign mutex0_mutex1_lock_qout = regmodel0_regmodel_mutex0_mutex1_if.lock_qout;
wire          mutex0_mutex1_lock_din; 
assign regmodel0_regmodel_mutex0_mutex1_if.lock_din = mutex0_mutex1_lock_din;
wire          mutex0_mutex1_lock_w; 
assign regmodel0_regmodel_mutex0_mutex1_if.lock_w = mutex0_mutex1_lock_w;
assign regmodel0_regmodel_mutex0_mutex2_if.reqinfo = mutex0_reqinfo;
wire   [30:0] mutex0_mutex2_swid_qout; 
assign mutex0_mutex2_swid_qout = regmodel0_regmodel_mutex0_mutex2_if.swid_qout;
wire   [30:0] mutex0_mutex2_swid_din; 
assign regmodel0_regmodel_mutex0_mutex2_if.swid_din = mutex0_mutex2_swid_din;
wire          mutex0_mutex2_swid_w; 
assign regmodel0_regmodel_mutex0_mutex2_if.swid_w = mutex0_mutex2_swid_w;
wire          mutex0_mutex2_swid_r; 
assign regmodel0_regmodel_mutex0_mutex2_if.swid_r = mutex0_mutex2_swid_r;
wire          mutex0_mutex2_lock_qout; 
assign mutex0_mutex2_lock_qout = regmodel0_regmodel_mutex0_mutex2_if.lock_qout;
wire          mutex0_mutex2_lock_din; 
assign regmodel0_regmodel_mutex0_mutex2_if.lock_din = mutex0_mutex2_lock_din;
wire          mutex0_mutex2_lock_w; 
assign regmodel0_regmodel_mutex0_mutex2_if.lock_w = mutex0_mutex2_lock_w;
assign regmodel0_regmodel_mutex0_mutex3_if.reqinfo = mutex0_reqinfo;
wire   [30:0] mutex0_mutex3_swid_qout; 
assign mutex0_mutex3_swid_qout = regmodel0_regmodel_mutex0_mutex3_if.swid_qout;
wire   [30:0] mutex0_mutex3_swid_din; 
assign regmodel0_regmodel_mutex0_mutex3_if.swid_din = mutex0_mutex3_swid_din;
wire          mutex0_mutex3_swid_w; 
assign regmodel0_regmodel_mutex0_mutex3_if.swid_w = mutex0_mutex3_swid_w;
wire          mutex0_mutex3_swid_r; 
assign regmodel0_regmodel_mutex0_mutex3_if.swid_r = mutex0_mutex3_swid_r;
wire          mutex0_mutex3_lock_qout; 
assign mutex0_mutex3_lock_qout = regmodel0_regmodel_mutex0_mutex3_if.lock_qout;
wire          mutex0_mutex3_lock_din; 
assign regmodel0_regmodel_mutex0_mutex3_if.lock_din = mutex0_mutex3_lock_din;
wire          mutex0_mutex3_lock_w; 
assign regmodel0_regmodel_mutex0_mutex3_if.lock_w = mutex0_mutex3_lock_w;
assign regmodel0_regmodel_mutex0_mutex4_if.reqinfo = mutex0_reqinfo;
wire   [30:0] mutex0_mutex4_swid_qout; 
assign mutex0_mutex4_swid_qout = regmodel0_regmodel_mutex0_mutex4_if.swid_qout;
wire   [30:0] mutex0_mutex4_swid_din; 
assign regmodel0_regmodel_mutex0_mutex4_if.swid_din = mutex0_mutex4_swid_din;
wire          mutex0_mutex4_swid_w; 
assign regmodel0_regmodel_mutex0_mutex4_if.swid_w = mutex0_mutex4_swid_w;
wire          mutex0_mutex4_swid_r; 
assign regmodel0_regmodel_mutex0_mutex4_if.swid_r = mutex0_mutex4_swid_r;
wire          mutex0_mutex4_lock_qout; 
assign mutex0_mutex4_lock_qout = regmodel0_regmodel_mutex0_mutex4_if.lock_qout;
wire          mutex0_mutex4_lock_din; 
assign regmodel0_regmodel_mutex0_mutex4_if.lock_din = mutex0_mutex4_lock_din;
wire          mutex0_mutex4_lock_w; 
assign regmodel0_regmodel_mutex0_mutex4_if.lock_w = mutex0_mutex4_lock_w;
assign regmodel0_regmodel_mutex0_mutex5_if.reqinfo = mutex0_reqinfo;
wire   [30:0] mutex0_mutex5_swid_qout; 
assign mutex0_mutex5_swid_qout = regmodel0_regmodel_mutex0_mutex5_if.swid_qout;
wire   [30:0] mutex0_mutex5_swid_din; 
assign regmodel0_regmodel_mutex0_mutex5_if.swid_din = mutex0_mutex5_swid_din;
wire          mutex0_mutex5_swid_w; 
assign regmodel0_regmodel_mutex0_mutex5_if.swid_w = mutex0_mutex5_swid_w;
wire          mutex0_mutex5_swid_r; 
assign regmodel0_regmodel_mutex0_mutex5_if.swid_r = mutex0_mutex5_swid_r;
wire          mutex0_mutex5_lock_qout; 
assign mutex0_mutex5_lock_qout = regmodel0_regmodel_mutex0_mutex5_if.lock_qout;
wire          mutex0_mutex5_lock_din; 
assign regmodel0_regmodel_mutex0_mutex5_if.lock_din = mutex0_mutex5_lock_din;
wire          mutex0_mutex5_lock_w; 
assign regmodel0_regmodel_mutex0_mutex5_if.lock_w = mutex0_mutex5_lock_w;
assign regmodel0_regmodel_mutex0_mutex6_if.reqinfo = mutex0_reqinfo;
wire   [30:0] mutex0_mutex6_swid_qout; 
assign mutex0_mutex6_swid_qout = regmodel0_regmodel_mutex0_mutex6_if.swid_qout;
wire   [30:0] mutex0_mutex6_swid_din; 
assign regmodel0_regmodel_mutex0_mutex6_if.swid_din = mutex0_mutex6_swid_din;
wire          mutex0_mutex6_swid_w; 
assign regmodel0_regmodel_mutex0_mutex6_if.swid_w = mutex0_mutex6_swid_w;
wire          mutex0_mutex6_swid_r; 
assign regmodel0_regmodel_mutex0_mutex6_if.swid_r = mutex0_mutex6_swid_r;
wire          mutex0_mutex6_lock_qout; 
assign mutex0_mutex6_lock_qout = regmodel0_regmodel_mutex0_mutex6_if.lock_qout;
wire          mutex0_mutex6_lock_din; 
assign regmodel0_regmodel_mutex0_mutex6_if.lock_din = mutex0_mutex6_lock_din;
wire          mutex0_mutex6_lock_w; 
assign regmodel0_regmodel_mutex0_mutex6_if.lock_w = mutex0_mutex6_lock_w;
assign regmodel0_regmodel_mutex0_mutex7_if.reqinfo = mutex0_reqinfo;
wire   [30:0] mutex0_mutex7_swid_qout; 
assign mutex0_mutex7_swid_qout = regmodel0_regmodel_mutex0_mutex7_if.swid_qout;
wire   [30:0] mutex0_mutex7_swid_din; 
assign regmodel0_regmodel_mutex0_mutex7_if.swid_din = mutex0_mutex7_swid_din;
wire          mutex0_mutex7_swid_w; 
assign regmodel0_regmodel_mutex0_mutex7_if.swid_w = mutex0_mutex7_swid_w;
wire          mutex0_mutex7_swid_r; 
assign regmodel0_regmodel_mutex0_mutex7_if.swid_r = mutex0_mutex7_swid_r;
wire          mutex0_mutex7_lock_qout; 
assign mutex0_mutex7_lock_qout = regmodel0_regmodel_mutex0_mutex7_if.lock_qout;
wire          mutex0_mutex7_lock_din; 
assign regmodel0_regmodel_mutex0_mutex7_if.lock_din = mutex0_mutex7_lock_din;
wire          mutex0_mutex7_lock_w; 
assign regmodel0_regmodel_mutex0_mutex7_if.lock_w = mutex0_mutex7_lock_w;

////////////////////////////////////////
// web0 - Interface to configregs port mapping
wire    [1:0] web0_control_activate_low_pwr_edge_q; 
assign regmodel0_regmodel_web0_control_if.activate_low_pwr_edge_q = web0_control_activate_low_pwr_edge_q;
wire    [1:0] web0_control_event_suppress_edge_q; 
assign regmodel0_regmodel_web0_control_if.event_suppress_edge_q = web0_control_event_suppress_edge_q;
wire    [1:0] web0_control_wake_now_edge_q; 
assign regmodel0_regmodel_web0_control_if.wake_now_edge_q = web0_control_wake_now_edge_q;
wire    [1:0] web0_control_epu_enable_edge_q; 
assign regmodel0_regmodel_web0_control_if.epu_enable_edge_q = web0_control_epu_enable_edge_q;
wire          web0_event_activate_low_pwr_q; 
assign regmodel0_regmodel_web0_event_if.activate_low_pwr_q = web0_event_activate_low_pwr_q;
wire          web0_event_activate_low_pwr_d; 
assign web0_event_activate_low_pwr_d = regmodel0_regmodel_web0_event_if.activate_low_pwr_d;
wire          web0_event_activate_low_pwr_enb; 
assign web0_event_activate_low_pwr_enb = regmodel0_regmodel_web0_event_if.activate_low_pwr_enb;
wire          web0_event_event_suppress_q; 
assign regmodel0_regmodel_web0_event_if.event_suppress_q = web0_event_event_suppress_q;
wire          web0_event_event_suppress_d; 
assign web0_event_event_suppress_d = regmodel0_regmodel_web0_event_if.event_suppress_d;
wire          web0_event_event_suppress_enb; 
assign web0_event_event_suppress_enb = regmodel0_regmodel_web0_event_if.event_suppress_enb;
wire          web0_event_wake_now_q; 
assign regmodel0_regmodel_web0_event_if.wake_now_q = web0_event_wake_now_q;
wire          web0_event_wake_now_d; 
assign web0_event_wake_now_d = regmodel0_regmodel_web0_event_if.wake_now_d;
wire          web0_event_wake_now_enb; 
assign web0_event_wake_now_enb = regmodel0_regmodel_web0_event_if.wake_now_enb;
wire          web0_event_epu_enable_q; 
assign regmodel0_regmodel_web0_event_if.epu_enable_q = web0_event_epu_enable_q;
wire          web0_event_epu_enable_d; 
assign web0_event_epu_enable_d = regmodel0_regmodel_web0_event_if.epu_enable_d;
wire          web0_event_epu_enable_enb; 
assign web0_event_epu_enable_enb = regmodel0_regmodel_web0_event_if.epu_enable_enb;
wire   [31:0] web0_wake_enable0_enable_q; 
assign regmodel0_regmodel_web0_wake_enable0_if.enable_q = web0_wake_enable0_enable_q;
wire   [31:0] web0_wake_enable1_enable_q; 
assign regmodel0_regmodel_web0_wake_enable1_if.enable_q = web0_wake_enable1_enable_q;
wire   [31:0] web0_input_invert0_invert_q; 
assign regmodel0_regmodel_web0_input_invert0_if.invert_q = web0_input_invert0_invert_q;
wire   [31:0] web0_input_invert1_invert_q; 
assign regmodel0_regmodel_web0_input_invert1_if.invert_q = web0_input_invert1_invert_q;

////////////////////////////////////////
// web1 - Interface to configregs port mapping
wire    [1:0] web1_control_activate_low_pwr_edge_q; 
assign regmodel0_regmodel_web1_control_if.activate_low_pwr_edge_q = web1_control_activate_low_pwr_edge_q;
wire    [1:0] web1_control_event_suppress_edge_q; 
assign regmodel0_regmodel_web1_control_if.event_suppress_edge_q = web1_control_event_suppress_edge_q;
wire    [1:0] web1_control_wake_now_edge_q; 
assign regmodel0_regmodel_web1_control_if.wake_now_edge_q = web1_control_wake_now_edge_q;
wire    [1:0] web1_control_epu_enable_edge_q; 
assign regmodel0_regmodel_web1_control_if.epu_enable_edge_q = web1_control_epu_enable_edge_q;
wire          web1_event_activate_low_pwr_q; 
assign regmodel0_regmodel_web1_event_if.activate_low_pwr_q = web1_event_activate_low_pwr_q;
wire          web1_event_activate_low_pwr_d; 
assign web1_event_activate_low_pwr_d = regmodel0_regmodel_web1_event_if.activate_low_pwr_d;
wire          web1_event_activate_low_pwr_enb; 
assign web1_event_activate_low_pwr_enb = regmodel0_regmodel_web1_event_if.activate_low_pwr_enb;
wire          web1_event_event_suppress_q; 
assign regmodel0_regmodel_web1_event_if.event_suppress_q = web1_event_event_suppress_q;
wire          web1_event_event_suppress_d; 
assign web1_event_event_suppress_d = regmodel0_regmodel_web1_event_if.event_suppress_d;
wire          web1_event_event_suppress_enb; 
assign web1_event_event_suppress_enb = regmodel0_regmodel_web1_event_if.event_suppress_enb;
wire          web1_event_wake_now_q; 
assign regmodel0_regmodel_web1_event_if.wake_now_q = web1_event_wake_now_q;
wire          web1_event_wake_now_d; 
assign web1_event_wake_now_d = regmodel0_regmodel_web1_event_if.wake_now_d;
wire          web1_event_wake_now_enb; 
assign web1_event_wake_now_enb = regmodel0_regmodel_web1_event_if.wake_now_enb;
wire          web1_event_epu_enable_q; 
assign regmodel0_regmodel_web1_event_if.epu_enable_q = web1_event_epu_enable_q;
wire          web1_event_epu_enable_d; 
assign web1_event_epu_enable_d = regmodel0_regmodel_web1_event_if.epu_enable_d;
wire          web1_event_epu_enable_enb; 
assign web1_event_epu_enable_enb = regmodel0_regmodel_web1_event_if.epu_enable_enb;
wire   [31:0] web1_wake_enable0_enable_q; 
assign regmodel0_regmodel_web1_wake_enable0_if.enable_q = web1_wake_enable0_enable_q;
wire   [31:0] web1_wake_enable1_enable_q; 
assign regmodel0_regmodel_web1_wake_enable1_if.enable_q = web1_wake_enable1_enable_q;
wire   [31:0] web1_input_invert0_invert_q; 
assign regmodel0_regmodel_web1_input_invert0_if.invert_q = web1_input_invert0_invert_q;
wire   [31:0] web1_input_invert1_invert_q; 
assign regmodel0_regmodel_web1_input_invert1_if.invert_q = web1_input_invert1_invert_q;

////////////////////////////////////////////////////////////////////////
// Register Block(s) Core Instance

regmodel0_regmodel_core i_regmodel0_regmodel_core(
    .clk_i                                ( clk_i                                ),
    .non_retention_reset_ni               ( sys_reset_ni                         ),
    .test_mode_cgm_i                      ( sys_test_mode_cgm_i                  ),
    .ocp_mreset_ni                        ( ocp_mreset_n                         ),
    .ocp_mcmd_i                           ( ocp_mcmd                             ),
    .ocp_maddr_i                          ( ocp_maddr                            ),
    .ocp_mbyteen_i                        ( ocp_mbyteen                          ),
    .ocp_mreqinfo_i                       ( ocp_mreqinfo                         ),
    .ocp_scmdaccept_o                     ( ocp_scmdaccept                       ),
    .ocp_mdata_i                          ( ocp_mdata                            ),
    .ocp_sresp_o                          ( ocp_sresp                            ),
    .ocp_sdata_o                          ( ocp_sdata                            ),
    .ocp_mrespaccept_i                    ( ocp_mrespaccept                      ),
    .sfdbs0_sfdb0_src0_id_q               ( sfdbs0_sfdb0_src0_id_q               ),
    .sfdbs0_sfdb0_src0_size_q             ( sfdbs0_sfdb0_src0_size_q             ),
    .sfdbs0_sfdb0_src1_id_q               ( sfdbs0_sfdb0_src1_id_q               ),
    .sfdbs0_sfdb0_src1_size_q             ( sfdbs0_sfdb0_src1_size_q             ),
    .sfdbs0_sfdb0_src2_id_q               ( sfdbs0_sfdb0_src2_id_q               ),
    .sfdbs0_sfdb0_src2_size_q             ( sfdbs0_sfdb0_src2_size_q             ),
    .sfdbs0_sfdb0_src3_id_q               ( sfdbs0_sfdb0_src3_id_q               ),
    .sfdbs0_sfdb0_src3_size_q             ( sfdbs0_sfdb0_src3_size_q             ),
    .sfdbs0_sfdb0_src4_id_q               ( sfdbs0_sfdb0_src4_id_q               ),
    .sfdbs0_sfdb0_src4_size_q             ( sfdbs0_sfdb0_src4_size_q             ),
    .sfdbs0_sfdb0_src5_id_q               ( sfdbs0_sfdb0_src5_id_q               ),
    .sfdbs0_sfdb0_src5_size_q             ( sfdbs0_sfdb0_src5_size_q             ),
    .sfdbs0_sfdb0_src6_id_q               ( sfdbs0_sfdb0_src6_id_q               ),
    .sfdbs0_sfdb0_src6_size_q             ( sfdbs0_sfdb0_src6_size_q             ),
    .sfdbs0_sfdb0_src7_id_q               ( sfdbs0_sfdb0_src7_id_q               ),
    .sfdbs0_sfdb0_src7_size_q             ( sfdbs0_sfdb0_src7_size_q             ),
    .sfdbs0_sfdb0_src8_id_q               ( sfdbs0_sfdb0_src8_id_q               ),
    .sfdbs0_sfdb0_src8_size_q             ( sfdbs0_sfdb0_src8_size_q             ),
    .sfdbs0_sfdb0_src9_id_q               ( sfdbs0_sfdb0_src9_id_q               ),
    .sfdbs0_sfdb0_src9_size_q             ( sfdbs0_sfdb0_src9_size_q             ),
    .sfdbs0_sfdb0_src10_id_q              ( sfdbs0_sfdb0_src10_id_q              ),
    .sfdbs0_sfdb0_src10_size_q            ( sfdbs0_sfdb0_src10_size_q            ),
    .sfdbs0_sfdb0_src11_id_q              ( sfdbs0_sfdb0_src11_id_q              ),
    .sfdbs0_sfdb0_src11_size_q            ( sfdbs0_sfdb0_src11_size_q            ),
    .sfdbs0_sfdb0_src12_id_q              ( sfdbs0_sfdb0_src12_id_q              ),
    .sfdbs0_sfdb0_src12_size_q            ( sfdbs0_sfdb0_src12_size_q            ),
    .sfdbs0_sfdb0_src13_id_q              ( sfdbs0_sfdb0_src13_id_q              ),
    .sfdbs0_sfdb0_src13_size_q            ( sfdbs0_sfdb0_src13_size_q            ),
    .sfdbs0_sfdb0_src14_id_q              ( sfdbs0_sfdb0_src14_id_q              ),
    .sfdbs0_sfdb0_src14_size_q            ( sfdbs0_sfdb0_src14_size_q            ),
    .sfdbs0_sfdb0_src15_id_q              ( sfdbs0_sfdb0_src15_id_q              ),
    .sfdbs0_sfdb0_src15_size_q            ( sfdbs0_sfdb0_src15_size_q            ),
    .sfdbs0_sfdb0_tgt_id_q                ( sfdbs0_sfdb0_tgt_id_q                ),
    .sfdbs0_ipc_sc_id_q                   ( sfdbs0_ipc_sc_id_q                   ),
    .sfdbs0_error_err_log_code_q          ( sfdbs0_error_err_log_code_q          ),
    .sfdbs0_error_err_log_code_d          ( sfdbs0_error_err_log_code_d          ),
    .sfdbs0_error_err_log_code_enb        ( sfdbs0_error_err_log_code_enb        ),
    .sfdbs0_error_err_log_access_q        ( sfdbs0_error_err_log_access_q        ),
    .sfdbs0_error_err_log_access_d        ( sfdbs0_error_err_log_access_d        ),
    .sfdbs0_error_err_log_access_enb      ( sfdbs0_error_err_log_access_enb      ),
    .sfdbs0_error_err_log_id_q            ( sfdbs0_error_err_log_id_q            ),
    .sfdbs0_error_err_log_id_d            ( sfdbs0_error_err_log_id_d            ),
    .sfdbs0_error_err_log_id_enb          ( sfdbs0_error_err_log_id_enb          ),
    .sfdbs0_error_err_log_multi_q         ( sfdbs0_error_err_log_multi_q         ),
    .sfdbs0_error_err_log_multi_d         ( sfdbs0_error_err_log_multi_d         ),
    .sfdbs0_error_err_log_multi_enb       ( sfdbs0_error_err_log_multi_enb       ),
    .sfdbs0_error_err_data_data_q         ( sfdbs0_error_err_data_data_q         ),
    .sfdbs0_error_err_data_data_d         ( sfdbs0_error_err_data_data_d         ),
    .sfdbs0_error_err_data_data_enb       ( sfdbs0_error_err_data_data_enb       ),
    .sfdbs0_error_err_idx_slice_idx_q     ( sfdbs0_error_err_idx_slice_idx_q     ),
    .sfdbs0_error_err_idx_slice_idx_d     ( sfdbs0_error_err_idx_slice_idx_d     ),
    .sfdbs0_error_err_idx_slice_idx_enb   ( sfdbs0_error_err_idx_slice_idx_enb   ),
    .sfdbs0_error_err_idx_group_idx_q     ( sfdbs0_error_err_idx_group_idx_q     ),
    .sfdbs0_error_err_idx_group_idx_d     ( sfdbs0_error_err_idx_group_idx_d     ),
    .sfdbs0_error_err_idx_group_idx_enb   ( sfdbs0_error_err_idx_group_idx_enb   ),
    .sfdbs0_sfdb1_src0_id_q               ( sfdbs0_sfdb1_src0_id_q               ),
    .sfdbs0_sfdb1_src0_size_q             ( sfdbs0_sfdb1_src0_size_q             ),
    .sfdbs0_sfdb1_src1_id_q               ( sfdbs0_sfdb1_src1_id_q               ),
    .sfdbs0_sfdb1_src1_size_q             ( sfdbs0_sfdb1_src1_size_q             ),
    .sfdbs0_sfdb1_src2_id_q               ( sfdbs0_sfdb1_src2_id_q               ),
    .sfdbs0_sfdb1_src2_size_q             ( sfdbs0_sfdb1_src2_size_q             ),
    .sfdbs0_sfdb1_src3_id_q               ( sfdbs0_sfdb1_src3_id_q               ),
    .sfdbs0_sfdb1_src3_size_q             ( sfdbs0_sfdb1_src3_size_q             ),
    .sfdbs0_sfdb1_src4_id_q               ( sfdbs0_sfdb1_src4_id_q               ),
    .sfdbs0_sfdb1_src4_size_q             ( sfdbs0_sfdb1_src4_size_q             ),
    .sfdbs0_sfdb1_src5_id_q               ( sfdbs0_sfdb1_src5_id_q               ),
    .sfdbs0_sfdb1_src5_size_q             ( sfdbs0_sfdb1_src5_size_q             ),
    .sfdbs0_sfdb1_src6_id_q               ( sfdbs0_sfdb1_src6_id_q               ),
    .sfdbs0_sfdb1_src6_size_q             ( sfdbs0_sfdb1_src6_size_q             ),
    .sfdbs0_sfdb1_src7_id_q               ( sfdbs0_sfdb1_src7_id_q               ),
    .sfdbs0_sfdb1_src7_size_q             ( sfdbs0_sfdb1_src7_size_q             ),
    .sfdbs0_sfdb1_src8_id_q               ( sfdbs0_sfdb1_src8_id_q               ),
    .sfdbs0_sfdb1_src8_size_q             ( sfdbs0_sfdb1_src8_size_q             ),
    .sfdbs0_sfdb1_src9_id_q               ( sfdbs0_sfdb1_src9_id_q               ),
    .sfdbs0_sfdb1_src9_size_q             ( sfdbs0_sfdb1_src9_size_q             ),
    .sfdbs0_sfdb1_src10_id_q              ( sfdbs0_sfdb1_src10_id_q              ),
    .sfdbs0_sfdb1_src10_size_q            ( sfdbs0_sfdb1_src10_size_q            ),
    .sfdbs0_sfdb1_src11_id_q              ( sfdbs0_sfdb1_src11_id_q              ),
    .sfdbs0_sfdb1_src11_size_q            ( sfdbs0_sfdb1_src11_size_q            ),
    .sfdbs0_sfdb1_src12_id_q              ( sfdbs0_sfdb1_src12_id_q              ),
    .sfdbs0_sfdb1_src12_size_q            ( sfdbs0_sfdb1_src12_size_q            ),
    .sfdbs0_sfdb1_src13_id_q              ( sfdbs0_sfdb1_src13_id_q              ),
    .sfdbs0_sfdb1_src13_size_q            ( sfdbs0_sfdb1_src13_size_q            ),
    .sfdbs0_sfdb1_src14_id_q              ( sfdbs0_sfdb1_src14_id_q              ),
    .sfdbs0_sfdb1_src14_size_q            ( sfdbs0_sfdb1_src14_size_q            ),
    .sfdbs0_sfdb1_src15_id_q              ( sfdbs0_sfdb1_src15_id_q              ),
    .sfdbs0_sfdb1_src15_size_q            ( sfdbs0_sfdb1_src15_size_q            ),
    .sfdbs0_sfdb1_tgt_id_q                ( sfdbs0_sfdb1_tgt_id_q                ),
    .fdbs0_reqinfo                        ( fdbs0_reqinfo                        ),
    .fdbs0_fdb0_bell0_cnt_qout            ( fdbs0_fdb0_bell0_cnt_qout            ),
    .fdbs0_fdb0_bell0_cnt_din             ( fdbs0_fdb0_bell0_cnt_din             ),
    .fdbs0_fdb0_bell0_cnt_w               ( fdbs0_fdb0_bell0_cnt_w               ),
    .fdbs0_fdb0_bell0_cnt_r               ( fdbs0_fdb0_bell0_cnt_r               ),
    .fdbs0_fdb0_bell0_failed_ring_q       ( fdbs0_fdb0_bell0_failed_ring_q       ),
    .fdbs0_fdb0_bell0_failed_ring_d       ( fdbs0_fdb0_bell0_failed_ring_d       ),
    .fdbs0_fdb0_bell0_failed_ring_enb     ( fdbs0_fdb0_bell0_failed_ring_enb     ),
    .fdbs0_fdb0_bell0_max_priority_q      ( fdbs0_fdb0_bell0_max_priority_q      ),
    .fdbs0_fdb0_bell0_max_priority_d      ( fdbs0_fdb0_bell0_max_priority_d      ),
    .fdbs0_fdb0_bell0_max_priority_enb    ( fdbs0_fdb0_bell0_max_priority_enb    ),
    .fdbs0_fdb0_bell0_valid_fcnt_q        ( fdbs0_fdb0_bell0_valid_fcnt_q        ),
    .fdbs0_fdb0_bell0_valid_fcnt_d        ( fdbs0_fdb0_bell0_valid_fcnt_d        ),
    .fdbs0_fdb0_bell0_valid_fcnt_enb      ( fdbs0_fdb0_bell0_valid_fcnt_enb      ),
    .fdbs0_fdb0_bell0_fcnt_q              ( fdbs0_fdb0_bell0_fcnt_q              ),
    .fdbs0_fdb0_bell0_fcnt_d              ( fdbs0_fdb0_bell0_fcnt_d              ),
    .fdbs0_fdb0_bell0_fcnt_enb            ( fdbs0_fdb0_bell0_fcnt_enb            ),
    .fdbs0_fdb0_bell1_cnt_qout            ( fdbs0_fdb0_bell1_cnt_qout            ),
    .fdbs0_fdb0_bell1_cnt_din             ( fdbs0_fdb0_bell1_cnt_din             ),
    .fdbs0_fdb0_bell1_cnt_w               ( fdbs0_fdb0_bell1_cnt_w               ),
    .fdbs0_fdb0_bell1_cnt_r               ( fdbs0_fdb0_bell1_cnt_r               ),
    .fdbs0_fdb0_bell1_failed_ring_q       ( fdbs0_fdb0_bell1_failed_ring_q       ),
    .fdbs0_fdb0_bell1_failed_ring_d       ( fdbs0_fdb0_bell1_failed_ring_d       ),
    .fdbs0_fdb0_bell1_failed_ring_enb     ( fdbs0_fdb0_bell1_failed_ring_enb     ),
    .fdbs0_fdb0_bell1_max_priority_q      ( fdbs0_fdb0_bell1_max_priority_q      ),
    .fdbs0_fdb0_bell1_max_priority_d      ( fdbs0_fdb0_bell1_max_priority_d      ),
    .fdbs0_fdb0_bell1_max_priority_enb    ( fdbs0_fdb0_bell1_max_priority_enb    ),
    .fdbs0_fdb0_bell1_valid_fcnt_q        ( fdbs0_fdb0_bell1_valid_fcnt_q        ),
    .fdbs0_fdb0_bell1_valid_fcnt_d        ( fdbs0_fdb0_bell1_valid_fcnt_d        ),
    .fdbs0_fdb0_bell1_valid_fcnt_enb      ( fdbs0_fdb0_bell1_valid_fcnt_enb      ),
    .fdbs0_fdb0_bell1_fcnt_q              ( fdbs0_fdb0_bell1_fcnt_q              ),
    .fdbs0_fdb0_bell1_fcnt_d              ( fdbs0_fdb0_bell1_fcnt_d              ),
    .fdbs0_fdb0_bell1_fcnt_enb            ( fdbs0_fdb0_bell1_fcnt_enb            ),
    .fdbs0_fdb0_bell2_cnt_qout            ( fdbs0_fdb0_bell2_cnt_qout            ),
    .fdbs0_fdb0_bell2_cnt_din             ( fdbs0_fdb0_bell2_cnt_din             ),
    .fdbs0_fdb0_bell2_cnt_w               ( fdbs0_fdb0_bell2_cnt_w               ),
    .fdbs0_fdb0_bell2_cnt_r               ( fdbs0_fdb0_bell2_cnt_r               ),
    .fdbs0_fdb0_bell2_failed_ring_q       ( fdbs0_fdb0_bell2_failed_ring_q       ),
    .fdbs0_fdb0_bell2_failed_ring_d       ( fdbs0_fdb0_bell2_failed_ring_d       ),
    .fdbs0_fdb0_bell2_failed_ring_enb     ( fdbs0_fdb0_bell2_failed_ring_enb     ),
    .fdbs0_fdb0_bell2_max_priority_q      ( fdbs0_fdb0_bell2_max_priority_q      ),
    .fdbs0_fdb0_bell2_max_priority_d      ( fdbs0_fdb0_bell2_max_priority_d      ),
    .fdbs0_fdb0_bell2_max_priority_enb    ( fdbs0_fdb0_bell2_max_priority_enb    ),
    .fdbs0_fdb0_bell2_valid_fcnt_q        ( fdbs0_fdb0_bell2_valid_fcnt_q        ),
    .fdbs0_fdb0_bell2_valid_fcnt_d        ( fdbs0_fdb0_bell2_valid_fcnt_d        ),
    .fdbs0_fdb0_bell2_valid_fcnt_enb      ( fdbs0_fdb0_bell2_valid_fcnt_enb      ),
    .fdbs0_fdb0_bell2_fcnt_q              ( fdbs0_fdb0_bell2_fcnt_q              ),
    .fdbs0_fdb0_bell2_fcnt_d              ( fdbs0_fdb0_bell2_fcnt_d              ),
    .fdbs0_fdb0_bell2_fcnt_enb            ( fdbs0_fdb0_bell2_fcnt_enb            ),
    .fdbs0_fdb0_bell3_cnt_qout            ( fdbs0_fdb0_bell3_cnt_qout            ),
    .fdbs0_fdb0_bell3_cnt_din             ( fdbs0_fdb0_bell3_cnt_din             ),
    .fdbs0_fdb0_bell3_cnt_w               ( fdbs0_fdb0_bell3_cnt_w               ),
    .fdbs0_fdb0_bell3_cnt_r               ( fdbs0_fdb0_bell3_cnt_r               ),
    .fdbs0_fdb0_bell3_failed_ring_q       ( fdbs0_fdb0_bell3_failed_ring_q       ),
    .fdbs0_fdb0_bell3_failed_ring_d       ( fdbs0_fdb0_bell3_failed_ring_d       ),
    .fdbs0_fdb0_bell3_failed_ring_enb     ( fdbs0_fdb0_bell3_failed_ring_enb     ),
    .fdbs0_fdb0_bell3_max_priority_q      ( fdbs0_fdb0_bell3_max_priority_q      ),
    .fdbs0_fdb0_bell3_max_priority_d      ( fdbs0_fdb0_bell3_max_priority_d      ),
    .fdbs0_fdb0_bell3_max_priority_enb    ( fdbs0_fdb0_bell3_max_priority_enb    ),
    .fdbs0_fdb0_bell3_valid_fcnt_q        ( fdbs0_fdb0_bell3_valid_fcnt_q        ),
    .fdbs0_fdb0_bell3_valid_fcnt_d        ( fdbs0_fdb0_bell3_valid_fcnt_d        ),
    .fdbs0_fdb0_bell3_valid_fcnt_enb      ( fdbs0_fdb0_bell3_valid_fcnt_enb      ),
    .fdbs0_fdb0_bell3_fcnt_q              ( fdbs0_fdb0_bell3_fcnt_q              ),
    .fdbs0_fdb0_bell3_fcnt_d              ( fdbs0_fdb0_bell3_fcnt_d              ),
    .fdbs0_fdb0_bell3_fcnt_enb            ( fdbs0_fdb0_bell3_fcnt_enb            ),
    .fdbs0_fdb0_bell4_cnt_qout            ( fdbs0_fdb0_bell4_cnt_qout            ),
    .fdbs0_fdb0_bell4_cnt_din             ( fdbs0_fdb0_bell4_cnt_din             ),
    .fdbs0_fdb0_bell4_cnt_w               ( fdbs0_fdb0_bell4_cnt_w               ),
    .fdbs0_fdb0_bell4_cnt_r               ( fdbs0_fdb0_bell4_cnt_r               ),
    .fdbs0_fdb0_bell4_failed_ring_q       ( fdbs0_fdb0_bell4_failed_ring_q       ),
    .fdbs0_fdb0_bell4_failed_ring_d       ( fdbs0_fdb0_bell4_failed_ring_d       ),
    .fdbs0_fdb0_bell4_failed_ring_enb     ( fdbs0_fdb0_bell4_failed_ring_enb     ),
    .fdbs0_fdb0_bell4_max_priority_q      ( fdbs0_fdb0_bell4_max_priority_q      ),
    .fdbs0_fdb0_bell4_max_priority_d      ( fdbs0_fdb0_bell4_max_priority_d      ),
    .fdbs0_fdb0_bell4_max_priority_enb    ( fdbs0_fdb0_bell4_max_priority_enb    ),
    .fdbs0_fdb0_bell4_valid_fcnt_q        ( fdbs0_fdb0_bell4_valid_fcnt_q        ),
    .fdbs0_fdb0_bell4_valid_fcnt_d        ( fdbs0_fdb0_bell4_valid_fcnt_d        ),
    .fdbs0_fdb0_bell4_valid_fcnt_enb      ( fdbs0_fdb0_bell4_valid_fcnt_enb      ),
    .fdbs0_fdb0_bell4_fcnt_q              ( fdbs0_fdb0_bell4_fcnt_q              ),
    .fdbs0_fdb0_bell4_fcnt_d              ( fdbs0_fdb0_bell4_fcnt_d              ),
    .fdbs0_fdb0_bell4_fcnt_enb            ( fdbs0_fdb0_bell4_fcnt_enb            ),
    .fdbs0_fdb0_bell5_cnt_qout            ( fdbs0_fdb0_bell5_cnt_qout            ),
    .fdbs0_fdb0_bell5_cnt_din             ( fdbs0_fdb0_bell5_cnt_din             ),
    .fdbs0_fdb0_bell5_cnt_w               ( fdbs0_fdb0_bell5_cnt_w               ),
    .fdbs0_fdb0_bell5_cnt_r               ( fdbs0_fdb0_bell5_cnt_r               ),
    .fdbs0_fdb0_bell5_failed_ring_q       ( fdbs0_fdb0_bell5_failed_ring_q       ),
    .fdbs0_fdb0_bell5_failed_ring_d       ( fdbs0_fdb0_bell5_failed_ring_d       ),
    .fdbs0_fdb0_bell5_failed_ring_enb     ( fdbs0_fdb0_bell5_failed_ring_enb     ),
    .fdbs0_fdb0_bell5_max_priority_q      ( fdbs0_fdb0_bell5_max_priority_q      ),
    .fdbs0_fdb0_bell5_max_priority_d      ( fdbs0_fdb0_bell5_max_priority_d      ),
    .fdbs0_fdb0_bell5_max_priority_enb    ( fdbs0_fdb0_bell5_max_priority_enb    ),
    .fdbs0_fdb0_bell5_valid_fcnt_q        ( fdbs0_fdb0_bell5_valid_fcnt_q        ),
    .fdbs0_fdb0_bell5_valid_fcnt_d        ( fdbs0_fdb0_bell5_valid_fcnt_d        ),
    .fdbs0_fdb0_bell5_valid_fcnt_enb      ( fdbs0_fdb0_bell5_valid_fcnt_enb      ),
    .fdbs0_fdb0_bell5_fcnt_q              ( fdbs0_fdb0_bell5_fcnt_q              ),
    .fdbs0_fdb0_bell5_fcnt_d              ( fdbs0_fdb0_bell5_fcnt_d              ),
    .fdbs0_fdb0_bell5_fcnt_enb            ( fdbs0_fdb0_bell5_fcnt_enb            ),
    .fdbs0_fdb0_bell6_cnt_qout            ( fdbs0_fdb0_bell6_cnt_qout            ),
    .fdbs0_fdb0_bell6_cnt_din             ( fdbs0_fdb0_bell6_cnt_din             ),
    .fdbs0_fdb0_bell6_cnt_w               ( fdbs0_fdb0_bell6_cnt_w               ),
    .fdbs0_fdb0_bell6_cnt_r               ( fdbs0_fdb0_bell6_cnt_r               ),
    .fdbs0_fdb0_bell6_failed_ring_q       ( fdbs0_fdb0_bell6_failed_ring_q       ),
    .fdbs0_fdb0_bell6_failed_ring_d       ( fdbs0_fdb0_bell6_failed_ring_d       ),
    .fdbs0_fdb0_bell6_failed_ring_enb     ( fdbs0_fdb0_bell6_failed_ring_enb     ),
    .fdbs0_fdb0_bell6_max_priority_q      ( fdbs0_fdb0_bell6_max_priority_q      ),
    .fdbs0_fdb0_bell6_max_priority_d      ( fdbs0_fdb0_bell6_max_priority_d      ),
    .fdbs0_fdb0_bell6_max_priority_enb    ( fdbs0_fdb0_bell6_max_priority_enb    ),
    .fdbs0_fdb0_bell6_valid_fcnt_q        ( fdbs0_fdb0_bell6_valid_fcnt_q        ),
    .fdbs0_fdb0_bell6_valid_fcnt_d        ( fdbs0_fdb0_bell6_valid_fcnt_d        ),
    .fdbs0_fdb0_bell6_valid_fcnt_enb      ( fdbs0_fdb0_bell6_valid_fcnt_enb      ),
    .fdbs0_fdb0_bell6_fcnt_q              ( fdbs0_fdb0_bell6_fcnt_q              ),
    .fdbs0_fdb0_bell6_fcnt_d              ( fdbs0_fdb0_bell6_fcnt_d              ),
    .fdbs0_fdb0_bell6_fcnt_enb            ( fdbs0_fdb0_bell6_fcnt_enb            ),
    .fdbs0_fdb0_bell7_cnt_qout            ( fdbs0_fdb0_bell7_cnt_qout            ),
    .fdbs0_fdb0_bell7_cnt_din             ( fdbs0_fdb0_bell7_cnt_din             ),
    .fdbs0_fdb0_bell7_cnt_w               ( fdbs0_fdb0_bell7_cnt_w               ),
    .fdbs0_fdb0_bell7_cnt_r               ( fdbs0_fdb0_bell7_cnt_r               ),
    .fdbs0_fdb0_bell7_failed_ring_q       ( fdbs0_fdb0_bell7_failed_ring_q       ),
    .fdbs0_fdb0_bell7_failed_ring_d       ( fdbs0_fdb0_bell7_failed_ring_d       ),
    .fdbs0_fdb0_bell7_failed_ring_enb     ( fdbs0_fdb0_bell7_failed_ring_enb     ),
    .fdbs0_fdb0_bell7_max_priority_q      ( fdbs0_fdb0_bell7_max_priority_q      ),
    .fdbs0_fdb0_bell7_max_priority_d      ( fdbs0_fdb0_bell7_max_priority_d      ),
    .fdbs0_fdb0_bell7_max_priority_enb    ( fdbs0_fdb0_bell7_max_priority_enb    ),
    .fdbs0_fdb0_bell7_valid_fcnt_q        ( fdbs0_fdb0_bell7_valid_fcnt_q        ),
    .fdbs0_fdb0_bell7_valid_fcnt_d        ( fdbs0_fdb0_bell7_valid_fcnt_d        ),
    .fdbs0_fdb0_bell7_valid_fcnt_enb      ( fdbs0_fdb0_bell7_valid_fcnt_enb      ),
    .fdbs0_fdb0_bell7_fcnt_q              ( fdbs0_fdb0_bell7_fcnt_q              ),
    .fdbs0_fdb0_bell7_fcnt_d              ( fdbs0_fdb0_bell7_fcnt_d              ),
    .fdbs0_fdb0_bell7_fcnt_enb            ( fdbs0_fdb0_bell7_fcnt_enb            ),
    .fdbs0_fdb0_bell8_cnt_qout            ( fdbs0_fdb0_bell8_cnt_qout            ),
    .fdbs0_fdb0_bell8_cnt_din             ( fdbs0_fdb0_bell8_cnt_din             ),
    .fdbs0_fdb0_bell8_cnt_w               ( fdbs0_fdb0_bell8_cnt_w               ),
    .fdbs0_fdb0_bell8_cnt_r               ( fdbs0_fdb0_bell8_cnt_r               ),
    .fdbs0_fdb0_bell8_failed_ring_q       ( fdbs0_fdb0_bell8_failed_ring_q       ),
    .fdbs0_fdb0_bell8_failed_ring_d       ( fdbs0_fdb0_bell8_failed_ring_d       ),
    .fdbs0_fdb0_bell8_failed_ring_enb     ( fdbs0_fdb0_bell8_failed_ring_enb     ),
    .fdbs0_fdb0_bell8_max_priority_q      ( fdbs0_fdb0_bell8_max_priority_q      ),
    .fdbs0_fdb0_bell8_max_priority_d      ( fdbs0_fdb0_bell8_max_priority_d      ),
    .fdbs0_fdb0_bell8_max_priority_enb    ( fdbs0_fdb0_bell8_max_priority_enb    ),
    .fdbs0_fdb0_bell8_valid_fcnt_q        ( fdbs0_fdb0_bell8_valid_fcnt_q        ),
    .fdbs0_fdb0_bell8_valid_fcnt_d        ( fdbs0_fdb0_bell8_valid_fcnt_d        ),
    .fdbs0_fdb0_bell8_valid_fcnt_enb      ( fdbs0_fdb0_bell8_valid_fcnt_enb      ),
    .fdbs0_fdb0_bell8_fcnt_q              ( fdbs0_fdb0_bell8_fcnt_q              ),
    .fdbs0_fdb0_bell8_fcnt_d              ( fdbs0_fdb0_bell8_fcnt_d              ),
    .fdbs0_fdb0_bell8_fcnt_enb            ( fdbs0_fdb0_bell8_fcnt_enb            ),
    .fdbs0_fdb0_bell9_cnt_qout            ( fdbs0_fdb0_bell9_cnt_qout            ),
    .fdbs0_fdb0_bell9_cnt_din             ( fdbs0_fdb0_bell9_cnt_din             ),
    .fdbs0_fdb0_bell9_cnt_w               ( fdbs0_fdb0_bell9_cnt_w               ),
    .fdbs0_fdb0_bell9_cnt_r               ( fdbs0_fdb0_bell9_cnt_r               ),
    .fdbs0_fdb0_bell9_failed_ring_q       ( fdbs0_fdb0_bell9_failed_ring_q       ),
    .fdbs0_fdb0_bell9_failed_ring_d       ( fdbs0_fdb0_bell9_failed_ring_d       ),
    .fdbs0_fdb0_bell9_failed_ring_enb     ( fdbs0_fdb0_bell9_failed_ring_enb     ),
    .fdbs0_fdb0_bell9_max_priority_q      ( fdbs0_fdb0_bell9_max_priority_q      ),
    .fdbs0_fdb0_bell9_max_priority_d      ( fdbs0_fdb0_bell9_max_priority_d      ),
    .fdbs0_fdb0_bell9_max_priority_enb    ( fdbs0_fdb0_bell9_max_priority_enb    ),
    .fdbs0_fdb0_bell9_valid_fcnt_q        ( fdbs0_fdb0_bell9_valid_fcnt_q        ),
    .fdbs0_fdb0_bell9_valid_fcnt_d        ( fdbs0_fdb0_bell9_valid_fcnt_d        ),
    .fdbs0_fdb0_bell9_valid_fcnt_enb      ( fdbs0_fdb0_bell9_valid_fcnt_enb      ),
    .fdbs0_fdb0_bell9_fcnt_q              ( fdbs0_fdb0_bell9_fcnt_q              ),
    .fdbs0_fdb0_bell9_fcnt_d              ( fdbs0_fdb0_bell9_fcnt_d              ),
    .fdbs0_fdb0_bell9_fcnt_enb            ( fdbs0_fdb0_bell9_fcnt_enb            ),
    .fdbs0_fdb0_bell10_cnt_qout           ( fdbs0_fdb0_bell10_cnt_qout           ),
    .fdbs0_fdb0_bell10_cnt_din            ( fdbs0_fdb0_bell10_cnt_din            ),
    .fdbs0_fdb0_bell10_cnt_w              ( fdbs0_fdb0_bell10_cnt_w              ),
    .fdbs0_fdb0_bell10_cnt_r              ( fdbs0_fdb0_bell10_cnt_r              ),
    .fdbs0_fdb0_bell10_failed_ring_q      ( fdbs0_fdb0_bell10_failed_ring_q      ),
    .fdbs0_fdb0_bell10_failed_ring_d      ( fdbs0_fdb0_bell10_failed_ring_d      ),
    .fdbs0_fdb0_bell10_failed_ring_enb    ( fdbs0_fdb0_bell10_failed_ring_enb    ),
    .fdbs0_fdb0_bell10_max_priority_q     ( fdbs0_fdb0_bell10_max_priority_q     ),
    .fdbs0_fdb0_bell10_max_priority_d     ( fdbs0_fdb0_bell10_max_priority_d     ),
    .fdbs0_fdb0_bell10_max_priority_enb   ( fdbs0_fdb0_bell10_max_priority_enb   ),
    .fdbs0_fdb0_bell10_valid_fcnt_q       ( fdbs0_fdb0_bell10_valid_fcnt_q       ),
    .fdbs0_fdb0_bell10_valid_fcnt_d       ( fdbs0_fdb0_bell10_valid_fcnt_d       ),
    .fdbs0_fdb0_bell10_valid_fcnt_enb     ( fdbs0_fdb0_bell10_valid_fcnt_enb     ),
    .fdbs0_fdb0_bell10_fcnt_q             ( fdbs0_fdb0_bell10_fcnt_q             ),
    .fdbs0_fdb0_bell10_fcnt_d             ( fdbs0_fdb0_bell10_fcnt_d             ),
    .fdbs0_fdb0_bell10_fcnt_enb           ( fdbs0_fdb0_bell10_fcnt_enb           ),
    .fdbs0_fdb0_bell11_cnt_qout           ( fdbs0_fdb0_bell11_cnt_qout           ),
    .fdbs0_fdb0_bell11_cnt_din            ( fdbs0_fdb0_bell11_cnt_din            ),
    .fdbs0_fdb0_bell11_cnt_w              ( fdbs0_fdb0_bell11_cnt_w              ),
    .fdbs0_fdb0_bell11_cnt_r              ( fdbs0_fdb0_bell11_cnt_r              ),
    .fdbs0_fdb0_bell11_failed_ring_q      ( fdbs0_fdb0_bell11_failed_ring_q      ),
    .fdbs0_fdb0_bell11_failed_ring_d      ( fdbs0_fdb0_bell11_failed_ring_d      ),
    .fdbs0_fdb0_bell11_failed_ring_enb    ( fdbs0_fdb0_bell11_failed_ring_enb    ),
    .fdbs0_fdb0_bell11_max_priority_q     ( fdbs0_fdb0_bell11_max_priority_q     ),
    .fdbs0_fdb0_bell11_max_priority_d     ( fdbs0_fdb0_bell11_max_priority_d     ),
    .fdbs0_fdb0_bell11_max_priority_enb   ( fdbs0_fdb0_bell11_max_priority_enb   ),
    .fdbs0_fdb0_bell11_valid_fcnt_q       ( fdbs0_fdb0_bell11_valid_fcnt_q       ),
    .fdbs0_fdb0_bell11_valid_fcnt_d       ( fdbs0_fdb0_bell11_valid_fcnt_d       ),
    .fdbs0_fdb0_bell11_valid_fcnt_enb     ( fdbs0_fdb0_bell11_valid_fcnt_enb     ),
    .fdbs0_fdb0_bell11_fcnt_q             ( fdbs0_fdb0_bell11_fcnt_q             ),
    .fdbs0_fdb0_bell11_fcnt_d             ( fdbs0_fdb0_bell11_fcnt_d             ),
    .fdbs0_fdb0_bell11_fcnt_enb           ( fdbs0_fdb0_bell11_fcnt_enb           ),
    .fdbs0_fdb0_bell12_cnt_qout           ( fdbs0_fdb0_bell12_cnt_qout           ),
    .fdbs0_fdb0_bell12_cnt_din            ( fdbs0_fdb0_bell12_cnt_din            ),
    .fdbs0_fdb0_bell12_cnt_w              ( fdbs0_fdb0_bell12_cnt_w              ),
    .fdbs0_fdb0_bell12_cnt_r              ( fdbs0_fdb0_bell12_cnt_r              ),
    .fdbs0_fdb0_bell12_failed_ring_q      ( fdbs0_fdb0_bell12_failed_ring_q      ),
    .fdbs0_fdb0_bell12_failed_ring_d      ( fdbs0_fdb0_bell12_failed_ring_d      ),
    .fdbs0_fdb0_bell12_failed_ring_enb    ( fdbs0_fdb0_bell12_failed_ring_enb    ),
    .fdbs0_fdb0_bell12_max_priority_q     ( fdbs0_fdb0_bell12_max_priority_q     ),
    .fdbs0_fdb0_bell12_max_priority_d     ( fdbs0_fdb0_bell12_max_priority_d     ),
    .fdbs0_fdb0_bell12_max_priority_enb   ( fdbs0_fdb0_bell12_max_priority_enb   ),
    .fdbs0_fdb0_bell12_valid_fcnt_q       ( fdbs0_fdb0_bell12_valid_fcnt_q       ),
    .fdbs0_fdb0_bell12_valid_fcnt_d       ( fdbs0_fdb0_bell12_valid_fcnt_d       ),
    .fdbs0_fdb0_bell12_valid_fcnt_enb     ( fdbs0_fdb0_bell12_valid_fcnt_enb     ),
    .fdbs0_fdb0_bell12_fcnt_q             ( fdbs0_fdb0_bell12_fcnt_q             ),
    .fdbs0_fdb0_bell12_fcnt_d             ( fdbs0_fdb0_bell12_fcnt_d             ),
    .fdbs0_fdb0_bell12_fcnt_enb           ( fdbs0_fdb0_bell12_fcnt_enb           ),
    .fdbs0_fdb0_bell13_cnt_qout           ( fdbs0_fdb0_bell13_cnt_qout           ),
    .fdbs0_fdb0_bell13_cnt_din            ( fdbs0_fdb0_bell13_cnt_din            ),
    .fdbs0_fdb0_bell13_cnt_w              ( fdbs0_fdb0_bell13_cnt_w              ),
    .fdbs0_fdb0_bell13_cnt_r              ( fdbs0_fdb0_bell13_cnt_r              ),
    .fdbs0_fdb0_bell13_failed_ring_q      ( fdbs0_fdb0_bell13_failed_ring_q      ),
    .fdbs0_fdb0_bell13_failed_ring_d      ( fdbs0_fdb0_bell13_failed_ring_d      ),
    .fdbs0_fdb0_bell13_failed_ring_enb    ( fdbs0_fdb0_bell13_failed_ring_enb    ),
    .fdbs0_fdb0_bell13_max_priority_q     ( fdbs0_fdb0_bell13_max_priority_q     ),
    .fdbs0_fdb0_bell13_max_priority_d     ( fdbs0_fdb0_bell13_max_priority_d     ),
    .fdbs0_fdb0_bell13_max_priority_enb   ( fdbs0_fdb0_bell13_max_priority_enb   ),
    .fdbs0_fdb0_bell13_valid_fcnt_q       ( fdbs0_fdb0_bell13_valid_fcnt_q       ),
    .fdbs0_fdb0_bell13_valid_fcnt_d       ( fdbs0_fdb0_bell13_valid_fcnt_d       ),
    .fdbs0_fdb0_bell13_valid_fcnt_enb     ( fdbs0_fdb0_bell13_valid_fcnt_enb     ),
    .fdbs0_fdb0_bell13_fcnt_q             ( fdbs0_fdb0_bell13_fcnt_q             ),
    .fdbs0_fdb0_bell13_fcnt_d             ( fdbs0_fdb0_bell13_fcnt_d             ),
    .fdbs0_fdb0_bell13_fcnt_enb           ( fdbs0_fdb0_bell13_fcnt_enb           ),
    .fdbs0_fdb0_bell14_cnt_qout           ( fdbs0_fdb0_bell14_cnt_qout           ),
    .fdbs0_fdb0_bell14_cnt_din            ( fdbs0_fdb0_bell14_cnt_din            ),
    .fdbs0_fdb0_bell14_cnt_w              ( fdbs0_fdb0_bell14_cnt_w              ),
    .fdbs0_fdb0_bell14_cnt_r              ( fdbs0_fdb0_bell14_cnt_r              ),
    .fdbs0_fdb0_bell14_failed_ring_q      ( fdbs0_fdb0_bell14_failed_ring_q      ),
    .fdbs0_fdb0_bell14_failed_ring_d      ( fdbs0_fdb0_bell14_failed_ring_d      ),
    .fdbs0_fdb0_bell14_failed_ring_enb    ( fdbs0_fdb0_bell14_failed_ring_enb    ),
    .fdbs0_fdb0_bell14_max_priority_q     ( fdbs0_fdb0_bell14_max_priority_q     ),
    .fdbs0_fdb0_bell14_max_priority_d     ( fdbs0_fdb0_bell14_max_priority_d     ),
    .fdbs0_fdb0_bell14_max_priority_enb   ( fdbs0_fdb0_bell14_max_priority_enb   ),
    .fdbs0_fdb0_bell14_valid_fcnt_q       ( fdbs0_fdb0_bell14_valid_fcnt_q       ),
    .fdbs0_fdb0_bell14_valid_fcnt_d       ( fdbs0_fdb0_bell14_valid_fcnt_d       ),
    .fdbs0_fdb0_bell14_valid_fcnt_enb     ( fdbs0_fdb0_bell14_valid_fcnt_enb     ),
    .fdbs0_fdb0_bell14_fcnt_q             ( fdbs0_fdb0_bell14_fcnt_q             ),
    .fdbs0_fdb0_bell14_fcnt_d             ( fdbs0_fdb0_bell14_fcnt_d             ),
    .fdbs0_fdb0_bell14_fcnt_enb           ( fdbs0_fdb0_bell14_fcnt_enb           ),
    .fdbs0_fdb0_bell15_cnt_qout           ( fdbs0_fdb0_bell15_cnt_qout           ),
    .fdbs0_fdb0_bell15_cnt_din            ( fdbs0_fdb0_bell15_cnt_din            ),
    .fdbs0_fdb0_bell15_cnt_w              ( fdbs0_fdb0_bell15_cnt_w              ),
    .fdbs0_fdb0_bell15_cnt_r              ( fdbs0_fdb0_bell15_cnt_r              ),
    .fdbs0_fdb0_bell15_failed_ring_q      ( fdbs0_fdb0_bell15_failed_ring_q      ),
    .fdbs0_fdb0_bell15_failed_ring_d      ( fdbs0_fdb0_bell15_failed_ring_d      ),
    .fdbs0_fdb0_bell15_failed_ring_enb    ( fdbs0_fdb0_bell15_failed_ring_enb    ),
    .fdbs0_fdb0_bell15_max_priority_q     ( fdbs0_fdb0_bell15_max_priority_q     ),
    .fdbs0_fdb0_bell15_max_priority_d     ( fdbs0_fdb0_bell15_max_priority_d     ),
    .fdbs0_fdb0_bell15_max_priority_enb   ( fdbs0_fdb0_bell15_max_priority_enb   ),
    .fdbs0_fdb0_bell15_valid_fcnt_q       ( fdbs0_fdb0_bell15_valid_fcnt_q       ),
    .fdbs0_fdb0_bell15_valid_fcnt_d       ( fdbs0_fdb0_bell15_valid_fcnt_d       ),
    .fdbs0_fdb0_bell15_valid_fcnt_enb     ( fdbs0_fdb0_bell15_valid_fcnt_enb     ),
    .fdbs0_fdb0_bell15_fcnt_q             ( fdbs0_fdb0_bell15_fcnt_q             ),
    .fdbs0_fdb0_bell15_fcnt_d             ( fdbs0_fdb0_bell15_fcnt_d             ),
    .fdbs0_fdb0_bell15_fcnt_enb           ( fdbs0_fdb0_bell15_fcnt_enb           ),
    .fdbs0_fdb0_control_ack_on_empty_q    ( fdbs0_fdb0_control_ack_on_empty_q    ),
    .fdbs0_fdb0_enable_enable_qout        ( fdbs0_fdb0_enable_enable_qout        ),
    .fdbs0_fdb0_enable_enable_din         ( fdbs0_fdb0_enable_enable_din         ),
    .fdbs0_fdb0_enable_enable_w           ( fdbs0_fdb0_enable_enable_w           ),
    .fdbs0_fdb0_status_status_d           ( fdbs0_fdb0_status_status_d           ),
    .fdbs0_fdb0_data0_fifo_din            ( fdbs0_fdb0_data0_fifo_din            ),
    .fdbs0_fdb0_data0_fifo_a              ( fdbs0_fdb0_data0_fifo_a              ),
    .fdbs0_fdb0_data0_fifo_wen            ( fdbs0_fdb0_data0_fifo_wen            ),
    .fdbs0_fdb0_data0_fifo_cen            ( fdbs0_fdb0_data0_fifo_cen            ),
    .fdbs0_fdb0_data0_fifo_dout           ( fdbs0_fdb0_data0_fifo_dout           ),
    .fdbs0_fdb0_data1_fifo_din            ( fdbs0_fdb0_data1_fifo_din            ),
    .fdbs0_fdb0_data1_fifo_a              ( fdbs0_fdb0_data1_fifo_a              ),
    .fdbs0_fdb0_data1_fifo_wen            ( fdbs0_fdb0_data1_fifo_wen            ),
    .fdbs0_fdb0_data1_fifo_cen            ( fdbs0_fdb0_data1_fifo_cen            ),
    .fdbs0_fdb0_data1_fifo_dout           ( fdbs0_fdb0_data1_fifo_dout           ),
    .fdbs0_fdb0_data2_fifo_din            ( fdbs0_fdb0_data2_fifo_din            ),
    .fdbs0_fdb0_data2_fifo_a              ( fdbs0_fdb0_data2_fifo_a              ),
    .fdbs0_fdb0_data2_fifo_wen            ( fdbs0_fdb0_data2_fifo_wen            ),
    .fdbs0_fdb0_data2_fifo_cen            ( fdbs0_fdb0_data2_fifo_cen            ),
    .fdbs0_fdb0_data2_fifo_dout           ( fdbs0_fdb0_data2_fifo_dout           ),
    .fdbs0_fdb0_data3_fifo_din            ( fdbs0_fdb0_data3_fifo_din            ),
    .fdbs0_fdb0_data3_fifo_a              ( fdbs0_fdb0_data3_fifo_a              ),
    .fdbs0_fdb0_data3_fifo_wen            ( fdbs0_fdb0_data3_fifo_wen            ),
    .fdbs0_fdb0_data3_fifo_cen            ( fdbs0_fdb0_data3_fifo_cen            ),
    .fdbs0_fdb0_data3_fifo_dout           ( fdbs0_fdb0_data3_fifo_dout           ),
    .fdbs0_fdb0_data4_fifo_din            ( fdbs0_fdb0_data4_fifo_din            ),
    .fdbs0_fdb0_data4_fifo_a              ( fdbs0_fdb0_data4_fifo_a              ),
    .fdbs0_fdb0_data4_fifo_wen            ( fdbs0_fdb0_data4_fifo_wen            ),
    .fdbs0_fdb0_data4_fifo_cen            ( fdbs0_fdb0_data4_fifo_cen            ),
    .fdbs0_fdb0_data4_fifo_dout           ( fdbs0_fdb0_data4_fifo_dout           ),
    .fdbs0_fdb0_data5_fifo_din            ( fdbs0_fdb0_data5_fifo_din            ),
    .fdbs0_fdb0_data5_fifo_a              ( fdbs0_fdb0_data5_fifo_a              ),
    .fdbs0_fdb0_data5_fifo_wen            ( fdbs0_fdb0_data5_fifo_wen            ),
    .fdbs0_fdb0_data5_fifo_cen            ( fdbs0_fdb0_data5_fifo_cen            ),
    .fdbs0_fdb0_data5_fifo_dout           ( fdbs0_fdb0_data5_fifo_dout           ),
    .fdbs0_fdb0_data6_fifo_din            ( fdbs0_fdb0_data6_fifo_din            ),
    .fdbs0_fdb0_data6_fifo_a              ( fdbs0_fdb0_data6_fifo_a              ),
    .fdbs0_fdb0_data6_fifo_wen            ( fdbs0_fdb0_data6_fifo_wen            ),
    .fdbs0_fdb0_data6_fifo_cen            ( fdbs0_fdb0_data6_fifo_cen            ),
    .fdbs0_fdb0_data6_fifo_dout           ( fdbs0_fdb0_data6_fifo_dout           ),
    .fdbs0_fdb0_data7_fifo_din            ( fdbs0_fdb0_data7_fifo_din            ),
    .fdbs0_fdb0_data7_fifo_a              ( fdbs0_fdb0_data7_fifo_a              ),
    .fdbs0_fdb0_data7_fifo_wen            ( fdbs0_fdb0_data7_fifo_wen            ),
    .fdbs0_fdb0_data7_fifo_cen            ( fdbs0_fdb0_data7_fifo_cen            ),
    .fdbs0_fdb0_data7_fifo_dout           ( fdbs0_fdb0_data7_fifo_dout           ),
    .fdbs0_fdb0_data8_fifo_din            ( fdbs0_fdb0_data8_fifo_din            ),
    .fdbs0_fdb0_data8_fifo_a              ( fdbs0_fdb0_data8_fifo_a              ),
    .fdbs0_fdb0_data8_fifo_wen            ( fdbs0_fdb0_data8_fifo_wen            ),
    .fdbs0_fdb0_data8_fifo_cen            ( fdbs0_fdb0_data8_fifo_cen            ),
    .fdbs0_fdb0_data8_fifo_dout           ( fdbs0_fdb0_data8_fifo_dout           ),
    .fdbs0_fdb0_data9_fifo_din            ( fdbs0_fdb0_data9_fifo_din            ),
    .fdbs0_fdb0_data9_fifo_a              ( fdbs0_fdb0_data9_fifo_a              ),
    .fdbs0_fdb0_data9_fifo_wen            ( fdbs0_fdb0_data9_fifo_wen            ),
    .fdbs0_fdb0_data9_fifo_cen            ( fdbs0_fdb0_data9_fifo_cen            ),
    .fdbs0_fdb0_data9_fifo_dout           ( fdbs0_fdb0_data9_fifo_dout           ),
    .fdbs0_fdb0_data10_fifo_din           ( fdbs0_fdb0_data10_fifo_din           ),
    .fdbs0_fdb0_data10_fifo_a             ( fdbs0_fdb0_data10_fifo_a             ),
    .fdbs0_fdb0_data10_fifo_wen           ( fdbs0_fdb0_data10_fifo_wen           ),
    .fdbs0_fdb0_data10_fifo_cen           ( fdbs0_fdb0_data10_fifo_cen           ),
    .fdbs0_fdb0_data10_fifo_dout          ( fdbs0_fdb0_data10_fifo_dout          ),
    .fdbs0_fdb0_data11_fifo_din           ( fdbs0_fdb0_data11_fifo_din           ),
    .fdbs0_fdb0_data11_fifo_a             ( fdbs0_fdb0_data11_fifo_a             ),
    .fdbs0_fdb0_data11_fifo_wen           ( fdbs0_fdb0_data11_fifo_wen           ),
    .fdbs0_fdb0_data11_fifo_cen           ( fdbs0_fdb0_data11_fifo_cen           ),
    .fdbs0_fdb0_data11_fifo_dout          ( fdbs0_fdb0_data11_fifo_dout          ),
    .fdbs0_fdb0_data12_fifo_din           ( fdbs0_fdb0_data12_fifo_din           ),
    .fdbs0_fdb0_data12_fifo_a             ( fdbs0_fdb0_data12_fifo_a             ),
    .fdbs0_fdb0_data12_fifo_wen           ( fdbs0_fdb0_data12_fifo_wen           ),
    .fdbs0_fdb0_data12_fifo_cen           ( fdbs0_fdb0_data12_fifo_cen           ),
    .fdbs0_fdb0_data12_fifo_dout          ( fdbs0_fdb0_data12_fifo_dout          ),
    .fdbs0_fdb0_data13_fifo_din           ( fdbs0_fdb0_data13_fifo_din           ),
    .fdbs0_fdb0_data13_fifo_a             ( fdbs0_fdb0_data13_fifo_a             ),
    .fdbs0_fdb0_data13_fifo_wen           ( fdbs0_fdb0_data13_fifo_wen           ),
    .fdbs0_fdb0_data13_fifo_cen           ( fdbs0_fdb0_data13_fifo_cen           ),
    .fdbs0_fdb0_data13_fifo_dout          ( fdbs0_fdb0_data13_fifo_dout          ),
    .fdbs0_fdb0_data14_fifo_din           ( fdbs0_fdb0_data14_fifo_din           ),
    .fdbs0_fdb0_data14_fifo_a             ( fdbs0_fdb0_data14_fifo_a             ),
    .fdbs0_fdb0_data14_fifo_wen           ( fdbs0_fdb0_data14_fifo_wen           ),
    .fdbs0_fdb0_data14_fifo_cen           ( fdbs0_fdb0_data14_fifo_cen           ),
    .fdbs0_fdb0_data14_fifo_dout          ( fdbs0_fdb0_data14_fifo_dout          ),
    .fdbs0_fdb0_data15_fifo_din           ( fdbs0_fdb0_data15_fifo_din           ),
    .fdbs0_fdb0_data15_fifo_a             ( fdbs0_fdb0_data15_fifo_a             ),
    .fdbs0_fdb0_data15_fifo_wen           ( fdbs0_fdb0_data15_fifo_wen           ),
    .fdbs0_fdb0_data15_fifo_cen           ( fdbs0_fdb0_data15_fifo_cen           ),
    .fdbs0_fdb0_data15_fifo_dout          ( fdbs0_fdb0_data15_fifo_dout          ),
    .fdbs0_fdb1_bell0_cnt_qout            ( fdbs0_fdb1_bell0_cnt_qout            ),
    .fdbs0_fdb1_bell0_cnt_din             ( fdbs0_fdb1_bell0_cnt_din             ),
    .fdbs0_fdb1_bell0_cnt_w               ( fdbs0_fdb1_bell0_cnt_w               ),
    .fdbs0_fdb1_bell0_cnt_r               ( fdbs0_fdb1_bell0_cnt_r               ),
    .fdbs0_fdb1_bell0_failed_ring_q       ( fdbs0_fdb1_bell0_failed_ring_q       ),
    .fdbs0_fdb1_bell0_failed_ring_d       ( fdbs0_fdb1_bell0_failed_ring_d       ),
    .fdbs0_fdb1_bell0_failed_ring_enb     ( fdbs0_fdb1_bell0_failed_ring_enb     ),
    .fdbs0_fdb1_bell0_max_priority_q      ( fdbs0_fdb1_bell0_max_priority_q      ),
    .fdbs0_fdb1_bell0_max_priority_d      ( fdbs0_fdb1_bell0_max_priority_d      ),
    .fdbs0_fdb1_bell0_max_priority_enb    ( fdbs0_fdb1_bell0_max_priority_enb    ),
    .fdbs0_fdb1_bell0_valid_fcnt_q        ( fdbs0_fdb1_bell0_valid_fcnt_q        ),
    .fdbs0_fdb1_bell0_valid_fcnt_d        ( fdbs0_fdb1_bell0_valid_fcnt_d        ),
    .fdbs0_fdb1_bell0_valid_fcnt_enb      ( fdbs0_fdb1_bell0_valid_fcnt_enb      ),
    .fdbs0_fdb1_bell0_fcnt_q              ( fdbs0_fdb1_bell0_fcnt_q              ),
    .fdbs0_fdb1_bell0_fcnt_d              ( fdbs0_fdb1_bell0_fcnt_d              ),
    .fdbs0_fdb1_bell0_fcnt_enb            ( fdbs0_fdb1_bell0_fcnt_enb            ),
    .fdbs0_fdb1_bell1_cnt_qout            ( fdbs0_fdb1_bell1_cnt_qout            ),
    .fdbs0_fdb1_bell1_cnt_din             ( fdbs0_fdb1_bell1_cnt_din             ),
    .fdbs0_fdb1_bell1_cnt_w               ( fdbs0_fdb1_bell1_cnt_w               ),
    .fdbs0_fdb1_bell1_cnt_r               ( fdbs0_fdb1_bell1_cnt_r               ),
    .fdbs0_fdb1_bell1_failed_ring_q       ( fdbs0_fdb1_bell1_failed_ring_q       ),
    .fdbs0_fdb1_bell1_failed_ring_d       ( fdbs0_fdb1_bell1_failed_ring_d       ),
    .fdbs0_fdb1_bell1_failed_ring_enb     ( fdbs0_fdb1_bell1_failed_ring_enb     ),
    .fdbs0_fdb1_bell1_max_priority_q      ( fdbs0_fdb1_bell1_max_priority_q      ),
    .fdbs0_fdb1_bell1_max_priority_d      ( fdbs0_fdb1_bell1_max_priority_d      ),
    .fdbs0_fdb1_bell1_max_priority_enb    ( fdbs0_fdb1_bell1_max_priority_enb    ),
    .fdbs0_fdb1_bell1_valid_fcnt_q        ( fdbs0_fdb1_bell1_valid_fcnt_q        ),
    .fdbs0_fdb1_bell1_valid_fcnt_d        ( fdbs0_fdb1_bell1_valid_fcnt_d        ),
    .fdbs0_fdb1_bell1_valid_fcnt_enb      ( fdbs0_fdb1_bell1_valid_fcnt_enb      ),
    .fdbs0_fdb1_bell1_fcnt_q              ( fdbs0_fdb1_bell1_fcnt_q              ),
    .fdbs0_fdb1_bell1_fcnt_d              ( fdbs0_fdb1_bell1_fcnt_d              ),
    .fdbs0_fdb1_bell1_fcnt_enb            ( fdbs0_fdb1_bell1_fcnt_enb            ),
    .fdbs0_fdb1_bell2_cnt_qout            ( fdbs0_fdb1_bell2_cnt_qout            ),
    .fdbs0_fdb1_bell2_cnt_din             ( fdbs0_fdb1_bell2_cnt_din             ),
    .fdbs0_fdb1_bell2_cnt_w               ( fdbs0_fdb1_bell2_cnt_w               ),
    .fdbs0_fdb1_bell2_cnt_r               ( fdbs0_fdb1_bell2_cnt_r               ),
    .fdbs0_fdb1_bell2_failed_ring_q       ( fdbs0_fdb1_bell2_failed_ring_q       ),
    .fdbs0_fdb1_bell2_failed_ring_d       ( fdbs0_fdb1_bell2_failed_ring_d       ),
    .fdbs0_fdb1_bell2_failed_ring_enb     ( fdbs0_fdb1_bell2_failed_ring_enb     ),
    .fdbs0_fdb1_bell2_max_priority_q      ( fdbs0_fdb1_bell2_max_priority_q      ),
    .fdbs0_fdb1_bell2_max_priority_d      ( fdbs0_fdb1_bell2_max_priority_d      ),
    .fdbs0_fdb1_bell2_max_priority_enb    ( fdbs0_fdb1_bell2_max_priority_enb    ),
    .fdbs0_fdb1_bell2_valid_fcnt_q        ( fdbs0_fdb1_bell2_valid_fcnt_q        ),
    .fdbs0_fdb1_bell2_valid_fcnt_d        ( fdbs0_fdb1_bell2_valid_fcnt_d        ),
    .fdbs0_fdb1_bell2_valid_fcnt_enb      ( fdbs0_fdb1_bell2_valid_fcnt_enb      ),
    .fdbs0_fdb1_bell2_fcnt_q              ( fdbs0_fdb1_bell2_fcnt_q              ),
    .fdbs0_fdb1_bell2_fcnt_d              ( fdbs0_fdb1_bell2_fcnt_d              ),
    .fdbs0_fdb1_bell2_fcnt_enb            ( fdbs0_fdb1_bell2_fcnt_enb            ),
    .fdbs0_fdb1_bell3_cnt_qout            ( fdbs0_fdb1_bell3_cnt_qout            ),
    .fdbs0_fdb1_bell3_cnt_din             ( fdbs0_fdb1_bell3_cnt_din             ),
    .fdbs0_fdb1_bell3_cnt_w               ( fdbs0_fdb1_bell3_cnt_w               ),
    .fdbs0_fdb1_bell3_cnt_r               ( fdbs0_fdb1_bell3_cnt_r               ),
    .fdbs0_fdb1_bell3_failed_ring_q       ( fdbs0_fdb1_bell3_failed_ring_q       ),
    .fdbs0_fdb1_bell3_failed_ring_d       ( fdbs0_fdb1_bell3_failed_ring_d       ),
    .fdbs0_fdb1_bell3_failed_ring_enb     ( fdbs0_fdb1_bell3_failed_ring_enb     ),
    .fdbs0_fdb1_bell3_max_priority_q      ( fdbs0_fdb1_bell3_max_priority_q      ),
    .fdbs0_fdb1_bell3_max_priority_d      ( fdbs0_fdb1_bell3_max_priority_d      ),
    .fdbs0_fdb1_bell3_max_priority_enb    ( fdbs0_fdb1_bell3_max_priority_enb    ),
    .fdbs0_fdb1_bell3_valid_fcnt_q        ( fdbs0_fdb1_bell3_valid_fcnt_q        ),
    .fdbs0_fdb1_bell3_valid_fcnt_d        ( fdbs0_fdb1_bell3_valid_fcnt_d        ),
    .fdbs0_fdb1_bell3_valid_fcnt_enb      ( fdbs0_fdb1_bell3_valid_fcnt_enb      ),
    .fdbs0_fdb1_bell3_fcnt_q              ( fdbs0_fdb1_bell3_fcnt_q              ),
    .fdbs0_fdb1_bell3_fcnt_d              ( fdbs0_fdb1_bell3_fcnt_d              ),
    .fdbs0_fdb1_bell3_fcnt_enb            ( fdbs0_fdb1_bell3_fcnt_enb            ),
    .fdbs0_fdb1_bell4_cnt_qout            ( fdbs0_fdb1_bell4_cnt_qout            ),
    .fdbs0_fdb1_bell4_cnt_din             ( fdbs0_fdb1_bell4_cnt_din             ),
    .fdbs0_fdb1_bell4_cnt_w               ( fdbs0_fdb1_bell4_cnt_w               ),
    .fdbs0_fdb1_bell4_cnt_r               ( fdbs0_fdb1_bell4_cnt_r               ),
    .fdbs0_fdb1_bell4_failed_ring_q       ( fdbs0_fdb1_bell4_failed_ring_q       ),
    .fdbs0_fdb1_bell4_failed_ring_d       ( fdbs0_fdb1_bell4_failed_ring_d       ),
    .fdbs0_fdb1_bell4_failed_ring_enb     ( fdbs0_fdb1_bell4_failed_ring_enb     ),
    .fdbs0_fdb1_bell4_max_priority_q      ( fdbs0_fdb1_bell4_max_priority_q      ),
    .fdbs0_fdb1_bell4_max_priority_d      ( fdbs0_fdb1_bell4_max_priority_d      ),
    .fdbs0_fdb1_bell4_max_priority_enb    ( fdbs0_fdb1_bell4_max_priority_enb    ),
    .fdbs0_fdb1_bell4_valid_fcnt_q        ( fdbs0_fdb1_bell4_valid_fcnt_q        ),
    .fdbs0_fdb1_bell4_valid_fcnt_d        ( fdbs0_fdb1_bell4_valid_fcnt_d        ),
    .fdbs0_fdb1_bell4_valid_fcnt_enb      ( fdbs0_fdb1_bell4_valid_fcnt_enb      ),
    .fdbs0_fdb1_bell4_fcnt_q              ( fdbs0_fdb1_bell4_fcnt_q              ),
    .fdbs0_fdb1_bell4_fcnt_d              ( fdbs0_fdb1_bell4_fcnt_d              ),
    .fdbs0_fdb1_bell4_fcnt_enb            ( fdbs0_fdb1_bell4_fcnt_enb            ),
    .fdbs0_fdb1_bell5_cnt_qout            ( fdbs0_fdb1_bell5_cnt_qout            ),
    .fdbs0_fdb1_bell5_cnt_din             ( fdbs0_fdb1_bell5_cnt_din             ),
    .fdbs0_fdb1_bell5_cnt_w               ( fdbs0_fdb1_bell5_cnt_w               ),
    .fdbs0_fdb1_bell5_cnt_r               ( fdbs0_fdb1_bell5_cnt_r               ),
    .fdbs0_fdb1_bell5_failed_ring_q       ( fdbs0_fdb1_bell5_failed_ring_q       ),
    .fdbs0_fdb1_bell5_failed_ring_d       ( fdbs0_fdb1_bell5_failed_ring_d       ),
    .fdbs0_fdb1_bell5_failed_ring_enb     ( fdbs0_fdb1_bell5_failed_ring_enb     ),
    .fdbs0_fdb1_bell5_max_priority_q      ( fdbs0_fdb1_bell5_max_priority_q      ),
    .fdbs0_fdb1_bell5_max_priority_d      ( fdbs0_fdb1_bell5_max_priority_d      ),
    .fdbs0_fdb1_bell5_max_priority_enb    ( fdbs0_fdb1_bell5_max_priority_enb    ),
    .fdbs0_fdb1_bell5_valid_fcnt_q        ( fdbs0_fdb1_bell5_valid_fcnt_q        ),
    .fdbs0_fdb1_bell5_valid_fcnt_d        ( fdbs0_fdb1_bell5_valid_fcnt_d        ),
    .fdbs0_fdb1_bell5_valid_fcnt_enb      ( fdbs0_fdb1_bell5_valid_fcnt_enb      ),
    .fdbs0_fdb1_bell5_fcnt_q              ( fdbs0_fdb1_bell5_fcnt_q              ),
    .fdbs0_fdb1_bell5_fcnt_d              ( fdbs0_fdb1_bell5_fcnt_d              ),
    .fdbs0_fdb1_bell5_fcnt_enb            ( fdbs0_fdb1_bell5_fcnt_enb            ),
    .fdbs0_fdb1_bell6_cnt_qout            ( fdbs0_fdb1_bell6_cnt_qout            ),
    .fdbs0_fdb1_bell6_cnt_din             ( fdbs0_fdb1_bell6_cnt_din             ),
    .fdbs0_fdb1_bell6_cnt_w               ( fdbs0_fdb1_bell6_cnt_w               ),
    .fdbs0_fdb1_bell6_cnt_r               ( fdbs0_fdb1_bell6_cnt_r               ),
    .fdbs0_fdb1_bell6_failed_ring_q       ( fdbs0_fdb1_bell6_failed_ring_q       ),
    .fdbs0_fdb1_bell6_failed_ring_d       ( fdbs0_fdb1_bell6_failed_ring_d       ),
    .fdbs0_fdb1_bell6_failed_ring_enb     ( fdbs0_fdb1_bell6_failed_ring_enb     ),
    .fdbs0_fdb1_bell6_max_priority_q      ( fdbs0_fdb1_bell6_max_priority_q      ),
    .fdbs0_fdb1_bell6_max_priority_d      ( fdbs0_fdb1_bell6_max_priority_d      ),
    .fdbs0_fdb1_bell6_max_priority_enb    ( fdbs0_fdb1_bell6_max_priority_enb    ),
    .fdbs0_fdb1_bell6_valid_fcnt_q        ( fdbs0_fdb1_bell6_valid_fcnt_q        ),
    .fdbs0_fdb1_bell6_valid_fcnt_d        ( fdbs0_fdb1_bell6_valid_fcnt_d        ),
    .fdbs0_fdb1_bell6_valid_fcnt_enb      ( fdbs0_fdb1_bell6_valid_fcnt_enb      ),
    .fdbs0_fdb1_bell6_fcnt_q              ( fdbs0_fdb1_bell6_fcnt_q              ),
    .fdbs0_fdb1_bell6_fcnt_d              ( fdbs0_fdb1_bell6_fcnt_d              ),
    .fdbs0_fdb1_bell6_fcnt_enb            ( fdbs0_fdb1_bell6_fcnt_enb            ),
    .fdbs0_fdb1_bell7_cnt_qout            ( fdbs0_fdb1_bell7_cnt_qout            ),
    .fdbs0_fdb1_bell7_cnt_din             ( fdbs0_fdb1_bell7_cnt_din             ),
    .fdbs0_fdb1_bell7_cnt_w               ( fdbs0_fdb1_bell7_cnt_w               ),
    .fdbs0_fdb1_bell7_cnt_r               ( fdbs0_fdb1_bell7_cnt_r               ),
    .fdbs0_fdb1_bell7_failed_ring_q       ( fdbs0_fdb1_bell7_failed_ring_q       ),
    .fdbs0_fdb1_bell7_failed_ring_d       ( fdbs0_fdb1_bell7_failed_ring_d       ),
    .fdbs0_fdb1_bell7_failed_ring_enb     ( fdbs0_fdb1_bell7_failed_ring_enb     ),
    .fdbs0_fdb1_bell7_max_priority_q      ( fdbs0_fdb1_bell7_max_priority_q      ),
    .fdbs0_fdb1_bell7_max_priority_d      ( fdbs0_fdb1_bell7_max_priority_d      ),
    .fdbs0_fdb1_bell7_max_priority_enb    ( fdbs0_fdb1_bell7_max_priority_enb    ),
    .fdbs0_fdb1_bell7_valid_fcnt_q        ( fdbs0_fdb1_bell7_valid_fcnt_q        ),
    .fdbs0_fdb1_bell7_valid_fcnt_d        ( fdbs0_fdb1_bell7_valid_fcnt_d        ),
    .fdbs0_fdb1_bell7_valid_fcnt_enb      ( fdbs0_fdb1_bell7_valid_fcnt_enb      ),
    .fdbs0_fdb1_bell7_fcnt_q              ( fdbs0_fdb1_bell7_fcnt_q              ),
    .fdbs0_fdb1_bell7_fcnt_d              ( fdbs0_fdb1_bell7_fcnt_d              ),
    .fdbs0_fdb1_bell7_fcnt_enb            ( fdbs0_fdb1_bell7_fcnt_enb            ),
    .fdbs0_fdb1_bell8_cnt_qout            ( fdbs0_fdb1_bell8_cnt_qout            ),
    .fdbs0_fdb1_bell8_cnt_din             ( fdbs0_fdb1_bell8_cnt_din             ),
    .fdbs0_fdb1_bell8_cnt_w               ( fdbs0_fdb1_bell8_cnt_w               ),
    .fdbs0_fdb1_bell8_cnt_r               ( fdbs0_fdb1_bell8_cnt_r               ),
    .fdbs0_fdb1_bell8_failed_ring_q       ( fdbs0_fdb1_bell8_failed_ring_q       ),
    .fdbs0_fdb1_bell8_failed_ring_d       ( fdbs0_fdb1_bell8_failed_ring_d       ),
    .fdbs0_fdb1_bell8_failed_ring_enb     ( fdbs0_fdb1_bell8_failed_ring_enb     ),
    .fdbs0_fdb1_bell8_max_priority_q      ( fdbs0_fdb1_bell8_max_priority_q      ),
    .fdbs0_fdb1_bell8_max_priority_d      ( fdbs0_fdb1_bell8_max_priority_d      ),
    .fdbs0_fdb1_bell8_max_priority_enb    ( fdbs0_fdb1_bell8_max_priority_enb    ),
    .fdbs0_fdb1_bell8_valid_fcnt_q        ( fdbs0_fdb1_bell8_valid_fcnt_q        ),
    .fdbs0_fdb1_bell8_valid_fcnt_d        ( fdbs0_fdb1_bell8_valid_fcnt_d        ),
    .fdbs0_fdb1_bell8_valid_fcnt_enb      ( fdbs0_fdb1_bell8_valid_fcnt_enb      ),
    .fdbs0_fdb1_bell8_fcnt_q              ( fdbs0_fdb1_bell8_fcnt_q              ),
    .fdbs0_fdb1_bell8_fcnt_d              ( fdbs0_fdb1_bell8_fcnt_d              ),
    .fdbs0_fdb1_bell8_fcnt_enb            ( fdbs0_fdb1_bell8_fcnt_enb            ),
    .fdbs0_fdb1_bell9_cnt_qout            ( fdbs0_fdb1_bell9_cnt_qout            ),
    .fdbs0_fdb1_bell9_cnt_din             ( fdbs0_fdb1_bell9_cnt_din             ),
    .fdbs0_fdb1_bell9_cnt_w               ( fdbs0_fdb1_bell9_cnt_w               ),
    .fdbs0_fdb1_bell9_cnt_r               ( fdbs0_fdb1_bell9_cnt_r               ),
    .fdbs0_fdb1_bell9_failed_ring_q       ( fdbs0_fdb1_bell9_failed_ring_q       ),
    .fdbs0_fdb1_bell9_failed_ring_d       ( fdbs0_fdb1_bell9_failed_ring_d       ),
    .fdbs0_fdb1_bell9_failed_ring_enb     ( fdbs0_fdb1_bell9_failed_ring_enb     ),
    .fdbs0_fdb1_bell9_max_priority_q      ( fdbs0_fdb1_bell9_max_priority_q      ),
    .fdbs0_fdb1_bell9_max_priority_d      ( fdbs0_fdb1_bell9_max_priority_d      ),
    .fdbs0_fdb1_bell9_max_priority_enb    ( fdbs0_fdb1_bell9_max_priority_enb    ),
    .fdbs0_fdb1_bell9_valid_fcnt_q        ( fdbs0_fdb1_bell9_valid_fcnt_q        ),
    .fdbs0_fdb1_bell9_valid_fcnt_d        ( fdbs0_fdb1_bell9_valid_fcnt_d        ),
    .fdbs0_fdb1_bell9_valid_fcnt_enb      ( fdbs0_fdb1_bell9_valid_fcnt_enb      ),
    .fdbs0_fdb1_bell9_fcnt_q              ( fdbs0_fdb1_bell9_fcnt_q              ),
    .fdbs0_fdb1_bell9_fcnt_d              ( fdbs0_fdb1_bell9_fcnt_d              ),
    .fdbs0_fdb1_bell9_fcnt_enb            ( fdbs0_fdb1_bell9_fcnt_enb            ),
    .fdbs0_fdb1_bell10_cnt_qout           ( fdbs0_fdb1_bell10_cnt_qout           ),
    .fdbs0_fdb1_bell10_cnt_din            ( fdbs0_fdb1_bell10_cnt_din            ),
    .fdbs0_fdb1_bell10_cnt_w              ( fdbs0_fdb1_bell10_cnt_w              ),
    .fdbs0_fdb1_bell10_cnt_r              ( fdbs0_fdb1_bell10_cnt_r              ),
    .fdbs0_fdb1_bell10_failed_ring_q      ( fdbs0_fdb1_bell10_failed_ring_q      ),
    .fdbs0_fdb1_bell10_failed_ring_d      ( fdbs0_fdb1_bell10_failed_ring_d      ),
    .fdbs0_fdb1_bell10_failed_ring_enb    ( fdbs0_fdb1_bell10_failed_ring_enb    ),
    .fdbs0_fdb1_bell10_max_priority_q     ( fdbs0_fdb1_bell10_max_priority_q     ),
    .fdbs0_fdb1_bell10_max_priority_d     ( fdbs0_fdb1_bell10_max_priority_d     ),
    .fdbs0_fdb1_bell10_max_priority_enb   ( fdbs0_fdb1_bell10_max_priority_enb   ),
    .fdbs0_fdb1_bell10_valid_fcnt_q       ( fdbs0_fdb1_bell10_valid_fcnt_q       ),
    .fdbs0_fdb1_bell10_valid_fcnt_d       ( fdbs0_fdb1_bell10_valid_fcnt_d       ),
    .fdbs0_fdb1_bell10_valid_fcnt_enb     ( fdbs0_fdb1_bell10_valid_fcnt_enb     ),
    .fdbs0_fdb1_bell10_fcnt_q             ( fdbs0_fdb1_bell10_fcnt_q             ),
    .fdbs0_fdb1_bell10_fcnt_d             ( fdbs0_fdb1_bell10_fcnt_d             ),
    .fdbs0_fdb1_bell10_fcnt_enb           ( fdbs0_fdb1_bell10_fcnt_enb           ),
    .fdbs0_fdb1_bell11_cnt_qout           ( fdbs0_fdb1_bell11_cnt_qout           ),
    .fdbs0_fdb1_bell11_cnt_din            ( fdbs0_fdb1_bell11_cnt_din            ),
    .fdbs0_fdb1_bell11_cnt_w              ( fdbs0_fdb1_bell11_cnt_w              ),
    .fdbs0_fdb1_bell11_cnt_r              ( fdbs0_fdb1_bell11_cnt_r              ),
    .fdbs0_fdb1_bell11_failed_ring_q      ( fdbs0_fdb1_bell11_failed_ring_q      ),
    .fdbs0_fdb1_bell11_failed_ring_d      ( fdbs0_fdb1_bell11_failed_ring_d      ),
    .fdbs0_fdb1_bell11_failed_ring_enb    ( fdbs0_fdb1_bell11_failed_ring_enb    ),
    .fdbs0_fdb1_bell11_max_priority_q     ( fdbs0_fdb1_bell11_max_priority_q     ),
    .fdbs0_fdb1_bell11_max_priority_d     ( fdbs0_fdb1_bell11_max_priority_d     ),
    .fdbs0_fdb1_bell11_max_priority_enb   ( fdbs0_fdb1_bell11_max_priority_enb   ),
    .fdbs0_fdb1_bell11_valid_fcnt_q       ( fdbs0_fdb1_bell11_valid_fcnt_q       ),
    .fdbs0_fdb1_bell11_valid_fcnt_d       ( fdbs0_fdb1_bell11_valid_fcnt_d       ),
    .fdbs0_fdb1_bell11_valid_fcnt_enb     ( fdbs0_fdb1_bell11_valid_fcnt_enb     ),
    .fdbs0_fdb1_bell11_fcnt_q             ( fdbs0_fdb1_bell11_fcnt_q             ),
    .fdbs0_fdb1_bell11_fcnt_d             ( fdbs0_fdb1_bell11_fcnt_d             ),
    .fdbs0_fdb1_bell11_fcnt_enb           ( fdbs0_fdb1_bell11_fcnt_enb           ),
    .fdbs0_fdb1_bell12_cnt_qout           ( fdbs0_fdb1_bell12_cnt_qout           ),
    .fdbs0_fdb1_bell12_cnt_din            ( fdbs0_fdb1_bell12_cnt_din            ),
    .fdbs0_fdb1_bell12_cnt_w              ( fdbs0_fdb1_bell12_cnt_w              ),
    .fdbs0_fdb1_bell12_cnt_r              ( fdbs0_fdb1_bell12_cnt_r              ),
    .fdbs0_fdb1_bell12_failed_ring_q      ( fdbs0_fdb1_bell12_failed_ring_q      ),
    .fdbs0_fdb1_bell12_failed_ring_d      ( fdbs0_fdb1_bell12_failed_ring_d      ),
    .fdbs0_fdb1_bell12_failed_ring_enb    ( fdbs0_fdb1_bell12_failed_ring_enb    ),
    .fdbs0_fdb1_bell12_max_priority_q     ( fdbs0_fdb1_bell12_max_priority_q     ),
    .fdbs0_fdb1_bell12_max_priority_d     ( fdbs0_fdb1_bell12_max_priority_d     ),
    .fdbs0_fdb1_bell12_max_priority_enb   ( fdbs0_fdb1_bell12_max_priority_enb   ),
    .fdbs0_fdb1_bell12_valid_fcnt_q       ( fdbs0_fdb1_bell12_valid_fcnt_q       ),
    .fdbs0_fdb1_bell12_valid_fcnt_d       ( fdbs0_fdb1_bell12_valid_fcnt_d       ),
    .fdbs0_fdb1_bell12_valid_fcnt_enb     ( fdbs0_fdb1_bell12_valid_fcnt_enb     ),
    .fdbs0_fdb1_bell12_fcnt_q             ( fdbs0_fdb1_bell12_fcnt_q             ),
    .fdbs0_fdb1_bell12_fcnt_d             ( fdbs0_fdb1_bell12_fcnt_d             ),
    .fdbs0_fdb1_bell12_fcnt_enb           ( fdbs0_fdb1_bell12_fcnt_enb           ),
    .fdbs0_fdb1_bell13_cnt_qout           ( fdbs0_fdb1_bell13_cnt_qout           ),
    .fdbs0_fdb1_bell13_cnt_din            ( fdbs0_fdb1_bell13_cnt_din            ),
    .fdbs0_fdb1_bell13_cnt_w              ( fdbs0_fdb1_bell13_cnt_w              ),
    .fdbs0_fdb1_bell13_cnt_r              ( fdbs0_fdb1_bell13_cnt_r              ),
    .fdbs0_fdb1_bell13_failed_ring_q      ( fdbs0_fdb1_bell13_failed_ring_q      ),
    .fdbs0_fdb1_bell13_failed_ring_d      ( fdbs0_fdb1_bell13_failed_ring_d      ),
    .fdbs0_fdb1_bell13_failed_ring_enb    ( fdbs0_fdb1_bell13_failed_ring_enb    ),
    .fdbs0_fdb1_bell13_max_priority_q     ( fdbs0_fdb1_bell13_max_priority_q     ),
    .fdbs0_fdb1_bell13_max_priority_d     ( fdbs0_fdb1_bell13_max_priority_d     ),
    .fdbs0_fdb1_bell13_max_priority_enb   ( fdbs0_fdb1_bell13_max_priority_enb   ),
    .fdbs0_fdb1_bell13_valid_fcnt_q       ( fdbs0_fdb1_bell13_valid_fcnt_q       ),
    .fdbs0_fdb1_bell13_valid_fcnt_d       ( fdbs0_fdb1_bell13_valid_fcnt_d       ),
    .fdbs0_fdb1_bell13_valid_fcnt_enb     ( fdbs0_fdb1_bell13_valid_fcnt_enb     ),
    .fdbs0_fdb1_bell13_fcnt_q             ( fdbs0_fdb1_bell13_fcnt_q             ),
    .fdbs0_fdb1_bell13_fcnt_d             ( fdbs0_fdb1_bell13_fcnt_d             ),
    .fdbs0_fdb1_bell13_fcnt_enb           ( fdbs0_fdb1_bell13_fcnt_enb           ),
    .fdbs0_fdb1_bell14_cnt_qout           ( fdbs0_fdb1_bell14_cnt_qout           ),
    .fdbs0_fdb1_bell14_cnt_din            ( fdbs0_fdb1_bell14_cnt_din            ),
    .fdbs0_fdb1_bell14_cnt_w              ( fdbs0_fdb1_bell14_cnt_w              ),
    .fdbs0_fdb1_bell14_cnt_r              ( fdbs0_fdb1_bell14_cnt_r              ),
    .fdbs0_fdb1_bell14_failed_ring_q      ( fdbs0_fdb1_bell14_failed_ring_q      ),
    .fdbs0_fdb1_bell14_failed_ring_d      ( fdbs0_fdb1_bell14_failed_ring_d      ),
    .fdbs0_fdb1_bell14_failed_ring_enb    ( fdbs0_fdb1_bell14_failed_ring_enb    ),
    .fdbs0_fdb1_bell14_max_priority_q     ( fdbs0_fdb1_bell14_max_priority_q     ),
    .fdbs0_fdb1_bell14_max_priority_d     ( fdbs0_fdb1_bell14_max_priority_d     ),
    .fdbs0_fdb1_bell14_max_priority_enb   ( fdbs0_fdb1_bell14_max_priority_enb   ),
    .fdbs0_fdb1_bell14_valid_fcnt_q       ( fdbs0_fdb1_bell14_valid_fcnt_q       ),
    .fdbs0_fdb1_bell14_valid_fcnt_d       ( fdbs0_fdb1_bell14_valid_fcnt_d       ),
    .fdbs0_fdb1_bell14_valid_fcnt_enb     ( fdbs0_fdb1_bell14_valid_fcnt_enb     ),
    .fdbs0_fdb1_bell14_fcnt_q             ( fdbs0_fdb1_bell14_fcnt_q             ),
    .fdbs0_fdb1_bell14_fcnt_d             ( fdbs0_fdb1_bell14_fcnt_d             ),
    .fdbs0_fdb1_bell14_fcnt_enb           ( fdbs0_fdb1_bell14_fcnt_enb           ),
    .fdbs0_fdb1_bell15_cnt_qout           ( fdbs0_fdb1_bell15_cnt_qout           ),
    .fdbs0_fdb1_bell15_cnt_din            ( fdbs0_fdb1_bell15_cnt_din            ),
    .fdbs0_fdb1_bell15_cnt_w              ( fdbs0_fdb1_bell15_cnt_w              ),
    .fdbs0_fdb1_bell15_cnt_r              ( fdbs0_fdb1_bell15_cnt_r              ),
    .fdbs0_fdb1_bell15_failed_ring_q      ( fdbs0_fdb1_bell15_failed_ring_q      ),
    .fdbs0_fdb1_bell15_failed_ring_d      ( fdbs0_fdb1_bell15_failed_ring_d      ),
    .fdbs0_fdb1_bell15_failed_ring_enb    ( fdbs0_fdb1_bell15_failed_ring_enb    ),
    .fdbs0_fdb1_bell15_max_priority_q     ( fdbs0_fdb1_bell15_max_priority_q     ),
    .fdbs0_fdb1_bell15_max_priority_d     ( fdbs0_fdb1_bell15_max_priority_d     ),
    .fdbs0_fdb1_bell15_max_priority_enb   ( fdbs0_fdb1_bell15_max_priority_enb   ),
    .fdbs0_fdb1_bell15_valid_fcnt_q       ( fdbs0_fdb1_bell15_valid_fcnt_q       ),
    .fdbs0_fdb1_bell15_valid_fcnt_d       ( fdbs0_fdb1_bell15_valid_fcnt_d       ),
    .fdbs0_fdb1_bell15_valid_fcnt_enb     ( fdbs0_fdb1_bell15_valid_fcnt_enb     ),
    .fdbs0_fdb1_bell15_fcnt_q             ( fdbs0_fdb1_bell15_fcnt_q             ),
    .fdbs0_fdb1_bell15_fcnt_d             ( fdbs0_fdb1_bell15_fcnt_d             ),
    .fdbs0_fdb1_bell15_fcnt_enb           ( fdbs0_fdb1_bell15_fcnt_enb           ),
    .fdbs0_fdb1_control_ack_on_empty_q    ( fdbs0_fdb1_control_ack_on_empty_q    ),
    .fdbs0_fdb1_enable_enable_qout        ( fdbs0_fdb1_enable_enable_qout        ),
    .fdbs0_fdb1_enable_enable_din         ( fdbs0_fdb1_enable_enable_din         ),
    .fdbs0_fdb1_enable_enable_w           ( fdbs0_fdb1_enable_enable_w           ),
    .fdbs0_fdb1_status_status_d           ( fdbs0_fdb1_status_status_d           ),
    .fdbs0_fdb1_data0_fifo_din            ( fdbs0_fdb1_data0_fifo_din            ),
    .fdbs0_fdb1_data0_fifo_a              ( fdbs0_fdb1_data0_fifo_a              ),
    .fdbs0_fdb1_data0_fifo_wen            ( fdbs0_fdb1_data0_fifo_wen            ),
    .fdbs0_fdb1_data0_fifo_cen            ( fdbs0_fdb1_data0_fifo_cen            ),
    .fdbs0_fdb1_data0_fifo_dout           ( fdbs0_fdb1_data0_fifo_dout           ),
    .fdbs0_fdb1_data1_fifo_din            ( fdbs0_fdb1_data1_fifo_din            ),
    .fdbs0_fdb1_data1_fifo_a              ( fdbs0_fdb1_data1_fifo_a              ),
    .fdbs0_fdb1_data1_fifo_wen            ( fdbs0_fdb1_data1_fifo_wen            ),
    .fdbs0_fdb1_data1_fifo_cen            ( fdbs0_fdb1_data1_fifo_cen            ),
    .fdbs0_fdb1_data1_fifo_dout           ( fdbs0_fdb1_data1_fifo_dout           ),
    .fdbs0_fdb1_data2_fifo_din            ( fdbs0_fdb1_data2_fifo_din            ),
    .fdbs0_fdb1_data2_fifo_a              ( fdbs0_fdb1_data2_fifo_a              ),
    .fdbs0_fdb1_data2_fifo_wen            ( fdbs0_fdb1_data2_fifo_wen            ),
    .fdbs0_fdb1_data2_fifo_cen            ( fdbs0_fdb1_data2_fifo_cen            ),
    .fdbs0_fdb1_data2_fifo_dout           ( fdbs0_fdb1_data2_fifo_dout           ),
    .fdbs0_fdb1_data3_fifo_din            ( fdbs0_fdb1_data3_fifo_din            ),
    .fdbs0_fdb1_data3_fifo_a              ( fdbs0_fdb1_data3_fifo_a              ),
    .fdbs0_fdb1_data3_fifo_wen            ( fdbs0_fdb1_data3_fifo_wen            ),
    .fdbs0_fdb1_data3_fifo_cen            ( fdbs0_fdb1_data3_fifo_cen            ),
    .fdbs0_fdb1_data3_fifo_dout           ( fdbs0_fdb1_data3_fifo_dout           ),
    .fdbs0_fdb1_data4_fifo_din            ( fdbs0_fdb1_data4_fifo_din            ),
    .fdbs0_fdb1_data4_fifo_a              ( fdbs0_fdb1_data4_fifo_a              ),
    .fdbs0_fdb1_data4_fifo_wen            ( fdbs0_fdb1_data4_fifo_wen            ),
    .fdbs0_fdb1_data4_fifo_cen            ( fdbs0_fdb1_data4_fifo_cen            ),
    .fdbs0_fdb1_data4_fifo_dout           ( fdbs0_fdb1_data4_fifo_dout           ),
    .fdbs0_fdb1_data5_fifo_din            ( fdbs0_fdb1_data5_fifo_din            ),
    .fdbs0_fdb1_data5_fifo_a              ( fdbs0_fdb1_data5_fifo_a              ),
    .fdbs0_fdb1_data5_fifo_wen            ( fdbs0_fdb1_data5_fifo_wen            ),
    .fdbs0_fdb1_data5_fifo_cen            ( fdbs0_fdb1_data5_fifo_cen            ),
    .fdbs0_fdb1_data5_fifo_dout           ( fdbs0_fdb1_data5_fifo_dout           ),
    .fdbs0_fdb1_data6_fifo_din            ( fdbs0_fdb1_data6_fifo_din            ),
    .fdbs0_fdb1_data6_fifo_a              ( fdbs0_fdb1_data6_fifo_a              ),
    .fdbs0_fdb1_data6_fifo_wen            ( fdbs0_fdb1_data6_fifo_wen            ),
    .fdbs0_fdb1_data6_fifo_cen            ( fdbs0_fdb1_data6_fifo_cen            ),
    .fdbs0_fdb1_data6_fifo_dout           ( fdbs0_fdb1_data6_fifo_dout           ),
    .fdbs0_fdb1_data7_fifo_din            ( fdbs0_fdb1_data7_fifo_din            ),
    .fdbs0_fdb1_data7_fifo_a              ( fdbs0_fdb1_data7_fifo_a              ),
    .fdbs0_fdb1_data7_fifo_wen            ( fdbs0_fdb1_data7_fifo_wen            ),
    .fdbs0_fdb1_data7_fifo_cen            ( fdbs0_fdb1_data7_fifo_cen            ),
    .fdbs0_fdb1_data7_fifo_dout           ( fdbs0_fdb1_data7_fifo_dout           ),
    .fdbs0_fdb1_data8_fifo_din            ( fdbs0_fdb1_data8_fifo_din            ),
    .fdbs0_fdb1_data8_fifo_a              ( fdbs0_fdb1_data8_fifo_a              ),
    .fdbs0_fdb1_data8_fifo_wen            ( fdbs0_fdb1_data8_fifo_wen            ),
    .fdbs0_fdb1_data8_fifo_cen            ( fdbs0_fdb1_data8_fifo_cen            ),
    .fdbs0_fdb1_data8_fifo_dout           ( fdbs0_fdb1_data8_fifo_dout           ),
    .fdbs0_fdb1_data9_fifo_din            ( fdbs0_fdb1_data9_fifo_din            ),
    .fdbs0_fdb1_data9_fifo_a              ( fdbs0_fdb1_data9_fifo_a              ),
    .fdbs0_fdb1_data9_fifo_wen            ( fdbs0_fdb1_data9_fifo_wen            ),
    .fdbs0_fdb1_data9_fifo_cen            ( fdbs0_fdb1_data9_fifo_cen            ),
    .fdbs0_fdb1_data9_fifo_dout           ( fdbs0_fdb1_data9_fifo_dout           ),
    .fdbs0_fdb1_data10_fifo_din           ( fdbs0_fdb1_data10_fifo_din           ),
    .fdbs0_fdb1_data10_fifo_a             ( fdbs0_fdb1_data10_fifo_a             ),
    .fdbs0_fdb1_data10_fifo_wen           ( fdbs0_fdb1_data10_fifo_wen           ),
    .fdbs0_fdb1_data10_fifo_cen           ( fdbs0_fdb1_data10_fifo_cen           ),
    .fdbs0_fdb1_data10_fifo_dout          ( fdbs0_fdb1_data10_fifo_dout          ),
    .fdbs0_fdb1_data11_fifo_din           ( fdbs0_fdb1_data11_fifo_din           ),
    .fdbs0_fdb1_data11_fifo_a             ( fdbs0_fdb1_data11_fifo_a             ),
    .fdbs0_fdb1_data11_fifo_wen           ( fdbs0_fdb1_data11_fifo_wen           ),
    .fdbs0_fdb1_data11_fifo_cen           ( fdbs0_fdb1_data11_fifo_cen           ),
    .fdbs0_fdb1_data11_fifo_dout          ( fdbs0_fdb1_data11_fifo_dout          ),
    .fdbs0_fdb1_data12_fifo_din           ( fdbs0_fdb1_data12_fifo_din           ),
    .fdbs0_fdb1_data12_fifo_a             ( fdbs0_fdb1_data12_fifo_a             ),
    .fdbs0_fdb1_data12_fifo_wen           ( fdbs0_fdb1_data12_fifo_wen           ),
    .fdbs0_fdb1_data12_fifo_cen           ( fdbs0_fdb1_data12_fifo_cen           ),
    .fdbs0_fdb1_data12_fifo_dout          ( fdbs0_fdb1_data12_fifo_dout          ),
    .fdbs0_fdb1_data13_fifo_din           ( fdbs0_fdb1_data13_fifo_din           ),
    .fdbs0_fdb1_data13_fifo_a             ( fdbs0_fdb1_data13_fifo_a             ),
    .fdbs0_fdb1_data13_fifo_wen           ( fdbs0_fdb1_data13_fifo_wen           ),
    .fdbs0_fdb1_data13_fifo_cen           ( fdbs0_fdb1_data13_fifo_cen           ),
    .fdbs0_fdb1_data13_fifo_dout          ( fdbs0_fdb1_data13_fifo_dout          ),
    .fdbs0_fdb1_data14_fifo_din           ( fdbs0_fdb1_data14_fifo_din           ),
    .fdbs0_fdb1_data14_fifo_a             ( fdbs0_fdb1_data14_fifo_a             ),
    .fdbs0_fdb1_data14_fifo_wen           ( fdbs0_fdb1_data14_fifo_wen           ),
    .fdbs0_fdb1_data14_fifo_cen           ( fdbs0_fdb1_data14_fifo_cen           ),
    .fdbs0_fdb1_data14_fifo_dout          ( fdbs0_fdb1_data14_fifo_dout          ),
    .fdbs0_fdb1_data15_fifo_din           ( fdbs0_fdb1_data15_fifo_din           ),
    .fdbs0_fdb1_data15_fifo_a             ( fdbs0_fdb1_data15_fifo_a             ),
    .fdbs0_fdb1_data15_fifo_wen           ( fdbs0_fdb1_data15_fifo_wen           ),
    .fdbs0_fdb1_data15_fifo_cen           ( fdbs0_fdb1_data15_fifo_cen           ),
    .fdbs0_fdb1_data15_fifo_dout          ( fdbs0_fdb1_data15_fifo_dout          ),
    .smutex0_owner0_id_q                  ( smutex0_owner0_id_q                  ),
    .smutex0_owner0_id_d                  ( smutex0_owner0_id_d                  ),
    .smutex0_owner0_id_enb                ( smutex0_owner0_id_enb                ),
    .smutex0_owner1_id_q                  ( smutex0_owner1_id_q                  ),
    .smutex0_owner1_id_d                  ( smutex0_owner1_id_d                  ),
    .smutex0_owner1_id_enb                ( smutex0_owner1_id_enb                ),
    .smutex0_owner2_id_q                  ( smutex0_owner2_id_q                  ),
    .smutex0_owner2_id_d                  ( smutex0_owner2_id_d                  ),
    .smutex0_owner2_id_enb                ( smutex0_owner2_id_enb                ),
    .smutex0_owner3_id_q                  ( smutex0_owner3_id_q                  ),
    .smutex0_owner3_id_d                  ( smutex0_owner3_id_d                  ),
    .smutex0_owner3_id_enb                ( smutex0_owner3_id_enb                ),
    .smutex0_owner4_id_q                  ( smutex0_owner4_id_q                  ),
    .smutex0_owner4_id_d                  ( smutex0_owner4_id_d                  ),
    .smutex0_owner4_id_enb                ( smutex0_owner4_id_enb                ),
    .smutex0_owner5_id_q                  ( smutex0_owner5_id_q                  ),
    .smutex0_owner5_id_d                  ( smutex0_owner5_id_d                  ),
    .smutex0_owner5_id_enb                ( smutex0_owner5_id_enb                ),
    .smutex0_owner6_id_q                  ( smutex0_owner6_id_q                  ),
    .smutex0_owner6_id_d                  ( smutex0_owner6_id_d                  ),
    .smutex0_owner6_id_enb                ( smutex0_owner6_id_enb                ),
    .smutex0_owner7_id_q                  ( smutex0_owner7_id_q                  ),
    .smutex0_owner7_id_d                  ( smutex0_owner7_id_d                  ),
    .smutex0_owner7_id_enb                ( smutex0_owner7_id_enb                ),
    .smutex0_ipc_sc_id_q                  ( smutex0_ipc_sc_id_q                  ),
    .smutex0_timeout_compare_q            ( smutex0_timeout_compare_q            ),
    .smutex0_timeout_prescale_q           ( smutex0_timeout_prescale_q           ),
    .smutex0_error_err_log_code_q         ( smutex0_error_err_log_code_q         ),
    .smutex0_error_err_log_code_d         ( smutex0_error_err_log_code_d         ),
    .smutex0_error_err_log_code_enb       ( smutex0_error_err_log_code_enb       ),
    .smutex0_error_err_log_access_q       ( smutex0_error_err_log_access_q       ),
    .smutex0_error_err_log_access_d       ( smutex0_error_err_log_access_d       ),
    .smutex0_error_err_log_access_enb     ( smutex0_error_err_log_access_enb     ),
    .smutex0_error_err_log_id_q           ( smutex0_error_err_log_id_q           ),
    .smutex0_error_err_log_id_d           ( smutex0_error_err_log_id_d           ),
    .smutex0_error_err_log_id_enb         ( smutex0_error_err_log_id_enb         ),
    .smutex0_error_err_log_multi_q        ( smutex0_error_err_log_multi_q        ),
    .smutex0_error_err_log_multi_d        ( smutex0_error_err_log_multi_d        ),
    .smutex0_error_err_log_multi_enb      ( smutex0_error_err_log_multi_enb      ),
    .smutex0_error_err_data_data_q        ( smutex0_error_err_data_data_q        ),
    .smutex0_error_err_data_data_d        ( smutex0_error_err_data_data_d        ),
    .smutex0_error_err_data_data_enb      ( smutex0_error_err_data_data_enb      ),
    .smutex0_error_err_idx_mutex_idx_q    ( smutex0_error_err_idx_mutex_idx_q    ),
    .smutex0_error_err_idx_mutex_idx_d    ( smutex0_error_err_idx_mutex_idx_d    ),
    .smutex0_error_err_idx_mutex_idx_enb  ( smutex0_error_err_idx_mutex_idx_enb  ),
    .mutex0_reqinfo                       ( mutex0_reqinfo                       ),
    .mutex0_mutex0_swid_qout              ( mutex0_mutex0_swid_qout              ),
    .mutex0_mutex0_swid_din               ( mutex0_mutex0_swid_din               ),
    .mutex0_mutex0_swid_w                 ( mutex0_mutex0_swid_w                 ),
    .mutex0_mutex0_swid_r                 ( mutex0_mutex0_swid_r                 ),
    .mutex0_mutex0_lock_qout              ( mutex0_mutex0_lock_qout              ),
    .mutex0_mutex0_lock_din               ( mutex0_mutex0_lock_din               ),
    .mutex0_mutex0_lock_w                 ( mutex0_mutex0_lock_w                 ),
    .mutex0_mutex1_swid_qout              ( mutex0_mutex1_swid_qout              ),
    .mutex0_mutex1_swid_din               ( mutex0_mutex1_swid_din               ),
    .mutex0_mutex1_swid_w                 ( mutex0_mutex1_swid_w                 ),
    .mutex0_mutex1_swid_r                 ( mutex0_mutex1_swid_r                 ),
    .mutex0_mutex1_lock_qout              ( mutex0_mutex1_lock_qout              ),
    .mutex0_mutex1_lock_din               ( mutex0_mutex1_lock_din               ),
    .mutex0_mutex1_lock_w                 ( mutex0_mutex1_lock_w                 ),
    .mutex0_mutex2_swid_qout              ( mutex0_mutex2_swid_qout              ),
    .mutex0_mutex2_swid_din               ( mutex0_mutex2_swid_din               ),
    .mutex0_mutex2_swid_w                 ( mutex0_mutex2_swid_w                 ),
    .mutex0_mutex2_swid_r                 ( mutex0_mutex2_swid_r                 ),
    .mutex0_mutex2_lock_qout              ( mutex0_mutex2_lock_qout              ),
    .mutex0_mutex2_lock_din               ( mutex0_mutex2_lock_din               ),
    .mutex0_mutex2_lock_w                 ( mutex0_mutex2_lock_w                 ),
    .mutex0_mutex3_swid_qout              ( mutex0_mutex3_swid_qout              ),
    .mutex0_mutex3_swid_din               ( mutex0_mutex3_swid_din               ),
    .mutex0_mutex3_swid_w                 ( mutex0_mutex3_swid_w                 ),
    .mutex0_mutex3_swid_r                 ( mutex0_mutex3_swid_r                 ),
    .mutex0_mutex3_lock_qout              ( mutex0_mutex3_lock_qout              ),
    .mutex0_mutex3_lock_din               ( mutex0_mutex3_lock_din               ),
    .mutex0_mutex3_lock_w                 ( mutex0_mutex3_lock_w                 ),
    .mutex0_mutex4_swid_qout              ( mutex0_mutex4_swid_qout              ),
    .mutex0_mutex4_swid_din               ( mutex0_mutex4_swid_din               ),
    .mutex0_mutex4_swid_w                 ( mutex0_mutex4_swid_w                 ),
    .mutex0_mutex4_swid_r                 ( mutex0_mutex4_swid_r                 ),
    .mutex0_mutex4_lock_qout              ( mutex0_mutex4_lock_qout              ),
    .mutex0_mutex4_lock_din               ( mutex0_mutex4_lock_din               ),
    .mutex0_mutex4_lock_w                 ( mutex0_mutex4_lock_w                 ),
    .mutex0_mutex5_swid_qout              ( mutex0_mutex5_swid_qout              ),
    .mutex0_mutex5_swid_din               ( mutex0_mutex5_swid_din               ),
    .mutex0_mutex5_swid_w                 ( mutex0_mutex5_swid_w                 ),
    .mutex0_mutex5_swid_r                 ( mutex0_mutex5_swid_r                 ),
    .mutex0_mutex5_lock_qout              ( mutex0_mutex5_lock_qout              ),
    .mutex0_mutex5_lock_din               ( mutex0_mutex5_lock_din               ),
    .mutex0_mutex5_lock_w                 ( mutex0_mutex5_lock_w                 ),
    .mutex0_mutex6_swid_qout              ( mutex0_mutex6_swid_qout              ),
    .mutex0_mutex6_swid_din               ( mutex0_mutex6_swid_din               ),
    .mutex0_mutex6_swid_w                 ( mutex0_mutex6_swid_w                 ),
    .mutex0_mutex6_swid_r                 ( mutex0_mutex6_swid_r                 ),
    .mutex0_mutex6_lock_qout              ( mutex0_mutex6_lock_qout              ),
    .mutex0_mutex6_lock_din               ( mutex0_mutex6_lock_din               ),
    .mutex0_mutex6_lock_w                 ( mutex0_mutex6_lock_w                 ),
    .mutex0_mutex7_swid_qout              ( mutex0_mutex7_swid_qout              ),
    .mutex0_mutex7_swid_din               ( mutex0_mutex7_swid_din               ),
    .mutex0_mutex7_swid_w                 ( mutex0_mutex7_swid_w                 ),
    .mutex0_mutex7_swid_r                 ( mutex0_mutex7_swid_r                 ),
    .mutex0_mutex7_lock_qout              ( mutex0_mutex7_lock_qout              ),
    .mutex0_mutex7_lock_din               ( mutex0_mutex7_lock_din               ),
    .mutex0_mutex7_lock_w                 ( mutex0_mutex7_lock_w                 ),
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
    .web0_input_invert1_invert_q          ( web0_input_invert1_invert_q          ),
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

endmodule // regmodel0_regmodel

