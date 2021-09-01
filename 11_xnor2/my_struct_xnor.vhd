library IEEE;
use IEEE.std_logic_1164.all;

entity my_struct_xnor is
	port(
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end my_struct_xnor;

architecture basic of my_struct_xnor is

component my_xor is
	port(
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end component;

component my_not is
	port(
		a : in std_logic;
		y : out std_logic
	);
end component;

signal xor2not : std_logic;

begin

XOR1: my_xor port map(
		a => a,
		b => b,
		y => xor2not
	);
	
NOT1: my_not port map(
		a => xor2not,
		y => y
	);

end basic;
