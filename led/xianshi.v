`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:41:27 09/29/2015 
// Design Name: 
// Module Name:    xianshi 
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
module xianshi(clk,rst,wei_clk,data,wei_en,duan
    );
input clk;
input rst;
input wei_clk;
input data;
output wei_en;
output duan;
wire [7:0] data;
reg [7:0] duan;
reg [3:0] wei_en;
reg [3:0] duan_en;
always@(posedge wei_clk or negedge rst)
	if(!rst)
		begin
			wei_en<=4'b0111;
			duan_en<=data[3:0];
		end
	else if(wei_en==4'b0111)
		begin
			wei_en<=4'b1011;
			duan_en<=data[7:4];
		end
	else
		begin
			wei_en<=4'b0111;
			duan_en<=data[3:0];
		end
always@(posedge clk)
	case(duan_en)
		4'd0:duan<=8'hc0;
		4'd1:duan<=8'hf9;
		4'd2:duan<=8'ha4;
		4'd3:duan<=8'hb0;
		4'd4:duan<=8'h99;
		4'd5:duan<=8'h92;
		4'd6:duan<=8'h82;
		4'd7:duan<=8'hf8;
		4'd8:duan<=8'h80;
		4'd9:duan<=8'h90;
		default: duan<=8'hc0;
	endcase
endmodule
