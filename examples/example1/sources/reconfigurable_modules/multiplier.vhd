----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 09.04.2017 18:57:30
-- Design Name:
-- Module Name: top_Multiplier - Behavioral
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
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

-- use Work.Attr_pkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;



entity multiplier is
    Port ( Data1 : in STD_LOGIC_VECTOR (31 downto 0);
           Data2 : in STD_LOGIC_VECTOR (31 downto 0);
           clk      : in std_logic;
           reset    : in std_logic;
           DataOut  : out STD_LOGIC_VECTOR (31 downto 0));
end multiplier;

architecture Behavioral of multiplier is
    signal DataOut_temp : std_logic_vector(63 downto 0);
begin

    -- Multiplication
    DataOut_temp <= Data1*Data2;

    process(clk,reset)
    begin
        if(reset = '0') then
            DataOut <= (others => '0');
        elsif (clk'event and clk ='1') then
            DataOut <= DataOut_temp(31 downto 0);
        end if;
    end process;

end Behavioral;
