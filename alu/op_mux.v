`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:08:27 07/13/2016 
// Design Name: 
// Module Name:    op_mux 
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
module op_mux(
input mux_addsub_mult_op,//选择加减法还是乘法
input[1:0] addsub_unit_en,//加减法的几种形式
input op_mult_in,//乘法时的op输入
input cin,//加减法运算时的进位
output reg op_out,
output reg cout
    );
//reg op_out;
//reg cout;
always@(*)
	begin
		if(!mux_addsub_mult_op)
			case(addsub_unit_en)
				2'b00://加法
					begin
						op_out<=1'b0;
						cout<=1'b0;
					end
				2'b01://带进位加法
					begin
						op_out<=1'b0;
						cout<=cin;
					end
				2'b10://减法
					begin
						op_out<=1'b1; 
						cout<=1'b1;
					end
				2'b11://带进位减法
					begin
						op_out<=1'b1;
						cout<=~cin;
					end
					default:
						begin
							op_out<=1'b0;
							cout<=1'b0;
						end
				endcase
			else
				begin
					op_out<=op_mult_in; 
					cout<=1'b0;
				end
		end
endmodule
