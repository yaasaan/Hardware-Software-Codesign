-------------------------------------------------------------------------------
--
-- Title       : ALU
-- Design      : CodesignFinalProject
-- Author      : YASAN
-- Company     : .
--
-------------------------------------------------------------------------------
--
-- File        : E:\_Project\ActiveHDL\CodesignFinalProject\CodesignFinalProject\src\ALU.vhd
-- Generated   : Wed Jun 29 10:44:24 2022
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {ALU} architecture {ALU}}



library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ALU is
	
port(
	input_1,input_2 : in std_logic_vector(5 downto 0);
	cmd : in std_logic;
	result : out std_logic_vector(5 downto 0)
	);
end ALU;

architecture ALU of ALU is
 signal aluresult : unsigned(5 downto 0);
 signal a,b : unsigned(5 downto 0);
   
begin		 	  
  a <= unsigned(input_1);
  b <= unsigned(input_2);
--------------------------------	      
 process(cmd,a,b)
	 begin	 
	  case cmd is 
	      when '0' => aluresult <= a + b;
		  when '1' => aluresult <= a - b;
	 	    when others => aluresult <= (others => 'X');
	   end case;
     end process;
	 
result <= std_logic_vector(aluresult);

end ALU;
