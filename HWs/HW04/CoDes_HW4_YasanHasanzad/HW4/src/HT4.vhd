-------------------------------------------------------------------------------
--
-- Title       : HT4
-- Design      : HT4
-- Author      : YASAN
-- Company     : .
--
-------------------------------------------------------------------------------
--
-- File        : E:\_Project\HamTaraahi\HT4\src\HT4.vhd
-- Generated   : Sun Apr 24 18:03:25 2022
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
--{entity {HT4} architecture {HT4}}

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity HT4 is
	PORT (input: IN STD_LOGIC;
         reset, clock: IN STD_LOGIC;
         output: OUT STD_LOGIC);
end HT4;

--}} End of automatically maintained section

architecture HT4 of HT4 is	
TYPE states IS (state0, state1, state2, state3);
SIGNAL pr_state, nx_state: states;
SIGNAL temp :std_logic;

begin
	
	---------- Lower section: --------------------------
   PROCESS (reset, clock)
   BEGIN
      IF (reset='1') THEN
         pr_state <= state0;
      ELSIF (clock'EVENT AND clock='1') THEN
        output <= temp;
        pr_state <= nx_state;
      END IF;
   END PROCESS;


	---------- Upper section: --------------------------
   PROCESS (pr_state,input)
   BEGIN
	   
      CASE pr_state IS
         WHEN state0 =>
            temp <= '0';
            IF (input='1') THEN nx_state <= state1;
			ELSE nx_state <= state0;
            END IF;
         WHEN state1 =>
            temp <= '0';
            IF (input='1') THEN nx_state <= state2;
			ELSE nx_state <= state0;
            END IF;
         WHEN state2 =>																						
            temp <= '0';
            IF (input='1') THEN nx_state <= state3;
			ELSE nx_state <= state0;
            END IF;
		WHEN state3 =>																						
            temp <= '1';
            IF (input='1') THEN nx_state <= state3;
			ELSE nx_state <= state0;
            END IF;
      END CASE;
   END PROCESS;		 

end HT4;
