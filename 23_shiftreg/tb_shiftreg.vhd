library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_shiftreg is
	generic(
		sr_depth : natural := 4;
		sr_width : natural := 8
	);
end entity;

architecture sim of tb_shiftreg is
	component dut_shiftreg is
		generic(
			sr_depth : natural;
			sr_width : natural
		);
		port(
			clk : in std_logic;
			sr_in : in std_logic_vector(sr_width-1 downto 0);
			sr_out : out std_logic_vector(sr_width-1 downto 0)
		);
	end component;

	signal clk : std_logic;
	signal entrada : std_logic_vector(sr_width-1 downto 0);
	signal saida : std_logic_vector(sr_width-1 downto 0);

begin
DUT: dut_shiftreg
	generic map(
		sr_depth => sr_depth,
		sr_width => sr_width
	)
	port map(
		clk => clk,
		sr_in => entrada,
		sr_out => saida
	);

	process is
	begin

		clk <= '0';
		wait for 1 ns;
		clk <= '1';
		wait for 1 ns;
	end process;

	process is
	begin
		for A in 0 to 2**sr_width-1 loop

			entrada <= std_logic_vector(to_unsigned(A, entrada'length));
			wait for 2 ns;
		end loop;
	end process;

end architecture;
