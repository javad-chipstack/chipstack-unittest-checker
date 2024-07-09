module counter_8bit(
    input clk,
    input rst,
    output reg [7:0] count
);

always @(posedge clk or posedge rst)
begin
    if(rst)
        count <= 8'b0; // Reset the counter to 0 when rst is high
    else
        count <= count + 1; // Increment the counter on each clock cycle
end

endmodule
