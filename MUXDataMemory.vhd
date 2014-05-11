----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:23:11 05/01/2014 
-- Design Name: 
-- Module Name:    MUXDataMemory - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUXDataMemory is
    Port ( DataMemory : in  STD_LOGIC_VECTOR (31 downto 0);
           AluResult : in  STD_LOGIC_VECTOR (31 downto 0);
           PC : in  STD_LOGIC_VECTOR (31 downto 0);
           DataToRFSource : in  STD_LOGIC_VECTOR (1 downto 0);
           RFData : out  STD_LOGIC_VECTOR (31 downto 0));
end MUXDataMemory;

architecture Behavioral of MUXDataMemory is

begin

process(DataMemory, AluResult, DataToRFSource)
begin

	case DataToRFSource is
			when "00" =>
				RFData <= DataMemory;
			when "10" =>
				RFData <= PC;
			when others =>
				RFData <= AluResult;
		end case;
end process;


end Behavioral;

