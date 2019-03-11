// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (lin64) Build 2018833 Wed Oct  4 19:58:07 MDT 2017
// Date        : Mon Mar 11 10:41:28 2019
// Host        : Rafa-XPS running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /media/storage/Work/Vivado/Proyectos/mis_proyectos/IMPRESS_test/example/example1/sources/example1_static_system/example1_static_system.srcs/sources_1/bd/design_1/ip/design_1_vio_0_0/design_1_vio_0_0_stub.v
// Design      : design_1_vio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2017.3" *)
module design_1_vio_0_0(clk, probe_in0, probe_out0, probe_out1)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[31:0],probe_out0[31:0],probe_out1[31:0]" */;
  input clk;
  input [31:0]probe_in0;
  output [31:0]probe_out0;
  output [31:0]probe_out1;
endmodule
