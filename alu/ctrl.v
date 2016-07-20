`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:43:01 07/13/2016 
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
input ctrl_en,
input[15:0] multiplicator,
input[15:0] multiplicand,
input[2:0] booth,
output[15:0] multiplicator_out,//�������
output reg [16:0] multiplicand_out,
//output[1:0] mux,//������ѡ������źţ�00Ϊ0,01Ϊx,10Ϊ2x
//output cin,//��λ�ź�
output reg op//�ӷ��������ѡ���źţ�0Ϊ�ӷ���1Ϊ����
    );
reg[3:0] cnt;	 
//reg cin;
reg[1:0] mux;
//reg op;
always@(posedge clk or negedge rst)
	if(!rst)
		begin
			//cin<=1'b0;
			cnt<=4'b0;	
		end
	else if(ctrl_en && cnt<=4'd9)
		begin
			cnt<=cnt+1'b1;
		end
	else
		begin
			cnt<=cnt;
		end
always@(booth or ctrl_en or cnt)
	if(cnt<=4'd9)
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
		
wire[16:0] multiplicand_0,multiplicand_1,multiplicand_2;
//reg[16:0] multiplicand_out;
		assign
			multiplicand_0=17'b0,
			multiplicand_1=({multiplicand[15],multiplicand}),
			multiplicand_2=({multiplicand,1'b0});	
		

always@(mux or multiplicand_0 or multiplicand_1 or multiplicand_2 or ctrl_en )
	begin
		if(ctrl_en)
			case(mux)
				2'b00:
					multiplicand_out=multiplicand_0;
				2'b01:
					multiplicand_out=multiplicand_1;
				2'b10:
					multiplicand_out=multiplicand_2;
				default:
					multiplicand_out=multiplicand_0;
			endcase
	end
endmodule