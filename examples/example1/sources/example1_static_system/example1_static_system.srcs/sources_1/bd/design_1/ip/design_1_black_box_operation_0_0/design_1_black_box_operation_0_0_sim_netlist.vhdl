-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (lin64) Build 2018833 Wed Oct  4 19:58:07 MDT 2017
-- Date        : Mon Mar 11 10:41:06 2019
-- Host        : Rafa-XPS running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/storage/Work/Vivado/Proyectos/mis_proyectos/IMPRESS_test/example/example1/sources/example1_static_system/example1_static_system.srcs/sources_1/bd/design_1/ip/design_1_black_box_operation_0_0/design_1_black_box_operation_0_0_sim_netlist.vhdl
-- Design      : design_1_black_box_operation_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_black_box_operation_0_0 is
  port (
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DataOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_black_box_operation_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_black_box_operation_0_0 : entity is "design_1_black_box_operation_0_0,black_box_operation,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_black_box_operation_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_black_box_operation_0_0 : entity is "black_box_operation,Vivado 2017.3";
end design_1_black_box_operation_0_0;

architecture STRUCTURE of design_1_black_box_operation_0_0 is
  component design_1_black_box_operation_0_0_black_box_operation is
  port (
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DataOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component design_1_black_box_operation_0_0_black_box_operation;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW";
begin
U0: component design_1_black_box_operation_0_0_black_box_operation
     port map (
      Data1(31 downto 0) => Data1(31 downto 0),
      Data2(31 downto 0) => Data2(31 downto 0),
      DataOut(31 downto 0) => DataOut(31 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
