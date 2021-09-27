library IEEE;
use IEEE.std_logic_1164.all;

entity tb_sensi_list is
--vazio
end tb_sensi_list;

architecture tb1 of tb_sensi_list is
--declaracao de componentes
component dut_sensi_list is
	port(
	a : in std_logic;
	b : in std_logic;
	y : out std_logic
	);

end component;
--

signal a_in : std_logic;
signal b_in : std_logic;
signal y_out : std_logic;

begin
--instaciacao de componentes
DUT : dut_sensi_list
	port map(
		a => a_in,
		b => b_in,
		y => y_out
	);
--
process
begin
	
	report "inicio do processo";
	report "a_in " & std_logic'image(a_in) & "b_in " & std_logic'image(b_in) & "y_out " & std_logic'image(y_out);

	a_in <= '0';
	b_in <= '0';
	wait for 1 ns;
	report "a_in " & std_logic'image(a_in) & "b_in " & std_logic'image(b_in) & "y_out " & std_logic'image(y_out);
	
	a_in <= '0';
	b_in <= '1';
	wait for 1 ns;
	report "a_in " & std_logic'image(a_in) & "b_in " & std_logic'image(b_in) & "y_out " & std_logic'image(y_out);

	a_in <= '1';
	b_in <= '0';
	wait for 1 ns;
	report "a_in " & std_logic'image(a_in) & "b_in " & std_logic'image(b_in) & "y_out " & std_logic'image(y_out);

	a_in <= '1';
	b_in <= '1';
	wait for 1 ns;
	report "a_in " & std_logic'image(a_in) & "b_in " & std_logic'image(b_in) & "y_out " & std_logic'image(y_out);

	wait;

end process;

end tb1;







