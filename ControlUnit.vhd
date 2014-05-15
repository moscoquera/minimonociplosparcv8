

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity ControlUnit is
    Port ( opcode : in  STD_LOGIC_VECTOR (1 downto 0);
           op3  : in  STD_LOGIC_VECTOR (5 downto 0);
			  icc : in std_logic_vector (3 downto 0);
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
	process(opcode,op3)
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
			
			
			--determina el PCSource para el multiplexor
			if (opcode = "01") then
				PCSourceOut <= "01";
			else
				if (opcode = "00") then
					PCSourceOut <= "10";
				else
					if(opcode="10" and op3="111000") then
						PCSourceOut <= "00";
					else
						PCSourceOut <= "11";
					end if;
				end if;
			end if;
			
			--determina las acciones del load y store
			if (opcode = "11") then
				WRENDTMEM <= op3(2); -- creo que cuando el op3(2) esta en 0 es un load, sino es un store
				WRENRF <= not op3(2); -- lo activo en los load
				if op3(2) = '0' then
					DATATORF <= "00";
				else
					DATATORF <= "11";
				end if;
			else
			  WRENRF <= '1';
			  WRENDTMEM <= '0';
			  DATATORF <= "11"; -- selector del multiplexor entre el dataMem o la salida de la ALU, debe ser el resultado de la ALU
			end if;
end process;	

end Behavioral;

