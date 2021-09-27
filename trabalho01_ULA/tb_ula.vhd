--testbench ULA
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_ula is
	generic(
		Nbits : natural := 4
	);
end tb_ula;

architecture sim of tb_ula is
	component dut_ula is
		generic(
			Nbits : natural := 4
		);
		port(
			clk : in std_logic;
			i_a : in std_logic_vector(Nbits-1 downto 0);
			i_b : in std_logic_vector(Nbits-1 downto 0);
			sel : in std_logic_vector(3 downto 0);
			o_r : out std_logic_vector(2*Nbits-1 downto 0)
		);
	end component;

	signal clk : std_logic;
	signal i_a : std_logic_vector(Nbits-1 downto 0);
	signal i_b : std_logic_vector(Nbits-1 downto 0);
	signal sel : std_logic_vector(3 downto 0);
	signal o_r : std_logic_vector(2*Nbits-1 downto 0);

begin
ULA: dut_ula
	generic map(
		Nbits => Nbits
	)
	port map(
		clk => clk,
		i_a => i_a,
		i_b => i_b,
		sel => sel,
		o_r => o_r
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
		for A in 0 to 2**Nbits-1 loop
			for B in 0 to 2**Nbits-1 loop
				for OP in 0 to 10 loop
					sel <= std_logic_vector(to_unsigned(OP, sel'length));
					i_a <= std_logic_vector(to_signed(A, i_a'length));
					i_b <= std_logic_vector(to_signed(B, i_b'length));
					wait for 2 ns;
				end loop;
			end loop;
		end loop;
	end process;

end architecture;
