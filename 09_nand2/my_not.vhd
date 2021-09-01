library IEEE;
use IEEE.std_logic_1164.all;

entity my_not is
	port (
		a : in std_logic;
		y : out std_logic
	);
end my_not;

architecture basic of my_not is
begin
	y <= not(a);
end basic;
