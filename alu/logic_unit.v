`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:47:08 07/05/2016 
// Design Name: 
// Module Name:    logic_unit 
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
module logic_unit(
input[15:0] op_x,
input[15:0] op_y,
input[1:0] op_en,
output reg[15:0] op_out
    );
//reg[15:0] op_out;
always@(*)
	begin
		case(op_en)
			2'b00:op_out<=(op_x & op_y);//与操作
			2'b01:op_out<=(op_x | op_y);//或操作
			2'b10:op_out<=(~op_x);//非操作
			2'b11:op_out<=(op_x ^ op_y);//异或操作
			default:
				op_out<=16'b0;
		endcase
	end

endmodule
