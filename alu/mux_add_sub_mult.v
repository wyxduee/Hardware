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
//��op_enΪ1ʱ�����ʾ���г˷����㣬���������Ҫ��չ��Ϊ0ʱ��ʾ������ͨ�ļӼ����㣬��Ҫ��չһλ
module mux_add_sub_mult(
input op_en,
input[16:0] op_a_in,
input[15:0] op_b_in,
output[16:0] op_out
    );
assign op_out=op_en?op_a_in:{op_b_in[15],op_b_in};

endmodule
