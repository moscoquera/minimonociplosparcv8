library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ProgramCounter is
    Port ( entrada : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end ProgramCounter;

architecture Behavioral of ProgramCounter is
begin

process (clk,rst,entrada)
begin
		if (rst = '1')then
			salida <=  "00000000000000000000000000000000";
		else if (rising_edge(clk))then
				salida <=	entrada;
			end if;
		end if;
end process;

end Behavioral;

