`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:43:14 05/31/2016
// Design Name:   booth_top
// Module Name:   E:/FPGA/booth/booth/test.v
// Project Name:  booth
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: booth_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [15:0] multiplicand_in;
	reg [15:0] multiplicator_in;
	reg start;
	reg clk;
	reg rst;

	// Outputs
	wire [32:0] multiplication;

	// Instantiate the Unit Under Test (UUT)
	booth_top uut (
		.multiplicand_in(multiplicand_in), 
		.multiplicator_in(multiplicator_in), 
		.start(start), 
		.clk(clk), 
		.rst(rst), 
		.multiplication(multiplication)
	);

	initial begin
		// Initialize Inputs
		multiplicand_in = 0;
		multiplicator_in = 0;
		start = 0;
		clk = 0;

		multiplicand_in=16'b1101010011001001;//16'b1101010011001001;//1101 0100 1100 1001 -11063
		multiplicator_in=16'b1101010011001001;//16'b0110010101110010;//0110 0101 0111 0010    25970
		#10;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst=1;
		start=1;
		forever #50 clk=~clk;
        
		// Add stimulus here

	end
  initial begin
     #2000 $stop;
	  end


endmodule

