`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:58 09/29/2015 
// Design Name: 
// Module Name:    top 
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
module top(clk,rst,anjian,wei_en,duan
    );
input clk;
input rst;
input anjian;
output[3:0] wei_en;
output[7:0] duan;
//
wire anjian_en;
wire [7:0] data;
jishu u1(
.clk(clk),
.rst(rst),
.anjian_en(anjian_en),
.data(data)
);
//
wire wei_clk;
contral u2(
.clk(clk),
.rst(rst),
.anjian(anjian),
.anjian_en(anjian_en),
.wei_clk(wei_clk)
);
//
xianshi u3(
.clk(clk),
.rst(rst),
.wei_clk(wei_clk),
.wei_en(wei_en),
.data(data),
.duan(duan)
);
endmodule
