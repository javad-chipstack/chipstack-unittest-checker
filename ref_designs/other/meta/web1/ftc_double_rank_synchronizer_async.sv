module ftc_double_rank_synchronizer_async #(
    parameter WIDTH  = 1,
    parameter RSTVAL = 1'b0
) (
    input wire clk,
`ifdef MM_ASYNC_VALIDATION
    input wire sndr_clk_i,
`endif
    input wire rst_n,
    input wire test_mode_async,
    input wire [WIDTH-1:0] async_data,
    output wire [WIDTH-1:0] sync_data
);

  reg [WIDTH-1:0] sync_stage1, sync_stage2;

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      sync_stage1 <= {WIDTH{RSTVAL}};
      sync_stage2 <= {WIDTH{RSTVAL}};
    end else if (test_mode_async) begin
      sync_stage1 <= async_data;
      sync_stage2 <= async_data;
    end else begin
      sync_stage1 <= async_data;
      sync_stage2 <= sync_stage1;
    end
  end

  assign sync_data = sync_stage2;

endmodule
