`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:19:52 08/24/2020 
// Design Name: 
// Module Name:    lock 
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
module lock(i,j,y,a,bcd1,bcd2
    );
input [3:0]i,j;
output y;
output a;
assign z=1'b0;
output [7:0] bcd1,bcd2;

wire x,g,p,q;
xnor xnor1(x,i[0],j[0]);
xnor xnor2(g,i[1],j[1]);
xnor xnor3(p,i[2],j[2]);
xnor xnor4(q,i[3],j[3]);

and and1(y,g,p,q,x);
not g1(a,y);
seg g2(j,bcd1);
seg g3({z,z,z,y},bcd2);


endmodule
