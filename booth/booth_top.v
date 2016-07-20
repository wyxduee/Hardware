`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:40:23 05/31/2016 
// Design Name: 
// Module Name:    booth_top 
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
module booth_top(
input[15:0] multiplicand_in,
input[15:0] multiplicator_in,
input start,
input clk,
input rst,
output[32:0] multiplication
    );
//����������ѡ��ģ��
wire[1:0] mux;
wire[16:0] multiplicand_out;
mux_multiplicand m1(
.start(start),
.mux(mux),
.multiplicand_in(multiplicand_in),
.multiplicand_out(multiplicand_out)
);

//����alu
wire cout;
wire[16:0] addend;
wire[16:0] sum;
wire cin;
wire op;
wire flag;
addorsub_top m2(
.op_a_in(multiplicand_out),//������
.op_b_in(addend),//���ֻ�
.op(op),
.cin(cin),
.sum(sum),
.cout(cout),
.flag(flag)
);
//��������ģ��
wire[2:0] booth;
wire[15:0] multiplicator_out;
ctrl m3(
.clk(clk),
.rst(rst),
.start(start),
.booth(booth),
.multiplicator(multiplicator_in),//input
.multiplicator_out(multiplicator_out),//output
.cin(cin),
.op(op),
.mux(mux)
);
//�����Ĵ���
rs m4(
.clk(clk),
.rst(rst),
.cout(cout),
.multiplicator(multiplicator_out),
.sum(sum),//input
.addend(addend),//output
.booth(booth),
.multiplication(multiplication),
.flag(flag)
);



endmodule
