`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:28:50 05/27/2016 
// Design Name: 
// Module Name:    cla_4 
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
module cla_4(  
input c_in,
input[3:0] p,
input[3:0] g,
output px,//px=p[3]*p[2]*p[1]*p[0]
output gx,//gx=g[3]+p[3]*g[2]+p[3]*p[2]*g[1]+p[3]*p[2]*p[1]*g[0]
output[3:1] c_out
	);


assign
	px=p[3] & p[2] & p[1] & p[0],
	gx=g[3]|(p[3] & g[2])|(p[3] & p[2] & g[1])|(p[3]& p[2] & p[1] & g[0]);
assign
	c_out[1]=g[0]|(p[0] & c_in),
	c_out[2]=g[1]|(p[1] & g[0])|(p[1] & p[0] & c_in),
	c_out[3]=g[2]|(p[2] & g[1])|(p[2] & p[1] & g[0])|(p[2] & p[1] & p[0] & c_in);

endmodule
