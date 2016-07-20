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
input mux_addsub_mult_op,//ѡ��Ӽ������ǳ˷�
input[1:0] addsub_unit_en,//�Ӽ����ļ�����ʽ
input op_mult_in,//�˷�ʱ��op����
input cin,//�Ӽ�������ʱ�Ľ�λ
output reg op_out,
output reg cout
    );
//reg op_out;
//reg cout;
always@(*)
	begin
		if(!mux_addsub_mult_op)
			case(addsub_unit_en)
				2'b00://�ӷ�
					begin
						op_out<=1'b0;
						cout<=1'b0;
					end
				2'b01://����λ�ӷ�
					begin
						op_out<=1'b0;
						cout<=cin;
					end
				2'b10://����
					begin
						op_out<=1'b1; 
						cout<=1'b1;
					end
				2'b11://����λ����
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
