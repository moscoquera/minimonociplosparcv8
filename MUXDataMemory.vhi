
-- VHDL Instantiation Created from source file MUXDataMemory.vhd -- 12:02:34 05/11/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MUXDataMemory
	PORT(
		DataMemory : IN std_logic_vector(31 downto 0);
		AluResult : IN std_logic_vector(31 downto 0);
		PC : IN std_logic_vector(31 downto 0);
		DataToRFSource : IN std_logic_vector(1 downto 0);          
		RFData : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_MUXDataMemory: MUXDataMemory PORT MAP(
		DataMemory => ,
		AluResult => ,
		PC => ,
		DataToRFSource => ,
		RFData => 
	);


