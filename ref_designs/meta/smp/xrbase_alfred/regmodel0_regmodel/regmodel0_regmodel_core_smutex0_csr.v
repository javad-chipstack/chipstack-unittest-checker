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
module regmodel0_regmodel_core_smutex0_csr(
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
    smutex0_error_err_idx_mutex_idx_enb );
input         reg_clk; 
input         non_retention_reset_ni; 
input         test_mode_cgm_i; 
input         write_valid_i; 
input  [11:0] write_addr_i; 
input  [31:0] write_data_i; 
input   [3:0] write_strb_i; 
input   [5:0] write_info_i; 
output        write_err_o; 
input  [11:0] read_addr_i; 
input         read_valid_i; 
output [31:0] read_data_o; 
input   [5:0] read_info_i; 
output        read_err_o; 
output        ready_o; 
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
reg     [5:0] smutex0_owner0_id_q; 
reg     [5:0] smutex0_owner1_id_q; 
reg     [5:0] smutex0_owner2_id_q; 
reg     [5:0] smutex0_owner3_id_q; 
reg     [5:0] smutex0_owner4_id_q; 
reg     [5:0] smutex0_owner5_id_q; 
reg     [5:0] smutex0_owner6_id_q; 
reg     [5:0] smutex0_owner7_id_q; 
reg     [5:0] smutex0_ipc_sc_id_q; 
reg     [5:0] smutex0_ipc_sc_id; 
reg     [7:0] smutex0_timeout_compare_q; 
reg     [7:0] smutex0_timeout_compare; 
reg     [1:0] smutex0_timeout_prescale_q; 
reg     [1:0] smutex0_timeout_prescale; 
reg     [2:0] smutex0_error_err_log_code_q; 
reg     [2:0] smutex0_error_err_log_code; 
reg           smutex0_error_err_log_access_q; 
reg     [5:0] smutex0_error_err_log_id_q; 
reg           smutex0_error_err_log_multi_q; 
reg    [31:0] smutex0_error_err_data_data_q; 
reg     [4:0] smutex0_error_err_idx_mutex_idx_q; 
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
                            || smutex0_owner0_id_enb
                            || smutex0_owner1_id_enb
                            || smutex0_owner2_id_enb
                            || smutex0_owner3_id_enb
                            || smutex0_owner4_id_enb
                            || smutex0_owner5_id_enb
                            || smutex0_owner6_id_enb
                            || smutex0_owner7_id_enb
                            || smutex0_error_err_log_code_enb
                            || smutex0_error_err_log_access_enb
                            || smutex0_error_err_log_id_enb
                            || smutex0_error_err_log_multi_enb
                            || smutex0_error_err_data_data_enb
                            || smutex0_error_err_idx_mutex_idx_enb; 
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
// register: owner0                                offset: 0x0
// field   : id,  type:STD, sw:RO, hw:RW, msb:5, lsb:0
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      smutex0_owner0_id_q <= 6'h00;
   end
   else if (smutex0_owner0_id_enb) begin
      smutex0_owner0_id_q <= smutex0_owner0_id_d;
   end
end
// ------------------------------------------------------------
// register: owner1                                offset: 0x4
// field   : id,  type:STD, sw:RO, hw:RW, msb:5, lsb:0
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      smutex0_owner1_id_q <= 6'h00;
   end
   else if (smutex0_owner1_id_enb) begin
      smutex0_owner1_id_q <= smutex0_owner1_id_d;
   end
end
// ------------------------------------------------------------
// register: owner2                                offset: 0x8
// field   : id,  type:STD, sw:RO, hw:RW, msb:5, lsb:0
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      smutex0_owner2_id_q <= 6'h00;
   end
   else if (smutex0_owner2_id_enb) begin
      smutex0_owner2_id_q <= smutex0_owner2_id_d;
   end
end
// ------------------------------------------------------------
// register: owner3                                offset: 0xc
// field   : id,  type:STD, sw:RO, hw:RW, msb:5, lsb:0
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      smutex0_owner3_id_q <= 6'h00;
   end
   else if (smutex0_owner3_id_enb) begin
      smutex0_owner3_id_q <= smutex0_owner3_id_d;
   end
end
// ------------------------------------------------------------
// register: owner4                                offset: 0x10
// field   : id,  type:STD, sw:RO, hw:RW, msb:5, lsb:0
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      smutex0_owner4_id_q <= 6'h00;
   end
   else if (smutex0_owner4_id_enb) begin
      smutex0_owner4_id_q <= smutex0_owner4_id_d;
   end
end
// ------------------------------------------------------------
// register: owner5                                offset: 0x14
// field   : id,  type:STD, sw:RO, hw:RW, msb:5, lsb:0
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      smutex0_owner5_id_q <= 6'h00;
   end
   else if (smutex0_owner5_id_enb) begin
      smutex0_owner5_id_q <= smutex0_owner5_id_d;
   end
end
// ------------------------------------------------------------
// register: owner6                                offset: 0x18
// field   : id,  type:STD, sw:RO, hw:RW, msb:5, lsb:0
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      smutex0_owner6_id_q <= 6'h00;
   end
   else if (smutex0_owner6_id_enb) begin
      smutex0_owner6_id_q <= smutex0_owner6_id_d;
   end
end
// ------------------------------------------------------------
// register: owner7                                offset: 0x1c
// field   : id,  type:STD, sw:RO, hw:RW, msb:5, lsb:0
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      smutex0_owner7_id_q <= 6'h00;
   end
   else if (smutex0_owner7_id_enb) begin
      smutex0_owner7_id_q <= smutex0_owner7_id_d;
   end
end
// ------------------------------------------------------------
// register: ipc_sc                                offset: 0x80
// field   : id,  type:STD, sw:RW, hw:RO, msb:5, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      smutex0_ipc_sc_id_q <= 6'h00;
   end
   else if (write_valid_i) begin
      smutex0_ipc_sc_id_q <= smutex0_ipc_sc_id;
   end
end
// ------------------------------------------------------------
// register: timeout                               offset: 0xec
// field   : compare,  type:STD, sw:RW, hw:RO, msb:7, lsb:0
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      smutex0_timeout_compare_q <= 8'h00;
   end
   else if (write_valid_i) begin
      smutex0_timeout_compare_q <= smutex0_timeout_compare;
   end
end
// field   : prescale,  type:STD, sw:RW, hw:RO, msb:9, lsb:8
always @(posedge reg_sw_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      smutex0_timeout_prescale_q <= 2'h0;
   end
   else if (write_valid_i) begin
      smutex0_timeout_prescale_q <= smutex0_timeout_prescale;
   end
end
// ------------------------------------------------------------
// register: error_err_log                         offset: 0xf0
// field   : code,  type:STD, sw:WC, hw:RW, msb:2, lsb:0
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      smutex0_error_err_log_code_q <= 3'h0;
   end
   else if (smutex0_error_err_log_code_enb) begin
      smutex0_error_err_log_code_q <= smutex0_error_err_log_code_d;
   end
   else if (write_valid_i) begin
      smutex0_error_err_log_code_q <= smutex0_error_err_log_code;
   end
end
// field   : access,  type:STD, sw:RO, hw:RW, msb:4, lsb:4
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      smutex0_error_err_log_access_q <= 1'h0;
   end
   else if (smutex0_error_err_log_access_enb) begin
      smutex0_error_err_log_access_q <= smutex0_error_err_log_access_d;
   end
end
// field   : id,  type:STD, sw:RO, hw:RW, msb:13, lsb:8
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      smutex0_error_err_log_id_q <= 6'h00;
   end
   else if (smutex0_error_err_log_id_enb) begin
      smutex0_error_err_log_id_q <= smutex0_error_err_log_id_d;
   end
end
// field   : multi,  type:STD, sw:RO, hw:RW, msb:31, lsb:31
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      smutex0_error_err_log_multi_q <= 1'h0;
   end
   else if (smutex0_error_err_log_multi_enb) begin
      smutex0_error_err_log_multi_q <= smutex0_error_err_log_multi_d;
   end
end
// ------------------------------------------------------------
// register: error_err_data                        offset: 0xf4
// field   : data,  type:STD, sw:RO, hw:RW, msb:31, lsb:0
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      smutex0_error_err_data_data_q <= 32'h00000000;
   end
   else if (smutex0_error_err_data_data_enb) begin
      smutex0_error_err_data_data_q <= smutex0_error_err_data_data_d;
   end
end
// ------------------------------------------------------------
// register: error_err_idx                         offset: 0xf8
// field   : mutex_idx,  type:STD, sw:RO, hw:RW, msb:4, lsb:0
always @(posedge reg_load0_clk or negedge non_retention_reset_ni) begin
   if (!non_retention_reset_ni) begin
      smutex0_error_err_idx_mutex_idx_q <= 5'h00;
   end
   else if (smutex0_error_err_idx_mutex_idx_enb) begin
      smutex0_error_err_idx_mutex_idx_q <= smutex0_error_err_idx_mutex_idx_d;
   end
end

////////////////////////////////////////////////////////////////////////
// STD/STP/INT Register/Field Write Logic

wire   [31:0] smutex0_ipc_sc; 
reg    [31:0] smutex0_ipc_sc_wrdata0; 
always @(*) begin
   smutex0_ipc_sc_wrdata0 = (write_data_masked | (smutex0_ipc_sc[31:0] & ~write_strobe_mask));
   if (write_addr_i == 12'h080) begin
      smutex0_ipc_sc_id = smutex0_ipc_sc_wrdata0[5:0];
   end else begin
      smutex0_ipc_sc_id = smutex0_ipc_sc_id_q;
   end
end

wire   [31:0] smutex0_timeout; 
reg    [31:0] smutex0_timeout_wrdata0; 
always @(*) begin
   smutex0_timeout_wrdata0 = (write_data_masked | (smutex0_timeout[31:0] & ~write_strobe_mask));
   if (write_addr_i == 12'h0ec) begin
      smutex0_timeout_compare = smutex0_timeout_wrdata0[7:0];
      smutex0_timeout_prescale = smutex0_timeout_wrdata0[9:8];
   end else begin
      smutex0_timeout_compare = smutex0_timeout_compare_q;
      smutex0_timeout_prescale = smutex0_timeout_prescale_q;
   end
end

wire   [31:0] smutex0_error_err_log; 
reg    [31:0] smutex0_error_err_log_wrdata0; 
always @(*) begin
   smutex0_error_err_log_wrdata0 = (write_data_masked | (smutex0_error_err_log[31:0] & ~write_strobe_mask));
   if (write_addr_i == 12'h0f0) begin
      smutex0_error_err_log_code = {3{1'b0}};
   end else begin
      smutex0_error_err_log_code = smutex0_error_err_log_code_q;
   end
end


////////////////////////////////////////////////////////////////////////
// Read/Write Ready Logic

assign ready_o = 1'b1;

////////////////////////////////////////////////////////////////////////
// Configuration Register Read Logic

// sonics preserve_name smutex0_owner0
wire   [31:0] smutex0_owner0 = {
              26'd0,
              smutex0_owner0_id_q};

// sonics preserve_name smutex0_owner1
wire   [31:0] smutex0_owner1 = {
              26'd0,
              smutex0_owner1_id_q};

// sonics preserve_name smutex0_owner2
wire   [31:0] smutex0_owner2 = {
              26'd0,
              smutex0_owner2_id_q};

// sonics preserve_name smutex0_owner3
wire   [31:0] smutex0_owner3 = {
              26'd0,
              smutex0_owner3_id_q};

// sonics preserve_name smutex0_owner4
wire   [31:0] smutex0_owner4 = {
              26'd0,
              smutex0_owner4_id_q};

// sonics preserve_name smutex0_owner5
wire   [31:0] smutex0_owner5 = {
              26'd0,
              smutex0_owner5_id_q};

// sonics preserve_name smutex0_owner6
wire   [31:0] smutex0_owner6 = {
              26'd0,
              smutex0_owner6_id_q};

// sonics preserve_name smutex0_owner7
wire   [31:0] smutex0_owner7 = {
              26'd0,
              smutex0_owner7_id_q};

// sonics preserve_name smutex0_ipc_sc
assign        smutex0_ipc_sc = {
              26'd0,
              smutex0_ipc_sc_id_q};

// sonics preserve_name smutex0_timeout
assign        smutex0_timeout = {
              22'd0,
              smutex0_timeout_prescale_q,
              smutex0_timeout_compare_q};

// sonics preserve_name smutex0_error_err_log
assign        smutex0_error_err_log = {
              smutex0_error_err_log_multi_q,
              17'd0,
              smutex0_error_err_log_id_q,
              3'd0,
              smutex0_error_err_log_access_q,
              1'd0,
              smutex0_error_err_log_code_q};

// sonics preserve_name smutex0_error_err_data
wire   [31:0] smutex0_error_err_data = {
              smutex0_error_err_data_data_q};

// sonics preserve_name smutex0_error_err_idx
wire   [31:0] smutex0_error_err_idx = {
              27'd0,
              smutex0_error_err_idx_mutex_idx_q};


////////////////////////////////////////////////////////////////////////
// Config Register Block Read Decoder

// LEVEL 0 ===================================
reg    [31:0] reg_word0_0; 
always @(*) begin
    case (read_addr_i[6:2])
       5'h0 :  reg_word0_0 = smutex0_owner0;
       5'h1 :  reg_word0_0 = smutex0_owner1;
       5'h2 :  reg_word0_0 = smutex0_owner2;
       5'h3 :  reg_word0_0 = smutex0_owner3;
       5'h4 :  reg_word0_0 = smutex0_owner4;
       5'h5 :  reg_word0_0 = smutex0_owner5;
       5'h6 :  reg_word0_0 = smutex0_owner6;
       5'h7 :  reg_word0_0 = smutex0_owner7;
       default: reg_word0_0 = 32'd0;
    endcase
end

reg    [31:0] reg_word0_1; 
always @(*) begin
    case (read_addr_i[6:2])
       5'h0 :  reg_word0_1 = smutex0_ipc_sc;
       5'h1b:  reg_word0_1 = smutex0_timeout;
       5'h1c:  reg_word0_1 = smutex0_error_err_log;
       5'h1d:  reg_word0_1 = smutex0_error_err_data;
       5'h1e:  reg_word0_1 = smutex0_error_err_idx;
       default: reg_word0_1 = 32'd0;
    endcase
end

// LEVEL 1 ===================================
reg    [31:0] reg_word1_0; 
always @(*) begin
    case (read_addr_i[11:7])
       5'h0 :  reg_word1_0 = reg_word0_0;
       5'h1 :  reg_word1_0 = reg_word0_1;
       default: reg_word1_0 = 32'd0;
    endcase
end

wire   [31:0] reg_word = reg_word1_0; 
assign read_data_o = reg_word & {32{read_valid_i}};

////////////////////////////////////////////////////////////////////////
// Read Address Hole Detection
reg           reg_read_hole; 
always @(*) begin
    casez (read_addr_i[11:2])
       10'h0 , 10'h1 , 10'h2 , 10'h3 , 10'h4 , 10'h5 , 10'h6 , 10'h7 , 
       10'h20, 10'h3b, 10'h3c, 10'h3d, 10'h3e:
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
    casez (write_addr_i[11:2])
       10'h20, 10'h3b, 10'h3c:
          reg_write_hole = 1'b0;
       default: reg_write_hole = 1'b1;
    endcase
end
assign write_err_o = reg_write_hole;

endmodule // regmodel0_regmodel_core_smutex0_csr

////////////////////////////////////////////////////////////////////////
