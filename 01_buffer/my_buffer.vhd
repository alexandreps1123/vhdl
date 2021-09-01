library IEEE;
use IEEE.std_logic_1164.all;

entity my_buffer is
	port (
		a : in std_logic;
		y : out std_logic
	);
end my_buffer;

architecture basic of my_buffer is
begin
	y <= a;
end basic;
