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

//  Register               Block Offset       Block Size    
//  Block                  decimal (hex)     decimal (hex) 
// -----------            ---------------   ---------------
// sfdbs0       (secure)       0 (0x0   )      512 (0x200 )
// fdbs0                    8192 (0x2000)     1024 (0x400 )
// smutex0      (secure)   12288 (0x3000)     4096 (0x1000)
// mutex0                  16384 (0x4000)     4096 (0x1000)
// web0                    20480 (0x5000)      128 (0x80  )
// web1                    24576 (0x6000)      128 (0x80  )

module xrbase_alfred(

    // Interface clk type clock of xrbase_alfred
    input  logic            clkclk,

    // Interface sys type system of xrbase_alfred
    input  logic            sysreset_n,
    input logic 	        dft__dft_cgc_rtl_en,
    // input  logic            systest_mode_cgm,
    // input  logic            systest_mode_async,

    // Interface ocp2 type ocp2 of xrbase_alfred
    input  logic            ocp2_MReset_n,
    input  logic [2:0]      ocp2_MCmd,
    input  logic [14:0]     ocp2_MAddr,
    input  logic [3:0]      ocp2_MByteEn,
    input  logic [5:0]      ocp2_MReqInfo,
    output logic            ocp2_SCmdAccept,
    input  logic [31:0]     ocp2_MData,
    output logic [1:0]      ocp2_SResp,
    output logic [31:0]     ocp2_SData,
    input  logic            ocp2_MRespAccept,

    // Non-Interface Ports
    output logic            fdbs0_fdbs_err_irq,
    output logic            fdbs0_fdbs_ram_clkclk,
    output logic            fdbs0_fdbs_ram_cen,
    output logic [7:0]      fdbs0_fdbs_ram_addr,
    output logic [31:0]     fdbs0_fdbs_ram_wen,
    output logic 	        fdbs0_fdbs_ram_wr,
    output logic [31:0]     fdbs0_fdbs_ram_din,
    input  logic [31:0]     fdbs0_fdbs_ram_dout,
    output logic [0:0]      fdbs0_fdbs_fdb0_irq,
    output logic [0:0]      fdbs0_fdbs_fdb0_irq_low,
    output logic [0:0]      fdbs0_fdbs_fdb1_irq,
    output logic [0:0]      fdbs0_fdbs_fdb1_irq_low,
    output logic            mutex0_mutex_err_irq,
    input  logic [63:0]     web0_web_int_in,
    output logic            web0_web_wake,
    input  logic [0:0]      web0_web_clear_function,
    output logic [63:0]     web0_web_int_out,
    output logic            web0_web_event_suppress,
    output logic            web0_web_activate_low_pwr,
    output logic            web0_web_epu_enable,
    input  logic [63:0]     web1_web_int_in,
    output logic            web1_web_wake,
    input  logic [0:0]      web1_web_clear_function,
    output logic [63:0]     web1_web_int_out,
    output logic            web1_web_event_suppress,
    output logic            web1_web_activate_low_pwr,
    output logic            web1_web_epu_enable
);

    // Bundle ocp2
    regmodel0_regmodel_ocp2_interface regmodel0_regmodel_ocp2_if () ;
    assign regmodel0_regmodel_ocp2_if.mreset_n = ocp2_MReset_n;
    assign regmodel0_regmodel_ocp2_if.mcmd = ocp2_MCmd;
    assign regmodel0_regmodel_ocp2_if.maddr = ocp2_MAddr;
    assign regmodel0_regmodel_ocp2_if.mbyteen = ocp2_MByteEn;
    assign regmodel0_regmodel_ocp2_if.mreqinfo = {1'd0, ocp2_MReqInfo[4:0]};
    assign ocp2_SCmdAccept = regmodel0_regmodel_ocp2_if.scmdaccept;
    assign regmodel0_regmodel_ocp2_if.mdata = ocp2_MData;
    assign ocp2_SResp = regmodel0_regmodel_ocp2_if.sresp;
    assign ocp2_SData = regmodel0_regmodel_ocp2_if.sdata;
    assign regmodel0_regmodel_ocp2_if.mrespaccept = ocp2_MRespAccept;
    logic            systest_mode_cgm;
    logic            systest_mode_async;
    assign systest_mode_cgm = dft__dft_cgc_rtl_en;
    assign systest_mode_async = 1'b0;

    logic [31:0]      fdbs0_fdbs_ram_wen_sig;
    assign fdbs0_fdbs_ram_wen = ~fdbs0_fdbs_ram_wen_sig;
    assign fdbs0_fdbs_ram_wr  = |(~fdbs0_fdbs_ram_wen_sig);

    logic             fdbs0_fdbs_ram_cen_sig;
    assign fdbs0_fdbs_ram_cen = ~fdbs0_fdbs_ram_cen_sig;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb0_src0
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface regmodel0_regmodel_sfdbs0_sfdb0_src0_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb0_src1
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface regmodel0_regmodel_sfdbs0_sfdb0_src1_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb0_src2
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface regmodel0_regmodel_sfdbs0_sfdb0_src2_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb0_src3
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface regmodel0_regmodel_sfdbs0_sfdb0_src3_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb0_src4
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface regmodel0_regmodel_sfdbs0_sfdb0_src4_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb0_src5
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface regmodel0_regmodel_sfdbs0_sfdb0_src5_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb0_src6
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface regmodel0_regmodel_sfdbs0_sfdb0_src6_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb0_src7
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface regmodel0_regmodel_sfdbs0_sfdb0_src7_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb0_src8
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface regmodel0_regmodel_sfdbs0_sfdb0_src8_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb0_src9
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface regmodel0_regmodel_sfdbs0_sfdb0_src9_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb0_src10
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface regmodel0_regmodel_sfdbs0_sfdb0_src10_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb0_src11
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface regmodel0_regmodel_sfdbs0_sfdb0_src11_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb0_src12
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface regmodel0_regmodel_sfdbs0_sfdb0_src12_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb0_src13
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface regmodel0_regmodel_sfdbs0_sfdb0_src13_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb0_src14
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface regmodel0_regmodel_sfdbs0_sfdb0_src14_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb0_src15
    regmodel0_regmodel_sfdbs0_sfdb0_src_interface regmodel0_regmodel_sfdbs0_sfdb0_src15_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb0_tgt
    regmodel0_regmodel_sfdbs0_sfdb0_tgt_interface regmodel0_regmodel_sfdbs0_sfdb0_tgt_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_ipc_sc
    regmodel0_regmodel_sfdbs0_ipc_sc_interface regmodel0_regmodel_sfdbs0_ipc_sc_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_error_err_log
    regmodel0_regmodel_sfdbs0_error_err_log_interface regmodel0_regmodel_sfdbs0_error_err_log_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_error_err_data
    regmodel0_regmodel_sfdbs0_error_err_data_interface regmodel0_regmodel_sfdbs0_error_err_data_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_error_err_idx
    regmodel0_regmodel_sfdbs0_error_err_idx_interface regmodel0_regmodel_sfdbs0_error_err_idx_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb1_src0
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface regmodel0_regmodel_sfdbs0_sfdb1_src0_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb1_src1
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface regmodel0_regmodel_sfdbs0_sfdb1_src1_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb1_src2
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface regmodel0_regmodel_sfdbs0_sfdb1_src2_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb1_src3
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface regmodel0_regmodel_sfdbs0_sfdb1_src3_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb1_src4
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface regmodel0_regmodel_sfdbs0_sfdb1_src4_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb1_src5
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface regmodel0_regmodel_sfdbs0_sfdb1_src5_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb1_src6
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface regmodel0_regmodel_sfdbs0_sfdb1_src6_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb1_src7
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface regmodel0_regmodel_sfdbs0_sfdb1_src7_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb1_src8
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface regmodel0_regmodel_sfdbs0_sfdb1_src8_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb1_src9
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface regmodel0_regmodel_sfdbs0_sfdb1_src9_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb1_src10
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface regmodel0_regmodel_sfdbs0_sfdb1_src10_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb1_src11
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface regmodel0_regmodel_sfdbs0_sfdb1_src11_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb1_src12
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface regmodel0_regmodel_sfdbs0_sfdb1_src12_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb1_src13
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface regmodel0_regmodel_sfdbs0_sfdb1_src13_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb1_src14
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface regmodel0_regmodel_sfdbs0_sfdb1_src14_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb1_src15
    regmodel0_regmodel_sfdbs0_sfdb1_src_interface regmodel0_regmodel_sfdbs0_sfdb1_src15_if () ;

    // Bundle regmodel0_regmodel_sfdbs0_sfdb1_tgt
    regmodel0_regmodel_sfdbs0_sfdb1_tgt_interface regmodel0_regmodel_sfdbs0_sfdb1_tgt_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_bell0
    regmodel0_regmodel_fdbs0_fdb0_bell_interface regmodel0_regmodel_fdbs0_fdb0_bell0_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_bell1
    regmodel0_regmodel_fdbs0_fdb0_bell_interface regmodel0_regmodel_fdbs0_fdb0_bell1_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_bell2
    regmodel0_regmodel_fdbs0_fdb0_bell_interface regmodel0_regmodel_fdbs0_fdb0_bell2_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_bell3
    regmodel0_regmodel_fdbs0_fdb0_bell_interface regmodel0_regmodel_fdbs0_fdb0_bell3_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_bell4
    regmodel0_regmodel_fdbs0_fdb0_bell_interface regmodel0_regmodel_fdbs0_fdb0_bell4_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_bell5
    regmodel0_regmodel_fdbs0_fdb0_bell_interface regmodel0_regmodel_fdbs0_fdb0_bell5_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_bell6
    regmodel0_regmodel_fdbs0_fdb0_bell_interface regmodel0_regmodel_fdbs0_fdb0_bell6_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_bell7
    regmodel0_regmodel_fdbs0_fdb0_bell_interface regmodel0_regmodel_fdbs0_fdb0_bell7_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_bell8
    regmodel0_regmodel_fdbs0_fdb0_bell_interface regmodel0_regmodel_fdbs0_fdb0_bell8_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_bell9
    regmodel0_regmodel_fdbs0_fdb0_bell_interface regmodel0_regmodel_fdbs0_fdb0_bell9_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_bell10
    regmodel0_regmodel_fdbs0_fdb0_bell_interface regmodel0_regmodel_fdbs0_fdb0_bell10_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_bell11
    regmodel0_regmodel_fdbs0_fdb0_bell_interface regmodel0_regmodel_fdbs0_fdb0_bell11_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_bell12
    regmodel0_regmodel_fdbs0_fdb0_bell_interface regmodel0_regmodel_fdbs0_fdb0_bell12_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_bell13
    regmodel0_regmodel_fdbs0_fdb0_bell_interface regmodel0_regmodel_fdbs0_fdb0_bell13_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_bell14
    regmodel0_regmodel_fdbs0_fdb0_bell_interface regmodel0_regmodel_fdbs0_fdb0_bell14_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_bell15
    regmodel0_regmodel_fdbs0_fdb0_bell_interface regmodel0_regmodel_fdbs0_fdb0_bell15_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_control
    regmodel0_regmodel_fdbs0_fdb0_control_interface regmodel0_regmodel_fdbs0_fdb0_control_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_enable
    regmodel0_regmodel_fdbs0_fdb0_enable_interface regmodel0_regmodel_fdbs0_fdb0_enable_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_status
    regmodel0_regmodel_fdbs0_fdb0_status_interface regmodel0_regmodel_fdbs0_fdb0_status_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_data0_fifo
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_data1_fifo
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_data2_fifo
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_data3_fifo
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_data4_fifo
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_data5_fifo
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_data6_fifo
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_data7_fifo
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_data8_fifo
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_data9_fifo
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_data10_fifo
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_data11_fifo
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_data12_fifo
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_data13_fifo
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_data14_fifo
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb0_data15_fifo
    regmodel0_regmodel_fdbs0_fdb0_data_fifo_interface regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_bell0
    regmodel0_regmodel_fdbs0_fdb1_bell_interface regmodel0_regmodel_fdbs0_fdb1_bell0_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_bell1
    regmodel0_regmodel_fdbs0_fdb1_bell_interface regmodel0_regmodel_fdbs0_fdb1_bell1_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_bell2
    regmodel0_regmodel_fdbs0_fdb1_bell_interface regmodel0_regmodel_fdbs0_fdb1_bell2_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_bell3
    regmodel0_regmodel_fdbs0_fdb1_bell_interface regmodel0_regmodel_fdbs0_fdb1_bell3_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_bell4
    regmodel0_regmodel_fdbs0_fdb1_bell_interface regmodel0_regmodel_fdbs0_fdb1_bell4_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_bell5
    regmodel0_regmodel_fdbs0_fdb1_bell_interface regmodel0_regmodel_fdbs0_fdb1_bell5_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_bell6
    regmodel0_regmodel_fdbs0_fdb1_bell_interface regmodel0_regmodel_fdbs0_fdb1_bell6_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_bell7
    regmodel0_regmodel_fdbs0_fdb1_bell_interface regmodel0_regmodel_fdbs0_fdb1_bell7_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_bell8
    regmodel0_regmodel_fdbs0_fdb1_bell_interface regmodel0_regmodel_fdbs0_fdb1_bell8_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_bell9
    regmodel0_regmodel_fdbs0_fdb1_bell_interface regmodel0_regmodel_fdbs0_fdb1_bell9_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_bell10
    regmodel0_regmodel_fdbs0_fdb1_bell_interface regmodel0_regmodel_fdbs0_fdb1_bell10_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_bell11
    regmodel0_regmodel_fdbs0_fdb1_bell_interface regmodel0_regmodel_fdbs0_fdb1_bell11_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_bell12
    regmodel0_regmodel_fdbs0_fdb1_bell_interface regmodel0_regmodel_fdbs0_fdb1_bell12_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_bell13
    regmodel0_regmodel_fdbs0_fdb1_bell_interface regmodel0_regmodel_fdbs0_fdb1_bell13_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_bell14
    regmodel0_regmodel_fdbs0_fdb1_bell_interface regmodel0_regmodel_fdbs0_fdb1_bell14_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_bell15
    regmodel0_regmodel_fdbs0_fdb1_bell_interface regmodel0_regmodel_fdbs0_fdb1_bell15_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_control
    regmodel0_regmodel_fdbs0_fdb1_control_interface regmodel0_regmodel_fdbs0_fdb1_control_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_enable
    regmodel0_regmodel_fdbs0_fdb1_enable_interface regmodel0_regmodel_fdbs0_fdb1_enable_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_status
    regmodel0_regmodel_fdbs0_fdb1_status_interface regmodel0_regmodel_fdbs0_fdb1_status_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_data0_fifo
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface regmodel0_regmodel_fdbs0_fdb1_data0_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_data1_fifo
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface regmodel0_regmodel_fdbs0_fdb1_data1_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_data2_fifo
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface regmodel0_regmodel_fdbs0_fdb1_data2_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_data3_fifo
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface regmodel0_regmodel_fdbs0_fdb1_data3_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_data4_fifo
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface regmodel0_regmodel_fdbs0_fdb1_data4_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_data5_fifo
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface regmodel0_regmodel_fdbs0_fdb1_data5_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_data6_fifo
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface regmodel0_regmodel_fdbs0_fdb1_data6_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_data7_fifo
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface regmodel0_regmodel_fdbs0_fdb1_data7_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_data8_fifo
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface regmodel0_regmodel_fdbs0_fdb1_data8_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_data9_fifo
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface regmodel0_regmodel_fdbs0_fdb1_data9_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_data10_fifo
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface regmodel0_regmodel_fdbs0_fdb1_data10_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_data11_fifo
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface regmodel0_regmodel_fdbs0_fdb1_data11_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_data12_fifo
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface regmodel0_regmodel_fdbs0_fdb1_data12_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_data13_fifo
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface regmodel0_regmodel_fdbs0_fdb1_data13_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_data14_fifo
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface regmodel0_regmodel_fdbs0_fdb1_data14_fifo_if () ;

    // Bundle regmodel0_regmodel_fdbs0_fdb1_data15_fifo
    regmodel0_regmodel_fdbs0_fdb1_data_fifo_interface regmodel0_regmodel_fdbs0_fdb1_data15_fifo_if () ;

    // Bundle regmodel0_regmodel_smutex0_owner0
    regmodel0_regmodel_smutex0_owner_interface regmodel0_regmodel_smutex0_owner0_if () ;

    // Bundle regmodel0_regmodel_smutex0_owner1
    regmodel0_regmodel_smutex0_owner_interface regmodel0_regmodel_smutex0_owner1_if () ;

    // Bundle regmodel0_regmodel_smutex0_owner2
    regmodel0_regmodel_smutex0_owner_interface regmodel0_regmodel_smutex0_owner2_if () ;

    // Bundle regmodel0_regmodel_smutex0_owner3
    regmodel0_regmodel_smutex0_owner_interface regmodel0_regmodel_smutex0_owner3_if () ;

    // Bundle regmodel0_regmodel_smutex0_owner4
    regmodel0_regmodel_smutex0_owner_interface regmodel0_regmodel_smutex0_owner4_if () ;

    // Bundle regmodel0_regmodel_smutex0_owner5
    regmodel0_regmodel_smutex0_owner_interface regmodel0_regmodel_smutex0_owner5_if () ;

    // Bundle regmodel0_regmodel_smutex0_owner6
    regmodel0_regmodel_smutex0_owner_interface regmodel0_regmodel_smutex0_owner6_if () ;

    // Bundle regmodel0_regmodel_smutex0_owner7
    regmodel0_regmodel_smutex0_owner_interface regmodel0_regmodel_smutex0_owner7_if () ;

    // Bundle regmodel0_regmodel_smutex0_ipc_sc
    regmodel0_regmodel_smutex0_ipc_sc_interface regmodel0_regmodel_smutex0_ipc_sc_if () ;

    // Bundle regmodel0_regmodel_smutex0_timeout
    regmodel0_regmodel_smutex0_timeout_interface regmodel0_regmodel_smutex0_timeout_if () ;

    // Bundle regmodel0_regmodel_smutex0_error_err_log
    regmodel0_regmodel_smutex0_error_err_log_interface regmodel0_regmodel_smutex0_error_err_log_if () ;

    // Bundle regmodel0_regmodel_smutex0_error_err_data
    regmodel0_regmodel_smutex0_error_err_data_interface regmodel0_regmodel_smutex0_error_err_data_if () ;

    // Bundle regmodel0_regmodel_smutex0_error_err_idx
    regmodel0_regmodel_smutex0_error_err_idx_interface regmodel0_regmodel_smutex0_error_err_idx_if () ;

    // Bundle regmodel0_regmodel_mutex0_mutex0
    regmodel0_regmodel_mutex0_mutex_interface regmodel0_regmodel_mutex0_mutex0_if () ;

    // Bundle regmodel0_regmodel_mutex0_mutex1
    regmodel0_regmodel_mutex0_mutex_interface regmodel0_regmodel_mutex0_mutex1_if () ;

    // Bundle regmodel0_regmodel_mutex0_mutex2
    regmodel0_regmodel_mutex0_mutex_interface regmodel0_regmodel_mutex0_mutex2_if () ;

    // Bundle regmodel0_regmodel_mutex0_mutex3
    regmodel0_regmodel_mutex0_mutex_interface regmodel0_regmodel_mutex0_mutex3_if () ;

    // Bundle regmodel0_regmodel_mutex0_mutex4
    regmodel0_regmodel_mutex0_mutex_interface regmodel0_regmodel_mutex0_mutex4_if () ;

    // Bundle regmodel0_regmodel_mutex0_mutex5
    regmodel0_regmodel_mutex0_mutex_interface regmodel0_regmodel_mutex0_mutex5_if () ;

    // Bundle regmodel0_regmodel_mutex0_mutex6
    regmodel0_regmodel_mutex0_mutex_interface regmodel0_regmodel_mutex0_mutex6_if () ;

    // Bundle regmodel0_regmodel_mutex0_mutex7
    regmodel0_regmodel_mutex0_mutex_interface regmodel0_regmodel_mutex0_mutex7_if () ;

    // Bundle regmodel0_regmodel_web0_control
    regmodel0_regmodel_web0_control_interface regmodel0_regmodel_web0_control_if () ;

    // Bundle regmodel0_regmodel_web0_event
    regmodel0_regmodel_web0_event_interface regmodel0_regmodel_web0_event_if () ;

    // Bundle regmodel0_regmodel_web0_wake_enable0
    regmodel0_regmodel_web0_wake_enable0_interface regmodel0_regmodel_web0_wake_enable0_if () ;

    // Bundle regmodel0_regmodel_web0_wake_enable1
    regmodel0_regmodel_web0_wake_enable1_interface regmodel0_regmodel_web0_wake_enable1_if () ;

    // Bundle regmodel0_regmodel_web0_input_invert0
    regmodel0_regmodel_web0_input_invert0_interface regmodel0_regmodel_web0_input_invert0_if () ;

    // Bundle regmodel0_regmodel_web0_input_invert1
    regmodel0_regmodel_web0_input_invert1_interface regmodel0_regmodel_web0_input_invert1_if () ;

    // Bundle regmodel0_regmodel_web1_control
    regmodel0_regmodel_web1_control_interface regmodel0_regmodel_web1_control_if () ;

    // Bundle regmodel0_regmodel_web1_event
    regmodel0_regmodel_web1_event_interface regmodel0_regmodel_web1_event_if () ;

    // Bundle regmodel0_regmodel_web1_wake_enable0
    regmodel0_regmodel_web1_wake_enable0_interface regmodel0_regmodel_web1_wake_enable0_if () ;

    // Bundle regmodel0_regmodel_web1_wake_enable1
    regmodel0_regmodel_web1_wake_enable1_interface regmodel0_regmodel_web1_wake_enable1_if () ;

    // Bundle regmodel0_regmodel_web1_input_invert0
    regmodel0_regmodel_web1_input_invert0_interface regmodel0_regmodel_web1_input_invert0_if () ;

    // Bundle regmodel0_regmodel_web1_input_invert1
    regmodel0_regmodel_web1_input_invert1_interface regmodel0_regmodel_web1_input_invert1_if () ;

    // gated fdbs clock
    ftc_clock_gate_latch fdbs_gated_clock_gate_latch (
        .clk(clkclk),
        .enable(~fdbs0_fdbs_ram_cen_sig),
        .clock_gate_disable(1'b0),
        .test_mode(dft__dft_cgc_rtl_en),
        .gated_clk(fdbs0_fdbs_ram_clkclk));

    regmodel0_regmodel regmodel0(
        /* Interface clk type clock of regmodel0 */
        .clk_i(clkclk),
        /* Interface sys type system of regmodel0 */
        .sys_reset_ni(sysreset_n),
        .sys_test_mode_cgm_i(systest_mode_cgm),
        .sys_test_mode_async_i(systest_mode_async),
        /* Interface ocp2 type ocp2 of regmodel0 */
        .regmodel0_regmodel_ocp2_if(regmodel0_regmodel_ocp2_if.slave),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src0 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src0_if(regmodel0_regmodel_sfdbs0_sfdb0_src0_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src1 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src1_if(regmodel0_regmodel_sfdbs0_sfdb0_src1_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src2 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src2_if(regmodel0_regmodel_sfdbs0_sfdb0_src2_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src3 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src3_if(regmodel0_regmodel_sfdbs0_sfdb0_src3_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src4 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src4_if(regmodel0_regmodel_sfdbs0_sfdb0_src4_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src5 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src5_if(regmodel0_regmodel_sfdbs0_sfdb0_src5_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src6 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src6_if(regmodel0_regmodel_sfdbs0_sfdb0_src6_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src7 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src7_if(regmodel0_regmodel_sfdbs0_sfdb0_src7_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src8 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src8_if(regmodel0_regmodel_sfdbs0_sfdb0_src8_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src9 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src9_if(regmodel0_regmodel_sfdbs0_sfdb0_src9_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src10 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src10_if(regmodel0_regmodel_sfdbs0_sfdb0_src10_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src11 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src11_if(regmodel0_regmodel_sfdbs0_sfdb0_src11_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src12 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src12_if(regmodel0_regmodel_sfdbs0_sfdb0_src12_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src13 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src13_if(regmodel0_regmodel_sfdbs0_sfdb0_src13_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src14 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src14_if(regmodel0_regmodel_sfdbs0_sfdb0_src14_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src15 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src15_if(regmodel0_regmodel_sfdbs0_sfdb0_src15_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_tgt type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_tgt_if(regmodel0_regmodel_sfdbs0_sfdb0_tgt_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_ipc_sc type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_ipc_sc_if(regmodel0_regmodel_sfdbs0_ipc_sc_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_error_err_log type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_error_err_log_if(regmodel0_regmodel_sfdbs0_error_err_log_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_error_err_data type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_error_err_data_if(regmodel0_regmodel_sfdbs0_error_err_data_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_error_err_idx type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_error_err_idx_if(regmodel0_regmodel_sfdbs0_error_err_idx_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src0 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src0_if(regmodel0_regmodel_sfdbs0_sfdb1_src0_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src1 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src1_if(regmodel0_regmodel_sfdbs0_sfdb1_src1_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src2 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src2_if(regmodel0_regmodel_sfdbs0_sfdb1_src2_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src3 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src3_if(regmodel0_regmodel_sfdbs0_sfdb1_src3_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src4 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src4_if(regmodel0_regmodel_sfdbs0_sfdb1_src4_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src5 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src5_if(regmodel0_regmodel_sfdbs0_sfdb1_src5_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src6 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src6_if(regmodel0_regmodel_sfdbs0_sfdb1_src6_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src7 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src7_if(regmodel0_regmodel_sfdbs0_sfdb1_src7_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src8 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src8_if(regmodel0_regmodel_sfdbs0_sfdb1_src8_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src9 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src9_if(regmodel0_regmodel_sfdbs0_sfdb1_src9_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src10 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src10_if(regmodel0_regmodel_sfdbs0_sfdb1_src10_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src11 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src11_if(regmodel0_regmodel_sfdbs0_sfdb1_src11_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src12 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src12_if(regmodel0_regmodel_sfdbs0_sfdb1_src12_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src13 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src13_if(regmodel0_regmodel_sfdbs0_sfdb1_src13_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src14 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src14_if(regmodel0_regmodel_sfdbs0_sfdb1_src14_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src15 type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src15_if(regmodel0_regmodel_sfdbs0_sfdb1_src15_if.mp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_tgt type sv_interface of regmodel0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_tgt_if(regmodel0_regmodel_sfdbs0_sfdb1_tgt_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell0 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell0_if(regmodel0_regmodel_fdbs0_fdb0_bell0_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell1 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell1_if(regmodel0_regmodel_fdbs0_fdb0_bell1_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell2 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell2_if(regmodel0_regmodel_fdbs0_fdb0_bell2_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell3 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell3_if(regmodel0_regmodel_fdbs0_fdb0_bell3_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell4 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell4_if(regmodel0_regmodel_fdbs0_fdb0_bell4_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell5 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell5_if(regmodel0_regmodel_fdbs0_fdb0_bell5_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell6 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell6_if(regmodel0_regmodel_fdbs0_fdb0_bell6_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell7 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell7_if(regmodel0_regmodel_fdbs0_fdb0_bell7_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell8 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell8_if(regmodel0_regmodel_fdbs0_fdb0_bell8_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell9 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell9_if(regmodel0_regmodel_fdbs0_fdb0_bell9_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell10 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell10_if(regmodel0_regmodel_fdbs0_fdb0_bell10_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell11 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell11_if(regmodel0_regmodel_fdbs0_fdb0_bell11_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell12 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell12_if(regmodel0_regmodel_fdbs0_fdb0_bell12_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell13 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell13_if(regmodel0_regmodel_fdbs0_fdb0_bell13_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell14 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell14_if(regmodel0_regmodel_fdbs0_fdb0_bell14_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell15 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell15_if(regmodel0_regmodel_fdbs0_fdb0_bell15_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_control type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_control_if(regmodel0_regmodel_fdbs0_fdb0_control_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_enable type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_enable_if(regmodel0_regmodel_fdbs0_fdb0_enable_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_status type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_status_if(regmodel0_regmodel_fdbs0_fdb0_status_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data0_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data1_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data2_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data3_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data4_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data5_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data6_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data7_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data8_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data9_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data10_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data11_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data12_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data13_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data14_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data15_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell0 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell0_if(regmodel0_regmodel_fdbs0_fdb1_bell0_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell1 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell1_if(regmodel0_regmodel_fdbs0_fdb1_bell1_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell2 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell2_if(regmodel0_regmodel_fdbs0_fdb1_bell2_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell3 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell3_if(regmodel0_regmodel_fdbs0_fdb1_bell3_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell4 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell4_if(regmodel0_regmodel_fdbs0_fdb1_bell4_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell5 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell5_if(regmodel0_regmodel_fdbs0_fdb1_bell5_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell6 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell6_if(regmodel0_regmodel_fdbs0_fdb1_bell6_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell7 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell7_if(regmodel0_regmodel_fdbs0_fdb1_bell7_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell8 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell8_if(regmodel0_regmodel_fdbs0_fdb1_bell8_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell9 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell9_if(regmodel0_regmodel_fdbs0_fdb1_bell9_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell10 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell10_if(regmodel0_regmodel_fdbs0_fdb1_bell10_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell11 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell11_if(regmodel0_regmodel_fdbs0_fdb1_bell11_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell12 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell12_if(regmodel0_regmodel_fdbs0_fdb1_bell12_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell13 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell13_if(regmodel0_regmodel_fdbs0_fdb1_bell13_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell14 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell14_if(regmodel0_regmodel_fdbs0_fdb1_bell14_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell15 type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell15_if(regmodel0_regmodel_fdbs0_fdb1_bell15_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_control type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_control_if(regmodel0_regmodel_fdbs0_fdb1_control_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_enable type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_enable_if(regmodel0_regmodel_fdbs0_fdb1_enable_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_status type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_status_if(regmodel0_regmodel_fdbs0_fdb1_status_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data0_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_data0_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data0_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data1_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_data1_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data1_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data2_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_data2_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data2_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data3_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_data3_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data3_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data4_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_data4_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data4_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data5_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_data5_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data5_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data6_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_data6_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data6_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data7_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_data7_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data7_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data8_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_data8_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data8_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data9_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_data9_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data9_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data10_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_data10_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data10_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data11_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_data11_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data11_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data12_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_data12_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data12_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data13_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_data13_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data13_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data14_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_data14_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data14_fifo_if.mp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data15_fifo type sv_interface of regmodel0 */
        .regmodel0_regmodel_fdbs0_fdb1_data15_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data15_fifo_if.mp),
        /* Interface regmodel0_regmodel_smutex0_owner0 type sv_interface of regmodel0 */
        .regmodel0_regmodel_smutex0_owner0_if(regmodel0_regmodel_smutex0_owner0_if.mp),
        /* Interface regmodel0_regmodel_smutex0_owner1 type sv_interface of regmodel0 */
        .regmodel0_regmodel_smutex0_owner1_if(regmodel0_regmodel_smutex0_owner1_if.mp),
        /* Interface regmodel0_regmodel_smutex0_owner2 type sv_interface of regmodel0 */
        .regmodel0_regmodel_smutex0_owner2_if(regmodel0_regmodel_smutex0_owner2_if.mp),
        /* Interface regmodel0_regmodel_smutex0_owner3 type sv_interface of regmodel0 */
        .regmodel0_regmodel_smutex0_owner3_if(regmodel0_regmodel_smutex0_owner3_if.mp),
        /* Interface regmodel0_regmodel_smutex0_owner4 type sv_interface of regmodel0 */
        .regmodel0_regmodel_smutex0_owner4_if(regmodel0_regmodel_smutex0_owner4_if.mp),
        /* Interface regmodel0_regmodel_smutex0_owner5 type sv_interface of regmodel0 */
        .regmodel0_regmodel_smutex0_owner5_if(regmodel0_regmodel_smutex0_owner5_if.mp),
        /* Interface regmodel0_regmodel_smutex0_owner6 type sv_interface of regmodel0 */
        .regmodel0_regmodel_smutex0_owner6_if(regmodel0_regmodel_smutex0_owner6_if.mp),
        /* Interface regmodel0_regmodel_smutex0_owner7 type sv_interface of regmodel0 */
        .regmodel0_regmodel_smutex0_owner7_if(regmodel0_regmodel_smutex0_owner7_if.mp),
        /* Interface regmodel0_regmodel_smutex0_ipc_sc type sv_interface of regmodel0 */
        .regmodel0_regmodel_smutex0_ipc_sc_if(regmodel0_regmodel_smutex0_ipc_sc_if.mp),
        /* Interface regmodel0_regmodel_smutex0_timeout type sv_interface of regmodel0 */
        .regmodel0_regmodel_smutex0_timeout_if(regmodel0_regmodel_smutex0_timeout_if.mp),
        /* Interface regmodel0_regmodel_smutex0_error_err_log type sv_interface of regmodel0 */
        .regmodel0_regmodel_smutex0_error_err_log_if(regmodel0_regmodel_smutex0_error_err_log_if.mp),
        /* Interface regmodel0_regmodel_smutex0_error_err_data type sv_interface of regmodel0 */
        .regmodel0_regmodel_smutex0_error_err_data_if(regmodel0_regmodel_smutex0_error_err_data_if.mp),
        /* Interface regmodel0_regmodel_smutex0_error_err_idx type sv_interface of regmodel0 */
        .regmodel0_regmodel_smutex0_error_err_idx_if(regmodel0_regmodel_smutex0_error_err_idx_if.mp),
        /* Interface regmodel0_regmodel_mutex0_mutex0 type sv_interface of regmodel0 */
        .regmodel0_regmodel_mutex0_mutex0_if(regmodel0_regmodel_mutex0_mutex0_if.mp),
        /* Interface regmodel0_regmodel_mutex0_mutex1 type sv_interface of regmodel0 */
        .regmodel0_regmodel_mutex0_mutex1_if(regmodel0_regmodel_mutex0_mutex1_if.mp),
        /* Interface regmodel0_regmodel_mutex0_mutex2 type sv_interface of regmodel0 */
        .regmodel0_regmodel_mutex0_mutex2_if(regmodel0_regmodel_mutex0_mutex2_if.mp),
        /* Interface regmodel0_regmodel_mutex0_mutex3 type sv_interface of regmodel0 */
        .regmodel0_regmodel_mutex0_mutex3_if(regmodel0_regmodel_mutex0_mutex3_if.mp),
        /* Interface regmodel0_regmodel_mutex0_mutex4 type sv_interface of regmodel0 */
        .regmodel0_regmodel_mutex0_mutex4_if(regmodel0_regmodel_mutex0_mutex4_if.mp),
        /* Interface regmodel0_regmodel_mutex0_mutex5 type sv_interface of regmodel0 */
        .regmodel0_regmodel_mutex0_mutex5_if(regmodel0_regmodel_mutex0_mutex5_if.mp),
        /* Interface regmodel0_regmodel_mutex0_mutex6 type sv_interface of regmodel0 */
        .regmodel0_regmodel_mutex0_mutex6_if(regmodel0_regmodel_mutex0_mutex6_if.mp),
        /* Interface regmodel0_regmodel_mutex0_mutex7 type sv_interface of regmodel0 */
        .regmodel0_regmodel_mutex0_mutex7_if(regmodel0_regmodel_mutex0_mutex7_if.mp),
        /* Interface regmodel0_regmodel_web0_control type sv_interface of regmodel0 */
        .regmodel0_regmodel_web0_control_if(regmodel0_regmodel_web0_control_if.mp),
        /* Interface regmodel0_regmodel_web0_event type sv_interface of regmodel0 */
        .regmodel0_regmodel_web0_event_if(regmodel0_regmodel_web0_event_if.mp),
        /* Interface regmodel0_regmodel_web0_wake_enable0 type sv_interface of regmodel0 */
        .regmodel0_regmodel_web0_wake_enable0_if(regmodel0_regmodel_web0_wake_enable0_if.mp),
        /* Interface regmodel0_regmodel_web0_wake_enable1 type sv_interface of regmodel0 */
        .regmodel0_regmodel_web0_wake_enable1_if(regmodel0_regmodel_web0_wake_enable1_if.mp),
        /* Interface regmodel0_regmodel_web0_input_invert0 type sv_interface of regmodel0 */
        .regmodel0_regmodel_web0_input_invert0_if(regmodel0_regmodel_web0_input_invert0_if.mp),
        /* Interface regmodel0_regmodel_web0_input_invert1 type sv_interface of regmodel0 */
        .regmodel0_regmodel_web0_input_invert1_if(regmodel0_regmodel_web0_input_invert1_if.mp),
        /* Interface regmodel0_regmodel_web1_control type sv_interface of regmodel0 */
        .regmodel0_regmodel_web1_control_if(regmodel0_regmodel_web1_control_if.mp),
        /* Interface regmodel0_regmodel_web1_event type sv_interface of regmodel0 */
        .regmodel0_regmodel_web1_event_if(regmodel0_regmodel_web1_event_if.mp),
        /* Interface regmodel0_regmodel_web1_wake_enable0 type sv_interface of regmodel0 */
        .regmodel0_regmodel_web1_wake_enable0_if(regmodel0_regmodel_web1_wake_enable0_if.mp),
        /* Interface regmodel0_regmodel_web1_wake_enable1 type sv_interface of regmodel0 */
        .regmodel0_regmodel_web1_wake_enable1_if(regmodel0_regmodel_web1_wake_enable1_if.mp),
        /* Interface regmodel0_regmodel_web1_input_invert0 type sv_interface of regmodel0 */
        .regmodel0_regmodel_web1_input_invert0_if(regmodel0_regmodel_web1_input_invert0_if.mp),
        /* Interface regmodel0_regmodel_web1_input_invert1 type sv_interface of regmodel0 */
        .regmodel0_regmodel_web1_input_invert1_if(regmodel0_regmodel_web1_input_invert1_if.mp));

    fdbs0_fdbs fdbs0(
        /* Interface clk type clock of fdbs0 */
        .clkclk(clkclk),
        /* Interface sys type system of fdbs0 */
        .sysreset_n(sysreset_n),
        .systest_mode_cgm(systest_mode_cgm),
        .systest_mode_async(systest_mode_async),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src0 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src0_if(regmodel0_regmodel_sfdbs0_sfdb0_src0_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src1 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src1_if(regmodel0_regmodel_sfdbs0_sfdb0_src1_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src2 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src2_if(regmodel0_regmodel_sfdbs0_sfdb0_src2_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src3 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src3_if(regmodel0_regmodel_sfdbs0_sfdb0_src3_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src4 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src4_if(regmodel0_regmodel_sfdbs0_sfdb0_src4_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src5 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src5_if(regmodel0_regmodel_sfdbs0_sfdb0_src5_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src6 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src6_if(regmodel0_regmodel_sfdbs0_sfdb0_src6_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src7 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src7_if(regmodel0_regmodel_sfdbs0_sfdb0_src7_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src8 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src8_if(regmodel0_regmodel_sfdbs0_sfdb0_src8_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src9 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src9_if(regmodel0_regmodel_sfdbs0_sfdb0_src9_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src10 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src10_if(regmodel0_regmodel_sfdbs0_sfdb0_src10_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src11 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src11_if(regmodel0_regmodel_sfdbs0_sfdb0_src11_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src12 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src12_if(regmodel0_regmodel_sfdbs0_sfdb0_src12_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src13 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src13_if(regmodel0_regmodel_sfdbs0_sfdb0_src13_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src14 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src14_if(regmodel0_regmodel_sfdbs0_sfdb0_src14_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_src15 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_src15_if(regmodel0_regmodel_sfdbs0_sfdb0_src15_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb0_tgt type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb0_tgt_if(regmodel0_regmodel_sfdbs0_sfdb0_tgt_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_ipc_sc type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_ipc_sc_if(regmodel0_regmodel_sfdbs0_ipc_sc_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_error_err_log type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_error_err_log_if(regmodel0_regmodel_sfdbs0_error_err_log_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_error_err_data type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_error_err_data_if(regmodel0_regmodel_sfdbs0_error_err_data_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_error_err_idx type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_error_err_idx_if(regmodel0_regmodel_sfdbs0_error_err_idx_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src0 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src0_if(regmodel0_regmodel_sfdbs0_sfdb1_src0_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src1 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src1_if(regmodel0_regmodel_sfdbs0_sfdb1_src1_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src2 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src2_if(regmodel0_regmodel_sfdbs0_sfdb1_src2_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src3 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src3_if(regmodel0_regmodel_sfdbs0_sfdb1_src3_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src4 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src4_if(regmodel0_regmodel_sfdbs0_sfdb1_src4_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src5 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src5_if(regmodel0_regmodel_sfdbs0_sfdb1_src5_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src6 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src6_if(regmodel0_regmodel_sfdbs0_sfdb1_src6_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src7 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src7_if(regmodel0_regmodel_sfdbs0_sfdb1_src7_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src8 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src8_if(regmodel0_regmodel_sfdbs0_sfdb1_src8_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src9 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src9_if(regmodel0_regmodel_sfdbs0_sfdb1_src9_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src10 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src10_if(regmodel0_regmodel_sfdbs0_sfdb1_src10_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src11 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src11_if(regmodel0_regmodel_sfdbs0_sfdb1_src11_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src12 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src12_if(regmodel0_regmodel_sfdbs0_sfdb1_src12_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src13 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src13_if(regmodel0_regmodel_sfdbs0_sfdb1_src13_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src14 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src14_if(regmodel0_regmodel_sfdbs0_sfdb1_src14_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_src15 type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_src15_if(regmodel0_regmodel_sfdbs0_sfdb1_src15_if.sp),
        /* Interface regmodel0_regmodel_sfdbs0_sfdb1_tgt type sv_interface of fdbs0 */
        .regmodel0_regmodel_sfdbs0_sfdb1_tgt_if(regmodel0_regmodel_sfdbs0_sfdb1_tgt_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell0 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell0_if(regmodel0_regmodel_fdbs0_fdb0_bell0_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell1 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell1_if(regmodel0_regmodel_fdbs0_fdb0_bell1_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell2 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell2_if(regmodel0_regmodel_fdbs0_fdb0_bell2_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell3 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell3_if(regmodel0_regmodel_fdbs0_fdb0_bell3_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell4 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell4_if(regmodel0_regmodel_fdbs0_fdb0_bell4_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell5 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell5_if(regmodel0_regmodel_fdbs0_fdb0_bell5_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell6 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell6_if(regmodel0_regmodel_fdbs0_fdb0_bell6_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell7 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell7_if(regmodel0_regmodel_fdbs0_fdb0_bell7_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell8 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell8_if(regmodel0_regmodel_fdbs0_fdb0_bell8_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell9 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell9_if(regmodel0_regmodel_fdbs0_fdb0_bell9_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell10 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell10_if(regmodel0_regmodel_fdbs0_fdb0_bell10_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell11 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell11_if(regmodel0_regmodel_fdbs0_fdb0_bell11_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell12 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell12_if(regmodel0_regmodel_fdbs0_fdb0_bell12_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell13 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell13_if(regmodel0_regmodel_fdbs0_fdb0_bell13_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell14 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell14_if(regmodel0_regmodel_fdbs0_fdb0_bell14_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_bell15 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_bell15_if(regmodel0_regmodel_fdbs0_fdb0_bell15_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_control type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_control_if(regmodel0_regmodel_fdbs0_fdb0_control_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_enable type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_enable_if(regmodel0_regmodel_fdbs0_fdb0_enable_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_status type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_status_if(regmodel0_regmodel_fdbs0_fdb0_status_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data0_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data0_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data1_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data1_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data2_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data2_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data3_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data3_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data4_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data4_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data5_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data5_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data6_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data6_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data7_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data7_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data8_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data8_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data9_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data9_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data10_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data10_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data11_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data11_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data12_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data12_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data13_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data13_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data14_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data14_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb0_data15_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if(regmodel0_regmodel_fdbs0_fdb0_data15_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell0 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell0_if(regmodel0_regmodel_fdbs0_fdb1_bell0_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell1 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell1_if(regmodel0_regmodel_fdbs0_fdb1_bell1_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell2 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell2_if(regmodel0_regmodel_fdbs0_fdb1_bell2_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell3 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell3_if(regmodel0_regmodel_fdbs0_fdb1_bell3_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell4 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell4_if(regmodel0_regmodel_fdbs0_fdb1_bell4_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell5 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell5_if(regmodel0_regmodel_fdbs0_fdb1_bell5_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell6 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell6_if(regmodel0_regmodel_fdbs0_fdb1_bell6_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell7 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell7_if(regmodel0_regmodel_fdbs0_fdb1_bell7_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell8 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell8_if(regmodel0_regmodel_fdbs0_fdb1_bell8_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell9 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell9_if(regmodel0_regmodel_fdbs0_fdb1_bell9_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell10 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell10_if(regmodel0_regmodel_fdbs0_fdb1_bell10_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell11 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell11_if(regmodel0_regmodel_fdbs0_fdb1_bell11_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell12 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell12_if(regmodel0_regmodel_fdbs0_fdb1_bell12_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell13 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell13_if(regmodel0_regmodel_fdbs0_fdb1_bell13_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell14 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell14_if(regmodel0_regmodel_fdbs0_fdb1_bell14_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_bell15 type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_bell15_if(regmodel0_regmodel_fdbs0_fdb1_bell15_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_control type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_control_if(regmodel0_regmodel_fdbs0_fdb1_control_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_enable type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_enable_if(regmodel0_regmodel_fdbs0_fdb1_enable_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_status type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_status_if(regmodel0_regmodel_fdbs0_fdb1_status_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data0_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_data0_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data0_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data1_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_data1_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data1_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data2_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_data2_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data2_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data3_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_data3_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data3_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data4_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_data4_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data4_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data5_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_data5_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data5_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data6_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_data6_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data6_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data7_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_data7_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data7_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data8_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_data8_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data8_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data9_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_data9_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data9_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data10_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_data10_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data10_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data11_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_data11_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data11_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data12_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_data12_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data12_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data13_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_data13_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data13_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data14_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_data14_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data14_fifo_if.sp),
        /* Interface regmodel0_regmodel_fdbs0_fdb1_data15_fifo type sv_interface of fdbs0 */
        .regmodel0_regmodel_fdbs0_fdb1_data15_fifo_if(regmodel0_regmodel_fdbs0_fdb1_data15_fifo_if.sp),
        /* Non-Interface Ports */
        .err_irq(fdbs0_fdbs_err_irq),
        .ram_cen(fdbs0_fdbs_ram_cen_sig),
        .ram_addr(fdbs0_fdbs_ram_addr),
        .ram_wen(fdbs0_fdbs_ram_wen_sig),
        .ram_din(fdbs0_fdbs_ram_din),
        .ram_dout(fdbs0_fdbs_ram_dout),
        .fdb0_irq(fdbs0_fdbs_fdb0_irq),
        .fdb0_irq_low(fdbs0_fdbs_fdb0_irq_low),
        .fdb1_irq(fdbs0_fdbs_fdb1_irq),
        .fdb1_irq_low(fdbs0_fdbs_fdb1_irq_low));

    mutex0_mutex mutex0(
        /* Interface clk type clock of mutex0 */
        .clkclk(clkclk),
        /* Interface sys type system of mutex0 */
        .sysreset_n(sysreset_n),
        .systest_mode_cgm(systest_mode_cgm),
        .systest_mode_async(systest_mode_async),
        /* Interface regmodel0_regmodel_smutex0_owner0 type sv_interface of mutex0 */
        .regmodel0_regmodel_smutex0_owner0_if(regmodel0_regmodel_smutex0_owner0_if.sp),
        /* Interface regmodel0_regmodel_smutex0_owner1 type sv_interface of mutex0 */
        .regmodel0_regmodel_smutex0_owner1_if(regmodel0_regmodel_smutex0_owner1_if.sp),
        /* Interface regmodel0_regmodel_smutex0_owner2 type sv_interface of mutex0 */
        .regmodel0_regmodel_smutex0_owner2_if(regmodel0_regmodel_smutex0_owner2_if.sp),
        /* Interface regmodel0_regmodel_smutex0_owner3 type sv_interface of mutex0 */
        .regmodel0_regmodel_smutex0_owner3_if(regmodel0_regmodel_smutex0_owner3_if.sp),
        /* Interface regmodel0_regmodel_smutex0_owner4 type sv_interface of mutex0 */
        .regmodel0_regmodel_smutex0_owner4_if(regmodel0_regmodel_smutex0_owner4_if.sp),
        /* Interface regmodel0_regmodel_smutex0_owner5 type sv_interface of mutex0 */
        .regmodel0_regmodel_smutex0_owner5_if(regmodel0_regmodel_smutex0_owner5_if.sp),
        /* Interface regmodel0_regmodel_smutex0_owner6 type sv_interface of mutex0 */
        .regmodel0_regmodel_smutex0_owner6_if(regmodel0_regmodel_smutex0_owner6_if.sp),
        /* Interface regmodel0_regmodel_smutex0_owner7 type sv_interface of mutex0 */
        .regmodel0_regmodel_smutex0_owner7_if(regmodel0_regmodel_smutex0_owner7_if.sp),
        /* Interface regmodel0_regmodel_smutex0_ipc_sc type sv_interface of mutex0 */
        .regmodel0_regmodel_smutex0_ipc_sc_if(regmodel0_regmodel_smutex0_ipc_sc_if.sp),
        /* Interface regmodel0_regmodel_smutex0_timeout type sv_interface of mutex0 */
        .regmodel0_regmodel_smutex0_timeout_if(regmodel0_regmodel_smutex0_timeout_if.sp),
        /* Interface regmodel0_regmodel_smutex0_error_err_log type sv_interface of mutex0 */
        .regmodel0_regmodel_smutex0_error_err_log_if(regmodel0_regmodel_smutex0_error_err_log_if.sp),
        /* Interface regmodel0_regmodel_smutex0_error_err_data type sv_interface of mutex0 */
        .regmodel0_regmodel_smutex0_error_err_data_if(regmodel0_regmodel_smutex0_error_err_data_if.sp),
        /* Interface regmodel0_regmodel_smutex0_error_err_idx type sv_interface of mutex0 */
        .regmodel0_regmodel_smutex0_error_err_idx_if(regmodel0_regmodel_smutex0_error_err_idx_if.sp),
        /* Interface regmodel0_regmodel_mutex0_mutex0 type sv_interface of mutex0 */
        .regmodel0_regmodel_mutex0_mutex0_if(regmodel0_regmodel_mutex0_mutex0_if.sp),
        /* Interface regmodel0_regmodel_mutex0_mutex1 type sv_interface of mutex0 */
        .regmodel0_regmodel_mutex0_mutex1_if(regmodel0_regmodel_mutex0_mutex1_if.sp),
        /* Interface regmodel0_regmodel_mutex0_mutex2 type sv_interface of mutex0 */
        .regmodel0_regmodel_mutex0_mutex2_if(regmodel0_regmodel_mutex0_mutex2_if.sp),
        /* Interface regmodel0_regmodel_mutex0_mutex3 type sv_interface of mutex0 */
        .regmodel0_regmodel_mutex0_mutex3_if(regmodel0_regmodel_mutex0_mutex3_if.sp),
        /* Interface regmodel0_regmodel_mutex0_mutex4 type sv_interface of mutex0 */
        .regmodel0_regmodel_mutex0_mutex4_if(regmodel0_regmodel_mutex0_mutex4_if.sp),
        /* Interface regmodel0_regmodel_mutex0_mutex5 type sv_interface of mutex0 */
        .regmodel0_regmodel_mutex0_mutex5_if(regmodel0_regmodel_mutex0_mutex5_if.sp),
        /* Interface regmodel0_regmodel_mutex0_mutex6 type sv_interface of mutex0 */
        .regmodel0_regmodel_mutex0_mutex6_if(regmodel0_regmodel_mutex0_mutex6_if.sp),
        /* Interface regmodel0_regmodel_mutex0_mutex7 type sv_interface of mutex0 */
        .regmodel0_regmodel_mutex0_mutex7_if(regmodel0_regmodel_mutex0_mutex7_if.sp),
        /* Non-Interface Ports */
        .err_irq(mutex0_mutex_err_irq));

    web0_web web0(
        /* Interface clk type clock of web0 */
        .clkclk(clkclk),
        /* Interface sys type system of web0 */
        .sysreset_n(sysreset_n),
        .systest_mode_cgm(systest_mode_cgm),
        .systest_mode_async(systest_mode_async),
        /* Interface regmodel0_regmodel_web0_control type sv_interface of web0 */
        .regmodel0_regmodel_web0_control_if(regmodel0_regmodel_web0_control_if.sp),
        /* Interface regmodel0_regmodel_web0_event type sv_interface of web0 */
        .regmodel0_regmodel_web0_event_if(regmodel0_regmodel_web0_event_if.sp),
        /* Interface regmodel0_regmodel_web0_wake_enable0 type sv_interface of web0 */
        .regmodel0_regmodel_web0_wake_enable0_if(regmodel0_regmodel_web0_wake_enable0_if.sp),
        /* Interface regmodel0_regmodel_web0_wake_enable1 type sv_interface of web0 */
        .regmodel0_regmodel_web0_wake_enable1_if(regmodel0_regmodel_web0_wake_enable1_if.sp),
        /* Interface regmodel0_regmodel_web0_input_invert0 type sv_interface of web0 */
        .regmodel0_regmodel_web0_input_invert0_if(regmodel0_regmodel_web0_input_invert0_if.sp),
        /* Interface regmodel0_regmodel_web0_input_invert1 type sv_interface of web0 */
        .regmodel0_regmodel_web0_input_invert1_if(regmodel0_regmodel_web0_input_invert1_if.sp),
        /* Non-Interface Ports */
        .int_in(web0_web_int_in),
        .wake(web0_web_wake),
        .clear_function(web0_web_clear_function),
        .int_out(web0_web_int_out),
        .event_suppress(web0_web_event_suppress),
        .activate_low_pwr(web0_web_activate_low_pwr),
        .epu_enable(web0_web_epu_enable));

    web1_web web1(
        /* Interface clk type clock of web1 */
        .clkclk(clkclk),
        /* Interface sys type system of web1 */
        .sysreset_n(sysreset_n),
        .systest_mode_cgm(systest_mode_cgm),
        .systest_mode_async(systest_mode_async),
        /* Interface regmodel0_regmodel_web1_control type sv_interface of web1 */
        .regmodel0_regmodel_web1_control_if(regmodel0_regmodel_web1_control_if.sp),
        /* Interface regmodel0_regmodel_web1_event type sv_interface of web1 */
        .regmodel0_regmodel_web1_event_if(regmodel0_regmodel_web1_event_if.sp),
        /* Interface regmodel0_regmodel_web1_wake_enable0 type sv_interface of web1 */
        .regmodel0_regmodel_web1_wake_enable0_if(regmodel0_regmodel_web1_wake_enable0_if.sp),
        /* Interface regmodel0_regmodel_web1_wake_enable1 type sv_interface of web1 */
        .regmodel0_regmodel_web1_wake_enable1_if(regmodel0_regmodel_web1_wake_enable1_if.sp),
        /* Interface regmodel0_regmodel_web1_input_invert0 type sv_interface of web1 */
        .regmodel0_regmodel_web1_input_invert0_if(regmodel0_regmodel_web1_input_invert0_if.sp),
        /* Interface regmodel0_regmodel_web1_input_invert1 type sv_interface of web1 */
        .regmodel0_regmodel_web1_input_invert1_if(regmodel0_regmodel_web1_input_invert1_if.sp),
        /* Non-Interface Ports */
        .int_in(web1_web_int_in),
        .wake(web1_web_wake),
        .clear_function(web1_web_clear_function),
        .int_out(web1_web_int_out),
        .event_suppress(web1_web_event_suppress),
        .activate_low_pwr(web1_web_activate_low_pwr),
        .epu_enable(web1_web_epu_enable));
endmodule // xrbase_alfred
