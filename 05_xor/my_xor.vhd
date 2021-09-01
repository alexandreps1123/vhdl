library IEEE;
use IEEE.std_logic_1164.all;

entity my_xor is
	port (
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end my_xor;

architecture basic of my_xor is
begin
	y <= (a xor b);
end basic;
