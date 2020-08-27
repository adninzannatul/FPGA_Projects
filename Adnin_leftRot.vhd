library ieee;
use ieee.std_logic_1164.all;

entity Adnin_leftRot is
port(
   Adnin_a: in std_logic_vector(5 downto 0);
	Adnin_result: out std_logic_vector(5 downto 0)
	);
end Adnin_leftRot;

architecture arch of Adnin_leftRot is
begin
Adnin_result <= to_stdlogicvector(to_bitvector(Adnin_a) rol 1);
end arch;	
