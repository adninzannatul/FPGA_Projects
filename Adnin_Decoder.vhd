library ieee;
use ieee.std_logic_1164.all;

--And gate
entity Adnin_AndGate is 
   port(	Adnin_A, Adnin_B, Adnin_C : in std_logic;
               Adnin_O : out std_logic);
end Adnin_AndGate;

architecture Adnin_arc of Adnin_AndGate is 
begin
   Adnin_O <= Adnin_A and Adnin_B and Adnin_C;
end Adnin_arc;

--Not gate 
library ieee;
use ieee.std_logic_1164.all;

entity Adnin_NotGate is	
   port(	Adnin_inPort : in std_logic;
        Adnin_outPort : out std_logic);
end Adnin_NotGate;
--
architecture Adnin_arc2 of Adnin_NotGate is 
begin
   Adnin_outPort <= not Adnin_inPort;
end Adnin_arc2;

--3to8Decoder
library ieee;
use ieee.std_logic_1164.all;

entity Adnin_Decoder is
   port( Adnin_A0, Adnin_A1, Adnin_A2 : in std_logic;
         Adnin_D0, Adnin_D1, Adnin_D2, Adnin_D3, Adnin_D4, Adnin_D5, Adnin_D6, Adnin_D7 : out std_logic);
end Adnin_Decoder;
--
architecture Adnin_arc3 of Adnin_Decoder is
   component Adnin_AndGate is         
      port( Adnin_A, Adnin_B, Adnin_C : in std_logic;
                  Adnin_O : out std_logic);
   end component;

   component Adnin_NotGate is        
      port( Adnin_inPort  : in std_logic;
            Adnin_outPort : out std_logic);
   end component;

   signal A0, A1, A2  : std_logic;

begin

   GI1: Adnin_NotGate  port map(Adnin_A0, A0);
   GI2: Adnin_NotGate  port map(Adnin_A1, A1);
   GI3: Adnin_NotGate  port map(Adnin_A2, A2);
   
   GA1: Adnin_AndGate  port map(A0, A1, A2, Adnin_D0);
   GA2: Adnin_AndGate  port map(Adnin_A0, A1, A2, Adnin_D1);
   GA3: Adnin_AndGate  port map(A0,Adnin_A1, A2, Adnin_D2);
   GA4: Adnin_AndGate  port map(Adnin_A0,Adnin_A1, A2, Adnin_D3);
   GA5: Adnin_AndGate  port map(A0, A1,Adnin_A2, Adnin_D4);
   GA6: Adnin_AndGate  port map(Adnin_A0, A1,Adnin_A2, Adnin_D5);
   GA7: Adnin_AndGate  port map(A0,Adnin_A1,Adnin_A2, Adnin_D6);
   GA8: Adnin_AndGate  port map(Adnin_A0,Adnin_A1,Adnin_A2, Adnin_D7);

end Adnin_arc3;