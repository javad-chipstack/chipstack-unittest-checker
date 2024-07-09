module eight_bit_counter_gates(
    input clk,   // Clock input
    input rst,   // Reset input
    output reg [7:0] count  // 8-bit counter output
);

reg [7:0] next_count;  // Next state of the counter

// D flip-flops for each bit of the counter
// Each flip-flop's D input is connected to the output of the previous flip-flop
always @(posedge clk or posedge rst) begin
    if (rst) begin  // Reset the counter
        next_count <= 8'b0;
    end else begin
        next_count[0] <= count[0];  // Least significant bit
        next_count[1] <= count[1] & ~count[0];  // D input of second flip-flop is connected to Q of first flip-flop
        next_count[2] <= count[2] & ~count[1] & count[0];  // D input of third flip-flop
        next_count[3] <= count[3] & ~count[2] & count[1] & count[0];  // D input of fourth flip-flop
        next_count[4] <= count[4] & ~count[3] & count[2] & count[1] & count[0];  // D input of fifth flip-flop
        next_count[5] <= count[5] & ~count[4] & count[3] & count[2] & count[1] & count[0];  // D input of sixth flip-flop
        next_count[6] <= count[6] & ~count[5] & count[4] & count[3] & count[2] & count[1] & count[0];  // D input of seventh flip-flop
        next_count[7] <= count[7] & ~count[6] & count[5] & count[4] & count[3] & count[2] & count[1] & count[0];  // Most significant bit
    end
end

// Update the counter value
always @(posedge clk or posedge rst) begin
    if (rst) begin
        count <= 8'b0;
    end else begin
        count <= next_count;
    end
end

endmodule
