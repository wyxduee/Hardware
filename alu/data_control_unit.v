`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:19:08 07/13/2016 
// Design Name: 
// Module Name:    data_control_unit 
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
module data_control_unit(
input clk,
input rst,
input cin,
input[3:0] opcode,
//output[16:0] out_en,
output grs_en,//���ƼĴ���������
output[1:0] mux_add_sub_mult_en,//���Ƽӷ������������룬11��ʾ���г˷����㣬00��ʾ���мӼ�����
output[1:0] status_en,//����״̬�Ĵ����������00��ʾ�߼����㣬01��ʾ��λ���㣬10��ʾ�������㣬11��ʾ�˷�����
output[1:0] logic_unit_en,//00��ʾ�߼��룬01��ʾ�߼���10��ʾ�߼��ǣ�11��ʾ�߼����
output[2:0] shifter_unit_en,//001��ʾ������x�����߼����ƣ�010������X�߼����ƣ�011��������x��������,101,110,111
output[1:0] ar_mux_en,//01ѡ������߼���������10ѡ�������λ��������11ѡ���������������
output ar_en,//���ƽ���Ĵ��������
output mult_en,//���Ƴ˷�����Ĵ��������
output ctrl_en,//���Ƴ˷�����Ŀ�ʼ
output[1:0] addsub_unit_en,//������������ź�
output cin_out
);
assign cin_out=cin;
reg[16:0] out_en;
//reg[16:0] out_en={grs_en,mux_add_sub_mult_en,status_en,logic_unit_en,shifter_unit_en,ar_mux_en,ar_en,mult_en,ctrl_en,addsub_unit_en};
assign {grs_en,logic_unit_en,shifter_unit_en,addsub_unit_en,mux_add_sub_mult_en,ar_mux_en,ar_en,mult_en,ctrl_en,status_en}=out_en;
always@(posedge clk or negedge rst)
	if(!rst)
		begin
			out_en<=17'b0_00_000_00_00_00_0_0_0_00;
		end
	else if(opcode==4'b1111 && cnt_clk<=3'd8)//�˷�����
			out_en<=	17'b1_00_000_00_11_00_0_1_1_11;	
	else		
		case(opcode)
			4'b0000://�������κβ���
				out_en<=17'b0_00_000_00_00_00_0_0_0_00;
			4'b0001://�߼�������
				out_en<=17'b1_00_000_00_00_01_1_0_0_00;
			4'b0010://�߼�������
				out_en<=17'b1_01_000_00_00_01_1_0_0_00;
			4'b0011://�߼�������
				out_en<=17'b1_10_000_00_00_01_1_0_0_00;
			4'b0100://�߼��������
				out_en<=17'b1_11_000_00_00_01_1_0_0_00;
			4'b0101://x�߼�����
				out_en<=17'b1_00_001_00_00_10_1_0_0_01;
			4'b0110://x�߼�����
				out_en<=17'b1_00_010_00_00_10_1_0_0_01;
			4'b0111://x��������
				out_en<=17'b1_00_011_00_00_10_1_0_0_01;
			4'b1000://y�߼�����
				out_en<=17'b1_00_101_00_00_10_1_0_0_01;
			4'b1001://y�߼�����
				out_en<=17'b1_00_110_00_00_10_1_0_0_01;
			4'b1010://y��������
				out_en<=17'b1_00_111_00_00_10_1_0_0_01;
			4'b1011://����������
				out_en<=17'b1_00_000_00_00_11_1_0_0_10;
			4'b1100://����������
				out_en<=17'b1_00_000_10_00_11_1_0_0_10;
			4'b1101://��������λ��
				out_en<=17'b1_00_000_01_00_11_1_0_0_10;
			4'b1110://��������λ��
				out_en<=17'b1_00_000_11_00_11_1_0_0_10;
		endcase
reg[2:0] cnt_clk;
always@(posedge clk or negedge rst)
	begin
		if(!rst)
			cnt_clk<=3'd0;
		else if(opcode==4'b1111)
			if(cnt_clk==3'd8)
				cnt_clk<=3'd0;
			else
				cnt_clk<=cnt_clk+1'b1;
		else
			cnt_clk<=3'd0;
	end

endmodule
 