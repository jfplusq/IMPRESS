-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (lin64) Build 2018833 Wed Oct  4 19:58:07 MDT 2017
-- Date        : Mon Mar 11 10:41:06 2019
-- Host        : Rafa-XPS running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /media/storage/Work/Vivado/Proyectos/mis_proyectos/IMPRESS_test/example/example1/sources/example1_static_system/example1_static_system.srcs/sources_1/bd/design_1/ip/design_1_black_box_operation_0_0/design_1_black_box_operation_0_0_stub.vhdl
-- Design      : design_1_black_box_operation_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_black_box_operation_0_0 is
  Port ( 
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DataOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );

end design_1_black_box_operation_0_0;

architecture stub of design_1_black_box_operation_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Data1[31:0],DataOut[31:0],Data2[31:0],clk,reset";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "black_box_operation,Vivado 2017.3";
begin
end;
