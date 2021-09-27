library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_numeric is
	generic(
		Kbits: natural := 8
	);
end entity;

architecture sim of tb_numeric is
	component dut_numeric is
		generic(
			Kbits: natural := 8
		);
		port(
			clk : in std_logic;
			i_a : in std_logic_vector(Kbits-1 downto 0);
			i_b : in std_logic_vector(Kbits-1 downto 0);
			o_y : out std_logic_vector(Kbits-1 downto 0)
		);
	end component;

	signal clock : std_logic;
	signal i_a : std_logic_vector(Kbits-1 downto 0);
	signal i_b : std_logic_vector(Kbits-1 downto 0);
	signal o_y : std_logic_vector(2*Kbits-1 downto 0);

begin
ULA: dut_numeric
	generic map(
		Kbits => Kbits
	)
	port map(
		clk => clock,
		i_a => i_a,
		i_b => i_b,
		o_y => o_y
	);

	process is
	begin
		clock <= '0';
		wait for 1 ns;
		clock <= '1';
		wait for 1 ns;
	end process;

	process is
	begin
		for A in 0 to 2**Kbits-1 loop
			for B in 0 to 2**Kbits-1 loop
				i_a <= std_logic_vector(to_unsigned(A, i_a'length));
				i_b <= std_logic_vector(to_unsigned(B, i_b'length));
				wait for 2 ns;
			end loop;
		end loop;
	end process;

end architecture;
