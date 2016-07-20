`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:53:02 07/14/2016
// Design Name:   alu_top
// Module Name:   E:/FPGA/booth/alu/alu_top_test.v
// Project Name:  alu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_top_test;

	// Inputs
	reg clk;
	reg rst;
	reg [3:0] opcode;
	reg [15:0] opx;
	reg [15:0] opy;
	reg cin;

	// Outputs
	wire [15:0] ar;
	wire [31:0] mult_out;
	wire [3:0] sta;

	// Instantiate the Unit Under Test (UUT)
	alu_top uut (
		.clk(clk), 
		.rst(rst), 
		.opcode(opcode), 
		.opx(opx), 
		.opy(opy), 
		.cin(cin), 
		.ar(ar), 
		.mult_out(mult_out), 
		.sta(sta)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		
		//0010100000010011 10259
		//1101010011001001 -11063
		//0110010101110010 25970
		opx = 16'b1010100000010011;//10259
		opy = 16'b1110010101110010;//-11063
		cin = 0;
		opcode = 4'b0101;
			/*4'b0000://不进行任何操作
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
				out_en<=17'b1_00_000_11_00_11_1_0_0_10;*/
		// Wait 100 ns for global reset to finish
		#20;
		rst = 0;
		#200;
		rst=1;
		

  
		// Add stimulus here

	end
	  always #50 clk=~clk; 
  initial
	begin
		#5000 $stop;
	end
endmodule

