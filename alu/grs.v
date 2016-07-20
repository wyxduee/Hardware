`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:47:45 07/13/2016 
// Design Name: 
// Module Name:    grs 
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
module grs(
//input clk,
//input rst,
input[15:0] opx_in,
input[15:0] opy_in,
input grs_en,
output  [15:0] opx_out,
output  [15:0] opy_out
    );
/*always@(posedge clk or negedge rst)
	if(!rst)
		begin
			opx_out<=16'd0;
			opy_out<=16'd0;
		end
	else if(grs_en)
		begin
			opx_out<=opx_in;
			opy_out<=opy_in;
		end
	else
		begin
			opx_out<=16'd0;
			opy_out<=16'd0;
		end*/
assign opx_out=(grs_en)?opx_in:16'b0;
assign opy_out=(grs_en)?opy_in:16'b0;

endmodule
