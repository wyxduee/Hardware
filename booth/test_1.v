`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:25:16 05/31/2016
// Design Name:   addorsub_top
// Module Name:   E:/FPGA/booth/booth/test_1.v
// Project Name:  booth
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: addorsub_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_1;

	// Inputs
	reg [16:0] op_a_in;
	reg [16:0] op_b_in;
	reg op;
	reg cin;

	// Outputs
	wire [16:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	addorsub_top uut (
		.op_a_in(op_a_in), 
		.op_b_in(op_b_in), 
		.op(op), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		op_a_in = 0;
		op_b_in = 0;
		op = 1;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		op_a_in=17'd1034;
		op_b_in=17'd526;
        
		// Add stimulus here

	end
      
endmodule

