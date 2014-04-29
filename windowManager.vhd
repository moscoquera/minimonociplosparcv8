----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:22:08 04/21/2014 
-- Design Name: 
-- Module Name:    windowManager - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity windowManager is
    Port ( rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
           op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           cwp : in  STD_LOGIC_VECTOR (4 downto 0);
           nrs1 : out  STD_LOGIC_VECTOR (5 downto 0);
           nrs2 : out  STD_LOGIC_VECTOR (5 downto 0);
           nrd : out  STD_LOGIC_VECTOR (5 downto 0);
           ncwp : out  STD_LOGIC_VECTOR (4 downto 0));
end windowManager;

architecture Behavioral of windowManager is

-- señales auxiliares para los registros de 40 
signal registerSource1Aux,registerSource2Aux,registerDestinationAux: integer range 0 to 39:=0;
signal resop: std_logic_vector(31 downto 0);

begin

process(rs1, rs2, rd, cwp,op,op3)

	begin
	
	
	if(op = "10" and op3 = "111100")then--SAVE
			ncwp <= conv_std_logic_vector(conv_integer(unsigned(cwp)) - 1,5);
	else
		if(op = "10" and op3 = "111101")then--RESTORE
					ncwp <= conv_std_logic_vector(conv_integer(unsigned(cwp)) + 1,5);
		else
			ncwp <= cwp;
		end if;
	end if;
	
	if(rs1>="00000" and rs1<="00111") then
		registerSource1Aux <= conv_integer(unsigned(rs1));
	else
		if (rs1>="11000" and rs1<="11111") then
			registerSource1Aux <= conv_integer(unsigned(rs1))-(conv_integer(unsigned(cwp))*16);
		else
			if (rs1>="10000" and rs1<="10111") then
				registerSource1Aux <= conv_integer(unsigned(rs1))+(conv_integer(unsigned(cwp))*16);
			else
				if (rs1>="01000" and rs1<="01111") then
					registerSource1Aux <= conv_integer(unsigned(rs1))+ (conv_integer(unsigned(cwp))*16);
				end if;
			end if;
		end if;
	end if;
	
	
	if(rs2>="00000" and rs2<="00111") then
		registerSource2Aux <= conv_integer(unsigned(rs2));
	else
		if (rs2>="11000" and rs2<="11111") then
			registerSource2Aux <= conv_integer(unsigned(rs2))-(conv_integer(unsigned(cwp))*16);
		else
			if (rs2>="10000" and rs2<="10111") then
				registerSource2Aux <= conv_integer(unsigned(rs2))+(conv_integer(unsigned(cwp))*16);
			else
				if (rs2>="01000" and rs2<="01111") then
					registerSource2Aux <= conv_integer(unsigned(rs2))+ (conv_integer(unsigned(cwp))*16);
				end if;
			end if;
		end if;
	end if;
	
	
	if(rd>="00000" and rd<="00111") then
		registerDestinationAux <= conv_integer(unsigned(rd));
	else
		if (rd>="11000" and rd<="11111") then
			registerDestinationAux <= conv_integer(unsigned(rd))-(conv_integer(unsigned(cwp))*16);
		else
			if (rd>="10000" and rd<="10111") then
				registerDestinationAux <= conv_integer(unsigned(rd))+(conv_integer(unsigned(cwp))*16);
			else
				if (rd>="01000" and rd<="01111") then
					registerDestinationAux <= conv_integer(unsigned(rd))+ (conv_integer(unsigned(cwp))*16);
				end if;
			end if;
		end if;
	end if;

	
end process;

nrs1 <= conv_std_logic_vector(registerSource1Aux, 6);
nrs2 <= conv_std_logic_vector(registerSource2Aux, 6);
nrd  <= conv_std_logic_vector(registerDestinationAux, 6);


end Behavioral;

