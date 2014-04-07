
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Inst_PSRModifier is
	port (
		PSR : inout std_logic_vector(31 downto 0);
		reset: in std_logic;
		ALUOP : in std_logic_vector(5 downto 0);
		VALALU1 : in std_logic_vector(31 downto 0);
		VALALU2 : in std_logic_vector(31 downto 0);
		RESULTALU : in std_logic_vector(31 downto 0)
	);

end Inst_PSRModifier;

architecture Behavioral of Inst_PSRModifier is

signal temp_V: std_logic;

begin

	process(reset,ALUOP,VALALU1,VALALU2,VALALU2,RESULTALU)
	begin
		if reset = '1' then
			PSR <= "00000000000000000000000000000000";
		else
		--si logicas
			if ((ALUOP = "010001") or (ALUOP = "010101") or(ALUOP = "010010") or(ALUOP = "010110") or(ALUOP = "010011") or(ALUOP = "010111")) then
				PSR(23) <= RESULTALU(31);
				if(RESULTALU = "00000000000000000000000000000000") then
					PSR(22) <= '1';
				else
					PSR(22) <='0';
				end if;
				PSR(21) <='0';
				PSR(20) <= '0';
			elsif (ALUOP = "010000") or (ALUOP = "011000") then --si addcc o addxcc
				PSR(23) <= RESULTALU(31);
				if(RESULTALU = "00000000000000000000000000000000") then
					PSR(22) <= '1';
				else
					PSR(22) <='0';
				end if;
				PSR(21) <= (VALALU1(31) and VALALU2(31) and (not RESULTALU(31))) or ((not VALALU1(31)) and (not VALALU2(31)) and RESULTALU(31));
				PSR(20) <= (VALALU1(31) and VALALU2(31)) or ((not RESULTALU(31)) and (VALALU1(31) or VALALU2(31)));
			
			elsif (ALUOP = "100000" or ALUOP = "100010") then --TADDcc o TADDccTV terminarlo
				if (VALALU1(31) and VALALU2(31) and (not RESULTALU(31))) = '1' or 
							((VALALU1(1 downto 0) /= "00") or (VALALU2(1 downto 0) /= "00")) or
							((not VALALU1(31)) and (not VALALU2(31)) and RESULTALU(31)) = '1' then
							temp_V <= '1';
				else
							temp_V <= '0';
				end if;
			
				if ((ALUOP = "100010") and (temp_V = '1')) then
					--TODO
				else
					PSR(23) <= RESULTALU(31);
					if(RESULTALU = "00000000000000000000000000000000") then
						PSR(22) <= '1';
					else
						PSR(22) <='0';
					end if;
					PSR(21) <= temp_V;
					PSR(20) <= (VALALU1(31) and VALALU2(31)) or ((not RESULTALU(31)) and (VALALU1(31) or VALALU2(31)));
				end if;
				
			elsif (ALUOP = "010100" or ALUOP = "011100") then --SUBcc o SUBXcc
				PSR(23) <= RESULTALU(31);
				if(RESULTALU = "00000000000000000000000000000000") then
					PSR(22) <= '1';
				else
					PSR(22) <='0';
				end if;
				
				PSR(21) <= (VALALU1(31) and (not VALALU2(31)) and (not RESULTALU(31))) or ((not VALALU1(31)) and VALALU2(31) and RESULTALU(31));
				PSR(20) <= ((not VALALU1(31)) and VALALU2(31)) or(RESULTALU(31) and ((not VALALU1(31)) or VALALU2(31)));
			end if;
		end if;
	end process;

end Behavioral;

