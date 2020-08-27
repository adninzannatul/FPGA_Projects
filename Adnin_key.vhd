library ieee;
use ieee.std_logic_1164.all;

entity Adnin_key is
port (
Adnin_in: in std_logic_vector(7 downto 0);
key0, key1, key2, key3:in std_logic;
Adnin_out: out std_logic_vector(31 downto 0)
);
end Adnin_key;

architecture arc of Adnin_key is
begin
key: process(key0,key1,key2,key3)
begin
if(key0='0' and key1='1' and key2='1' and key3='1') then
Adnin_out(7 downto 0)<=Adnin_in;
elsif(key0='1' and key1='0' and key2='1' and key3='1') then
Adnin_out(15 downto 8)<=Adnin_in;
elsif(key0='1' and key1='1' and key2='0' and key3='1') then
Adnin_out(23 downto 16)<=Adnin_in;
elsif(key0='1' and key1='1' and key2='1' and key3='0') then
Adnin_out(31 downto 24)<=Adnin_in;
end if;

end process key;
end arc;