library ieee;
use ieee.std_logic_1164.all;

entity Adnin_bitwise_Xor is
port(
   Adnin_a,Adnin_b: in std_logic_vector(5 downto 0);
	Adnin_result: out std_logic_vector(5 downto 0)
	);
end Adnin_bitwise_Xor;

architecture arch of Adnin_bitwise_Xor is
begin
Adnin_result <= Adnin_a xor Adnin_b;
end arch;	
