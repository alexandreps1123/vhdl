library IEEE;
use IEEE.std_logic_1164.all;

entity my_xnor is
	port (
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end my_xnor;

architecture basic of my_xnor is
begin
	y <= (a xnor b);
end basic;
