`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:02:44 07/03/2016 
// Design Name: 
// Module Name:    mux_add_sub 
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
//当op_en为1时，则表示进行乘法运算，则输出不需要扩展，为0时表示进行普通的加减运算，需要扩展一位
module mux_add_sub_mult(
input op_en,
input[16:0] op_a_in,
input[15:0] op_b_in,
output[16:0] op_out
    );
assign op_out=op_en?op_a_in:{op_b_in[15],op_b_in};

endmodule
