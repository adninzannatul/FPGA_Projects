library ieee;
use ieee.std_logic_1164.all;

entity Adnin_bitwise_Not is
port(
   Adnin_a: in std_logic_vector(5 downto 0);
	Adnin_result: out std_logic_vector(5 downto 0)
	);
end Adnin_bitwise_Not;

architecture arch of Adnin_bitwise_Not is
begin
Adnin_result <= not Adnin_a;
end arch;	
