----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:05:33 05/01/2014 
-- Design Name: 
-- Module Name:    dataMemory - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dataMemory is
    Port ( 
			  clk : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
			  wrEnMem : in  STD_LOGIC;
			  address : in STD_LOGIC_VECTOR (31 downto 0);	
           cRD : in  STD_LOGIC_VECTOR (31 downto 0);
           dataMem : out  STD_LOGIC_VECTOR (31 downto 0));
end dataMemory;

	
architecture Behavioral of dataMemory is


type ram_type is array (0 to 63) of std_logic_vector (31 downto 0);
signal ramMemory : ram_type:=(others => x"00000000");

begin

process(address,reset)
	begin
	--if(rising_edge(clk)) then
			if(reset = '1')then
					dataMem <= (others => '0');
			else
				--if(wrEnMem = '0')then
					dataMem <= ramMemory(conv_integer(address(5 downto 0)));
				--end if;
			end if;
	--end if;
	
end process;

process (clk,address,cRD)
begin
if (falling_edge(clk)) then
	if(reset = '1')then
			ramMemory <= (others => x"00000000");
	elsif(wrEnMem = '1')then
			ramMemory(conv_integer(address(5 downto 0))) <= cRD;
	end if;
end if;
end process;

end Behavioral;

