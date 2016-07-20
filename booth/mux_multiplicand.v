`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:55:54 05/30/2016 
// Design Name: 
// Module Name:    mux_multiplicand 
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
module mux_multiplicand(
input[15:0] multiplicand_in,
input start,
input[1:0] mux,
output[16:0] multiplicand_out
    );
wire[16:0] multiplicand_0,multiplicand_1,multiplicand_2;
reg[16:0] multiplicand_out;


		assign
			multiplicand_0=17'b0,
			multiplicand_1=({multiplicand_in[15],multiplicand_in}),
			multiplicand_2=({multiplicand_in,1'b0});	
		

always@(mux or multiplicand_0 or multiplicand_1 or multiplicand_2 or start )
	begin
		if(start)
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
