library IEEE;
use IEEE.std_logic_1164.all;

entity my_nor is
	port (
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end my_nor;

architecture basic of my_nor is
begin
	y <= (a nor b);
end basic;
