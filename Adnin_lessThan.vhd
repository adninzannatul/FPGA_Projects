library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Adnin_lessThan is
port(
   Adnin_a,Adnin_b: in std_logic_vector(5 downto 0);
	Adnin_result: out std_logic
	);
end Adnin_lessThan;

architecture arch of Adnin_lessThan is
signal a,b,c: signed(5 downto 0);
begin
a <=signed(Adnin_a);
b <=signed(Adnin_b);
c <=a-b;
process(c)
begin
if signed(c)<0 then
Adnin_result <='1';
else
Adnin_result <='0';
end if;
end process;
end arch;	
