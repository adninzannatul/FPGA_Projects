library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Adnin_mux2to1 is
Port(Adnin_a: in std_logic;
     Adnin_b: in std_logic;
	  Adnin_s: in std_logic;
	  Adnin_o: out std_logic);
end Adnin_mux2to1;
	  
architecture arc of Adnin_mux2to1 is 
begin 
  process(Adnin_a,Adnin_b,Adnin_s) 
    begin
      if (Adnin_s='0') then 
       Adnin_o<=Adnin_a;
      else
       Adnin_o<=Adnin_b;
    end if;
  end process;
end arc;