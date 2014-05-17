

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity ControlUnit is
    Port ( opcode : in  STD_LOGIC_VECTOR (1 downto 0);
           op3  : in  STD_LOGIC_VECTOR (5 downto 0);
			  icc : in std_logic_vector (3 downto 0);
			  cond: in std_logic_vector (3 downto 0);
           salida : out  STD_LOGIC_VECTOR (5 downto 0);
			  PCSourceOut: out std_logic_vector (1 downto 0);
			  WRENRF: out std_logic;
			  WRENDTMEM: out std_logic;
			  DATATORF: out std_logic_vector(1 downto 0);
			  SelResource: out std_logic
			  );
end ControlUnit;

architecture Behavioral of ControlUnit is

begin
	process(opcode,op3,cond,icc)
		begin
			if(opcode = "10") then
				salida <= op3;
			else
				salida <= "000000";
			end if;
			
			--determina el selector para la entrada al RF
			if (opcode="01") then
				SelResource <= '1'; 
			else 
				SelResource <= '0';
			end if;
			
			
			
			--determina las acciones del load y store
			if (opcode = "11") then
				if op3(2) = '0' then
					DATATORF <= "00";
				else
					DATATORF <= "11";
				end if;
				WRENDTMEM <= op3(2); -- creo que cuando el op3(2) esta en 0 es un load, sino es un store
				WRENRF <= not op3(2); -- lo activo en los load
				
			elsif opcode = "00"then
				WRENRF <= '0';
				WRENDTMEM <= '0';
			else
			  DATATORF <= "11"; -- selector del multiplexor entre el dataMem o la salida de la ALU, debe ser el resultado de la ALU
			  WRENRF <= '1';
			  WRENDTMEM <= '0';
			  
			end if;
			
			
			
			
			--determina el PCSource para el multiplexor
			if (opcode = "01") then
				PCSourceOut <= "01";
			else
				if (opcode = "00") then
					--si es un branch
					if (cond="1000") 
					or (cond="1001" and not icc(2)='1')
					or (cond="0001" and icc(2)='1')
					or (cond="1010" and not (icc(2)='1' or (icc(3)='1' xor icc(1)='1')))
					or (cond="0010" and (icc(2)='1' or (icc(3)='1' xor icc(1)='1')))
					or (cond="1011" and not (icc(3)='1' xor icc(1)='1'))
					or (cond="0011" and (icc(3)='1' xor icc(1)='1'))
					or (cond="1100" and not (icc(0)='1' or icc(2)='1'))
					or (cond="0100" and (icc(0)='1' or icc(2)='1'))
					or (cond="1101" and not icc(0)='1')
					or (cond="0101" and icc(0)='1')
					or (cond="1110" and not icc(3)='1')
					or (cond="0110" and icc(3)='1')
					or (cond="1111" and not icc(1)='1')
					or (cond="0111" and icc(1)='1')
					then
						PCSourceOut <= "10";
					else
						PCSourceOut <= "11";
					end if;
				else
					if(opcode="10" and op3="111000") then
						PCSourceOut <= "00";
					else
						PCSourceOut <= "11";
					end if;
				end if;
			end if;
			
			
end process;	

end Behavioral;

