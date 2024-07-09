module eight_bit_counter(
    input wire clk,  // Clock input
    input wire rst,  // Reset input
    output reg [7:0] count  // 8-bit counter output
);

// Define internal signals
wire [7:0] next_count;

// Create a D flip-flop for each bit of the counter
genvar i;
generate
    for (i = 0; i < 8; i = i + 1) begin : counter_bits
        always @(posedge clk or posedge rst) begin
            if (rst)  // Reset the counter when rst is high
                next_count[i] <= 1'b0;
            else      // Increment the counter on each clock edge
                next_count[i] <= count[i] ^ clk;
        end
    end
endgenerate

// Output the next count value
always @(*) begin
    if (rst)  // Output 0 when reset is asserted
        count <= 8'b0;
    else      // Output the next count value
        count <= next_count;
end

endmodule
