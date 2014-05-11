----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:28:42 05/08/2014 
-- Design Name: 
-- Module Name:    muxPcSource - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity muxPcSource is
    Port ( PCDisp30 : in  STD_LOGIC_VECTOR (31 downto 0);
           PCDisp22 : in  STD_LOGIC_VECTOR (31 downto 0);
           PC : in  STD_LOGIC_VECTOR (31 downto 0);
           PCAddress : in  STD_LOGIC_VECTOR (31 downto 0);
           PCSource : in  STD_LOGIC_VECTOR (1 downto 0);
           PCAddressOut : out  STD_LOGIC_VECTOR (31 downto 0));
end muxPcSource;

architecture Behavioral of muxPcSource is

signal tmpSUMDisp30: std_logic_vector (31 downto 0);
signal tmpSUMDisp22: std_logic_vector (31 downto 0);
begin

process(PCDisp30, PCDisp22, PC, PCAddress, PCSource)
begin

	tmpSUMDisp30 <= (PCDisp30+PC);
	tmpSUMDisp22 <= (PCDisp22+PC);
	
	case PCSource is
			when "00" =>
				PCAddressOut <= PCAddress;
			when "01" =>
				PCAddressOut <= tmpSUMDisp30;
			when "10" =>
				PCAddressOut <= tmpSUMDisp22;
			when "11" =>
				PCAddressOut <= PC;
			when others =>
				PCAddressOut <= PC;
		end case;

	
end process;


end Behavioral;

