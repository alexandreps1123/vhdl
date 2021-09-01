library IEEE;
use IEEE.std_logic_1164.all;

entity tb_vectors is
--vazio
end tb_vectors;

architecture tb1 of tb_vectors is

component my_vectors is
	port(
	a : in std_logic_vector(1 downto 0);
	y : out std_logic_vector(5 downto 0)
	);
end component;

signal a_in : std_logic_vector(1 downto 0);
signal y_out : std_logic_vector(5 downto 0);

begin

--conectar DUT ao testbench
MV1: my_vectors port map(
			a => a_in,
			y => y_out
		);
		
process
begin

	a_in <= "XX";
	wait for 1 ns;
	
	a_in <= "00";
	wait for 1 ns;
	
	a_in <= "01";
	wait for 1 ns;

	a_in <= "10";
	wait for 1 ns;
	
	a_in <= "11";
	wait for 1 ns;
	
	a_in <= "00";
	wait;
end process;

end tb1;
