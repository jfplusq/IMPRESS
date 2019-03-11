// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (lin64) Build 2018833 Wed Oct  4 19:58:07 MDT 2017
// Date        : Mon Mar 11 10:41:05 2019
// Host        : Rafa-XPS running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_black_box_operation_0_0_stub.v
// Design      : design_1_black_box_operation_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "black_box_operation,Vivado 2017.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(Data1, DataOut, Data2, clk, reset)
/* synthesis syn_black_box black_box_pad_pin="Data1[31:0],DataOut[31:0],Data2[31:0],clk,reset" */;
  input [31:0]Data1;
  output [31:0]DataOut;
  input [31:0]Data2;
  input clk;
  input reset;
endmodule
