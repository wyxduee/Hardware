`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:08:26 12/17/2015 
// Design Name: 
// Module Name:    div 
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
module div(
   
input CLK,
input RSTn,
input Start_Sig,
input [7:0] Dividend,
input [7:0] Divisor,

output Done_Sig,
output [7:0] Quotient,
output [7:0] Reminder,
output [15:0] SQ_R
);
reg [3:0] i;
reg [7:0] Q;
reg [7:0] Dsor;
reg [15:0] _Dsor;
reg [15:0] R;
reg isNeg;
reg isDone;


always@(posedge CLK or negedge RSTn)
	if(!RSTn)
		begin
			i<=4'd0;
			Q<=8'd0;
			Dsor<=8'd0;
			_Dsor<=16'd0;
			R<=16'd0;
			isNeg<=1'b0;
			isDone<=1'b0;
		end
	else if(Start_Sig)
		case(i)
			0:
			begin
				isNeg<=Divisor[7]^Dividend[7];
				Dsor<=Divisor[7]?~Divisor+1'b1:Divisor;//当除数是负数时（补码表示）则取绝对值，正数不变
				_Dsor<=Divisor[7]?{8'hff,Divisor}:{8'hff,~Divisor+1'b1};//取补码
				R<=Dividend[7]?{8'd0,~Dividend+1'b1}:{8'd0,Dividend};//当被除数为负数时则转换成正数
				Q<=8'd0;
				i<=i+1'b1;
			end
			1,2,3,4,5,6,7,8:
			begin
				if(R<(Dsor<<7))
					begin
						R<={R[14:0],1'b0};
						Q[8-i]<=1'b0;
					end
				else
					begin
						R<=(R+(_Dsor<<7))<<1;
						Q[8-i]<=1'b1;
					end
				i<=i+1'b1;
			end
			9:
			begin
				isDone<=1'b1;
				i<=i+1'b1;
			end
			10:
			begin
				isDone<=1'b0;
				i<=4'd0;
			end
		endcase
	
	assign Done_Sig=isDone;
	assign Quotient=isNeg?(~Q+1'b1):Q;
	assign Reminder=R[15:8];
	
				
	assign SQ_R=R;
	

endmodule
