`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:49:41 08/24/2020
// Design Name:   lock
// Module Name:   E:/project/test.v
// Project Name:  project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [3:0] i;
	reg [3:0] j;

	// Outputs
	wire y;
	wire a;
	wire [7:0] bcd1;
	wire [7:0] bcd2;

	// Instantiate the Unit Under Test (UUT)
	lock uut (
		.i(i), 
		.j(j), 
		.y(y), 
		.a(a), 
		.bcd1(bcd1), 
		.bcd2(bcd2)
	);

	initial begin
		// Initialize Inputs
		i = 4'b1010;
		j = 4'b0101;
		#10;
		j= 4'b1010;
		#10;
		i= 4'b1111;
		j= 4'b1111;
		#10;
		i= 4'b0001;
		j= 4'b0010;

		#10 $finish;

	end
      
endmodule

