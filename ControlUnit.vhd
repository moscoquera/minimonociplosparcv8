
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ControlUnit is
    Port ( opcode : in  STD_LOGIC_VECTOR (1 downto 0);
           op3  : in  STD_LOGIC_VECTOR (5 downto 0);
           salida : out  STD_LOGIC_VECTOR (5 downto 0));
end ControlUnit;

architecture Behavioral of ControlUnit is

begin
	process(opcode,op3)
		begin
			if(opcode = "10") then
				salida <= op3;
			else
				salida <= "111111";
			end if;
end process;	

end Behavioral;

