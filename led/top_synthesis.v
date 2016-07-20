////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: top_synthesis.v
// /___/   /\     Timestamp: Mon Oct 12 21:36:53 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim top.ngc top_synthesis.v 
// Device	: xc3s100e-4-cp132
// Input file	: top.ngc
// Output file	: E:\FPGA\ISE\shumaguan\netgen\synthesis\top_synthesis.v
// # of Modules	: 1
// Design Name	: top
// Xilinx        : D:\xilinx\14.1\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module top (
  clk, rst, anjian, duan, wei_en
);
  input clk;
  input rst;
  input anjian;
  output [7 : 0] duan;
  output [1 : 0] wei_en;
  wire N0;
  wire N1;
  wire clk_BUFGP_3;
  wire rst_IBUF_13;
  wire \u2/Mcount_count_cy<10>_rt_16 ;
  wire \u2/Mcount_count_cy<11>_rt_18 ;
  wire \u2/Mcount_count_cy<12>_rt_20 ;
  wire \u2/Mcount_count_cy<13>_rt_22 ;
  wire \u2/Mcount_count_cy<14>_rt_24 ;
  wire \u2/Mcount_count_cy<15>_rt_26 ;
  wire \u2/Mcount_count_cy<16>_rt_28 ;
  wire \u2/Mcount_count_cy<17>_rt_30 ;
  wire \u2/Mcount_count_cy<18>_rt_32 ;
  wire \u2/Mcount_count_cy<1>_rt_34 ;
  wire \u2/Mcount_count_cy<2>_rt_36 ;
  wire \u2/Mcount_count_cy<3>_rt_38 ;
  wire \u2/Mcount_count_cy<4>_rt_40 ;
  wire \u2/Mcount_count_cy<5>_rt_42 ;
  wire \u2/Mcount_count_cy<6>_rt_44 ;
  wire \u2/Mcount_count_cy<7>_rt_46 ;
  wire \u2/Mcount_count_cy<8>_rt_48 ;
  wire \u2/Mcount_count_cy<9>_rt_50 ;
  wire \u2/Mcount_count_eqn_0 ;
  wire \u2/Mcount_count_eqn_1 ;
  wire \u2/Mcount_count_eqn_10 ;
  wire \u2/Mcount_count_eqn_11 ;
  wire \u2/Mcount_count_eqn_12 ;
  wire \u2/Mcount_count_eqn_13 ;
  wire \u2/Mcount_count_eqn_14 ;
  wire \u2/Mcount_count_eqn_15 ;
  wire \u2/Mcount_count_eqn_16 ;
  wire \u2/Mcount_count_eqn_17 ;
  wire \u2/Mcount_count_eqn_18 ;
  wire \u2/Mcount_count_eqn_19 ;
  wire \u2/Mcount_count_eqn_2 ;
  wire \u2/Mcount_count_eqn_3 ;
  wire \u2/Mcount_count_eqn_4 ;
  wire \u2/Mcount_count_eqn_5 ;
  wire \u2/Mcount_count_eqn_6 ;
  wire \u2/Mcount_count_eqn_7 ;
  wire \u2/Mcount_count_eqn_8 ;
  wire \u2/Mcount_count_eqn_9 ;
  wire \u2/Mcount_count_xor<19>_rt_72 ;
  wire \u2/rst_inv ;
  wire \u2/wei_clk_114 ;
  wire \u2/wei_clk_cmp_eq0000 ;
  wire \u2/wei_clk_not0001 ;
  wire \u3/wei_en_cmp_eq0000 ;
  wire [18 : 0] \u2/Mcount_count_cy ;
  wire [0 : 0] \u2/Mcount_count_lut ;
  wire [19 : 0] \u2/Result ;
  wire [19 : 0] \u2/count ;
  wire [3 : 0] \u2/wei_clk_cmp_eq0000_wg_cy ;
  wire [4 : 0] \u2/wei_clk_cmp_eq0000_wg_lut ;
  wire [1 : 0] \u3/wei_en ;
  wire [1 : 1] \u3/wei_en_mux0000 ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDP   \u3/wei_en_0  (
    .C(\u2/wei_clk_114 ),
    .D(\u3/wei_en_mux0000 [1]),
    .PRE(\u2/rst_inv ),
    .Q(\u3/wei_en [0])
  );
  FDC   \u3/wei_en_1  (
    .C(\u2/wei_clk_114 ),
    .CLR(\u2/rst_inv ),
    .D(\u3/wei_en_cmp_eq0000 ),
    .Q(\u3/wei_en [1])
  );
  XORCY   \u2/Mcount_count_xor<19>  (
    .CI(\u2/Mcount_count_cy [18]),
    .LI(\u2/Mcount_count_xor<19>_rt_72 ),
    .O(\u2/Result [19])
  );
  XORCY   \u2/Mcount_count_xor<18>  (
    .CI(\u2/Mcount_count_cy [17]),
    .LI(\u2/Mcount_count_cy<18>_rt_32 ),
    .O(\u2/Result [18])
  );
  MUXCY   \u2/Mcount_count_cy<18>  (
    .CI(\u2/Mcount_count_cy [17]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<18>_rt_32 ),
    .O(\u2/Mcount_count_cy [18])
  );
  XORCY   \u2/Mcount_count_xor<17>  (
    .CI(\u2/Mcount_count_cy [16]),
    .LI(\u2/Mcount_count_cy<17>_rt_30 ),
    .O(\u2/Result [17])
  );
  MUXCY   \u2/Mcount_count_cy<17>  (
    .CI(\u2/Mcount_count_cy [16]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<17>_rt_30 ),
    .O(\u2/Mcount_count_cy [17])
  );
  XORCY   \u2/Mcount_count_xor<16>  (
    .CI(\u2/Mcount_count_cy [15]),
    .LI(\u2/Mcount_count_cy<16>_rt_28 ),
    .O(\u2/Result [16])
  );
  MUXCY   \u2/Mcount_count_cy<16>  (
    .CI(\u2/Mcount_count_cy [15]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<16>_rt_28 ),
    .O(\u2/Mcount_count_cy [16])
  );
  XORCY   \u2/Mcount_count_xor<15>  (
    .CI(\u2/Mcount_count_cy [14]),
    .LI(\u2/Mcount_count_cy<15>_rt_26 ),
    .O(\u2/Result [15])
  );
  MUXCY   \u2/Mcount_count_cy<15>  (
    .CI(\u2/Mcount_count_cy [14]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<15>_rt_26 ),
    .O(\u2/Mcount_count_cy [15])
  );
  XORCY   \u2/Mcount_count_xor<14>  (
    .CI(\u2/Mcount_count_cy [13]),
    .LI(\u2/Mcount_count_cy<14>_rt_24 ),
    .O(\u2/Result [14])
  );
  MUXCY   \u2/Mcount_count_cy<14>  (
    .CI(\u2/Mcount_count_cy [13]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<14>_rt_24 ),
    .O(\u2/Mcount_count_cy [14])
  );
  XORCY   \u2/Mcount_count_xor<13>  (
    .CI(\u2/Mcount_count_cy [12]),
    .LI(\u2/Mcount_count_cy<13>_rt_22 ),
    .O(\u2/Result [13])
  );
  MUXCY   \u2/Mcount_count_cy<13>  (
    .CI(\u2/Mcount_count_cy [12]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<13>_rt_22 ),
    .O(\u2/Mcount_count_cy [13])
  );
  XORCY   \u2/Mcount_count_xor<12>  (
    .CI(\u2/Mcount_count_cy [11]),
    .LI(\u2/Mcount_count_cy<12>_rt_20 ),
    .O(\u2/Result [12])
  );
  MUXCY   \u2/Mcount_count_cy<12>  (
    .CI(\u2/Mcount_count_cy [11]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<12>_rt_20 ),
    .O(\u2/Mcount_count_cy [12])
  );
  XORCY   \u2/Mcount_count_xor<11>  (
    .CI(\u2/Mcount_count_cy [10]),
    .LI(\u2/Mcount_count_cy<11>_rt_18 ),
    .O(\u2/Result [11])
  );
  MUXCY   \u2/Mcount_count_cy<11>  (
    .CI(\u2/Mcount_count_cy [10]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<11>_rt_18 ),
    .O(\u2/Mcount_count_cy [11])
  );
  XORCY   \u2/Mcount_count_xor<10>  (
    .CI(\u2/Mcount_count_cy [9]),
    .LI(\u2/Mcount_count_cy<10>_rt_16 ),
    .O(\u2/Result [10])
  );
  MUXCY   \u2/Mcount_count_cy<10>  (
    .CI(\u2/Mcount_count_cy [9]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<10>_rt_16 ),
    .O(\u2/Mcount_count_cy [10])
  );
  XORCY   \u2/Mcount_count_xor<9>  (
    .CI(\u2/Mcount_count_cy [8]),
    .LI(\u2/Mcount_count_cy<9>_rt_50 ),
    .O(\u2/Result [9])
  );
  MUXCY   \u2/Mcount_count_cy<9>  (
    .CI(\u2/Mcount_count_cy [8]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<9>_rt_50 ),
    .O(\u2/Mcount_count_cy [9])
  );
  XORCY   \u2/Mcount_count_xor<8>  (
    .CI(\u2/Mcount_count_cy [7]),
    .LI(\u2/Mcount_count_cy<8>_rt_48 ),
    .O(\u2/Result [8])
  );
  MUXCY   \u2/Mcount_count_cy<8>  (
    .CI(\u2/Mcount_count_cy [7]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<8>_rt_48 ),
    .O(\u2/Mcount_count_cy [8])
  );
  XORCY   \u2/Mcount_count_xor<7>  (
    .CI(\u2/Mcount_count_cy [6]),
    .LI(\u2/Mcount_count_cy<7>_rt_46 ),
    .O(\u2/Result [7])
  );
  MUXCY   \u2/Mcount_count_cy<7>  (
    .CI(\u2/Mcount_count_cy [6]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<7>_rt_46 ),
    .O(\u2/Mcount_count_cy [7])
  );
  XORCY   \u2/Mcount_count_xor<6>  (
    .CI(\u2/Mcount_count_cy [5]),
    .LI(\u2/Mcount_count_cy<6>_rt_44 ),
    .O(\u2/Result [6])
  );
  MUXCY   \u2/Mcount_count_cy<6>  (
    .CI(\u2/Mcount_count_cy [5]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<6>_rt_44 ),
    .O(\u2/Mcount_count_cy [6])
  );
  XORCY   \u2/Mcount_count_xor<5>  (
    .CI(\u2/Mcount_count_cy [4]),
    .LI(\u2/Mcount_count_cy<5>_rt_42 ),
    .O(\u2/Result [5])
  );
  MUXCY   \u2/Mcount_count_cy<5>  (
    .CI(\u2/Mcount_count_cy [4]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<5>_rt_42 ),
    .O(\u2/Mcount_count_cy [5])
  );
  XORCY   \u2/Mcount_count_xor<4>  (
    .CI(\u2/Mcount_count_cy [3]),
    .LI(\u2/Mcount_count_cy<4>_rt_40 ),
    .O(\u2/Result [4])
  );
  MUXCY   \u2/Mcount_count_cy<4>  (
    .CI(\u2/Mcount_count_cy [3]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<4>_rt_40 ),
    .O(\u2/Mcount_count_cy [4])
  );
  XORCY   \u2/Mcount_count_xor<3>  (
    .CI(\u2/Mcount_count_cy [2]),
    .LI(\u2/Mcount_count_cy<3>_rt_38 ),
    .O(\u2/Result [3])
  );
  MUXCY   \u2/Mcount_count_cy<3>  (
    .CI(\u2/Mcount_count_cy [2]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<3>_rt_38 ),
    .O(\u2/Mcount_count_cy [3])
  );
  XORCY   \u2/Mcount_count_xor<2>  (
    .CI(\u2/Mcount_count_cy [1]),
    .LI(\u2/Mcount_count_cy<2>_rt_36 ),
    .O(\u2/Result [2])
  );
  MUXCY   \u2/Mcount_count_cy<2>  (
    .CI(\u2/Mcount_count_cy [1]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<2>_rt_36 ),
    .O(\u2/Mcount_count_cy [2])
  );
  XORCY   \u2/Mcount_count_xor<1>  (
    .CI(\u2/Mcount_count_cy [0]),
    .LI(\u2/Mcount_count_cy<1>_rt_34 ),
    .O(\u2/Result [1])
  );
  MUXCY   \u2/Mcount_count_cy<1>  (
    .CI(\u2/Mcount_count_cy [0]),
    .DI(N0),
    .S(\u2/Mcount_count_cy<1>_rt_34 ),
    .O(\u2/Mcount_count_cy [1])
  );
  XORCY   \u2/Mcount_count_xor<0>  (
    .CI(N0),
    .LI(\u2/Mcount_count_lut [0]),
    .O(\u2/Result [0])
  );
  MUXCY   \u2/Mcount_count_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\u2/Mcount_count_lut [0]),
    .O(\u2/Mcount_count_cy [0])
  );
  FDC   \u2/count_19  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_19 ),
    .Q(\u2/count [19])
  );
  FDC   \u2/count_18  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_18 ),
    .Q(\u2/count [18])
  );
  FDC   \u2/count_17  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_17 ),
    .Q(\u2/count [17])
  );
  FDC   \u2/count_16  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_16 ),
    .Q(\u2/count [16])
  );
  FDC   \u2/count_15  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_15 ),
    .Q(\u2/count [15])
  );
  FDC   \u2/count_14  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_14 ),
    .Q(\u2/count [14])
  );
  FDC   \u2/count_13  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_13 ),
    .Q(\u2/count [13])
  );
  FDC   \u2/count_12  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_12 ),
    .Q(\u2/count [12])
  );
  FDC   \u2/count_11  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_11 ),
    .Q(\u2/count [11])
  );
  FDC   \u2/count_10  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_10 ),
    .Q(\u2/count [10])
  );
  FDC   \u2/count_9  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_9 ),
    .Q(\u2/count [9])
  );
  FDC   \u2/count_8  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_8 ),
    .Q(\u2/count [8])
  );
  FDC   \u2/count_7  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_7 ),
    .Q(\u2/count [7])
  );
  FDC   \u2/count_6  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_6 ),
    .Q(\u2/count [6])
  );
  FDC   \u2/count_5  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_5 ),
    .Q(\u2/count [5])
  );
  FDC   \u2/count_4  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_4 ),
    .Q(\u2/count [4])
  );
  FDC   \u2/count_3  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_3 ),
    .Q(\u2/count [3])
  );
  FDC   \u2/count_2  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_2 ),
    .Q(\u2/count [2])
  );
  FDC   \u2/count_1  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_1 ),
    .Q(\u2/count [1])
  );
  FDC   \u2/count_0  (
    .C(clk_BUFGP_3),
    .CLR(\u2/rst_inv ),
    .D(\u2/Mcount_count_eqn_0 ),
    .Q(\u2/count [0])
  );
  FDCE   \u2/wei_clk  (
    .C(clk_BUFGP_3),
    .CE(\u2/wei_clk_cmp_eq0000 ),
    .CLR(\u2/rst_inv ),
    .D(\u2/wei_clk_not0001 ),
    .Q(\u2/wei_clk_114 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \u2/wei_clk_cmp_eq0000_wg_lut<0>  (
    .I0(\u2/count [7]),
    .I1(\u2/count [5]),
    .I2(\u2/count [4]),
    .I3(\u2/count [6]),
    .O(\u2/wei_clk_cmp_eq0000_wg_lut [0])
  );
  MUXCY   \u2/wei_clk_cmp_eq0000_wg_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\u2/wei_clk_cmp_eq0000_wg_lut [0]),
    .O(\u2/wei_clk_cmp_eq0000_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \u2/wei_clk_cmp_eq0000_wg_lut<1>  (
    .I0(\u2/count [9]),
    .I1(\u2/count [8]),
    .I2(\u2/count [3]),
    .I3(\u2/count [12]),
    .O(\u2/wei_clk_cmp_eq0000_wg_lut [1])
  );
  MUXCY   \u2/wei_clk_cmp_eq0000_wg_cy<1>  (
    .CI(\u2/wei_clk_cmp_eq0000_wg_cy [0]),
    .DI(N0),
    .S(\u2/wei_clk_cmp_eq0000_wg_lut [1]),
    .O(\u2/wei_clk_cmp_eq0000_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \u2/wei_clk_cmp_eq0000_wg_lut<2>  (
    .I0(\u2/count [10]),
    .I1(\u2/count [13]),
    .I2(\u2/count [11]),
    .I3(\u2/count [1]),
    .O(\u2/wei_clk_cmp_eq0000_wg_lut [2])
  );
  MUXCY   \u2/wei_clk_cmp_eq0000_wg_cy<2>  (
    .CI(\u2/wei_clk_cmp_eq0000_wg_cy [1]),
    .DI(N0),
    .S(\u2/wei_clk_cmp_eq0000_wg_lut [2]),
    .O(\u2/wei_clk_cmp_eq0000_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \u2/wei_clk_cmp_eq0000_wg_lut<3>  (
    .I0(\u2/count [14]),
    .I1(\u2/count [15]),
    .I2(\u2/count [17]),
    .I3(\u2/count [0]),
    .O(\u2/wei_clk_cmp_eq0000_wg_lut [3])
  );
  MUXCY   \u2/wei_clk_cmp_eq0000_wg_cy<3>  (
    .CI(\u2/wei_clk_cmp_eq0000_wg_cy [2]),
    .DI(N0),
    .S(\u2/wei_clk_cmp_eq0000_wg_lut [3]),
    .O(\u2/wei_clk_cmp_eq0000_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \u2/wei_clk_cmp_eq0000_wg_lut<4>  (
    .I0(\u2/count [2]),
    .I1(\u2/count [18]),
    .I2(\u2/count [16]),
    .I3(\u2/count [19]),
    .O(\u2/wei_clk_cmp_eq0000_wg_lut [4])
  );
  MUXCY   \u2/wei_clk_cmp_eq0000_wg_cy<4>  (
    .CI(\u2/wei_clk_cmp_eq0000_wg_cy [3]),
    .DI(N0),
    .S(\u2/wei_clk_cmp_eq0000_wg_lut [4]),
    .O(\u2/wei_clk_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \u3/wei_en_mux0000<1>1  (
    .I0(\u3/wei_en [0]),
    .I1(\u3/wei_en [1]),
    .O(\u3/wei_en_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/wei_en_cmp_eq00001  (
    .I0(\u3/wei_en [0]),
    .I1(\u3/wei_en [1]),
    .O(\u3/wei_en_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u2/Mcount_count_eqn_61  (
    .I0(\u2/wei_clk_cmp_eq0000 ),
    .I1(\u2/Result [6]),
    .O(\u2/Mcount_count_eqn_6 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u2/Mcount_count_eqn_51  (
    .I0(\u2/wei_clk_cmp_eq0000 ),
    .I1(\u2/Result [5]),
    .O(\u2/Mcount_count_eqn_5 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u2/Mcount_count_eqn_41  (
    .I0(\u2/wei_clk_cmp_eq0000 ),
    .I1(\u2/Result [4]),
    .O(\u2/Mcount_count_eqn_4 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u2/Mcount_count_eqn_31  (
    .I0(\u2/Result [3]),
    .I1(\u2/wei_clk_cmp_eq0000 ),
    .O(\u2/Mcount_count_eqn_3 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u2/Mcount_count_eqn_21  (
    .I0(\u2/Result [2]),
    .I1(\u2/wei_clk_cmp_eq0000 ),
    .O(\u2/Mcount_count_eqn_2 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u2/Mcount_count_eqn_110  (
    .I0(\u2/Result [1]),
    .I1(\u2/wei_clk_cmp_eq0000 ),
    .O(\u2/Mcount_count_eqn_1 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u2/Mcount_count_eqn_01  (
    .I0(\u2/Result [0]),
    .I1(\u2/wei_clk_cmp_eq0000 ),
    .O(\u2/Mcount_count_eqn_0 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u2/Mcount_count_eqn_71  (
    .I0(\u2/wei_clk_cmp_eq0000 ),
    .I1(\u2/Result [7]),
    .O(\u2/Mcount_count_eqn_7 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u2/Mcount_count_eqn_81  (
    .I0(\u2/wei_clk_cmp_eq0000 ),
    .I1(\u2/Result [8]),
    .O(\u2/Mcount_count_eqn_8 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u2/Mcount_count_eqn_91  (
    .I0(\u2/wei_clk_cmp_eq0000 ),
    .I1(\u2/Result [9]),
    .O(\u2/Mcount_count_eqn_9 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u2/Mcount_count_eqn_101  (
    .I0(\u2/wei_clk_cmp_eq0000 ),
    .I1(\u2/Result [10]),
    .O(\u2/Mcount_count_eqn_10 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u2/Mcount_count_eqn_111  (
    .I0(\u2/wei_clk_cmp_eq0000 ),
    .I1(\u2/Result [11]),
    .O(\u2/Mcount_count_eqn_11 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u2/Mcount_count_eqn_121  (
    .I0(\u2/wei_clk_cmp_eq0000 ),
    .I1(\u2/Result [12]),
    .O(\u2/Mcount_count_eqn_12 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u2/Mcount_count_eqn_131  (
    .I0(\u2/wei_clk_cmp_eq0000 ),
    .I1(\u2/Result [13]),
    .O(\u2/Mcount_count_eqn_13 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u2/Mcount_count_eqn_141  (
    .I0(\u2/wei_clk_cmp_eq0000 ),
    .I1(\u2/Result [14]),
    .O(\u2/Mcount_count_eqn_14 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u2/Mcount_count_eqn_151  (
    .I0(\u2/wei_clk_cmp_eq0000 ),
    .I1(\u2/Result [15]),
    .O(\u2/Mcount_count_eqn_15 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u2/Mcount_count_eqn_161  (
    .I0(\u2/wei_clk_cmp_eq0000 ),
    .I1(\u2/Result [16]),
    .O(\u2/Mcount_count_eqn_16 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u2/Mcount_count_eqn_171  (
    .I0(\u2/wei_clk_cmp_eq0000 ),
    .I1(\u2/Result [17]),
    .O(\u2/Mcount_count_eqn_17 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u2/Mcount_count_eqn_181  (
    .I0(\u2/wei_clk_cmp_eq0000 ),
    .I1(\u2/Result [18]),
    .O(\u2/Mcount_count_eqn_18 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \u2/Mcount_count_eqn_191  (
    .I0(\u2/wei_clk_cmp_eq0000 ),
    .I1(\u2/Result [19]),
    .O(\u2/Mcount_count_eqn_19 )
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_13)
  );
  OBUF   duan_7_OBUF (
    .I(N1),
    .O(duan[7])
  );
  OBUF   duan_6_OBUF (
    .I(N1),
    .O(duan[6])
  );
  OBUF   duan_5_OBUF (
    .I(N0),
    .O(duan[5])
  );
  OBUF   duan_4_OBUF (
    .I(N0),
    .O(duan[4])
  );
  OBUF   duan_3_OBUF (
    .I(N0),
    .O(duan[3])
  );
  OBUF   duan_2_OBUF (
    .I(N0),
    .O(duan[2])
  );
  OBUF   duan_1_OBUF (
    .I(N0),
    .O(duan[1])
  );
  OBUF   duan_0_OBUF (
    .I(N0),
    .O(duan[0])
  );
  OBUF   wei_en_1_OBUF (
    .I(\u3/wei_en [1]),
    .O(wei_en[1])
  );
  OBUF   wei_en_0_OBUF (
    .I(\u3/wei_en [0]),
    .O(wei_en[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<18>_rt  (
    .I0(\u2/count [18]),
    .O(\u2/Mcount_count_cy<18>_rt_32 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<17>_rt  (
    .I0(\u2/count [17]),
    .O(\u2/Mcount_count_cy<17>_rt_30 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<16>_rt  (
    .I0(\u2/count [16]),
    .O(\u2/Mcount_count_cy<16>_rt_28 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<15>_rt  (
    .I0(\u2/count [15]),
    .O(\u2/Mcount_count_cy<15>_rt_26 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<14>_rt  (
    .I0(\u2/count [14]),
    .O(\u2/Mcount_count_cy<14>_rt_24 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<13>_rt  (
    .I0(\u2/count [13]),
    .O(\u2/Mcount_count_cy<13>_rt_22 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<12>_rt  (
    .I0(\u2/count [12]),
    .O(\u2/Mcount_count_cy<12>_rt_20 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<11>_rt  (
    .I0(\u2/count [11]),
    .O(\u2/Mcount_count_cy<11>_rt_18 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<10>_rt  (
    .I0(\u2/count [10]),
    .O(\u2/Mcount_count_cy<10>_rt_16 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<9>_rt  (
    .I0(\u2/count [9]),
    .O(\u2/Mcount_count_cy<9>_rt_50 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<8>_rt  (
    .I0(\u2/count [8]),
    .O(\u2/Mcount_count_cy<8>_rt_48 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<7>_rt  (
    .I0(\u2/count [7]),
    .O(\u2/Mcount_count_cy<7>_rt_46 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<6>_rt  (
    .I0(\u2/count [6]),
    .O(\u2/Mcount_count_cy<6>_rt_44 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<5>_rt  (
    .I0(\u2/count [5]),
    .O(\u2/Mcount_count_cy<5>_rt_42 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<4>_rt  (
    .I0(\u2/count [4]),
    .O(\u2/Mcount_count_cy<4>_rt_40 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<3>_rt  (
    .I0(\u2/count [3]),
    .O(\u2/Mcount_count_cy<3>_rt_38 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<2>_rt  (
    .I0(\u2/count [2]),
    .O(\u2/Mcount_count_cy<2>_rt_36 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_cy<1>_rt  (
    .I0(\u2/count [1]),
    .O(\u2/Mcount_count_cy<1>_rt_34 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_count_xor<19>_rt  (
    .I0(\u2/count [19]),
    .O(\u2/Mcount_count_xor<19>_rt_72 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_3)
  );
  INV   \u2/Mcount_count_lut<0>_INV_0  (
    .I(\u2/count [0]),
    .O(\u2/Mcount_count_lut [0])
  );
  INV   \u3/wei_en_Acst_inv1_INV_0  (
    .I(rst_IBUF_13),
    .O(\u2/rst_inv )
  );
  INV   \u2/wei_clk_not00011_INV_0  (
    .I(\u2/wei_clk_114 ),
    .O(\u2/wei_clk_not0001 )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

