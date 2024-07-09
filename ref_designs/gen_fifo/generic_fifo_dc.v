/////////////////////////////////////////////////////////////////////
////                                                             ////
////  Universal FIFO Dual Clock                                  ////
////                                                             ////
////  Author: Rudolf Usselmann                                   ////
////          rudi@asics.ws                                      ////
////                                                             ////
////  D/L from: http://www.opencores.org/cores/generic_fifos/    ////
////                                                             ////
/////////////////////////////////////////////////////////////////////
////                                                             ////
//// Copyright (C) 2000-2002 Rudolf Usselmann                    ////
////                         www.asics.ws                        ////
////                         rudi@asics.ws                       ////
////                                                             ////
//// This source file may be used and distributed without        ////
//// restriction provided that this copyright statement is not   ////
//// removed from the file and that any derivative work contains ////
//// the original copyright notice and the associated disclaimer.////
////                                                             ////
////     THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY     ////
//// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   ////
//// TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS   ////
//// FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL THE AUTHOR      ////
//// OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,         ////
//// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES    ////
//// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE   ////
//// GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR        ////
//// BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF  ////
//// LIABILITY, WHETHER IN  CONTRACT, STRICT LIABILITY, OR TORT  ////
//// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT  ////
//// OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE         ////
//// POSSIBILITY OF SUCH DAMAGE.                                 ////
////                                                             ////
/////////////////////////////////////////////////////////////////////

//  CVS Log
//
//  $Id: generic_fifo_dc.v,v 1.1.1.1 2002-09-25 05:42:02 rudi Exp $
//
//  $Date: 2002-09-25 05:42:02 $
//  $Revision: 1.1.1.1 $
//  $Author: rudi $
//  $Locker:  $
//  $State: Exp $
//
// Change History:
//               $Log: not supported by cvs2svn $
//
//
//
//
//
//
//
//
//
//

`include "timescale.v"

/*

Description
===========

I/Os
----
rd_clk  Read Port Clock
wr_clk  Write Port Clock
rst     low active, either sync. or async. master reset (see below how to select)
clr     synchronous clear (just like reset but always synchronous), high active
re      read enable, synchronous, high active
we      write enable, synchronous, high active
din     Data Input
dout    Data Output

full    Indicates the FIFO is full (driven at the rising edge of wr_clk)
empty   Indicates the FIFO is empty (driven at the rising edge of rd_clk)

full_n  Indicates if the FIFO has space for N entries (driven of wr_clk)
empty_n Indicates the FIFO has at least N entries (driven of rd_clk)

level       indicates the FIFO level:
        2'b00   0-25%   full
        2'b01   25-50%  full
        2'b10   50-75%  full
        2'b11   75-100% full

Status Timing
-------------
All status outputs are registered. They are asserted immediately
as the full/empty condition occurs, however, there is a 2 cycle
delay before they are de-asserted once the condition is not true
anymore.

Parameters
----------
The FIFO takes 3 parameters:
dw  Data bus width
aw  Address bus width (Determines the FIFO size by evaluating 2^aw)
n   N is a second status threshold constant for full_n and empty_n
    If you have no need for the second status threshold, do not
    connect the outputs and the logic should be removed by your
    synthesis tool.

Synthesis Results
-----------------
In a Spartan 2e a 8 bit wide, 8 entries deep FIFO, takes 85 LUTs and runs
at about 116 MHz (IO insertion disabled). The registered status outputs
are valid after 2.1NS, the combinatorial ones take out to 6.5 NS to be
available.

Misc
----
This design assumes you will do appropriate status checking externally.

IMPORTANT ! writing while the FIFO is full or reading while the FIFO is
empty will place the FIFO in an undefined state.

*/

// Selecting Sync. or Async Reset
// ------------------------------
// Uncomment one of the two lines below. The first line for
// synchronous reset, the second for asynchronous reset

`define DC_FIFO_ASYNC_RESET  // Uncomment for Async reset
// `define DC_FIFO_SYNC_RESET  // Uncomment for Sync reset

module generic_fifo_dc #(
		parameter dw = 8,
		parameter aw = 8,
		parameter n = 32,
		parameter max_size = 1 << aw
	)
	(
		input rd_clk, 
		input wr_clk, 
		input rst, 
		input clr, 
		input [dw-1:0] din, 
		input we, 
		output [dw-1:0] dout, 
		input re, 
		output full, 
		output empty, 
		output full_n, 
		output empty_n, 
		output [1:0] level
	);


    ////////////////////////////////////////////////////////////////////
    // Local Wires
    ////////////////////////////////////////////////////////////////////
    reg [aw:0] wp;
    wire [aw:0] wp_pl1;
    reg [aw:0] rp;
    wire [aw:0] rp_pl1;
    reg [aw:0] wp_s, rp_s;
    wire [aw:0] diff;
    reg [aw:0] diff_r1, diff_r2;
    reg re_r, we_r;
    reg full, empty, full_n, empty_n;
    reg [1:0] level;

    ////////////////////////////////////////////////////////////////////
    // Memory Block
    ////////////////////////////////////////////////////////////////////
    generic_dpram #(aw, dw) u0 (
        .rclk   (rd_clk),
        .rrst   (!rst),
        .rce    (1'b1),
        .oe     (1'b1),
        .raddr  (rp[aw-1:0]),
        .dout   (dout),
        .wclk   (wr_clk),
        .wrst   (!rst),
        .wce    (1'b1),
        .we     (we),
        .waddr  (wp[aw-1:0]),
        .di     (din)
    );

    ////////////////////////////////////////////////////////////////////
    // Read/Write Pointers Logic
    ////////////////////////////////////////////////////////////////////
    always @(posedge wr_clk or negedge rst) begin
        if (!rst)
            wp <= {aw+1{1'b0}};
        else if (clr)
            wp <= {aw+1{1'b0}};
        else if (we)
            wp <= wp_pl1;
    end

    assign wp_pl1 = wp + 1;

    always @(posedge rd_clk or negedge rst) begin
        if (!rst)
            rp <= {aw+1{1'b0}};
        else if (clr)
            rp <= {aw+1{1'b0}};
        else if (re)
            rp <= rp_pl1;
    end

    assign rp_pl1 = rp + 1;

    ////////////////////////////////////////////////////////////////////
    // Synchronization Logic
    ////////////////////////////////////////////////////////////////////
    // write pointer
    always @(posedge rd_clk) begin
        wp_s <= wp;
    end

    // read pointer
    always @(posedge wr_clk) begin
        rp_s <= rp;
    end

    ////////////////////////////////////////////////////////////////////
    // Registered Full & Empty Flags
    ////////////////////////////////////////////////////////////////////
    always @(posedge rd_clk) begin
        empty <= (wp_s == rp) || (re && (wp_s == rp_pl1));
    end

    always @(posedge wr_clk) begin
        full <= ((wp[aw-1:0] == rp_s[aw-1:0]) && (wp[aw] != rp_s[aw])) || 
                (we && (wp_pl1[aw-1:0] == rp_s[aw-1:0]) && (wp_pl1[aw] != rp_s[aw]));
    end

    ////////////////////////////////////////////////////////////////////
    // Registered Full_n & Empty_n Flags
    ////////////////////////////////////////////////////////////////////
    assign diff = wp - rp;

    always @(posedge rd_clk) begin
        re_r <= re;
    end

    always @(posedge rd_clk) begin
        diff_r1 <= diff;
    end

    always @(posedge rd_clk) begin
        empty_n <= (diff_r1 < n) || ((diff_r1 == n) && (re || re_r));
    end

    always @(posedge wr_clk) begin
        we_r <= we;
    end

    always @(posedge wr_clk) begin
        diff_r2 <= diff;
    end

    always @(posedge wr_clk) begin
        full_n <= (diff_r2 > max_size - n) || ((diff_r2 == max_size - n) && (we || we_r));
    end

    always @(posedge wr_clk) begin
        level <= {2{diff[aw]}} | diff[aw-1:aw-2];
    end

    ////////////////////////////////////////////////////////////////////
    // Sanity Check
    ////////////////////////////////////////////////////////////////////
    // synopsys translate_off
    always @(posedge wr_clk) begin
        if (we && full) begin
            $display("%m WARNING: Writing while FIFO is FULL (%t)", $time);
        end
    end

    always @(posedge rd_clk) begin
        if (re && empty) begin
            $display("%m WARNING: Reading while FIFO is EMPTY (%t)", $time);
        end
    end
    // synopsys translate_on

endmodule

//////////////////////////////////////////////////////////////////////

// Memory block module
module generic_dpram #(parameter aw = 8, parameter dw = 8) (
    input               rclk,
    input               rrst,
    input               rce,
    input               oe,
    input   [aw-1:0]    raddr,
    output  [dw-1:0]    dout,
    input               wclk,
    input               wrst,
    input               wce,
    input               we,
    input   [aw-1:0]    waddr,
    input   [dw-1:0]    di
);
    reg [dw-1:0] mem [(1 << aw) - 1:0];
    reg [dw-1:0] dout_reg;

    always @(posedge rclk) begin
        if (!rrst) begin
            dout_reg <= 0;
        end else if (rce && oe) begin
            dout_reg <= mem[raddr];
        end
    end

    always @(posedge wclk) begin
        if (!wrst) begin
            // Do nothing on reset
        end else if (wce && we) begin
            mem[waddr] <= di;
        end
    end

    assign dout = dout_reg;

endmodule
