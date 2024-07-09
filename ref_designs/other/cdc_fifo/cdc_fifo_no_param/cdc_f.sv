module cdc_f (
    input logic clk,
    input logic rst_n,
    input logic en,
    input logic [7:0] d,
    output logic [7:0] q
);

  logic [7:0] q_reg;
  logic [7:0] q_next;

  always_ff @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
      q_reg <= 8'b0;
    end else if (en) begin
      q_reg <= q_next;
    end
  end

  always_comb begin
    q_next = d;
  end

  assign q = q_reg;
endmodule