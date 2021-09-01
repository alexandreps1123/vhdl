library IEEE;
use IEEE.std_logic_1164.all;

entity my_or is
	port (
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end my_or;

architecture basic of my_or is
begin
	y <= (a or b);
end basic;
