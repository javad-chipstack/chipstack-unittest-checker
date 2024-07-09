module counter_8bit_gatelevel(
    input clk,       // Clock input
    input rst,       // Reset input
    output reg [7:0] count // 8-bit counter output
);

// D flip-flop declarations
reg [7:0] q_next;
reg [7:0] q_reg;

// Combinational logic for next state
always @ (posedge clk or posedge rst)
begin
    if (rst)
        q_next <= 8'b0; // Reset to zero
    else
        q_next <= q_reg + 1; // Increment counter
end

// D flip-flop behavior
always @ (posedge clk or posedge rst)
begin
    if (rst)
        q_reg <= 8'b0; // Reset to zero
    else
        q_reg <= q_next; // Update register with next state
end

assign count = q_reg; // Output from register

endmodule
