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
module regmodel0_regmodel_core_reg_intf(
    clk_i,
    non_retention_reset_ni,
    func_reset_ni,
    test_mode_cgm_i,
    mcmd_i,
    maddr_i,
    mdata_i,
    mreqinfo_i,
    mbyteen_i,
    scmdaccept_o,
    sdata_o,
    sresp_o,
    mrespaccept_i,
    sfdbs0_write_valid_o,
    sfdbs0_write_err_i,
    fdbs0_write_valid_o,
    fdbs0_write_err_i,
    smutex0_write_valid_o,
    smutex0_write_err_i,
    mutex0_write_valid_o,
    mutex0_write_err_i,
    web0_write_valid_o,
    web0_write_err_i,
    web1_write_valid_o,
    web1_write_err_i,
    write_addr_o,
    write_data_o,
    write_strb_o,
    write_info_o,
    sfdbs0_read_valid_o,
    sfdbs0_read_data_i,
    sfdbs0_read_err_i,
    sfdbs0_ready_i,
    fdbs0_read_valid_o,
    fdbs0_read_data_i,
    fdbs0_read_err_i,
    fdbs0_ready_i,
    smutex0_read_valid_o,
    smutex0_read_data_i,
    smutex0_read_err_i,
    smutex0_ready_i,
    mutex0_read_valid_o,
    mutex0_read_data_i,
    mutex0_read_err_i,
    mutex0_ready_i,
    web0_read_valid_o,
    web0_read_data_i,
    web0_read_err_i,
    web0_ready_i,
    web1_read_valid_o,
    web1_read_data_i,
    web1_read_err_i,
    web1_ready_i,
    read_addr_o,
    read_info_o );
input         clk_i; 
input         non_retention_reset_ni; 
input         func_reset_ni; 
input         test_mode_cgm_i; 
input   [2:0] mcmd_i; 
input  [14:0] maddr_i; 
input  [31:0] mdata_i; 
input   [5:0] mreqinfo_i; 
input   [3:0] mbyteen_i; 
output        scmdaccept_o; 
output [31:0] sdata_o; 
output  [1:0] sresp_o; 
input         mrespaccept_i; 
output        sfdbs0_write_valid_o; 
input         sfdbs0_write_err_i; 
output        fdbs0_write_valid_o; 
input         fdbs0_write_err_i; 
output        smutex0_write_valid_o; 
input         smutex0_write_err_i; 
output        mutex0_write_valid_o; 
input         mutex0_write_err_i; 
output        web0_write_valid_o; 
input         web0_write_err_i; 
output        web1_write_valid_o; 
input         web1_write_err_i; 
output [11:0] write_addr_o; 
output [31:0] write_data_o; 
output  [3:0] write_strb_o; 
output  [5:0] write_info_o; 
output        sfdbs0_read_valid_o; 
input  [31:0] sfdbs0_read_data_i; 
input         sfdbs0_read_err_i; 
input         sfdbs0_ready_i; 
output        fdbs0_read_valid_o; 
input  [31:0] fdbs0_read_data_i; 
input         fdbs0_read_err_i; 
input         fdbs0_ready_i; 
output        smutex0_read_valid_o; 
input  [31:0] smutex0_read_data_i; 
input         smutex0_read_err_i; 
input         smutex0_ready_i; 
output        mutex0_read_valid_o; 
input  [31:0] mutex0_read_data_i; 
input         mutex0_read_err_i; 
input         mutex0_ready_i; 
output        web0_read_valid_o; 
input  [31:0] web0_read_data_i; 
input         web0_read_err_i; 
input         web0_ready_i; 
output        web1_read_valid_o; 
input  [31:0] web1_read_data_i; 
input         web1_read_err_i; 
input         web1_ready_i; 
output [11:0] read_addr_o; 
output  [5:0] read_info_o; 
wire   [14:0] intf_write_addr; 
wire   [31:0] intf_write_data; 
wire    [3:0] intf_write_strb; 
wire    [5:0] intf_write_info; 
reg           intf_write_error; 
reg           sfdbs0_write_valid_o; 
reg           fdbs0_write_valid_o; 
reg           smutex0_write_valid_o; 
reg           mutex0_write_valid_o; 
reg           web0_write_valid_o; 
reg           web1_write_valid_o; 
wire   [14:0] intf_read_addr; 
reg    [31:0] intf_read_data; 
wire    [5:0] intf_read_info; 
reg           intf_read_error; 
reg           sfdbs0_read_valid_o; 
reg           fdbs0_read_valid_o; 
reg           smutex0_read_valid_o; 
reg           mutex0_read_valid_o; 
reg           web0_read_valid_o; 
reg           web1_read_valid_o; 

wire          req_ready; 
reg           rd_ready; 
reg           wr_ready; 
wire          req_valid_r; 
wire    [2:0] mcmd_r; 
wire   [14:0] maddr_r; 
wire   [31:0] mdata_r; 
wire    [3:0] mbyteen_r; 
wire    [5:0] mreqinfo_r; 
wire          resp_valid; 
wire          resp_valid_r; 
wire          resp_ready; 
wire    [1:0] sresp; 
wire    [1:0] sresp_r; 

wire   [59:0] in_payload = { mcmd_i
                           , maddr_i
                           , mdata_i
                           , mbyteen_i
                           , mreqinfo_i }; 
wire   [59:0] out_payload; 
assign { mcmd_r
       , maddr_r
       , mdata_r
       , mbyteen_r
       , mreqinfo_r} = out_payload;

regmodel0_regmodel_core_reg_intf_reqbuf req_pass_through(
    .valid_i   ( |(mcmd_i)    ),
    .payload_i ( in_payload   ),
    .ready_o   ( scmdaccept_o ),
    .valid_o   ( req_valid_r  ),
    .payload_o ( out_payload  ),
    .ready_i   ( req_ready    ) );

regmodel0_regmodel_core_reg_intf_respbuf resp_seq_ready(
    .clk           ( clk_i                   ),
    .hw_reset_n    ( non_retention_reset_ni  ),
    .valid_i       ( resp_valid              ),
    .payload_i     ( {intf_read_data, sresp} ),
    .ready_o       ( resp_ready              ),
    .valid_o       ( resp_valid_r            ),
    .payload_o     ( {sdata_o, sresp_r}      ),
    .ready_i       ( mrespaccept_i           ),
    .func_reset_n  ( func_reset_ni           ),
    .test_mode_cgm ( test_mode_cgm_i         ) );

wire   write_cmd   = (mcmd_r == 3'd1) || (mcmd_r == 3'd5);
wire   wr_active   = req_valid_r && write_cmd && resp_ready;
wire   write_valid = wr_active && |mbyteen_r;
wire   read_cmd    = (mcmd_r == 3'd2);
wire   read_valid  = req_valid_r && read_cmd && resp_ready;
assign resp_valid  = req_valid_r && req_ready;

assign req_ready  = resp_ready
                    && ((read_valid && rd_ready) || (wr_active && wr_ready));
assign intf_read_addr  = maddr_r;
assign intf_read_info  = mreqinfo_r;
assign intf_write_addr = maddr_r;
assign intf_write_data = mdata_r;
assign intf_write_info = mreqinfo_r;
assign intf_write_strb = mbyteen_r;
assign sresp   = {(intf_write_error || intf_read_error), resp_valid};
assign sresp_o = {2{resp_valid_r}} & sresp_r;

always @(*) begin
   sfdbs0_write_valid_o = 1'b0;
   fdbs0_write_valid_o = 1'b0;
   smutex0_write_valid_o = 1'b0;
   mutex0_write_valid_o = 1'b0;
   web0_write_valid_o = 1'b0;
   web1_write_valid_o = 1'b0;
   intf_write_error = 1'b0;
   wr_ready = 1'b1;

   if (write_valid) begin
      casez (intf_write_addr[14:2])
         13'b000000???????: begin
            sfdbs0_write_valid_o = 1'b1;
            intf_write_error = sfdbs0_write_err_i;
            wr_ready = sfdbs0_ready_i;
         end
         13'b01000????????: begin
            fdbs0_write_valid_o = 1'b1;
            intf_write_error = fdbs0_write_err_i;
            wr_ready = fdbs0_ready_i;
         end
         13'b011??????????: begin
            smutex0_write_valid_o = 1'b1;
            intf_write_error = smutex0_write_err_i;
            wr_ready = smutex0_ready_i;
         end
         13'b100??????????: begin
            mutex0_write_valid_o = 1'b1;
            intf_write_error = mutex0_write_err_i;
            wr_ready = mutex0_ready_i;
         end
         13'b10100000?????: begin
            web0_write_valid_o = 1'b1;
            intf_write_error = web0_write_err_i;
            wr_ready = web0_ready_i;
         end
         13'b11000000?????: begin
            web1_write_valid_o = 1'b1;
            intf_write_error = web1_write_err_i;
            wr_ready = web1_ready_i;
         end
         default: begin
            intf_write_error = 1'b1;
         end
      endcase
   end
end

always @(*) begin
   sfdbs0_read_valid_o = 1'b0;
   fdbs0_read_valid_o = 1'b0;
   smutex0_read_valid_o = 1'b0;
   mutex0_read_valid_o = 1'b0;
   web0_read_valid_o = 1'b0;
   web1_read_valid_o = 1'b0;
   intf_read_data  = web1_read_data_i;
   intf_read_error = 1'b0;
   rd_ready = 1'b1;

   if (read_valid) begin
      casez (intf_read_addr[14:2])
         13'b000000???????: begin
            sfdbs0_read_valid_o = 1'b1;
            intf_read_data  = sfdbs0_read_data_i;
            intf_read_error = sfdbs0_read_err_i;
            rd_ready = sfdbs0_ready_i;
         end
         13'b01000????????: begin
            fdbs0_read_valid_o = 1'b1;
            intf_read_data  = fdbs0_read_data_i;
            intf_read_error = fdbs0_read_err_i;
            rd_ready = fdbs0_ready_i;
         end
         13'b011??????????: begin
            smutex0_read_valid_o = 1'b1;
            intf_read_data  = smutex0_read_data_i;
            intf_read_error = smutex0_read_err_i;
            rd_ready = smutex0_ready_i;
         end
         13'b100??????????: begin
            mutex0_read_valid_o = 1'b1;
            intf_read_data  = mutex0_read_data_i;
            intf_read_error = mutex0_read_err_i;
            rd_ready = mutex0_ready_i;
         end
         13'b10100000?????: begin
            web0_read_valid_o = 1'b1;
            intf_read_data  = web0_read_data_i;
            intf_read_error = web0_read_err_i;
            rd_ready = web0_ready_i;
         end
         13'b11000000?????: begin
            web1_read_valid_o = 1'b1;
            intf_read_data  = web1_read_data_i;
            intf_read_error = web1_read_err_i;
            rd_ready = web1_ready_i;
         end
         default: begin
            intf_read_data  = web1_read_data_i;
            intf_read_error = 1'b1;
         end
      endcase
   end
end

assign write_addr_o = intf_write_addr[11:0];
assign write_data_o = intf_write_data;
assign write_strb_o = intf_write_strb;
assign write_info_o = intf_write_info;
assign read_addr_o  = intf_read_addr[11:0];
assign read_info_o  = intf_read_info;

endmodule // regmodel0_regmodel_core_reg_intf

////////////////////////////////////////////////////////////////////////
