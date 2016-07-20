`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:15:52 07/13/2016 
// Design Name: 
// Module Name:    ar_mux 
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
module ar_mux(
input[15:0] logic_unit_in,
input[15:0] shifter_unit_in,
input[15:0] add_sub_in,
input[1:0] ar_mux_en,
output reg[15:0] ar_mux_out
    );
//reg[15:0] ar_mux_out;
always@(*)
	begin
		case(ar_mux_en)
			2'b01:
				ar_mux_out<=logic_unit_in;
			2'b10:
				ar_mux_out<=shifter_unit_in;
			2'b11:
				ar_mux_out<=add_sub_in;
			default:
				ar_mux_out<=16'd0;
		endcase
	end

endmodule
