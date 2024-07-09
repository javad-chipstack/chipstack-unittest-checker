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
////////////////////////////////////////////////////////////////////////
module regmodel0_regmodel_core_reg_intf_respbuf(
    clk,
    hw_reset_n,
    valid_i,
    payload_i,
    ready_o,
    valid_o,
    payload_o,
    ready_i,
    func_reset_n,
    test_mode_cgm );
input         clk; 
input         hw_reset_n; 
input         valid_i; 
input  [33:0] payload_i; 
output        ready_o; 
output        valid_o; 
output [33:0] payload_o; 
input         ready_i; 
input         func_reset_n; 
input         test_mode_cgm; 

wire          clk_enable; 
wire          payload_cgm_clk; 
ftc_clock_gate_latch payload_cgm_clk_clock_gate_latch (
    .clk(clk),
    .enable((clk_enable || !func_reset_n)),
    .clock_gate_disable(1'b0),
    .test_mode(test_mode_cgm),
    .gated_clk(payload_cgm_clk));

wire          clk0_enable; 
wire          payload0_cgm0_clk; 
ftc_clock_gate_latch payload0_cgm0_clk_clock_gate_latch (
    .clk(clk),
    .enable((clk0_enable || !func_reset_n)),
    .clock_gate_disable(1'b0),
    .test_mode(test_mode_cgm),
    .gated_clk(payload0_cgm0_clk));
//////////////////////////////////////////////////////////////////////////////
// FSM
reg [1:0] curr_state;
reg [1:0] next_state;
reg        load_payload;
always @(*) begin

   next_state = curr_state;
   load_payload = 1'b0;
   case (curr_state)
      2'd3: begin //spyglass disable -rule "LINT_FSM_UNREACHABLE_STATES" --"daberkow; PermWaiver; Entered via reset."
         next_state = 2'd0;
      end
      2'd0: begin
         load_payload = valid_i;
         if (valid_i && !ready_i) begin
            next_state = 2'd1;
         end
      end
      2'd1: begin
         if (!ready_i) begin
            next_state = 2'd1;
         end
         else begin
            next_state = 2'd0;
         end
      end
            //VCS coverage off
      //coverage off
      default: next_state = {2{1'bx}};
            //VCS coverage on
      //coverage on
   endcase
end //always

always @(posedge payload_cgm_clk or negedge hw_reset_n)
   if (!hw_reset_n) begin 
      curr_state <= 2'd3;
   end 
   else if (!func_reset_n) begin 
      curr_state <= 2'd3;
   end
   else 
   begin
        curr_state <= next_state;
   end
assign ready_o = (curr_state == 2'd0);
assign valid_o  = ((curr_state == 2'd0) && valid_i && func_reset_n) || (curr_state == 2'd1);
//////////////////////////////////////////////////////////////////////////////
// Data Path
reg [33:0] payload0_cgm0_reg;
always @(posedge payload0_cgm0_clk)
   begin
           payload0_cgm0_reg <= payload_i[33:0];
   end
//////////////////////////////////////////////////////////////////////////////
// assign Outputs and Generate clock enable
assign clk_enable = (  (curr_state != 2'd0) 
                    || valid_i
                    );
assign clk0_enable = clk_enable && load_payload;
assign payload_o  = (curr_state == 2'd0) ? payload_i : {payload0_cgm0_reg};
endmodule // regmodel0_regmodel_core_reg_intf_respbuf
