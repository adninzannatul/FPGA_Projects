library ieee;
use ieee.std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity Adnin_D_Flipflop is 
   port(   
      Adnin_C:in std_logic;   
      Adnin_D :in  std_logic ;
      Adnin_Q : out std_logic
		--Adnin_Q1 : out std_logic
   );
end Adnin_D_Flipflop;
architecture Adnin_arc of Adnin_D_Flipflop is
	begin
	process(Adnin_C)
	begin
	if(Adnin_C='1' and Adnin_C'EVENT) then
	Adnin_Q <= Adnin_D;
	end if;
	end process;
end Adnin_arc;