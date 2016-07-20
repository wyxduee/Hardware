`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:40:42 05/27/2016 
// Design Name: 
// Module Name:    gen_pg 
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
//Éú³ÉpºÍg
//////////////////////////////////////////////////////////////////////////////////
module gen_pg(
input[16:0] op_a,
input[16:0] op_b,
output[16:0] p,
output[16:0] g
    );
assign
	p=op_a ^ op_b,
	g=op_a & op_b;

endmodule
