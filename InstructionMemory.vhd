library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.textio.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity InstructionMemory is
    Port ( direccion : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
           instruccion : out  STD_LOGIC_VECTOR (31 downto 0));
end InstructionMemory;

architecture Behavioral of InstructionMemory is


	type memoria is array (0 to 31) of std_logic_vector (31 downto 0);
		
	impure function leerArchivo (nombreArchivo : in string) return memoria is
		FILE archivo : text open read_mode is nombreArchivo;
		variable linea : line;
		variable bufftemp : bit_vector(31 downto 0);
		variable memtmp : memoria;
		begin
			for I in memoria'range loop
				readline (archivo, linea);
				read(linea, bufftemp);
				memtmp(i) := to_stdlogicvector(bufftemp);
			end loop;
		return memtmp;
	end function;
	
signal instrucciones : memoria := leerArchivo("instrucciones.txt");
	
begin
	process(rst,direccion,instrucciones)
	begin
			if(rst = '1')then
				instruccion <= "00000000000000000000000000000000";
			else
				instruccion <= instrucciones(conv_integer(direccion(4 downto 0)));
			end if;
	end process;
end Behavioral;

