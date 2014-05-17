library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity RegisterFile is
    Port ( RSource1 : in  STD_LOGIC_VECTOR (5 downto 0);
           RSource2 : in  STD_LOGIC_VECTOR (5 downto 0);
           RDestino : in  STD_LOGIC_VECTOR (5 downto 0);
           ValEntradaDestino : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
           valRSource1 : out  STD_LOGIC_VECTOR (31 downto 0);
           valRSource2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  valRDest : out  STD_LOGIC_VECTOR (31 downto 0);
			  WREnable: in std_logic;
			  clk: in std_logic
			  );
end RegisterFile;

architecture Behavioral of RegisterFile is
	
	type tipoRegistro is array (0 to 39) of std_logic_vector (31 downto 0);
	signal registro : tipoRegistro :=((others=> (others=>'0')));
	
begin

process (RDestino,rst, RSource1, RSource2)
begin
		if rst = '1' then
				valRSource1 <= "00000000000000000000000000000000";
				valRSource2 <= "00000000000000000000000000000000";
				valRDest <= "00000000000000000000000000000000";
		else
					valRSource1 <= registro(conv_integer(RSource1));
					valRSource2 <= registro(conv_integer(RSource2));
					valRDest <= registro(conv_integer(RDestino));
		end if;
end process;
	
process (clk,RDestino,ValEntradaDestino)
begin
	if (falling_edge(clk) and RDestino /= "00000" and WREnable='1') then
			registro(0) <= "00000000000000000000000000000000";
			registro(conv_integer(RDestino)) <= ValEntradaDestino;
	end if;
end process;	
	
end Behavioral;

