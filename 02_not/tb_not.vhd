--Testbench my_not
library IEEE;
use IEEE.std_logic_1164.all;

entity tb_not is
--vazio
end tb_not;

architecture tb of tb_not is

component my_not is
	port (
		a : in std_logic;
		y : out std_logic
	);
end component;

signal a_in : std_logic;
signal y_out : std_logic;

begin

DUT: my_not port map(
			a => a_in,
			y => y_out
		);
		
process
begin

	a_in <= 'X';
	wait for 1 ns;
	
	a_in <= '0';
	wait for 1 ns;
	
	a_in <= '1';
	wait for 1 ns;
	
	a_in <= '0';
	wait for 1 ns;
	
	a_in <= '1';
	wait for 1 ns;

	a_in <= '0';
	wait;
end process;

end tb;
