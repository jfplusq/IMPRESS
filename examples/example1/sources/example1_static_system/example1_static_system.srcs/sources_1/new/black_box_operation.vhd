----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2019 10:36:26 AM
-- Design Name: 
-- Module Name: black_box_operation - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity black_box_operation is
    Port (  Data1 : in STD_LOGIC_VECTOR (31 downto 0);
        DataOut : out STD_LOGIC_VECTOR (31 downto 0);
        Data2 : in STD_LOGIC_VECTOR (31 downto 0);
        clk : in STD_LOGIC;
        reset : in STD_LOGIC);
end black_box_operation;

architecture Behavioral of black_box_operation is

begin


end Behavioral;
