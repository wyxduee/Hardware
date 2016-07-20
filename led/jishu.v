`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:14 09/29/2015 
// Design Name: 
// Module Name:    jishu 
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
module jishu(clk,rst,anjian_en,data
    );
input clk;
input rst;
input anjian_en;
output data;
reg [7:0] data;
//
always@(posedge clk or negedge rst)
	if(!rst)
		data<=8'h00;
	else if(data==8'h99)
		data<=8'h00;
	else if(anjian_en)//anjian_en为一个时钟的高电平
		if(data[3:0]==4'h9)
			begin
				data[7:4]<=data[7:4]+1'b1;
				data[3:0]<=4'h0;
			end
		else
			data[3:0]<=data[3:0]+1'b1;
endmodule
