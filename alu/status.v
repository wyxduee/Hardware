`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:56:24 07/05/2016 
// Design Name: 
// Module Name:    status 
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
module status(
input[1:0] op_en,//区别四种不同的工作状态，分别时逻辑运算、移位运算、加减法、乘法运算
input[15:0] op_out_logic_unit,
input[15:0] op_out_shifter_unit,
input[16:0] op_out_addsub_unit,
input[2:0] op_out_cout,
output reg[3:0] sta//ZNCV
    );
//reg[3:0] sta;
always@(*)
	begin
		case(op_en)
			2'b00://逻辑运算模式
				begin
					sta[3]<=~(|op_out_logic_unit);
					sta[2]<=op_out_logic_unit[15];
				end
			2'b01://移位运算
				begin
					sta[3]<=~(|op_out_shifter_unit);
					sta[2]<=op_out_shifter_unit[15];
				end
			2'b10://算术运算
				begin
					sta[3]<=~(|op_out_addsub_unit[15:0]);
					sta[2]<=op_out_addsub_unit[15];
					sta[1]<=op_out_cout[1];
					sta[0]<=op_out_cout[1]^op_out_cout[0];
				end
			2'b11://乘法运算
				begin
					sta[3]<=~(|op_out_addsub_unit[16:0]);
					sta[2]<=op_out_addsub_unit[16];
					sta[1]<=op_out_cout[2];
					sta[0]<=op_out_cout[2]^op_out_cout[1];
				end
				default:
					begin
						sta<=4'b0;
					end
			endcase
	end
endmodule
