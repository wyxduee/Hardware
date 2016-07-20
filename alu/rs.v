`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:27 07/13/2016 
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
input[1:0] cout_in,
input ctrl_en,
input cout,//相加运算产生的进位
input[15:0] multiplicator,//乘数
input[16:0] sum,//被乘数与部分积的和
output[16:0] addend,//加数
output[2:0] booth,
output[31:0] multiplication
    );
reg[34:0] regs;
wire flag;
wire flag1;
reg ctrl_en1,ctrl_en2;
always@(posedge clk)
	begin
		ctrl_en1<=ctrl_en;
		ctrl_en2<=ctrl_en1;
	end
assign flag1=(!ctrl_en2 & ctrl_en1)?1'b1:1'b0;
		
assign flag=cout_in[1]^cout_in[0];
always@(posedge clk or negedge rst)
	if(!rst)
		begin
			regs[34:17]<=18'd0;
			regs[16:1]<=16'd0;
			regs[0]<=1'b0;
		end
		else if(flag1)
				regs[16:1]<=multiplicator;
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
	multiplication=regs[32:1];
endmodule
