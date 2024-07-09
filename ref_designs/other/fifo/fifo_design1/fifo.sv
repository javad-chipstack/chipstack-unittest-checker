module fifo #
  (
    parameter DATA_WIDTH = 8,   // Width of each data item
    parameter DEPTH = 16        // Depth of the FIFO
  )
(
  input clk,         // Clock input
  input rst,         // Reset input
  input wr_en,       // Write enable input
  input rd_en,       // Read enable input
  input [DATA_WIDTH-1:0] data_in,  // Input data
  output [DATA_WIDTH-1:0] data_out, // Output data
  output empty,      // Empty flag output
  output full        // Full flag output
);

reg [DATA_WIDTH-1:0] fifo [DEPTH-1:0];
reg [4:0] wr_ptr, rd_ptr;
reg [4:0] count;

// Write logic
always @(posedge clk or posedge rst)
begin
  if (rst)
  begin
    wr_ptr <= 0;
    count <= 0;
  end
  else if (wr_en && !full)
  begin
    fifo[wr_ptr] <= data_in;
    wr_ptr <= wr_ptr + 1;
    count <= count + 1;
  end
end

// Read logic
always @(posedge clk or posedge rst)
begin
  if (rst)
    rd_ptr <= 0;
  else if (rd_en && !empty)
  begin
    data_out <= fifo[rd_ptr];
    rd_ptr <= rd_ptr + 1;
    count <= count - 1;
  end
end

// Empty and full flags
assign empty = (count == 0);
assign full = (count == DEPTH);

endmodule
