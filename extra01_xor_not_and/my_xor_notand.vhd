library IEEE;
use IEEE.std_logic_1164.all;

entity my_xor_notand is
	port(
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end my_xor_notand;

architecture basic of my_xor_notand is

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

signal and2not1 : std_logic;
signal and2not2 : std_logic;
signal and2not3 : std_logic;
signal and2not4 : std_logic;
signal not2and1 : std_logic;
signal not2and2 : std_logic;
signal not2and3 : std_logic;

begin

--nand1
AND1: my_and port map(
		a => a,
		b => b,
		y => and2not1
	);
	
NOT1: my_not port map(
		a => and2not1,
		y => not2and1
	);

--nand2
AND2: my_and port map(
		a => a,
		b => not2and1,
		y => and2not2
	);
	
NOT2: my_not port map(
		a => and2not2,
		y => not2and2
	);

--nand3
AND3: my_and port map(
		a => not2and1,
		b => b,
		y => and2not3
	);
	
NOT3: my_not port map(
		a => and2not3,
		y => not2and3
	);
	
--nand4
AND4: my_and port map(
		a => not2and2,
		b => not2and3,
		y => and2not4
	);
	
NOT4: my_not port map(
		a => and2not4,
		y => y
	);
end basic;
