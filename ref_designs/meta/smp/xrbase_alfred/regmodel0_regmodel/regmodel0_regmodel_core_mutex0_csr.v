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
module regmodel0_regmodel_core_mutex0_csr(
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
    mutex0_mutex7_lock_w );
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
reg    [30:0] mutex0_mutex0_swid_din; 
reg           mutex0_mutex0_swid_w; 
wire          mutex0_mutex0_swid_r; 
reg           mutex0_mutex0_lock_din; 
reg           mutex0_mutex0_lock_w; 
reg    [30:0] mutex0_mutex1_swid_din; 
reg           mutex0_mutex1_swid_w; 
wire          mutex0_mutex1_swid_r; 
reg           mutex0_mutex1_lock_din; 
reg           mutex0_mutex1_lock_w; 
reg    [30:0] mutex0_mutex2_swid_din; 
reg           mutex0_mutex2_swid_w; 
wire          mutex0_mutex2_swid_r; 
reg           mutex0_mutex2_lock_din; 
reg           mutex0_mutex2_lock_w; 
reg    [30:0] mutex0_mutex3_swid_din; 
reg           mutex0_mutex3_swid_w; 
wire          mutex0_mutex3_swid_r; 
reg           mutex0_mutex3_lock_din; 
reg           mutex0_mutex3_lock_w; 
reg    [30:0] mutex0_mutex4_swid_din; 
reg           mutex0_mutex4_swid_w; 
wire          mutex0_mutex4_swid_r; 
reg           mutex0_mutex4_lock_din; 
reg           mutex0_mutex4_lock_w; 
reg    [30:0] mutex0_mutex5_swid_din; 
reg           mutex0_mutex5_swid_w; 
wire          mutex0_mutex5_swid_r; 
reg           mutex0_mutex5_lock_din; 
reg           mutex0_mutex5_lock_w; 
reg    [30:0] mutex0_mutex6_swid_din; 
reg           mutex0_mutex6_swid_w; 
wire          mutex0_mutex6_swid_r; 
reg           mutex0_mutex6_lock_din; 
reg           mutex0_mutex6_lock_w; 
reg    [30:0] mutex0_mutex7_swid_din; 
reg           mutex0_mutex7_swid_w; 
wire          mutex0_mutex7_swid_r; 
reg           mutex0_mutex7_lock_din; 
reg           mutex0_mutex7_lock_w; 
wire   [31:0] write_data; 
wire   [31:0] write_strobe_mask; 
wire   [31:0] write_data_masked; 

////////////////////////////////////////////////////////////////////////
// Local Clock Gating

////////////////////////////////////////////////////////////////////////
// Config Register Block Write Logic


////////////////////////////////////////////////////////////////////////
// EXT Register/Field Write Logic

wire   [31:0] mutex0_mutex0; 
wire   [31:0] mutex0_mutex0_wrdata0 = (write_data_masked | (mutex0_mutex0[31:0] & ~write_strobe_mask)); 
wire   [31:0] mutex0_mutex1; 
wire   [31:0] mutex0_mutex1_wrdata0 = (write_data_masked | (mutex0_mutex1[31:0] & ~write_strobe_mask)); 
wire   [31:0] mutex0_mutex2; 
wire   [31:0] mutex0_mutex2_wrdata0 = (write_data_masked | (mutex0_mutex2[31:0] & ~write_strobe_mask)); 
wire   [31:0] mutex0_mutex3; 
wire   [31:0] mutex0_mutex3_wrdata0 = (write_data_masked | (mutex0_mutex3[31:0] & ~write_strobe_mask)); 
wire   [31:0] mutex0_mutex4; 
wire   [31:0] mutex0_mutex4_wrdata0 = (write_data_masked | (mutex0_mutex4[31:0] & ~write_strobe_mask)); 
wire   [31:0] mutex0_mutex5; 
wire   [31:0] mutex0_mutex5_wrdata0 = (write_data_masked | (mutex0_mutex5[31:0] & ~write_strobe_mask)); 
wire   [31:0] mutex0_mutex6; 
wire   [31:0] mutex0_mutex6_wrdata0 = (write_data_masked | (mutex0_mutex6[31:0] & ~write_strobe_mask)); 
wire   [31:0] mutex0_mutex7; 
wire   [31:0] mutex0_mutex7_wrdata0 = (write_data_masked | (mutex0_mutex7[31:0] & ~write_strobe_mask)); 

always @(*) begin
    mutex0_mutex0_swid_din = 31'd0;
    mutex0_mutex0_swid_w = 1'd0;
    mutex0_mutex0_lock_din = 1'd0;
    mutex0_mutex0_lock_w = 1'd0;
    mutex0_mutex1_swid_din = 31'd0;
    mutex0_mutex1_swid_w = 1'd0;
    mutex0_mutex1_lock_din = 1'd0;
    mutex0_mutex1_lock_w = 1'd0;
    mutex0_mutex2_swid_din = 31'd0;
    mutex0_mutex2_swid_w = 1'd0;
    mutex0_mutex2_lock_din = 1'd0;
    mutex0_mutex2_lock_w = 1'd0;
    mutex0_mutex3_swid_din = 31'd0;
    mutex0_mutex3_swid_w = 1'd0;
    mutex0_mutex3_lock_din = 1'd0;
    mutex0_mutex3_lock_w = 1'd0;
    mutex0_mutex4_swid_din = 31'd0;
    mutex0_mutex4_swid_w = 1'd0;
    mutex0_mutex4_lock_din = 1'd0;
    mutex0_mutex4_lock_w = 1'd0;
    mutex0_mutex5_swid_din = 31'd0;
    mutex0_mutex5_swid_w = 1'd0;
    mutex0_mutex5_lock_din = 1'd0;
    mutex0_mutex5_lock_w = 1'd0;
    mutex0_mutex6_swid_din = 31'd0;
    mutex0_mutex6_swid_w = 1'd0;
    mutex0_mutex6_lock_din = 1'd0;
    mutex0_mutex6_lock_w = 1'd0;
    mutex0_mutex7_swid_din = 31'd0;
    mutex0_mutex7_swid_w = 1'd0;
    mutex0_mutex7_lock_din = 1'd0;
    mutex0_mutex7_lock_w = 1'd0;

    if (write_valid_i) begin
        case (write_addr_i)
           12'h000: begin
               mutex0_mutex0_swid_din = mutex0_mutex0_wrdata0[30:0];
               mutex0_mutex0_swid_w = write_strb_i[0] || write_strb_i[1] || write_strb_i[2] || write_strb_i[3];
               mutex0_mutex0_lock_din = mutex0_mutex0_wrdata0[31:31];
               mutex0_mutex0_lock_w = write_strb_i[3];
           end
           12'h004: begin
               mutex0_mutex1_swid_din = mutex0_mutex1_wrdata0[30:0];
               mutex0_mutex1_swid_w = write_strb_i[0] || write_strb_i[1] || write_strb_i[2] || write_strb_i[3];
               mutex0_mutex1_lock_din = mutex0_mutex1_wrdata0[31:31];
               mutex0_mutex1_lock_w = write_strb_i[3];
           end
           12'h008: begin
               mutex0_mutex2_swid_din = mutex0_mutex2_wrdata0[30:0];
               mutex0_mutex2_swid_w = write_strb_i[0] || write_strb_i[1] || write_strb_i[2] || write_strb_i[3];
               mutex0_mutex2_lock_din = mutex0_mutex2_wrdata0[31:31];
               mutex0_mutex2_lock_w = write_strb_i[3];
           end
           12'h00c: begin
               mutex0_mutex3_swid_din = mutex0_mutex3_wrdata0[30:0];
               mutex0_mutex3_swid_w = write_strb_i[0] || write_strb_i[1] || write_strb_i[2] || write_strb_i[3];
               mutex0_mutex3_lock_din = mutex0_mutex3_wrdata0[31:31];
               mutex0_mutex3_lock_w = write_strb_i[3];
           end
           12'h010: begin
               mutex0_mutex4_swid_din = mutex0_mutex4_wrdata0[30:0];
               mutex0_mutex4_swid_w = write_strb_i[0] || write_strb_i[1] || write_strb_i[2] || write_strb_i[3];
               mutex0_mutex4_lock_din = mutex0_mutex4_wrdata0[31:31];
               mutex0_mutex4_lock_w = write_strb_i[3];
           end
           12'h014: begin
               mutex0_mutex5_swid_din = mutex0_mutex5_wrdata0[30:0];
               mutex0_mutex5_swid_w = write_strb_i[0] || write_strb_i[1] || write_strb_i[2] || write_strb_i[3];
               mutex0_mutex5_lock_din = mutex0_mutex5_wrdata0[31:31];
               mutex0_mutex5_lock_w = write_strb_i[3];
           end
           12'h018: begin
               mutex0_mutex6_swid_din = mutex0_mutex6_wrdata0[30:0];
               mutex0_mutex6_swid_w = write_strb_i[0] || write_strb_i[1] || write_strb_i[2] || write_strb_i[3];
               mutex0_mutex6_lock_din = mutex0_mutex6_wrdata0[31:31];
               mutex0_mutex6_lock_w = write_strb_i[3];
           end
           12'h01c: begin
               mutex0_mutex7_swid_din = mutex0_mutex7_wrdata0[30:0];
               mutex0_mutex7_swid_w = write_strb_i[0] || write_strb_i[1] || write_strb_i[2] || write_strb_i[3];
               mutex0_mutex7_lock_din = mutex0_mutex7_wrdata0[31:31];
               mutex0_mutex7_lock_w = write_strb_i[3];
           end
           default: begin 
               mutex0_mutex0_swid_din = 31'd0;
               mutex0_mutex0_swid_w = 1'd0;
               mutex0_mutex0_lock_din = 1'd0;
               mutex0_mutex0_lock_w = 1'd0;
               mutex0_mutex1_swid_din = 31'd0;
               mutex0_mutex1_swid_w = 1'd0;
               mutex0_mutex1_lock_din = 1'd0;
               mutex0_mutex1_lock_w = 1'd0;
               mutex0_mutex2_swid_din = 31'd0;
               mutex0_mutex2_swid_w = 1'd0;
               mutex0_mutex2_lock_din = 1'd0;
               mutex0_mutex2_lock_w = 1'd0;
               mutex0_mutex3_swid_din = 31'd0;
               mutex0_mutex3_swid_w = 1'd0;
               mutex0_mutex3_lock_din = 1'd0;
               mutex0_mutex3_lock_w = 1'd0;
               mutex0_mutex4_swid_din = 31'd0;
               mutex0_mutex4_swid_w = 1'd0;
               mutex0_mutex4_lock_din = 1'd0;
               mutex0_mutex4_lock_w = 1'd0;
               mutex0_mutex5_swid_din = 31'd0;
               mutex0_mutex5_swid_w = 1'd0;
               mutex0_mutex5_lock_din = 1'd0;
               mutex0_mutex5_lock_w = 1'd0;
               mutex0_mutex6_swid_din = 31'd0;
               mutex0_mutex6_swid_w = 1'd0;
               mutex0_mutex6_lock_din = 1'd0;
               mutex0_mutex6_lock_w = 1'd0;
               mutex0_mutex7_swid_din = 31'd0;
               mutex0_mutex7_swid_w = 1'd0;
               mutex0_mutex7_lock_din = 1'd0;
               mutex0_mutex7_lock_w = 1'd0;
           end
        endcase
    end
end

////////////////////////////////////////////////////////////////////////
// Read/Write Ready Logic

assign ready_o = 1'b1;

////////////////////////////////////////////////////////////////////////
// Configuration Register Read Logic

// sonics preserve_name mutex0_mutex0
assign        mutex0_mutex0 = {
              mutex0_mutex0_lock_qout,
              mutex0_mutex0_swid_qout};

// sonics preserve_name mutex0_mutex1
assign        mutex0_mutex1 = {
              mutex0_mutex1_lock_qout,
              mutex0_mutex1_swid_qout};

// sonics preserve_name mutex0_mutex2
assign        mutex0_mutex2 = {
              mutex0_mutex2_lock_qout,
              mutex0_mutex2_swid_qout};

// sonics preserve_name mutex0_mutex3
assign        mutex0_mutex3 = {
              mutex0_mutex3_lock_qout,
              mutex0_mutex3_swid_qout};

// sonics preserve_name mutex0_mutex4
assign        mutex0_mutex4 = {
              mutex0_mutex4_lock_qout,
              mutex0_mutex4_swid_qout};

// sonics preserve_name mutex0_mutex5
assign        mutex0_mutex5 = {
              mutex0_mutex5_lock_qout,
              mutex0_mutex5_swid_qout};

// sonics preserve_name mutex0_mutex6
assign        mutex0_mutex6 = {
              mutex0_mutex6_lock_qout,
              mutex0_mutex6_swid_qout};

// sonics preserve_name mutex0_mutex7
assign        mutex0_mutex7 = {
              mutex0_mutex7_lock_qout,
              mutex0_mutex7_swid_qout};


////////////////////////////////////////////////////////////////////////
// Config Register Block Read Decoder

// LEVEL 0 ===================================
reg    [31:0] reg_word0_0; 
always @(*) begin
    case (read_addr_i[6:2])
       5'h0 :  reg_word0_0 = mutex0_mutex0;
       5'h1 :  reg_word0_0 = mutex0_mutex1;
       5'h2 :  reg_word0_0 = mutex0_mutex2;
       5'h3 :  reg_word0_0 = mutex0_mutex3;
       5'h4 :  reg_word0_0 = mutex0_mutex4;
       5'h5 :  reg_word0_0 = mutex0_mutex5;
       5'h6 :  reg_word0_0 = mutex0_mutex6;
       5'h7 :  reg_word0_0 = mutex0_mutex7;
       default: reg_word0_0 = 32'd0;
    endcase
end

// LEVEL 1 ===================================
reg    [31:0] reg_word1_0; 
always @(*) begin
    case (read_addr_i[11:7])
       5'h0 :  reg_word1_0 = reg_word0_0;
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
       10'h0 , 10'h1 , 10'h2 , 10'h3 , 10'h4 , 10'h5 , 10'h6 , 10'h7 :
          reg_read_hole = 1'b0;
       default: reg_read_hole = 1'b1;
    endcase
end
assign read_err_o = reg_read_hole;

////////////////////////////////////////////////////////////////////////
// Read Notify

assign mutex0_mutex0_swid_r = read_valid_i && (read_addr_i[11:2] == 10'h0 );
assign mutex0_mutex1_swid_r = read_valid_i && (read_addr_i[11:2] == 10'h1 );
assign mutex0_mutex2_swid_r = read_valid_i && (read_addr_i[11:2] == 10'h2 );
assign mutex0_mutex3_swid_r = read_valid_i && (read_addr_i[11:2] == 10'h3 );
assign mutex0_mutex4_swid_r = read_valid_i && (read_addr_i[11:2] == 10'h4 );
assign mutex0_mutex5_swid_r = read_valid_i && (read_addr_i[11:2] == 10'h5 );
assign mutex0_mutex6_swid_r = read_valid_i && (read_addr_i[11:2] == 10'h6 );
assign mutex0_mutex7_swid_r = read_valid_i && (read_addr_i[11:2] == 10'h7 );

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
       10'h0 , 10'h1 , 10'h2 , 10'h3 , 10'h4 , 10'h5 , 10'h6 , 10'h7 :
          reg_write_hole = 1'b0;
       default: reg_write_hole = 1'b1;
    endcase
end
assign write_err_o = reg_write_hole;

assign mutex0_reqinfo = (write_valid_i) ? write_info_i : read_info_i;

endmodule // regmodel0_regmodel_core_mutex0_csr

////////////////////////////////////////////////////////////////////////
