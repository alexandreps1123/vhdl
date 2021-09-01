library IEEE;
use IEEE.std_logic_1164.all;

entity tb_buffer is
--void
end tb_buffer;

architecture tb1 of tb_buffer is

-- Design Under Test
-- DUT - my_buffer
component my_buffer is
	port (
		a : in std_logic;
		y : out std_logic
	);
end component;

signal a_in : std_logic;
signal y_out : std_logic;

begin

-- conectar DUT ao testbench
DUT: my_buffer port map (
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

end tb1;
	
	
