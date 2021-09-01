library IEEE;
use IEEE.std_logic_1164.all;

entity my_logic_one_hot is
	port(
		a   : in std_logic_vector(1 downto 0);
		sel : in std_logic_vector(5 downto 0);
		y   : out std_logic
	
	);
end my_logic_one_hot;

architecture basic of my_logic_one_hot is

begin
	y <= a(1) and	a(0) when sel="000001" else
	     a(1) nand	a(0) when sel="000010" else
	     a(1) or	a(0) when sel="000100" else
	     a(1) nor	a(0) when sel="001000" else
	     a(1) xor	a(0) when sel="010000" else
	     a(1) xnor	a(0) when sel="100000" else
	     'Z'	     when sel="000001" else
	     'Z'	     when sel="000011" else
	     'Z'	     when sel="000101" else
	     'Z'	     when sel="000110" else
	     'Z'	     when sel="000111" else
	     'Z'	     when sel="001001" else
	     'Z'	     when sel="001010" else
	     'Z'	     when sel="001011" else
	     'Z'	     when sel="001100" else
	     'Z'	     when sel="001101" else
	     'Z'	     when sel="001110" else
	     'Z'	     when sel="001111" else
	     'Z'	     when sel="010001" else
	     'Z'	     when sel="010010" else
	     'Z'	     when sel="010011" else
	     'Z'	     when sel="010100" else
	     'Z'	     when sel="010101" else
	     'Z'	     when sel="010110" else
	     'Z'	     when sel="010111" else
	     'Z'	     when sel="011000" else
	     'Z'	     when sel="011001" else
	     'Z'	     when sel="011010" else
	     'Z'	     when sel="011011" else
	     'Z'	     when sel="011100" else
	     'Z'	     when sel="011101" else
	     'Z'	     when sel="011110" else
	     'Z'	     when sel="011111" else
	     'Z'	     when sel="100001" else
	     'Z'	     when sel="100010" else
	     'Z'	     when sel="100011" else
	     'Z'	     when sel="100100" else
	     'Z'	     when sel="100101" else
	     'Z'	     when sel="100110" else
	     'Z'	     when sel="100111" else
	     'Z'	     when sel="101000" else
	     'Z'	     when sel="101001" else
	     'Z'	     when sel="101010" else
	     'Z'	     when sel="101011" else
	     'Z'	     when sel="101100" else
	     'Z'	     when sel="101101" else
	     'Z'	     when sel="101110" else
	     'Z'	     when sel="101111" else
	     'Z'	     when sel="110000" else
	     'Z'	     when sel="110001" else
	     'Z'	     when sel="110010" else
	     'Z'	     when sel="110011" else
	     'Z'	     when sel="110100" else
	     'Z'	     when sel="110101" else
	     'Z'	     when sel="110110" else
	     'Z'	     when sel="110111" else
	     'Z'	     when sel="111000" else
	     'Z'	     when sel="111001" else
	     'Z'	     when sel="111010" else
	     'Z'	     when sel="111011" else
	     'Z'	     when sel="111100" else
	     'Z'	     when sel="111101" else
	     'Z'	     when sel="111110" else
	     'Z'	     when sel="111111";

end basic;
