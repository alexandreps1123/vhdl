
library IEEE;
use IEEE.std_logic_1164.all;

entity tb_clocked is
--vazio
end tb_clocked;

architecture tb1 of tb_clocked is
--declaracao de componentes
component dut_clocked is
	port(
		clk : in std_logic;
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end component;
--
signal clk_in : std_logic;
signal a_in : std_logic;
signal b_in : std_logic;
signal y_out : std_logic;

begin
--instaciacacao de componentes
DUT : dut_clocked
	port map(
		clk => clk_in,
		a => a_in,
		b => b_in,
		y => y_out
	);
--
clk_gen : process is
begin
	clk_in <= '0';
	wait for 10 ns;
	clk_in <= '1';
	wait for 10 ns;
end process clk_gen;

process
begin

	report "inicio do processo";
	report "a_in " & std_logic'image(a_in) & "b_in " & std_logic'image(b_in) & "y_out " & std_logic'image(y_out);

	a_in <= '0';
	b_in <= '0';
	wait for 15 ns;
	report "a_in " & std_logic'image(a_in) & "b_in " & std_logic'image(b_in) & "y_out " & std_logic'image(y_out);
	
	a_in <= '1';
	b_in <= '0';
	wait for 20 ns;
	report "a_in " & std_logic'image(a_in) & "b_in " & std_logic'image(b_in) & "y_out " & std_logic'image(y_out);

	a_in <= '0';
	b_in <= '1';
	wait for 20 ns;
	report "a_in " & std_logic'image(a_in) & "b_in " & std_logic'image(b_in) & "y_out " & std_logic'image(y_out);

	a_in <= '1';
	b_in <= '1';
	wait for 20 ns;
	report "a_in " & std_logic'image(a_in) & "b_in " & std_logic'image(b_in) & "y_out " & std_logic'image(y_out);

	wait;

end process;

end tb1;