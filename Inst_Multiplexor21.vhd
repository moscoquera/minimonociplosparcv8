
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Inst_Multiplexor21 is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Selector : in  STD_LOGIC;
           Salida : out  STD_LOGIC_VECTOR (31 downto 0));
end Inst_Multiplexor21;

architecture Behavioral of Inst_Multiplexor21 is

begin
	
	Salida <= B when Selector='1' else A;

end Behavioral;

