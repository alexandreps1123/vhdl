library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_case is
	generic(
		Kbits : natural := 8
	);
end tb_case;

architecture sim of tb_case is
	component dut_case is
		generic(
			Kbits : natural := 8
		);
		port(
			clk : in std_logic;
			i_a : in std_logic_vector(Kbits-1 downto 0);
			i_b : in std_logic_vector(Kbits-1 downto 0);
			sel : in std_logic_vector(1 downto 0);
			o_res : out std_logic_vector(2*Kbits-1 downto 0)
		);
	end component;

	signal clock : std_logic;
	signal i_a : std_logic_vector(Kbits-1 downto 0);
	signal i_b : std_logic_vector(Kbits-1 downto 0);
	signal sel : std_logic_vector(1 downto 0);
	signal o_res : std_logic_vector(2*Kbits downto 0);

begin
ULA: dut_case
	generic map(
		Kbits => Kbits
	)
	port map(
		clk => clock,
		i_a => i_a,
		i_b => i_b,
		sel => sel,
		o_res => o_res
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
				for OP in 0 to 3 loop
					sel <= std_logic_vector(to_unsigned(OP,sel'length));
					i_a <= std_logic_vector(to_signed(A,i_a'length));
					i_b <= std_logic_vector(to_signed(B,i_b'length));
					wait for 1 ns;
				end loop;
			end loop;
		end loop;
	end process;

end architecture;
