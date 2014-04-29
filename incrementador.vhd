library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;


entity incrementador is
    Port ( valorActual : in  STD_LOGIC_VECTOR (31 downto 0);
           salida : out  STD_LOGIC_VECTOR (31 downto 0));
end incrementador;

architecture Behavioral of incrementador is

constant incremento : std_logic_vector (31 downto 0) := "00000000000000000000000000000001"; -- 1 

begin
	salida <= valorActual+ incremento;

end Behavioral;

