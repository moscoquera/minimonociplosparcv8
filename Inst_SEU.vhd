
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Inst_SEU is
    Port ( Entrada : in  STD_LOGIC_VECTOR (12 downto 0);
           Salida : out  STD_LOGIC_VECTOR (31 downto 0));
end Inst_SEU;

architecture Behavioral of Inst_SEU is

begin
Salida(31 downto 13) <= "0000000000000000000" when (Entrada(12)='0') else "1111111111111111111";
Salida(12 downto 0) <= Entrada;

end Behavioral;

