module async_fifo #(
    parameter int ADDR_WIDTH   = 4,
    parameter int DATA_WIDTH   = 8,
    parameter int FIFO_DEPTH   = 16,
    parameter int READ_CREDITS = 8
) (
    input logic wclk,
    input logic wreset,
    input logic rclk,
    input logic rreset,
    input logic [DATA_WIDTH-1:0] wdata,
    input logic wvalid,
    output logic wcredit,
    output logic [DATA_WIDTH-1:0] rdata,
    input logic rvalid,
    output logic rcredit
);

  // Internal  signals
  logic [ADDR_WIDTH-1:0] waddr, raddr;
  logic [ADDR_WIDTH:0] wptr, rptr, wptr_gray, rptr_gray, wptr_gray_sync, rptr_gray_sync;
  logic [$clog2(FIFO_DEPTH+1)-1:0] write_credits, read_credits;

  // Instantiate  Dual-port RAM
  async_fifo_dpram #(
      .ADDR_WIDTH(ADDR_WIDTH),
      .DATA_WIDTH(DATA_WIDTH)
  ) fifo_dpram (
      .wclk (wclk),
      .wen  (wvalid && write_credits > 0),
      .waddr(waddr),
      .wdata(wdata),
      .rclk (rclk),
      .ren  (rvalid && read_credits > 0),
      .raddr(raddr),
      .rdata(rdata)
  );

  // Write pointer, full logic, and write credit management
  async_fifo_wptr_full_credit #(
      .ADDR_WIDTH(ADDR_WIDTH),
      .FIFO_DEPTH(FIFO_DEPTH)
  ) wptr_full_credit (
      .clk(wclk),
      .reset(wreset),
      .wvalid(wvalid),
      .wptr_gray(wptr_gray),
      .write_credits(write_credits),
      .rptr_gray_sync(rptr_gray_sync),
      .wcredit(wcredit)
  );

  // Read pointer, empty logic, and read credit management
  async_fifo_rptr_empty_credit #(
      .ADDR_WIDTH  (ADDR_WIDTH),
      .READ_CREDITS(READ_CREDITS)
  ) rptr_empty_credit (
      .clk(rclk),
      .reset(rreset),
      .rvalid(rvalid),
      .rptr_gray(rptr_gray),
      .read_credits(read_credits),
      .wptr_gray_sync(wptr_gray_sync),
      .rcredit(rcredit)
  );

  // Synchronize write pointer to read clock domain
  async_fifo_gray_sync #(
      .DATA_WIDTH(ADDR_WIDTH + 1)
  ) w2r_sync (
      .clk  (rclk),
      .reset(rreset),
      .din  (wptr_gray),
      .dout (wptr_gray_sync)
  );

  // Synchronize read pointer to write clock domain
  async_fifo_gray_sync #(
      .DATA_WIDTH(ADDR_WIDTH + 1)
  ) r2w_sync (
      .clk  (wclk),
      .reset(wreset),
      .din  (rptr_gray),
      .dout (rptr_gray_sync)
  );

  // Address generation for read and write operations
  assign waddr = wptr[ADDR_WIDTH-1:0];
  assign raddr = rptr[ADDR_WIDTH-1:0];

endmodule