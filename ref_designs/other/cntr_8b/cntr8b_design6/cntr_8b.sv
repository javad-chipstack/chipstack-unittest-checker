module eight_bit_counter(
    input clk,    // Clock input
    input rst,    // Reset input
    output reg [7:0] count  // 8-bit counter output
);

// Define D flip-flops for each bit of the counter
reg [7:0] d_ff;   // D input for each flip-flop

// Connect D flip-flops in a chain
always @ (posedge clk or posedge rst)
begin
    if (rst) begin
        d_ff <= 8'b0;   // Reset all D flip-flops when rst is high
    end
    else begin
        d_ff[0] <= 1'b1;  // Least significant bit always toggles
        for (int i = 1; i < 8; i = i + 1) begin
            // Generate carry-out logic
            reg carry_out;
            assign carry_out = d_ff[i - 1] & ~d_ff[i];
            // Increment flip-flop value using carry-out logic
            d_ff[i] <= d_ff[i - 1] ^ carry_out;
        end
    end
end

// Assign the outputs of D flip-flops to the counter output
assign count = d_ff;

endmodule
