`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:05:44 12/18/2015
// Design Name:   div
// Module Name:   E:/FPGA/div/div/div_test.v
// Project Name:  div
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: div
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module div_test;

	// Inputs
	reg CLK;
	reg RSTn;
	reg Start_Sig;
	reg [7:0] Dividend;
	reg [7:0] Divisor;

	// Outputs
	wire Done_Sig;
	wire [7:0] Quotient;
	wire [7:0] Reminder;
	wire [15:0] SQ_R;

	// Instantiate the Unit Under Test (UUT)
	div uut (
		.CLK(CLK), 
		.RSTn(RSTn), 
		.Start_Sig(Start_Sig), 
		.Dividend(Dividend), 
		.Divisor(Divisor), 
		.Done_Sig(Done_Sig), 
		.Quotient(Quotient), 
		.Reminder(Reminder), 
		.SQ_R(SQ_R)
	);

	initial 
		begin
			RSTn=0;
			#10;
			RSTn=1;
			CLK=0;
			forever #10 CLK=~CLK;
		end
reg [3:0] i;
always@(posedge CLK or negedge RSTn)
	if(!RSTn)
		begin
			i<=4'd0;
			Dividend<=8'd0;
			Divisor<=8'd0;
			Start_Sig<=1'b0;
		end
	else
		case(i)
			0:
			if(Done_Sig)
				begin
					Start_Sig<=1'b0;
					i<=i+1'b1;
				end
			else
				begin
					Start_Sig<=1'b1;
					Dividend<=8'b11011100;
					Divisor<=8'b0000_0101;
				end
			1:
				i<=4'd1;
			endcase
				
				
endmodule

