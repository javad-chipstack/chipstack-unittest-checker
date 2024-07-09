module fifo (
    input wire clk,          // Clock input
    input wire rst,          // Reset input
    input wire wr_en,        // Write enable input
    input wire rd_en,        // Read enable input
    input wire [7:0] data_in,  // Input data
    output reg [7:0] data_out, // Output data
    output reg empty,   // Empty flag output
    output reg full     // Full flag output
);

parameter DEPTH = 16;  // Depth of the FIFO
reg [7:0] fifo [0:DEPTH-1];
reg [4:0] wr_ptr, rd_ptr;
reg [4:0] count;

// Write enable flip-flop
reg wr_en_ff;
assign wr_en_ff = wr_en;

// Read enable flip-flop
reg rd_en_ff;
assign rd_en_ff = rd_en;

// Clock edge detection
reg clk_edge;
always @(posedge clk) begin
    clk_edge <= ~clk_edge;
end

// Write logic
always @(posedge clk_edge or posedge rst) begin
    if (rst) begin
        wr_ptr <= 0;
        count <= 0;
    end
    else if (wr_en_ff && !full) begin
        fifo[wr_ptr] <= data_in;
        wr_ptr <= wr_ptr + 1;
        count <= count + 1;
    end
end

// Read logic
always @(posedge clk_edge or posedge rst) begin
    if (rst)
        rd_ptr <= 0;
    else if (rd_en_ff && !empty) begin
        data_out <= fifo[rd_ptr];
        rd_ptr <= rd_ptr + 1;
        count <= count - 1;
    end
end

// Empty and full flags
assign empty = (count == 0);
assign full = (count == DEPTH);

endmodule
