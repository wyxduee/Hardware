`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:28:06 07/13/2016 
// Design Name: 
// Module Name:    mh_ml 
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
module mh_ml(
input clk,
input rst,
input mult_en,
input[31:0] mult_in,
output reg[31:0] mult_out 
    );
always@(posedge clk or negedge rst)
	if(!rst)
		mult_out<=32'd0;
	else if(mult_en)
		mult_out<=mult_in;
	else
		mult_out<=32'd0;
//assign mult_out=(mult_en)?mult_in:33'b0;

endmodule
