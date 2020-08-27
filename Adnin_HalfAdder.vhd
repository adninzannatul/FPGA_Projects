library ieee;
use ieee.std_logic_1164.all;

entity Adnin_HalfAdder is 
  port (Adnin_a, Adnin_b : in std_logic;
        Adnin_sum, Adnin_carry : out std_logic
    );
end Adnin_HalfAdder;

architecture Adnin_arch of Adnin_HalfAdder is
begin
  process(Adnin_a,Adnin_b)
    begin
  Adnin_sum <= Adnin_a xor Adnin_b;
  Adnin_carry <= Adnin_a and Adnin_b;
    end process;
end Adnin_arch;