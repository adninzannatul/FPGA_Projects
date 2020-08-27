library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Adnin_bitwise is
Port(Adnin_inp1: in std_logic_vector(5 downto 0);
     Adnin_inp2: in std_logic_vector(5 downto 0);
	  Adnin_start: in std_logic;
	  Adnin_op: in std_logic_vector(3 downto 0);
	  Adnin_result: out std_logic_vector(5 downto 0));
end Adnin_bitwise;

architecture Adnin_arch of Adnin_bitwise is 
signal a,b,c: signed(5 downto 0);
	begin
   process(Adnin_start)
begin
if (Adnin_start='1') then
	case Adnin_op is
	  when "0000" => 
	       Adnin_result <= Adnin_inp1 and Adnin_inp2;
	  when "0001" => 
	       Adnin_result <= Adnin_inp1 or Adnin_inp2;
     when "0010" => 
	       Adnin_result <= Adnin_inp1 xor Adnin_inp2;
     when "0011" => 
	       Adnin_result <= not Adnin_inp1;	
	  when "0100" => 
	       Adnin_result <= to_stdlogicvector(to_bitvector(Adnin_inp1) sll 1);
	  when "0101" => 
	       Adnin_result <= to_stdlogicvector(to_bitvector(Adnin_inp1) srl 1);
	  when "0110" => 
	       Adnin_result <= to_stdlogicvector(to_bitvector(Adnin_inp1) rol 1); 
	  when "0111" => 
	       Adnin_result <= to_stdlogicvector(to_bitvector(Adnin_inp1) ror 1); 		
	  when "1000" => 
	     
              a <=signed(Adnin_inp1);
              b <=signed(Adnin_inp2);
              c <=a-b;
              if signed(c)<0 then
              Adnin_result <="000001";
              else
              Adnin_result <="000000";
              end if;
	  when "1001" => 
	       Adnin_result <= Adnin_inp1 nor Adnin_inp2;	  
	  when others=> 
	       NULL;
	end case;
	end if;
	end process;
	end Adnin_arch;