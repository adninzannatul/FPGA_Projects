library ieee;
use ieee.std_logic_1164.all;

entity Adnin_leftShift is
port(
   Adnin_a: in std_logic_vector(5 downto 0);
	Adnin_result: out std_logic_vector(5 downto 0)
	);
end Adnin_leftshift;

architecture arch of Adnin_leftshift is
begin
Adnin_result <= to_stdlogicvector(to_bitvector(Adnin_a) sll 1);
end arch;	
