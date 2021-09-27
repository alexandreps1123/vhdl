library IEEE;
use IEEE.std_logic_1164.all;

entity my_and is
	port (
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end my_and;

architecture basic of my_and is
begin
	y <= (a and b);
end basic;
