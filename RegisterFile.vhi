
-- VHDL Instantiation Created from source file RegisterFile.vhd -- 11:12:09 05/11/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT RegisterFile
	PORT(
		RSource1 : IN std_logic_vector(5 downto 0);
		RSource2 : IN std_logic_vector(5 downto 0);
		RDestino : IN std_logic_vector(5 downto 0);
		ValEntradaDestino : IN std_logic_vector(31 downto 0);
		rst : IN std_logic;          
		valRSource1 : OUT std_logic_vector(31 downto 0);
		valRSource2 : OUT std_logic_vector(31 downto 0);
		valRDest : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_RegisterFile: RegisterFile PORT MAP(
		RSource1 => ,
		RSource2 => ,
		RDestino => ,
		ValEntradaDestino => ,
		rst => ,
		valRSource1 => ,
		valRSource2 => ,
		valRDest => 
	);


