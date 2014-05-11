
-- VHDL Instantiation Created from source file dataMemory.vhd -- 10:23:38 05/11/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT dataMemory
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		wrEnMem : IN std_logic;
		address : IN std_logic_vector(31 downto 0);
		cRD : IN std_logic_vector(31 downto 0);          
		dataMem : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_dataMemory: dataMemory PORT MAP(
		clk => ,
		reset => ,
		wrEnMem => ,
		address => ,
		cRD => ,
		dataMem => 
	);


