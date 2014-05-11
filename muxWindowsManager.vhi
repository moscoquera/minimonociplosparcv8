
-- VHDL Instantiation Created from source file muxWindowsManager.vhd -- 11:47:16 05/11/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT muxWindowsManager
	PORT(
		nrd : IN std_logic_vector(5 downto 0);
		registro15 : IN std_logic_vector(5 downto 0);
		resource : IN std_logic;          
		destino : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_muxWindowsManager: muxWindowsManager PORT MAP(
		nrd => ,
		registro15 => ,
		resource => ,
		destino => 
	);


