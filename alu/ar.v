`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:24:24 07/13/2016 
// Design Name: 
// Module Name:    ar 
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
module ar(
input clk,
input rst,
input ar_en,
input[15:0] ar_in,
output reg[15:0] ar_out
    );
always@(posedge clk or negedge rst)
	if(!rst)
		ar_out<=16'd0;
	else if(ar_en)
		ar_out<=ar_in;
	else
		ar_out<=16'd0;
endmodule
