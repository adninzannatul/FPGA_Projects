library ieee;
use ieee.std_logic_1164;
use ieee.numeric_std.all;

entity Adnin_FullAdder is           
port(Adnin_a,Adnin_b,Adnin_c: in bit ;
  Adnin_sum, Adnin_carry : out bit);
end Adnin_FullAdder;

architecture Adnin_arc of Adnin_FullAdder is
begin
  process(Adnin_a,Adnin_b,Adnin_c)                
    variable temp :bit;
     begin                      
       temp := Adnin_a xor Adnin_b;
       Adnin_sum <= temp xor Adnin_c;
       Adnin_carry <= (Adnin_a and Adnin_b) or (temp and Adnin_c); 
    end process ;
end Adnin_arc; 