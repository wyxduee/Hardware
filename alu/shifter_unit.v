`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:17:51 07/03/2016 
// Design Name: 
// Module Name:    shifter_unit 
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
//�߼���λ��0��������λ������λ,����λ���λ������ѡ���������ݣ�����λ�������ж���λģʽ
//////////////////////////////////////////////////////////////////////////////////
module shifter_unit(
input[15:0] op_x,
input[15:0] op_y,
input[2:0] op_en,
output reg[15:0] op_out
    );
//reg[16:0] op_out;
always@(*)
	begin
		case(op_en)
			3'b001:op_out<={op_x[14:0],1'b0};//�߼�����
			3'b010:op_out<={1'b0,op_x[15:1]};//�߼�����
			3'b011:op_out<={op_x[15],op_x[15:1]};//��������
			3'b101:op_out<={op_y[14:0],1'b0};//�߼�����
			3'b110:op_out<={1'b0,op_y[15:1]};//�߼�����
			3'b111:op_out<={op_y[15],op_y[15:1]};//��������
			default:
				op_out<=16'b0;
		endcase
			
	end

endmodule
