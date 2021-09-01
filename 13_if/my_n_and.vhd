library IEEE;
use IEEE.std_logic_1164.all;

entity my_n_and is
	port(
		a   : in  std_logic_vector(1 downto 0);
		sel : in  std_logic;
		y   : out std_logic
	);
end my_n_and;

architecture basic of my_n_and is

begin

	y <= a(1) and a(0) when sel='1' else a(1) nand a(0);

end basic;
