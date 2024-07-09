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
module regmodel0_regmodel_core_web1_csr(
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
input         reg_clk; 
input         non_retention_reset_ni; 
input         test_mode_cgm_i; 
input         write_valid_i; 
input   [6:0] write_addr_i; 
input  [31:0] write_data_i; 
input   [3:0] write_strb_i; 
input   [5:0] write_info_i; 
output        write_err_o; 
input   [6:0] read_addr_i; 
input         read_valid_i; 
output [31:0] read_data_o; 
input   [5:0] read_info_i; 
output        read_err_o; 
output        ready_o; 
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
reg     [1:0] web1_control_activate_low_pwr_edge_q; 
reg     [1:0] web1_control_activate_low_pwr_edge; 
reg     [1:0] web1_control_event_suppress_edge_q; 
reg     [1:0] web1_control_event_suppress_edge; 
reg     [1:0] web1_control_wake_now_edge_q; 
reg     [1:0] web1_control_wake_now_edge; 
reg     [1:0] web1_control_epu_enable_edge_q; 
reg     [1:0] web1_control_epu_enable_edge; 
reg           web1_event_activate_low_pwr_q; 
reg           web1_event_activate_low_pwr; 
reg           web1_event_event_suppress_q; 
reg           web1_event_event_suppress; 
reg           web1_event_wake_now_q; 
reg           web1_event_wake_now; 
reg           web1_event_epu_enable_q; 
reg           web1_event_epu_enable; 
reg    [31:0] web1_wake_enable0_enable_q; 
reg    [31:0] web1_wake_enable0_enable; 
reg    [31:0] web1_wake_enable1_enable_q; 
reg    [31:0] web1_wake_enable1_enable; 
reg    [31:0] web1_input_invert0_invert_q; 
reg    [31:0] web1_input_invert0_invert; 
reg    [31:0] web1_input_invert1_invert_q; 
reg    [31:0] web1_input_invert1_invert; 
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

////////////////////////////////////////////////////////////////////////
// Config Register Block Write Logic

// ------------------------------------------------------------
// register: control                               offset: 0x0
// field   : activate_low_pwr_edge,  type:STD, sw:RW, hw:RO, msb:1, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      web1_control_activate_low_pwr_edge_q <= 2'h1;
   end
   else if (write_valid_i) begin
      web1_control_activate_low_pwr_edge_q <= web1_control_activate_low_pwr_edge;
   end
end
// field   : event_suppress_edge,  type:STD, sw:RW, hw:RO, msb:3, lsb:2
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      web1_control_event_suppress_edge_q <= 2'h0;
   end
   else if (write_valid_i) begin
      web1_control_event_suppress_edge_q <= web1_control_event_suppress_edge;
   end
end
// field   : wake_now_edge,  type:STD, sw:RW, hw:RO, msb:5, lsb:4
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      web1_control_wake_now_edge_q <= 2'h1;
   end
   else if (write_valid_i) begin
      web1_control_wake_now_edge_q <= web1_control_wake_now_edge;
   end
end
// field   : epu_enable_edge,  type:STD, sw:RW, hw:RO, msb:7, lsb:6
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      web1_control_epu_enable_edge_q <= 2'h1;
   end
   else if (write_valid_i) begin
      web1_control_epu_enable_edge_q <= web1_control_epu_enable_edge;
   end
end
// ------------------------------------------------------------
// register: event_set                             offset: 0x4
// field   : activate_low_pwr,  type:STP, sw:W1S, hw:RW, msb:0, lsb:0
always @(posedge reg_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      web1_event_activate_low_pwr_q <= 1'h0;
   end
   else if (web1_event_activate_low_pwr_enb) begin
      web1_event_activate_low_pwr_q <= web1_event_activate_low_pwr_d;
   end
   else if (write_valid_i) begin
      web1_event_activate_low_pwr_q <= web1_event_activate_low_pwr;
   end
end
// field   : event_suppress,  type:STP, sw:W1S, hw:RW, msb:1, lsb:1
always @(posedge reg_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      web1_event_event_suppress_q <= 1'h0;
   end
   else if (web1_event_event_suppress_enb) begin
      web1_event_event_suppress_q <= web1_event_event_suppress_d;
   end
   else if (write_valid_i) begin
      web1_event_event_suppress_q <= web1_event_event_suppress;
   end
end
// field   : wake_now,  type:STP, sw:W1S, hw:RW, msb:2, lsb:2
always @(posedge reg_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      web1_event_wake_now_q <= 1'h0;
   end
   else if (web1_event_wake_now_enb) begin
      web1_event_wake_now_q <= web1_event_wake_now_d;
   end
   else if (write_valid_i) begin
      web1_event_wake_now_q <= web1_event_wake_now;
   end
end
// field   : epu_enable,  type:STP, sw:W1S, hw:RW, msb:3, lsb:3
always @(posedge reg_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      web1_event_epu_enable_q <= 1'h0;
   end
   else if (web1_event_epu_enable_enb) begin
      web1_event_epu_enable_q <= web1_event_epu_enable_d;
   end
   else if (write_valid_i) begin
      web1_event_epu_enable_q <= web1_event_epu_enable;
   end
end
// ------------------------------------------------------------
// register: event_clr                             offset: 0x8
// field   : activate_low_pwr,  type:STP, sw:W1C, hw:RW, msb:0, lsb:0
// *** No internal storage needed.
// field   : event_suppress,  type:STP, sw:W1C, hw:RW, msb:1, lsb:1
// *** No internal storage needed.
// field   : wake_now,  type:STP, sw:W1C, hw:RW, msb:2, lsb:2
// *** No internal storage needed.
// field   : epu_enable,  type:STP, sw:W1C, hw:RW, msb:3, lsb:3
// *** No internal storage needed.
// ------------------------------------------------------------
// register: wake_enable0                          offset: 0x20
// field   : enable,  type:STD, sw:RW, hw:RO, msb:31, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      web1_wake_enable0_enable_q <= 32'h00000000;
   end
   else if (write_valid_i) begin
      web1_wake_enable0_enable_q <= web1_wake_enable0_enable;
   end
end
// ------------------------------------------------------------
// register: wake_enable1                          offset: 0x24
// field   : enable,  type:STD, sw:RW, hw:RO, msb:31, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      web1_wake_enable1_enable_q <= 32'h00000000;
   end
   else if (write_valid_i) begin
      web1_wake_enable1_enable_q <= web1_wake_enable1_enable;
   end
end
// ------------------------------------------------------------
// register: input_invert0                         offset: 0x40
// field   : invert,  type:STD, sw:RW, hw:RO, msb:31, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      web1_input_invert0_invert_q <= 32'h00000000;
   end
   else if (write_valid_i) begin
      web1_input_invert0_invert_q <= web1_input_invert0_invert;
   end
end
// ------------------------------------------------------------
// register: input_invert1                         offset: 0x44
// field   : invert,  type:STD, sw:RW, hw:RO, msb:31, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      web1_input_invert1_invert_q <= 32'h00000000;
   end
   else if (write_valid_i) begin
      web1_input_invert1_invert_q <= web1_input_invert1_invert;
   end
end

////////////////////////////////////////////////////////////////////////
// STD/STP/INT Register/Field Write Logic

wire   [31:0] web1_control; 
reg    [31:0] web1_control_wrdata0; 
always @(*) begin
   web1_control_wrdata0 = (write_data_masked | (web1_control[31:0] & ~write_strobe_mask));
   if (write_addr_i == 7'h00) begin
      web1_control_activate_low_pwr_edge = web1_control_wrdata0[1:0];
      web1_control_event_suppress_edge = web1_control_wrdata0[3:2];
      web1_control_wake_now_edge = web1_control_wrdata0[5:4];
      web1_control_epu_enable_edge = web1_control_wrdata0[7:6];
   end else begin
      web1_control_activate_low_pwr_edge = web1_control_activate_low_pwr_edge_q;
      web1_control_event_suppress_edge = web1_control_event_suppress_edge_q;
      web1_control_wake_now_edge = web1_control_wake_now_edge_q;
      web1_control_epu_enable_edge = web1_control_epu_enable_edge_q;
   end
end

always @(*) begin
   if (write_addr_i == 7'h04) begin
      web1_event_activate_low_pwr = web1_event_activate_low_pwr_q | write_data_masked[0:0];
      web1_event_event_suppress = web1_event_event_suppress_q | write_data_masked[1:1];
      web1_event_wake_now = web1_event_wake_now_q | write_data_masked[2:2];
      web1_event_epu_enable = web1_event_epu_enable_q | write_data_masked[3:3];
   end else
   if (write_addr_i == 7'h08) begin
      web1_event_activate_low_pwr = web1_event_activate_low_pwr_q & ~write_data_masked[0:0];
      web1_event_event_suppress = web1_event_event_suppress_q & ~write_data_masked[1:1];
      web1_event_wake_now = web1_event_wake_now_q & ~write_data_masked[2:2];
      web1_event_epu_enable = web1_event_epu_enable_q & ~write_data_masked[3:3];
   end else begin
      web1_event_activate_low_pwr = web1_event_activate_low_pwr_q;
      web1_event_event_suppress = web1_event_event_suppress_q;
      web1_event_wake_now = web1_event_wake_now_q;
      web1_event_epu_enable = web1_event_epu_enable_q;
   end
end

wire   [31:0] web1_wake_enable0; 
reg    [31:0] web1_wake_enable0_wrdata0; 
always @(*) begin
   web1_wake_enable0_wrdata0 = (write_data_masked | (web1_wake_enable0[31:0] & ~write_strobe_mask));
   if (write_addr_i == 7'h20) begin
      web1_wake_enable0_enable = web1_wake_enable0_wrdata0;
   end else begin
      web1_wake_enable0_enable = web1_wake_enable0_enable_q;
   end
end

wire   [31:0] web1_wake_enable1; 
reg    [31:0] web1_wake_enable1_wrdata0; 
always @(*) begin
   web1_wake_enable1_wrdata0 = (write_data_masked | (web1_wake_enable1[31:0] & ~write_strobe_mask));
   if (write_addr_i == 7'h24) begin
      web1_wake_enable1_enable = web1_wake_enable1_wrdata0;
   end else begin
      web1_wake_enable1_enable = web1_wake_enable1_enable_q;
   end
end

wire   [31:0] web1_input_invert0; 
reg    [31:0] web1_input_invert0_wrdata0; 
always @(*) begin
   web1_input_invert0_wrdata0 = (write_data_masked | (web1_input_invert0[31:0] & ~write_strobe_mask));
   if (write_addr_i == 7'h40) begin
      web1_input_invert0_invert = web1_input_invert0_wrdata0;
   end else begin
      web1_input_invert0_invert = web1_input_invert0_invert_q;
   end
end

wire   [31:0] web1_input_invert1; 
reg    [31:0] web1_input_invert1_wrdata0; 
always @(*) begin
   web1_input_invert1_wrdata0 = (write_data_masked | (web1_input_invert1[31:0] & ~write_strobe_mask));
   if (write_addr_i == 7'h44) begin
      web1_input_invert1_invert = web1_input_invert1_wrdata0;
   end else begin
      web1_input_invert1_invert = web1_input_invert1_invert_q;
   end
end


////////////////////////////////////////////////////////////////////////
// Read/Write Ready Logic

assign ready_o = 1'b1;

////////////////////////////////////////////////////////////////////////
// Configuration Register Read Logic

// sonics preserve_name web1_control
assign        web1_control = {
              24'd0,
              web1_control_epu_enable_edge_q,
              web1_control_wake_now_edge_q,
              web1_control_event_suppress_edge_q,
              web1_control_activate_low_pwr_edge_q};

// sonics preserve_name web1_event_set
wire   [31:0] web1_event_set = {
              28'd0,
              web1_event_epu_enable_q,
              web1_event_wake_now_q,
              web1_event_event_suppress_q,
              web1_event_activate_low_pwr_q};

// sonics preserve_name web1_event_clr
wire   [31:0] web1_event_clr = {
              28'd0,
              web1_event_epu_enable_q,
              web1_event_wake_now_q,
              web1_event_event_suppress_q,
              web1_event_activate_low_pwr_q};

// sonics preserve_name web1_wake_enable0
assign        web1_wake_enable0 = {
              web1_wake_enable0_enable_q};

// sonics preserve_name web1_wake_enable1
assign        web1_wake_enable1 = {
              web1_wake_enable1_enable_q};

// sonics preserve_name web1_input_invert0
assign        web1_input_invert0 = {
              web1_input_invert0_invert_q};

// sonics preserve_name web1_input_invert1
assign        web1_input_invert1 = {
              web1_input_invert1_invert_q};


////////////////////////////////////////////////////////////////////////
// Config Register Block Read Decoder

// LEVEL 0 ===================================
reg    [31:0] reg_word0_0; 
always @(*) begin
    case (read_addr_i[6:2])
       5'h0 :  reg_word0_0 = web1_control;
       5'h1 :  reg_word0_0 = web1_event_set;
       5'h2 :  reg_word0_0 = web1_event_clr;
       5'h8 :  reg_word0_0 = web1_wake_enable0;
       5'h9 :  reg_word0_0 = web1_wake_enable1;
       5'h10:  reg_word0_0 = web1_input_invert0;
       5'h11:  reg_word0_0 = web1_input_invert1;
       default: reg_word0_0 = 32'd0;
    endcase
end

wire   [31:0] reg_word = reg_word0_0; 
assign read_data_o = reg_word & {32{read_valid_i}};

////////////////////////////////////////////////////////////////////////
// Read Address Hole Detection
reg           reg_read_hole; 
always @(*) begin
    casez (read_addr_i[6:2])
       5'h0 , 5'h1 , 5'h2 , 5'h8 , 5'h9 , 5'h10, 5'h11:
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
    casez (write_addr_i[6:2])
       5'h0 , 5'h1 , 5'h2 , 5'h8 , 5'h9 , 5'h10, 5'h11:
          reg_write_hole = 1'b0;
       default: reg_write_hole = 1'b1;
    endcase
end
assign write_err_o = reg_write_hole;

endmodule // regmodel0_regmodel_core_web1_csr

////////////////////////////////////////////////////////////////////////
