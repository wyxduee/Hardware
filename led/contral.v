`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:38 09/29/2015 
// Design Name: 
// Module Name:    contral 
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
module contral(clk,rst,anjian,anjian_en,wei_clk
    );
input clk;
input rst;
input anjian;
output wei_clk;
output anjian_en;
//
reg[19:0] count;
reg wei_clk;
always@(posedge clk or negedge rst)
	if(!rst)
		begin
			wei_clk<=1'b0;
			count<=20'd0;
		end
	else if(count==20'd5_00_00)
		begin
			wei_clk<=~wei_clk;
			count<=20'd0;
		end
	else
		count<=count+1'b1;

//++++++++++++++++++++++++++++++++++++++

reg  key_samp1, key_samp1_locked;

 

// ��i_key�ɼ���key_samp1

always @ (posedge clk, negedge rst)

  if(!rst) 

    key_samp1 <= 1'b1;

  else        

    key_samp1 <= anjian;

 

// ��key_samp1������key_samp1_locked

always @ (posedge clk, negedge rst)

  if(!rst) 

    key_samp1_locked <= 1'b1;

  else        

    key_samp1_locked <= key_samp1;

//--------------------------------------

 

//++++++++++++++++++++++++++++++++++++++

wire key_changed1;

 

// ��key_samp1��1��Ϊ0ʱ

// key_changed1��0��Ϊ1��ֻά��һ��ʱ������

assign key_changed1 = key_samp1_locked & (~key_samp1); 

//--------------------------------------

 

 

//++++++++++++++++++++++++++++++++++++++

reg [19:0] cnt;

 

// һ���а������£�cnt����������

always @ (posedge clk, negedge rst)

  if(!rst)

    cnt <= 20'h0;

  else if(key_changed1)

    cnt <= 20'h0;

  else

    cnt <= cnt + 1'b1;

//--------------------------------------

 

 

//++++++++++++++++++++++++++++++++++++++

reg key_samp2, key_samp2_locked;

 

// ֻ�е��������仯��������������ά��20ms����ʱ

// �Ž�i_key�ɼ���key_samp2

always @ (posedge clk, negedge rst)

  if(!rst)

    key_samp2 <= 1'b1;

  else if(cnt == 20'hF_FFFF)            // 0xFFFFF/50M = 20.9715ms

    key_samp2 <= anjian;

 

// ��key_samp2������key_samp2_locked

always @ (posedge clk, negedge rst)

  if(!rst)

    key_samp2_locked <= 1'b1;

  else

    key_samp2_locked <= key_samp2;

//--------------------------------------

 

//++++++++++++++++++++++++++++++++++++++

wire  anjian_en;

 

// ��key_samp2��1��Ϊ0ʱ

// key_changed2��0��Ϊ1��ֻά��һ��ʱ������

assign anjian_en = key_samp2_locked & (~key_samp2); 

//--------------------------------------

 

 

//++++++++++++++++++++++++++++++++++++++





endmodule
