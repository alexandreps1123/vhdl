library IEEE;
use IEEE.std_logic_1164.all;

entity tb_and is
--void
end tb_and;

architecture tb1 of tb_and is

-- DUT - my_and
component my_and is
	port (
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end component;

signal a_in : std_logic;
signal b_in : std_logic;
signal y_out : std_logic;

begin

-- conectar DUT ao testbench
DUT: my_and port map (
				a => a_in,
				b => b_in,
				y => y_out
			);
process
begin

	a_in <= 'X';
	b_in <= 'X';
	wait for 1 ns;

	a_in <= '0';
	b_in <= '0';
	wait for 1 ns;

	a_in <= '0';
	b_in <= '1';
	wait for 1 ns;

	a_in <= '1';
	b_in <= '0';
	wait for 1 ns;

	a_in <= '1';
	b_in <= '1';
	wait for 1 ns;

	a_in <= '0';
	b_in <= '0';
	wait;
	
end process;

end tb1;
