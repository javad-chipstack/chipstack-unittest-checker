module pcie_piso #(
  parameter DATA_WIDTH = 10
) (
  input  logic clk,
  input  logic reset,
  input  logic enable,
  input  logic load,
  input  logic [DATA_WIDTH-1:0] data_in,
  output logic data_out
);

  logic [DATA_WIDTH-1:0] data;
  logic serial_data;
  
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      data <= {DATA_WIDTH{1'b0}};
    end else if (load) begin
      if (enable) begin
        data <= {data_in[DATA_WIDTH-2:0], 1'b0};
      end else begin
        data <= data_in;
      end
    end else if (enable) begin
      data <= {data[DATA_WIDTH-2:0], 1'b0};
    end
  end
  
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      serial_data <= 1'b0;
    end else if (load && enable) begin
      serial_data <= data_in[DATA_WIDTH-1];
    end else begin
      serial_data <= data[DATA_WIDTH-1];
    end
  end
  
  assign data_out = enable ? serial_data : 1'bz;

endmodule
