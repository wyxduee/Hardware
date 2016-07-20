`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:09:07 05/27/2016 
// Design Name: 
// Module Name:    addorsub_top 
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
  module addorsub_top(
input[16:0] op_a_in,
input[16:0] op_b_in,
input op,
input cin,
input mux_addsub_mult_op,
output[16:0] sum,
output[2:0] cout//17 16 15
    );
//
wire cout1;
wire[16:0] op_a_out,op_b_out;
addorsub a1(
.op_a_in(op_a_in),
.op_b_in(op_b_in),
.op(op),
.cin(cin),
.cout(cout1),
.mux_addsub_mult_op(mux_addsub_mult_op),
.op_a_out(op_a_out),
.op_b_out(op_b_out)
);




//

cla_17 a2(
.op_a(op_a_out),
.op_b(op_b_out),
.cin(cout1),
.sum(sum),
.cout(cout)

);

endmodule
