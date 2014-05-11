library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PSR is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           nzvc : in  STD_LOGIC_VECTOR (3 downto 0);
			  ncwp: in STD_LOGIC_VECTOR (4 downto 0);
           cwp: out STD_LOGIC_VECTOR (4 downto 0);
			  icc: out STD_LOGIC_VECTOR (3 downto 0);
           carry : out  STD_LOGIC);
end PSR;

architecture Behavioral of PSR is

signal PSRegister: STD_LOGIC_VECTOR (31 DOWNTO 0):= (others=>'0');

begin
	

	process(clk, rst, nzvc)
	begin
		if(rst = '1') then
				carry <= '0';
				PSRegister<="00000000000000000000000000000000";

				cwp<="00000";


			else
				if(rising_edge(clk))then
				PSRegister(23 downto 20) <= nzvc;
				carry <= PSRegister(20);
				cwp<=ncwp;
				icc <= nzvc;

				end if;

		end if;

	end process;

end Behavioral;