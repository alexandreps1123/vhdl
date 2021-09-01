library IEEE;
use IEEE.std_logic_1164.all;

entity my_vectors is
	port(
		a : in std_logic_vector(1 downto 0);
		y : out std_logic_vector(5 downto 0)
	);
end my_vectors;

architecture basic of my_vectors is

begin
	y(0) <= a(1) and a(0);
	y(1) <= a(1) nand a(0);
	y(2) <= a(1) or a(0);
	y(3) <= a(1) nor a(0);
	y(4) <= a(1) xor a(0);
	y(5) <= a(1) xnor a(0);

end basic;
