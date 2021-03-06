library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use work.parametros.all;

entity tb_generate is
	generic(
		n : natural := Kbits
	);
end entity;

architecture sim of tb_generate is
	component dut_generate is
		generic(
			n : natural := Kbits
		);
		port(
			i : in std_logic_vector(1 to n);
			o : out std_logic
		);
	end component;

	signal i_a : std_logic_vector(1 to n);
	signal o_res: std_logic;

begin
DUT: dut_generate
	generic map(
		n => n
	)
	port map(
		i => i_a,
		o => o_res
	);


	process is
	begin
		for A in 0 to 2**n-1 loop
		
			i_a <= std_logic_vector(to_unsigned(A, i_a'length));

			wait for 2 ns;
		end loop;
	end process;

end architecture;
