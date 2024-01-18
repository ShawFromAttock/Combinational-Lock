`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:42:33 08/24/2020 
// Design Name: 
// Module Name:    seg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module seg(bcd, segments
    );
input [3:0] bcd;
output reg [7:0]segments;
always@(bcd)begin
case(bcd)
   0:   segments=8'b10000000;
   1:   segments=8'b11111001;
   2:   segments=8'b10100100; 
   3:   segments=8'b10110000; 
   4:   segments=8'b10011001; 
   5:   segments=8'b10010010; 
   6:   segments=8'b10000010; 
   7:   segments=8'b11111000; 
   8:   segments=8'b10000000;
   9:   segments=8'b10010000;
	10:  segments=8'b10001000;
	11:  segments=8'b10000011;
	12:  segments=8'b11000110;
	13:  segments=8'b10100001;
	14:  segments=8'b00001110;
	15:  segments=8'b10001110;
	default:  segments=8'b11111111;
endcase
end

endmodule
