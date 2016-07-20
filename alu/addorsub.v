`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:27:59 05/27/2016 
// Design Name: 
// Module Name:    addorsub 
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
module addorsub(
input[16:0] op_a_in,
input[16:0] op_b_in,
input op,
input mux_addsub_mult_op,
input cin,
output reg cout,
output[16:0] op_a_out,
output[16:0] op_b_out
    );
assign op_b_out=op_b_in;
assign op_a_out=op?(~op_a_in):op_a_in;
always@(*)
	if(op)
		if(!mux_addsub_mult_op)
			cout<=cin;
		else
			cout<=1'b1;
	else 
		cout<=cin;
			
//assign cout=(op)?1'b1:cin;

endmodule
