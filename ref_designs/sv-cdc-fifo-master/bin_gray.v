/////////project name = gray_counter//////
/////design name = gray_cnt **********//
////CAD Tool = Quartus Prime Lite************///
/////file name bin_gray ********//
// Binary to Gray conversion for write address
`timescale 1ns/1ns

module binary_to_gray #(parameter WIDTH = 4)
 ( binary , gray );
input [WIDTH-1:0] binary ;
output [WIDTH-1:0] gray ;


assign gray[3] = binary[3];
assign gray[2] = binary[3] ^ binary[2];
assign gray[1] = binary[2] ^ binary[1];
assign gray[0] = binary[1] ^ binary[0]; 

endmodule
