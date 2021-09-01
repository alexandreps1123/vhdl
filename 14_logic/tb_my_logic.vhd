library IEEE;
use IEEE.std_logic_1164.all;

entity tb_my_logic is
--vazio
end tb_my_logic;

architecture tb1 of tb_my_logic is

--DUT
component my_logic is
	port(
		a   : in  std_logic_vector(1 downto 0);
		sel : in  std_logic_vector(2 downto 0);
		y   : out std_logic
	);
end component;

signal a_in   : std_logic_vector(1 downto 0);
signal sel_in : std_logic_vector(2 downto 0);
signal y_in   : std_logic;

begin

DUT: my_logic port map(
			a   => a_in,
			sel => sel_in,
			y   => y_in
		);
		
process
begin

	a_in   <= "00";
	sel_in <= "000";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "000";
	wait for 1 ns;
	
	a_in   <= "10";
	sel_in <= "000";
	wait for 1 ns;
	
	a_in   <= "11";
	sel_in <= "000";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "001";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "001";
	wait for 1 ns;
	
	a_in   <= "10";
	sel_in <= "001";
	wait for 1 ns;
	
	a_in   <= "11";
	sel_in <= "001";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "010";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "010";
	wait for 1 ns;
	
	a_in   <= "10";
	sel_in <= "010";
	wait for 1 ns;
	
	a_in   <= "11";
	sel_in <= "010";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "011";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "011";
	wait for 1 ns;
	
	a_in   <= "10";
	sel_in <= "011";
	wait for 1 ns;
	
	a_in   <= "11";
	sel_in <= "011";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "100";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "100";
	wait for 1 ns;
	
	a_in   <= "10";
	sel_in <= "100";
	wait for 1 ns;
	
	a_in   <= "11";
	sel_in <= "100";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "101";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "101";
	wait for 1 ns;
	
	a_in   <= "10";
	sel_in <= "101";
	wait for 1 ns;
	
	a_in   <= "11";
	sel_in <= "101";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "110";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "110";
	wait for 1 ns;
	
	a_in   <= "10";
	sel_in <= "110";
	wait for 1 ns;
	
	a_in   <= "11";
	sel_in <= "110";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "111";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "111";
	wait for 1 ns;
	
	a_in   <= "10";
	sel_in <= "111";
	wait for 1 ns;
	
	a_in   <= "11";
	sel_in <= "111";
	wait;

end process;

end tb1;
