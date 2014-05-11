
-- VHDL Instantiation Created from source file ControlUnit.vhd -- 12:09:41 05/11/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ControlUnit
	PORT(
		opcode : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);
		icc : IN std_logic_vector(3 downto 0);          
		salida : OUT std_logic_vector(5 downto 0);
		PCSourceOut : OUT std_logic_vector(1 downto 0);
		WRENRF : OUT std_logic;
		WRENDTMEM : OUT std_logic;
		DATATORF : OUT std_logic_vector(1 downto 0);
		SelResource : OUT std_logic
		);
	END COMPONENT;

	Inst_ControlUnit: ControlUnit PORT MAP(
		opcode => ,
		op3 => ,
		icc => ,
		salida => ,
		PCSourceOut => ,
		WRENRF => ,
		WRENDTMEM => ,
		DATATORF => ,
		SelResource => 
	);


