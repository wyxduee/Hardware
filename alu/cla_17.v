`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:55:50 05/29/2016 
// Design Name: 
// Module Name:    cla_17 
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
module cla_17(
input[16:0] op_a,
input[16:0] op_b,
input cin,
output[16:0] sum,
output[2:0] cout
    );




//gp1
wire[16:0] p;
wire[16:0] g;
gen_pg gp1(
.op_a(op_a),
.op_b(op_b),
.p(p),
.g(g)
);
//u0,u1,u2,u3
wire[3:0] px;
wire[3:0] gx;
wire[17:1] c_out;
cla_4 u0(
.p(p[3:0]),
.g(g[3:0]),
.px(px[0]),
.gx(gx[0]),
.c_in(cin),
.c_out(c_out[3:1])
);

cla_4 u1(
.p(p[7:4]),
.g(g[7:4]),
.px(px[1]),
.gx(gx[1]),
.c_in(c_out[4]),
.c_out(c_out[7:5])
);

cla_4 u2(
.p(p[11:8]),
.g(g[11:8]),
.px(px[2]),
.gx(gx[2]),
.c_in(c_out[8]),
.c_out(c_out[11:9])
);

cla_5 u3(
.p(p[16:12]),
.g(g[16:12]),
.px(px[3]),
.gx(gx[3]),
.c_in5(c_out[16]),
.c_in(c_out[12]),
.c_out({c_out[17],c_out[15:13]})
);

//v1
cla_4_1 v1(
.px(px),
.gx(gx),
.c_in(cin),
.c_out({c_out[16],c_out[12],c_out[8],c_out[4]})
);

//s1
cla_sum s1(
.c_in({c_out[16:1],cin}),
.p(p),
.sum(sum)
);
assign cout=c_out[17:15];

endmodule
