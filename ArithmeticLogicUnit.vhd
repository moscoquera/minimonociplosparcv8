
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity ArithmeticLogicUnit is
    Port ( Val1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Val2 : in  STD_LOGIC_VECTOR (31 downto 0);
			  Carry: in STD_LOGIC;
           OP : in  STD_LOGIC_VECTOR (5 downto 0);
           Salida : out  STD_LOGIC_VECTOR (31 downto 0));
end ArithmeticLogicUnit;

architecture Behavioral of ArithmeticLogicUnit is

begin
	
	
--process (OP,Val1,Val2)
--			begin
			Salida <=	Val1 and Val2 when (OP = "000001" or OP = "010001") else --and y andcc
							Val1 and not Val2 when (OP = "000101" or OP = "010101") else -- andn y andncc
							Val1 or Val2 when (OP = "000010" or OP = "010010") else -- or y orcc
							Val1 or not Val2 when (OP = "000110" or OP = "010110") else --orn y orncc
							Val1 xor Val2 when (OP = "000011" or OP = "010011") else -- xor y xorcc
							Val1 xor not Val2 when (OP = "000111" or OP = "010111") else -- xorn y xorncc
							Val1 + Val2 when (OP = "000000" or OP = "010000" or OP="111100" or OP="111101" or OP="111000") else -- add o addcc
							Val1 + Val2 + ("0000000000000000000000000000000" & Carry) when (OP = "001000" or OP = "011000") else -- addx addxcc
							Val1 - Val2 when (OP = "000100" or OP = "010100") else -- sub o subcc
							Val1 - Val2 - ("0000000000000000000000000000000" & Carry) when (OP = "001100" or OP = "011100") else
							"00000000000000000000000000000000"
							; -- subx o subxcc
--end process;
			

end Behavioral;

