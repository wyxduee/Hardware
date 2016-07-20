`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:51:47 05/27/2016 
// Design Name: 
// Module Name:    cla_sum 
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
module cla_sum(
input[16:0] c_in,
input[16:0] p,
output[16:0] sum
    );
assign
	sum=c_in ^ p;
endmodule
