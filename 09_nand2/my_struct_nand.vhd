library IEEE;
use IEEE.std_logic_1164.all;

entity my_struct_nand is
	port(
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end my_struct_nand;

architecture basic of my_struct_nand is

--component my_and
component my_and is
	port(
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end component;

--component my_not
component my_not is
	port(
		a : in std_logic;
		y : out std_logic
	);
end component;

signal and2not : std_logic;

begin

AND1: my_and port map(
		a => a,
		b => b,
		y => and2not
	);

NOT1: my_not port map(
		a => and2not,
		y => y
	);

end basic;
