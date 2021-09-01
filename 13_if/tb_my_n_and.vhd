library IEEE;
use IEEE.std_logic_1164.all;

entity tb_my_n_and is
--vazio
end tb_my_n_and;

architecture tb1 of tb_my_n_and is

--DUT
component my_n_and is
	port(
		a   : in  std_logic_vector(1 downto 0);
		sel : in  std_logic;
		y   : out std_logic
	);
end component;

signal a_in   : std_logic_vector(1 downto 0);
signal sel_in : std_logic;
signal y_out  : std_logic;

begin

DUT: my_n_and port map(
			a   => a_in,
			sel => sel_in,
			y   => y_out
		);

process
begin

	a_in   <= "XX";
	sel_in <= '0';
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= '1';
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= '0';
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= '1';
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= '0';
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= '1';
	wait for 1 ns;
	
	a_in   <= "10";
	sel_in <= '0';
	wait for 1 ns;
	
	a_in   <= "10";
	sel_in <= '1';
	wait for 1 ns;
	
	a_in   <= "11";
	sel_in <= '0';
	wait for 1 ns;
	
	a_in   <= "11";
	sel_in <= '1';
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= '0';
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= '1';
	wait;

end process;

end tb1;
