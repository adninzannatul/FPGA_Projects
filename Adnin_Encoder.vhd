library ieee;
use ieee.std_logic_1164.all;

entity Adnin_OrGate is 
   port(	Adnin_A, Adnin_B, Adnin_C, Adnin_D : in std_logic;
               Adnin_O : out std_logic);
end Adnin_OrGate;

architecture Adnin_arc of Adnin_OrGate is 
begin
   Adnin_O <= Adnin_A or Adnin_B or Adnin_C or Adnin_D;
end Adnin_arc;

library ieee;
use ieee.std_logic_1164.all;

entity Adnin_Encoder is
port(
Adnin_D0 : in std_logic;
Adnin_D1 : in std_logic;
Adnin_D2 : in std_logic;
Adnin_D3 : in std_logic;
Adnin_D4 : in std_logic;
Adnin_D5 : in std_logic;
Adnin_D6 : in std_logic;
Adnin_D7 : in std_logic;
Adnin_A0 : out std_logic;
Adnin_A1 : out std_logic;
Adnin_A2 : out std_logic
);
end Adnin_Encoder;

architecture Adnin_arc of Adnin_Encoder is
   component Adnin_OrGate is         
      port( Adnin_A, Adnin_B, Adnin_C, Adnin_D: in std_logic;
                  Adnin_O : out std_logic);
   end component;
	
begin
   GI1: Adnin_OrGate  port map(Adnin_D1, Adnin_D3, Adnin_D5, Adnin_D7, Adnin_A0);
   GI2: Adnin_OrGate  port map(Adnin_D2, Adnin_D3, Adnin_D6, Adnin_D7, Adnin_A1);
   GI3: Adnin_OrGate  port map(Adnin_D4, Adnin_D5, Adnin_D6, Adnin_D7, Adnin_A2);

end Adnin_arc;