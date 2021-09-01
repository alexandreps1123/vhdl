library IEEE;
use IEEE.std_logic_1164.all;

entity my_logic is
	port(
		a   : in  std_logic_vector(1 downto 0);
		sel : in  std_logic_vector(2 downto 0);
		y   : out std_logic
	);
end my_logic;

architecture basic of my_logic is

begin

	y <=	(a(1) and  a(0))	when sel="000" else
		(a(1) nand a(0))	when sel="001" else
		(a(1) or   a(0))	when sel="010" else
		(a(1) nor  a(0))	when sel="011" else
		(a(1) xor  a(0))	when sel="100" else
		(a(1) xnor a(0))	when sel="101" else
		'Z' 		 	when sel="110" else
		'Z' 		 	when sel="111";

end basic;
