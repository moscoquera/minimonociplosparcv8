----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:02:35 05/08/2014 
-- Design Name: 
-- Module Name:    muxWindowsManager - Behavioral 
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

entity muxWindowsManager is
    Port ( nrd : in  STD_LOGIC_VECTOR (5 downto 0);
           registro15 : in  STD_LOGIC_VECTOR (5 downto 0);
           resource : in  STD_LOGIC;
           destino : out  STD_LOGIC_VECTOR (5 downto 0));
end muxWindowsManager;

architecture Behavioral of muxWindowsManager is

begin

process(nrd, registro15, resource)
begin

	if(resource = '0')then
				destino <= nrd;
			else
				if(resource = '1')then
					destino <= registro15;
				end if;
			end if;

end process;

end Behavioral;

