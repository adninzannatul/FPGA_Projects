library ieee;
use ieee.std_logic_1164.all;

entity Adnin_rightshift is
port(
   Adnin_a: in std_logic_vector(5 downto 0);
	Adnin_result: out std_logic_vector(5 downto 0)
	);
end Adnin_rightshift;

architecture arch of Adnin_rightshift is
begin
Adnin_result <= to_stdlogicvector(to_bitvector(Adnin_a) srl 1);
end arch;	
