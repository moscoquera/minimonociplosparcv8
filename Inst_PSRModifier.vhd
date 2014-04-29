
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Inst_PSRModifier is
	port (
		nzvc : inout std_logic_vector(3 downto 0);
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
			nzvc <= "0000";
		else
		--si logicas
			if ((ALUOP = "010001") or (ALUOP = "010101") or(ALUOP = "010010") or(ALUOP = "010110") or(ALUOP = "010011") or(ALUOP = "010111")) then
				nzvc(3) <= RESULTALU(31);
				if(RESULTALU = "00000000000000000000000000000000") then
					nzvc(2) <= '1';
				else
					nzvc(2) <='0';
				end if;
				nzvc(1) <='0';
				nzvc(0) <= '0';
			elsif (ALUOP = "010000") or (ALUOP = "011000") then --si addcc o addxcc
				nzvc(3) <= RESULTALU(31);
				if(RESULTALU = "00000000000000000000000000000000") then
					nzvc(2) <= '1';
				else
					nzvc(2) <='0';
				end if;
				nzvc(1) <= (VALALU1(31) and VALALU2(31) and (not RESULTALU(31))) or ((not VALALU1(31)) and (not VALALU2(31)) and RESULTALU(31));
				nzvc(0) <= (VALALU1(31) and VALALU2(31)) or ((not RESULTALU(31)) and (VALALU1(31) or VALALU2(31)));
			
			elsif (ALUOP = "010100" or ALUOP = "011100") then --SUBcc o SUBXcc
				nzvc(3) <= RESULTALU(31);
				if(RESULTALU = "00000000000000000000000000000000") then
					nzvc(2) <= '1';
				else
					nzvc(2) <='0';
				end if;
				
				nzvc(1) <= (VALALU1(31) and (not VALALU2(31)) and (not RESULTALU(31))) or ((not VALALU1(31)) and VALALU2(31) and RESULTALU(31));
				nzvc(0) <= ((not VALALU1(31)) and VALALU2(31)) or(RESULTALU(31) and ((not VALALU1(31)) or VALALU2(31)));
			end if;
		end if;
	end process;

end Behavioral;

