`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:15:08 05/27/2016 
// Design Name: 
// Module Name:    cla_4_1 
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
module cla_4_1(
input[3:0] px,
input[3:0] gx,
input c_in,
output[3:0] c_out
    );

assign
	c_out[0]=gx[0]|(px[0] & c_in),
	c_out[1]=gx[1]|(px[1] & gx[0])|(px[1] & px[0] & c_in),
	c_out[2]=gx[2]|(px[2] & gx[1])|(px[2] & px[1] & gx[0])|(px[2] & px[1] & px[0] & c_in),
	c_out[3]=gx[3]|(px[3] & gx[2])|(px[3] & px[2] & gx[1])|(px[3] & px[2] & px[1] & gx[0])|(px[3] & px[2] & px[1] & px[0] & c_in);
endmodule
