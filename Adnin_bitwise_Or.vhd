library ieee;
use ieee.std_logic_1164.all;

entity Adnin_bitwise_Or is
port(
   Adnin_a,Adnin_b: in std_logic_vector(5 downto 0);
	Adnin_result: out std_logic_vector(5 downto 0)
	);
end Adnin_bitwise_Or;

architecture arch of Adnin_bitwise_Or is
begin
Adnin_result <= Adnin_a or Adnin_b;
end arch;	
