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
output grs_en,//控制寄存器的输入
output[1:0] mux_add_sub_mult_en,//控制加法器的数据输入，11表示进行乘法运算，00表示进行加减运算
output[1:0] status_en,//控制状态寄存器的输出，00表示逻辑运算，01表示移位运算，10表示算术运算，11表示乘法运算
output[1:0] logic_unit_en,//00表示逻辑与，01表示逻辑或，10表示逻辑非，11表示逻辑异或
output[2:0] shifter_unit_en,//001表示对数据x进行逻辑左移，010对数据X逻辑右移，011，对数据x算术右移,101,110,111
output[1:0] ar_mux_en,//01选择输出逻辑运算结果，10选择输出移位运算结果，11选择输出算术运算结果
output ar_en,//控制结果寄存器的输出
output mult_en,//控制乘法结果寄存器的输出
output ctrl_en,//控制乘法计算的开始
output[1:0] addsub_unit_en,//算术运算控制信号
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
	else if(opcode==4'b1111 && cnt_clk<=3'd8)//乘法运算
			out_en<=	17'b1_00_000_00_11_00_0_1_1_11;	
	else		
		case(opcode)
			4'b0000://不进行任何操作
				out_en<=17'b0_00_000_00_00_00_0_0_0_00;
			4'b0001://逻辑与运算
				out_en<=17'b1_00_000_00_00_01_1_0_0_00;
			4'b0010://逻辑或运算
				out_en<=17'b1_01_000_00_00_01_1_0_0_00;
			4'b0011://逻辑非运算
				out_en<=17'b1_10_000_00_00_01_1_0_0_00;
			4'b0100://逻辑异或运算
				out_en<=17'b1_11_000_00_00_01_1_0_0_00;
			4'b0101://x逻辑左移
				out_en<=17'b1_00_001_00_00_10_1_0_0_01;
			4'b0110://x逻辑右移
				out_en<=17'b1_00_010_00_00_10_1_0_0_01;
			4'b0111://x算术右移
				out_en<=17'b1_00_011_00_00_10_1_0_0_01;
			4'b1000://y逻辑左移
				out_en<=17'b1_00_101_00_00_10_1_0_0_01;
			4'b1001://y逻辑右移
				out_en<=17'b1_00_110_00_00_10_1_0_0_01;
			4'b1010://y算术右移
				out_en<=17'b1_00_111_00_00_10_1_0_0_01;
			4'b1011://算术加运算
				out_en<=17'b1_00_000_00_00_11_1_0_0_10;
			4'b1100://算术减运算
				out_en<=17'b1_00_000_10_00_11_1_0_0_10;
			4'b1101://算术带进位加
				out_en<=17'b1_00_000_01_00_11_1_0_0_10;
			4'b1110://算术带进位减
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
 