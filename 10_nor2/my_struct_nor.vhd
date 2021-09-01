library IEEE;
use IEEE.std_logic_1164.all;

entity my_struct_nor is
	port(
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end my_struct_nor;

architecture basic of my_struct_nor is

--component my_or
component my_or is
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

signal or2not : std_logic;

begin

OR1: my_or port map(
		a => a,
		b => b,
		y => or2not
	);

NOT1: my_not port map(
		a => or2not,
		y => y
	);

end basic;
