`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:41:06 07/13/2016 
// Design Name: 
// Module Name:    alu_top 
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
module alu_top(
input clk,
input rst,
input[3:0] opcode,
input[15:0] opx,
input[15:0] opy,
input cin,
output[15:0] ar,
output[31:0] mult_out,
output[3:0] sta
    );
//
wire[15:0] opx_out;
wire[15:0] opy_out;
wire grs_en;
grs k1 (
	//.clk(clk),
	//.rst(rst),
    .opx_in(opx), //
    .opy_in(opy), //
    .grs_en(grs_en), //
    .opx_out(opx_out), //
    .opy_out(opy_out)//
    );
//

wire[1:0] mux_add_sub_mult_en;
wire[1:0] status_en;
wire[1:0] logic_unit_en;
wire[2:0] shifter_unit_en;
wire[1:0] ar_mux_en;
wire ar_en;
wire mult_en;
wire ctrl_en;
wire[1:0] addsub_unit_en;
wire cin_out;
data_control_unit k2 (
	.cin(cin),
    .clk(clk), //
    .rst(rst), //
    .opcode(opcode), //4
    .grs_en(grs_en), //1
    .mux_add_sub_mult_en(mux_add_sub_mult_en), //2
    .status_en(status_en), //2
    .logic_unit_en(logic_unit_en), //2
    .shifter_unit_en(shifter_unit_en), //3
    .ar_mux_en(ar_mux_en), //2
    .ar_en(ar_en), //1
    .mult_en(mult_en), //1
    .ctrl_en(ctrl_en), //1
    .addsub_unit_en(addsub_unit_en), //2
    .cin_out(cin_out)//1
    );


//x
wire[16:0] addend;
wire[16:0] opx17_out;
mux_add_sub_mult k3 (
    .op_en(mux_add_sub_mult_en[1]), //
    .op_a_in(addend), //累加和17
    .op_b_in(opx_out), //16
    .op_out(opx17_out)//
    );
//y
wire[16:0] opy17_out;
wire[16:0] multiplicand_out;
mux_add_sub_mult k4 (
    .op_en(mux_add_sub_mult_en[0]),// 
    .op_a_in(multiplicand_out),// 17
    .op_b_in(opy_out), //16
    .op_out(opy17_out)//
    );
//
wire[15:0] logic_unit_in;
logic_unit k5 (
    .op_x(opx_out), //
    .op_y(opy_out), //
    .op_en(logic_unit_en), //
    .op_out(logic_unit_in)//
    );
//
wire[15:0] shifter_unit_in;
shifter_unit k6 (
    .op_x(opx_out),// 
    .op_y(opy_out),// 
    .op_en(shifter_unit_en), //
    .op_out(shifter_unit_in)//
    );
//
wire op;
wire cin_op_out;
wire[16:0] sum;
wire[2:0] cout;
addorsub_top k7 (
    .op_a_in(opy17_out), //
    .op_b_in(opx17_out), //
    .op(op), //
	 .mux_addsub_mult_op(mux_add_sub_mult_en[1]),//
    .cin(cin_op_out), //
    .sum(sum), //
    .cout(cout)//
    );
//
wire op_mult_in;
wire[15:0] multiplicator_out;
wire[2:0] booth;
ctrl k8 (
    .clk(clk), //
    .rst(rst), //
    .ctrl_en(ctrl_en),// 
    .multiplicator(opx_out),//乘数 
    .multiplicand(opy_out),//被乘数 
    .booth(booth),// 
    .multiplicator_out(multiplicator_out),// 
    .multiplicand_out(multiplicand_out), //输出变换后的被乘数
    .op(op_mult_in)//乘法运算的加减法选择信号
    );
//
op_mux k9 (
    .mux_addsub_mult_op(mux_add_sub_mult_en[1]), //
    .addsub_unit_en(addsub_unit_en), //
    .op_mult_in(op_mult_in), //
    .cin(cin_out), //
    .op_out(op),//
    .cout(cin_op_out)//
    );
//
wire[31:0] multiplication;
rs k10 (
    .clk(clk), //
    .rst(rst),//
	.ctrl_en(ctrl_en),
    .cout_in(cout[1:0]), //
    .cout(cout[2]), //
    .multiplicator(multiplicator_out),// 
    .sum(sum), //
    .addend(addend),//加数 
    .booth(booth), //
    .multiplication(multiplication)//
    );
//
status k11 (
    .op_en(status_en), //
    .op_out_logic_unit(logic_unit_in), //
    .op_out_shifter_unit(shifter_unit_in), //
    .op_out_addsub_unit(sum), //
    .op_out_cout(cout), //
    .sta(sta)//
    );
//
wire[15:0] ar_mux_out;
ar_mux k12 (
    .logic_unit_in(logic_unit_in), //
    .shifter_unit_in(shifter_unit_in[15:0]), //
    .add_sub_in(sum[15:0]), //
    .ar_mux_en(ar_mux_en), // 
    .ar_mux_out(ar_mux_out)//
    );
//
ar k13 (
	 .clk(clk),
	 .rst(rst),
    .ar_en(ar_en), //
    .ar_in(ar_mux_out), //
    .ar_out(ar)//
    );
//
mh_ml k14 (
	.clk(clk),
	.rst(rst),
    .mult_en(mult_en), // 
    .mult_in(multiplication), //
    .mult_out(mult_out)//
    );







endmodule
