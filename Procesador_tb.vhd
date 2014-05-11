
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Procesador_tb IS
END Procesador_tb;
 
ARCHITECTURE behavior OF Procesador_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Procesador

	PORT(
		rst : IN std_logic;
		clk : IN std_logic;          
		ALUout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

   
   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

	signal ALUout: std_logic_vector(31 downto 0);



   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Procesador PORT MAP (
          rst => rst,

          clk => clk,
			 ALUout => ALUout

        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      rst <= '1';
      wait for 10 ns;	
		rst <= '0'; 
      wait;
   end process;

END;
