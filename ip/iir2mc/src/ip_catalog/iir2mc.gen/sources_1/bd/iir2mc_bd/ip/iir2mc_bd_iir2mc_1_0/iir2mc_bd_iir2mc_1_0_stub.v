// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon May  6 16:22:18 2024
// Host        : ub2020p4p3vm running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /xilinxworks/sysgen/notch_panda/netlist/ip/iir2mc/src/ip_catalog/iir2mc.gen/sources_1/bd/iir2mc_bd/ip/iir2mc_bd_iir2mc_1_0/iir2mc_bd_iir2mc_1_0_stub.v
// Design      : iir2mc_bd_iir2mc_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030sbg485-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "iir2mc,Vivado 2023.2" *)
module iir2mc_bd_iir2mc_1_0(a0, a1, a2, b1, b2, ce, in_x0, res, clk, clr, ce_output, 
  out_x0)
/* synthesis syn_black_box black_box_pad_pin="a0[31:0],a1[31:0],a2[31:0],b1[31:0],b2[31:0],ce[0:0],in_x0[31:0],res[0:0],clr,ce_output[0:0],out_x0[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input [31:0]a0;
  input [31:0]a1;
  input [31:0]a2;
  input [31:0]b1;
  input [31:0]b2;
  input [0:0]ce;
  input [31:0]in_x0;
  input [0:0]res;
  input clk /* synthesis syn_isclock = 1 */;
  input clr;
  output [0:0]ce_output;
  output [31:0]out_x0;
endmodule
