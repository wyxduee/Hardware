`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:59 05/30/2016 
// Design Name: 
// Module Name:    rs 
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
module rs(
input clk,
input rst,
input flag,
input cout,//相加运算产生的进位
input[15:0] multiplicator,//乘数
input[16:0] sum,//被乘数与部分积的和
output[16:0] addend,//加数
output[2:0] booth,
output[32:0] multiplication
    );
reg[34:0] regs;
always@(posedge clk or negedge rst)
	if(!rst)
		begin
			regs[34:17]<=18'b0;
			regs[16:1]<=multiplicator;
			regs[0]<=1'b0;
		end
	else if(flag)
		begin
			regs[34:0]<=cout?{2'b11,1'b1,sum[16:0],regs[16:2]}:{2'b00,1'b0,sum[16:0],regs[16:2]};//先赋值再移位
		end
	else
		begin
			regs[34:0]<=sum[16]?{2'b11,1'b1,sum[16:0],regs[16:2]}:{2'b00,1'b0,sum[16:0],regs[16:2]};//先赋值再移位
		end
assign
	addend=regs[33:17],
	booth=regs[2:0],
	multiplication=regs[33:1];
endmodule
