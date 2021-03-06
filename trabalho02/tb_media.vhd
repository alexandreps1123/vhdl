library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.parametros.all;

entity tb_media is
	generic(
		n : natural := Nbits;
		m : natural := Mbits
	);
end entity;

architecture sim of tb_media is

	component dut_media is
		generic(
			--comprimento da palavra
			n : natural := Nbits;

			--comprimento da janela de media movel
			m : natural := Mbits
		);
		port(
			s_clk : in std_logic;
			reg_in : in std_logic_vector(n-1 downto 0);
			media : out std_logic_vector(2*n-1 downto 0)
		);
	end component;

	signal clk : std_logic;
	signal entrada : std_logic_vector(n-1 downto 0);
	signal saida : std_logic_vector(2*n-1 downto 0);

begin
DUT: dut_media
	generic map(
		n => n,
		m => m
	)
	port map(
		s_clk => clk,
		reg_in => entrada,
		media => saida
	);

	--processo de clk
	process is
	begin
	
		clk <= '0';
		wait for 1 ns;
		clk<= '1';
		wait for 1 ns;
	end process;

	process is
	begin
		for A in 0 to 2**n-1 loop
			entrada <= std_logic_vector(to_unsigned(A, entrada'length));
			wait for 2 ns;
		end loop;
	end process;

end architecture;