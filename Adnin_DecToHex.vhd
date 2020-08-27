library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Adnin_DecToHex is
port (Adnin_hex_digit: in std_logic_vector(3 downto 0);
Adnin_segment_a, Adnin_segment_b,Adnin_segment_c, Adnin_segment_d,Adnin_segment_e, Adnin_segment_f,Adnin_segment_g: out std_logic);
end Adnin_DecToHex;

architecture a of Adnin_DecToHex is 
signal Adnin_segment_data: std_logic_vector(6 downto 0);
begin
process(Adnin_hex_digit)
begin

case Adnin_Hex_digit is 
when "0000"=>
Adnin_segment_data<="1111110";
when "0001"=>
Adnin_segment_data<="0110000";
when "0010"=>
Adnin_segment_data<="1101101";
when "0011"=>
Adnin_segment_data<="1111001";
when "0100"=>
Adnin_segment_data<="0110011";
when "0101"=>
Adnin_segment_data<="1011011";
when "0110"=>
Adnin_segment_data<="1011111";
when "0111"=>
Adnin_segment_data<="1110000";
when "1000"=>
Adnin_segment_data<="1111111";
when "1001"=>
Adnin_segment_data<="1110011";
when "1010"=>
Adnin_segment_data<="1110111";
when "1011"=>
Adnin_segment_data<="0011111";
when "1100"=>
Adnin_segment_data<="1001110";
when "1101"=>
Adnin_segment_data<="0111101";
when "1110"=>
Adnin_segment_data<="1001110";
when "1111"=>
Adnin_segment_data<="1000110";
end case;
end process;

Adnin_segment_a<=not Adnin_segment_data(6);
Adnin_segment_b<=not Adnin_segment_data(5);
Adnin_segment_c<=not Adnin_segment_data(4);
Adnin_segment_d<=not Adnin_segment_data(3);
Adnin_segment_e<=not Adnin_segment_data(2);
Adnin_segment_f<=not Adnin_segment_data(1);
Adnin_segment_g<=not Adnin_segment_data(0);
end a;