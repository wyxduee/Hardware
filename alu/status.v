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
input[1:0] op_en,//�������ֲ�ͬ�Ĺ���״̬���ֱ�ʱ�߼����㡢��λ���㡢�Ӽ������˷�����
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
			2'b00://�߼�����ģʽ
				begin
					sta[3]<=~(|op_out_logic_unit);
					sta[2]<=op_out_logic_unit[15];
				end
			2'b01://��λ����
				begin
					sta[3]<=~(|op_out_shifter_unit);
					sta[2]<=op_out_shifter_unit[15];
				end
			2'b10://��������
				begin
					sta[3]<=~(|op_out_addsub_unit[15:0]);
					sta[2]<=op_out_addsub_unit[15];
					sta[1]<=op_out_cout[1];
					sta[0]<=op_out_cout[1]^op_out_cout[0];
				end
			2'b11://�˷�����
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
