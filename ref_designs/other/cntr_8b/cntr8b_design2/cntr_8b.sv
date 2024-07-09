module counter_8bit(
    input wire clk, // Clock input
    input wire rst, // Reset input
    output reg [7:0] count // 8-bit counter output
);

// Reset behavior
always @(posedge clk or posedge rst)
begin
    if (rst)
        count <= 8'b0; // Reset the counter to 0
    else
        count <= count + 1; // Increment the counter on each clock cycle
end

endmodule
