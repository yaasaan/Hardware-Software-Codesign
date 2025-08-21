-------------------------------------------------------------------------------
--
-- Title       : ROM
-- Design      : CodesignFinalProject
-- Author      : YASAN
-- Company     : .
--
-------------------------------------------------------------------------------
--
-- File        : E:\_Project\ActiveHDL\CodesignFinalProject\CodesignFinalProject\src\ROM.vhd
-- Generated   : Wed Jun 29 10:58:06 2022
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
--{entity {ROM} architecture {ROM}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;
use ieee.numeric_std.all; 
entity ROM is	
	port(
	     Address : in std_logic_vector(5 downto 0);
		 Data : out std_logic_vector(5 downto 0)
		 );	
end ROM;

architecture ROM of ROM is

type ROM_type is array(0 to 63) of std_logic_vector(5 downto 0);
signal m : ROM_type;

begin
m(0) <= "000011" ;
m(1) <= "000000" ;
m(2) <= "000111" ;
m(3) <= "000001" ;
m(4) <= "001011" ;
m(5) <= "001000" ;
m(6) <= "001111" ;
m(7) <= "000110" ;
m(8) <= "010010" ;
m(9) <= "101101" ;
m(10) <= "111111" ;
m(11) <= "001000" ;
m(12) <= "000000" ;

Data <= m(to_integer(unsigned(Address)));
	     
	 

end ROM;
