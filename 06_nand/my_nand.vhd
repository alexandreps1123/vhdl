library IEEE;
use IEEE.std_logic_1164.all;

entity my_nand is
	port (
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end my_nand;

architecture basic of my_nand is
begin
	y <= (a nand b);
end basic;
