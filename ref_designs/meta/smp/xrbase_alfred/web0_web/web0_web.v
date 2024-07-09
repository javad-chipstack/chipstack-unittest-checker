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

module web0_web(

    // Interface clk type clock of web0_web
    input  logic            clkclk,

    // Interface sys type system of web0_web
    input  logic            sysreset_n,
    input  logic            systest_mode_cgm,
    input  logic            systest_mode_async,

    // Interface regmodel0_regmodel_web0_control type sv_interface of web0_web
    regmodel0_regmodel_web0_control_interface.sp  regmodel0_regmodel_web0_control_if,

    // Interface regmodel0_regmodel_web0_event type sv_interface of web0_web
    regmodel0_regmodel_web0_event_interface.sp  regmodel0_regmodel_web0_event_if,

    // Interface regmodel0_regmodel_web0_wake_enable0 type sv_interface of web0_web
    regmodel0_regmodel_web0_wake_enable0_interface.sp  regmodel0_regmodel_web0_wake_enable0_if,

    // Interface regmodel0_regmodel_web0_wake_enable1 type sv_interface of web0_web
    regmodel0_regmodel_web0_wake_enable1_interface.sp  regmodel0_regmodel_web0_wake_enable1_if,

    // Interface regmodel0_regmodel_web0_input_invert0 type sv_interface of web0_web
    regmodel0_regmodel_web0_input_invert0_interface.sp  regmodel0_regmodel_web0_input_invert0_if,

    // Interface regmodel0_regmodel_web0_input_invert1 type sv_interface of web0_web
    regmodel0_regmodel_web0_input_invert1_interface.sp  regmodel0_regmodel_web0_input_invert1_if,

    // Non-Interface Ports
    input  logic [63:0]     int_in,
    output logic            wake,
    input  logic [0:0]      clear_function,
    output logic [63:0]     int_out,
    output logic            event_suppress,
    output logic            activate_low_pwr,
    output logic            epu_enable
);

parameter NUM_INPUTS  = 'd64;  //spyglass disable -rule STARC05-2.10.3.6 --"leye; PermWaiver; Leye_Lint Correct range will always be selected in case statement

logic   [1:0] activate_low_pwr_edge; 
logic         activate_low_pwr_clear; 
logic   [1:0] event_suppress_edge; 
logic         event_suppress_clear; 
logic         wake_now; 
logic   [1:0] wake_now_edge; 
logic         wake_now_clear; 
logic  [63:0] wake_enable; 
logic   [1:0] epu_enable_edge; 
logic         epu_enable_clear; 
logic  [63:0] input_invert; 
logic  [31:0] wake_enable0_q; 
logic  [31:0] input_invert0_q; 
logic  [31:0] wake_enable1_q; 
logic  [31:0] input_invert1_q; 

assign activate_low_pwr_edge = regmodel0_regmodel_web0_control_if.activate_low_pwr_edge_q;
assign event_suppress_edge = regmodel0_regmodel_web0_control_if.event_suppress_edge_q;
assign wake_now_edge = regmodel0_regmodel_web0_control_if.wake_now_edge_q;
assign epu_enable_edge = regmodel0_regmodel_web0_control_if.epu_enable_edge_q;
assign activate_low_pwr = regmodel0_regmodel_web0_event_if.activate_low_pwr_q;
assign regmodel0_regmodel_web0_event_if.activate_low_pwr_enb = activate_low_pwr_clear;
assign regmodel0_regmodel_web0_event_if.activate_low_pwr_d = '0;
assign event_suppress = regmodel0_regmodel_web0_event_if.event_suppress_q;
assign regmodel0_regmodel_web0_event_if.event_suppress_enb = event_suppress_clear;
assign regmodel0_regmodel_web0_event_if.event_suppress_d   = '0;
assign wake_now = regmodel0_regmodel_web0_event_if.wake_now_q;
assign regmodel0_regmodel_web0_event_if.wake_now_enb = wake_now_clear;
assign regmodel0_regmodel_web0_event_if.wake_now_d = '0;
assign epu_enable = regmodel0_regmodel_web0_event_if.epu_enable_q;
assign regmodel0_regmodel_web0_event_if.epu_enable_enb = epu_enable_clear;
assign regmodel0_regmodel_web0_event_if.epu_enable_d = '0;
assign wake_enable0_q = regmodel0_regmodel_web0_wake_enable0_if.enable_q;
assign wake_enable1_q = regmodel0_regmodel_web0_wake_enable1_if.enable_q;
assign input_invert0_q = regmodel0_regmodel_web0_input_invert0_if.invert_q;
assign input_invert1_q = regmodel0_regmodel_web0_input_invert1_if.invert_q;

assign wake_enable  = {wake_enable1_q
                      ,wake_enable0_q};
assign input_invert = {input_invert1_q
                      ,input_invert0_q};

assign int_out = (int_in ^ input_invert) & {NUM_INPUTS{~event_suppress}};
assign wake    = |((int_in ^ input_invert) & wake_enable) || wake_now;

logic         sync_clear_func; 


// Start Double Rank Synchronizer Block

ftc_double_rank_synchronizer_async  #(.WIDTH(1), .RSTVAL(1'b0)) double_rank_synchronizer_clear_function (

    .clk              (clkclk),
//synopsys translate_off
`ifdef MM_ASYNC_VALIDATION
    .sndr_clk_i         ( sndr_clk ),
`endif
//synopsys translate_on
    .rst_n            (sysreset_n),
    .test_mode_async  (systest_mode_async),
    .async_data       (|(clear_function)),
    .sync_data        (sync_clear_func)
    );


logic         sync_clear_func_reg; 
always @(posedge clkclk or negedge sysreset_n)
   if (!sysreset_n) begin 
      sync_clear_func_reg <= '0;
   end 
   else 
      sync_clear_func_reg <= sync_clear_func;

always_comb begin
    case (activate_low_pwr_edge)
        2'd0: activate_low_pwr_clear = sync_clear_func_reg && !sync_clear_func;
        2'd1: activate_low_pwr_clear = !sync_clear_func_reg && sync_clear_func;
        default: activate_low_pwr_clear = 1'b0;
    endcase
end

always_comb begin
    case (event_suppress_edge)
        2'd0: event_suppress_clear = sync_clear_func_reg && !sync_clear_func;
        2'd1: event_suppress_clear = !sync_clear_func_reg && sync_clear_func;
        default: event_suppress_clear = 1'b0;
    endcase
end

always_comb begin
    case (wake_now_edge)
        2'd0: wake_now_clear = sync_clear_func_reg && !sync_clear_func;
        2'd1: wake_now_clear = !sync_clear_func_reg && sync_clear_func;
        default: wake_now_clear = 1'b0;
    endcase
end

always_comb begin
    case (epu_enable_edge)
        2'd0: epu_enable_clear = sync_clear_func_reg && !sync_clear_func;
        2'd1: epu_enable_clear = !sync_clear_func_reg && sync_clear_func;
        default: epu_enable_clear = 1'b0;
    endcase
end

endmodule // web0_web
