`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:01 05/30/2016 
// Design Name: 
// Module Name:    ctrl 
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
module ctrl(
input clk,
input rst,
input start,
input[15:0] multiplicator,
input[2:0] booth,
output[15:0] multiplicator_out,//�������
output[1:0] mux,//������ѡ������źţ�00Ϊ0,01Ϊx,10Ϊ2x
output cin,//��λ�ź�
output op//�ӷ��������ѡ���źţ�0Ϊ�ӷ���1Ϊ����
    );
reg[3:0] cnt;	 
reg cin;
reg[1:0] mux;
reg op;
always@(posedge clk or negedge rst)
	if(!rst)
		begin
			cin<=1'b0;
			cnt<=4'b0;	
		end
	else if(start && cnt<=4'd8)
		begin
			cnt<=cnt+1'b1;
		end
	else
		begin
			cnt<=cnt;
		end
always@(booth or start or cnt)
	if(cnt<=4'd8)
		case(booth)
				3'b000:
					begin
						op=1'b0;
						mux=2'b00;
					end
				3'b001,3'b010:
					begin
						op=1'b0;
						mux=2'b01;
					end
				3'b011:
					begin
						op=1'b0;
						mux=2'b10;
					end
				3'b100:
					begin
						op=1'b1;
						mux=2'b10;
					end
				3'b101,3'b110:
					begin
						op=1'b1;
						mux=2'b01;
					end
				3'b111:
					begin
						op=1'b1;
						mux=2'b00;
					end
				default:
					begin
						op=1'b0;
						mux=2'b00;
					end
			endcase
assign 
		multiplicator_out=multiplicator;
endmodule
