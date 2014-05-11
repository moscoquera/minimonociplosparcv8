
-- VHDL Instantiation Created from source file muxPcSource.vhd -- 11:04:45 05/11/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT muxPcSource
	PORT(
		PCDisp30 : IN std_logic_vector(31 downto 0);
		PCDisp22 : IN std_logic_vector(31 downto 0);
		PC : IN std_logic_vector(31 downto 0);
		PCAddress : IN std_logic_vector(31 downto 0);
		PCSource : IN std_logic_vector(1 downto 0);          
		PCAddressOut : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_muxPcSource: muxPcSource PORT MAP(
		PCDisp30 => ,
		PCDisp22 => ,
		PC => ,
		PCAddress => ,
		PCSource => ,
		PCAddressOut => 
	);


