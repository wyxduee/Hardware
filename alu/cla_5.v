`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:18:57 05/29/2016 
// Design Name: 
// Module Name:    cla_5 
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


module cla_5(  
input c_in,
input[4:0] p,
input[4:0] g,
input c_in5,
output px,//px=p[3]*p[2]*p[1]*p[0]
output gx,//gx=g[3]+p[3]*g[2]+p[3]*p[2]*g[1]+p[3]*p[2]*p[1]*g[0]
output[4:1] c_out
	);

assign
	px=p[3] & p[2] & p[1] & p[0],
	gx=g[3]|(p[3] & g[2])|(p[3] & p[2] & g[1])|(p[3]& p[2] & p[1] & g[0]);
assign
	c_out[1]=g[0]|(p[0] & c_in),
	c_out[2]=g[1]|(p[1] & g[0])|(p[1] & p[0] & c_in),
	c_out[3]=g[2]|(p[2] & g[1])|(p[2] & p[1] & g[0])|(p[2] & p[1] & p[0] & c_in),
	c_out[4]=g[4]|(p[4] & c_in5);


endmodule