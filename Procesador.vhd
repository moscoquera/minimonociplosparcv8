
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Procesador is
    Port ( rst : in  STD_LOGIC;

           clk : in  STD_LOGIC;
			  ALUout: out STD_LOGIC_VECTOR(31 downto 0)
			  );

end Procesador;

architecture Behavioral of Procesador is
	
	
	signal salidaNPC : std_logic_vector(31 downto 0);
	signal salidaIncrementador : std_logic_vector(31 downto 0);
	signal salidaPC : std_logic_vector(31 downto 0);
	signal salidaIM : std_logic_vector(31 downto 0);
	signal salidaRF1 : std_logic_vector(31 downto 0);
	signal salidaRF2 : std_logic_vector(31 downto 0);
	signal CUSalOP : std_logic_vector(5 downto 0);
	signal resultadoAlu : std_logic_vector(31 downto 0);
	signal salidaSEU: std_logic_vector (31 downto 0);
	signal salidamultSEU_RF: std_logic_vector (31 downto 0);
	signal PSRnzvc: std_logic_vector(3 downto 0);
	signal PSRCarryOut: std_logic;
	signal PSRcwp: std_logic_vector(4 downto 0);
	signal PSRncwp: std_logic_vector(4 downto 0);


	signal salidaSEU22disp22: std_logic_vector(31 downto 0);
	signal salidaSEU30disp30: std_logic_vector(31 downto 0);

	signal muxPCSourcePCAddressOut: std_logic_vector(31 downto 0);
	signal muxPCSourcePCSource: std_logic_vector(1 downto 0);
	
	signal SalidaDataMemory: std_logic_vector (31 downto 0);
	signal SelectorDataMux: std_logic_vector (1 downto 0);
	signal SelectorWRENRF: std_logic;
	signal SelectorWRENDTMEM: std_logic;
	signal SalidaDataMUX: std_logic_vector (31 downto 0);
	signal valorRFRdest: std_logic_vector (31 downto 0);
	
	signal SelectorCURes: std_logic;
	signal PSRicc : std_logic_vector (3 downto 0);
	signal SalidaMUXWM: std_logic_vector (5 downto 0);
	signal WMn15: std_logic_vector (5 downto 0);
	signal WMnrs1: std_logic_vector(5 downto 0);
	signal WMnrs2: std_logic_vector(5 downto 0);
	signal WMnrd: std_logic_vector(5 downto 0);
	
	COMPONENT ArithmeticLogicUnit
	PORT(
		Val1 : IN std_logic_vector(31 downto 0);
		Val2 : IN std_logic_vector(31 downto 0);
		Carry : IN std_logic;
		OP : IN std_logic_vector(5 downto 0);          
		Salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
		COMPONENT InstructionMemory
	PORT(
		direccion : IN std_logic_vector(31 downto 0);
		rst : IN std_logic;          
		instruccion : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT incrementador
	PORT(
		valorActual : IN std_logic_vector(31 downto 0);          
		salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
		COMPONENT ProgramCounter
	PORT(
		entrada : IN std_logic_vector(31 downto 0);
		clk : IN std_logic;
		rst : IN std_logic;          
		salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
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
	
	COMPONENT Inst_SEU
	PORT(
		Entrada : IN std_logic_vector(12 downto 0);          
		Salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Inst_Multiplexor21
	PORT(
		A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);
		Selector : IN std_logic;          
		Salida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
		COMPONENT Inst_PSRModifier
	PORT(
		ALUOP : IN std_logic_vector(5 downto 0);
		reset: in std_logic;
		VALALU1 : IN std_logic_vector(31 downto 0);
		VALALU2 : IN std_logic_vector(31 downto 0);
		RESULTALU : IN std_logic_vector(31 downto 0);       
		nzvc : INOUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

COMPONENT PSR
	PORT(
		CLK : IN std_logic;
		RST : IN std_logic;
		nzvc : IN std_logic_vector(3 downto 0);
		ncwp : IN std_logic_vector(4 downto 0);          
		cwp : OUT std_logic_vector(4 downto 0);
		icc : OUT std_logic_vector(3 downto 0);
		carry : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT windowManager
	PORT(
		rs1 : IN std_logic_vector(4 downto 0);
		rs2 : IN std_logic_vector(4 downto 0);
		rd : IN std_logic_vector(4 downto 0);
		op : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);
		cwp : IN std_logic_vector(4 downto 0);          
		nrs1 : OUT std_logic_vector(5 downto 0);
		nrs2 : OUT std_logic_vector(5 downto 0);
		nrd : OUT std_logic_vector(5 downto 0);
		ncwp : OUT std_logic_vector(4 downto 0);
		n15 : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;


	COMPONENT SEU22
	PORT(
		entrada : IN std_logic_vector(21 downto 0);
		salida : out std_logic_vector(31 downto 0)       
		);
	END COMPONENT;
	
	
	COMPONENT SEU30
	PORT(
		entrada : IN std_logic_vector(29 downto 0);
		salida : out std_logic_vector(31 downto 0)      
		);
	END COMPONENT;
	
	
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
	
	COMPONENT MUXDataMemory
	PORT(
		DataMemory : IN std_logic_vector(31 downto 0);
		AluResult : IN std_logic_vector(31 downto 0);
		PC : IN std_logic_vector(31 downto 0);
		DataToRFSource : IN std_logic_vector(1 downto 0);          
		RFData : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	
	COMPONENT muxWindowsManager
	PORT(
		nrd : IN std_logic_vector(5 downto 0);
		registro15 : IN std_logic_vector(5 downto 0);
		resource : IN std_logic;          
		destino : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
begin


	process(SalidaDataMUX)
	begin
	ALUout <= SalidaDataMUX;
	end process;
	


	Inst_ArithmeticLogicUnit: ArithmeticLogicUnit PORT MAP(
		Val1 => salidaRF1,
		Val2 => salidamultSEU_RF,
		Carry => PSRCarryOut,
		OP => CUSalOP,
		Salida => resultadoAlu
	);
	
	Inst_ControlUnit: ControlUnit PORT MAP(
		opcode => salidaIM(31 downto 30),
		op3 => salidaIM(24 downto 19),
		salida => CUSalOP,
		PCSourceOut => muxPCSourcePCSource,
		WRENRF => SelectorWRENRF,
		WRENDTMEM => SelectorWRENDTMEM,
		DATATORF => SelectorDataMux,
		icc =>PSRicc,
		SelResource => SelectorCURes
	);
	
	Inst_InstructionMemory: InstructionMemory PORT MAP(
		direccion => salidaPC,
		rst => rst,
		instruccion => salidaIM
	);
	
	Inst_ProgramCounter: ProgramCounter PORT MAP(
		entrada => salidaNPC,
		clk => clk,
		rst => rst,
		salida => salidaPC
	);
	
	Inst_NProgramCounter: ProgramCounter PORT MAP(
		entrada => muxPCSourcePCAddressOut,
		clk => clk,
		rst => rst,
		salida => salidaNPC
	);
	
	Inst_RegisterFile: RegisterFile PORT MAP(
		RSource1 => WMnrs1,
		RSource2 => WMnrs2,
		RDestino => SalidaMUXWM,
		ValEntradaDestino => SalidaDataMUX,
		rst => rst,
		valRSource1 => salidaRF1,
		valRSource2 => salidaRF2,
		valRDest =>valorRFRdest
	);
	
	Inst_incrementador: incrementador PORT MAP(
		valorActual => salidaNPC,
		salida => salidaIncrementador
	);


	Inst_Inst_SEU: Inst_SEU PORT MAP(
		Entrada => salidaIM(12 downto 0),
		Salida => salidaSEU
	);
	
	Inst_Inst_Multiplexor21: Inst_Multiplexor21 PORT MAP(
		A => salidaRF2,
		B => salidaSEU,
		Selector => salidaIM(13),
		Salida => salidamultSEU_RF
	);
	
	Inst_Inst_PSRModifier: Inst_PSRModifier PORT MAP(
		nzvc => PSRnzvc,
		reset => rst,
		ALUOP => CUSalOP,
		VALALU1 => salidaRF1,
		VALALU2 => salidamultSEU_RF,
		RESULTALU => resultadoAlu
	);
	
	Inst_PSR: PSR PORT MAP(
		CLK => clk,
		RST => rst,
		nzvc => PSRnzvc,

		cwp => PSRcwp,
		ncwp => PSRncwp,
		icc => PSRicc,
		carry => PSRCarryOut
	);
	
	
	Inst_windowManager: windowManager PORT MAP(
		rs1 =>  salidaIM(18 downto 14),
		rs2 => salidaIM(4 downto 0),
		rd => salidaIM(29 downto 25),
		op => salidaIM(31 downto 30),
		op3 => salidaIM(24 downto 19),
		cwp => PSRcwp,
		nrs1 => WMnrs1,
		nrs2 => WMnrs2,
		nrd => WMnrd,
		n15 => WMn15,
		ncwp => PSRncwp

	);
	
	
	Inst_SEU22: SEU22 PORT MAP(
		entrada => salidaIM(21 downto 0),
		salida => salidaSEU22disp22
	);
	
	Inst_SEU30: SEU30 PORT MAP(
		entrada => salidaIM(29 downto 0),
		salida => salidaSEU30disp30
	);
	
	
	Inst_muxPcSource: muxPcSource PORT MAP(
		PCDisp30 => salidaSEU30disp30,
		PCDisp22 => salidaSEU22disp22,
		PC => salidaIncrementador,
		PCAddress => resultadoAlu,
		PCSource => muxPCSourcePCSource,
		PCAddressOut => muxPCSourcePCAddressOut
	);
	
	Inst_dataMemory: dataMemory PORT MAP(
		clk => clk,
		reset => rst,
		wrEnMem => SelectorWRENDTMEM,
		address => resultadoAlu,
		cRD => valorRFRdest,
		dataMem => SalidaDataMemory
	);
	
	Inst_MUXDataMemory: MUXDataMemory PORT MAP(
		DataMemory => SalidaDataMemory,
		AluResult => resultadoAlu,
		DataToRFSource => SelectorDataMux,
		RFData => SalidaDataMUX,
		PC => salidaPC
	);
	
	
		Inst_muxWindowsManager: muxWindowsManager PORT MAP(
		nrd => WMnrd,
		registro15 => WMn15,
		resource => SelectorCURes,
		destino => SalidaMUXWM
	);

	
end Behavioral;

