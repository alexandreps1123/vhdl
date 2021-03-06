library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_timer is

end tb_timer;

architecture sim of tb_timer is
	component dut_timer is
		port(
			clk	: in std_logic;
			reset	: in std_logic;
			enable	: in std_logic;
			up_down	: in std_logic;
			contagem: out std_Logic_vector(5 downto 0)
		);
	end component;

	signal clk : std_logic;
	signal reset : std_Logic;
	signal enable : std_logic;
	signal up_down: std_logic;
	signal contagem : std_logic_vector(5 downto 0);

begin
my_timer : dut_timer
	port map(
		clk => clk,
		reset => reset,
		enable => enable,
		up_down => up_down,
		contagem => contagem
	);

	--processo de clock
	process is
	begin
		clk <= '0';
		wait for 1 ns;
		clk <= '1';
		wait for 1 ns;

	end process;

	process is
	begin
		wait for 4 ns;
		
		--zerar contador;
		enable <= '0';
		reset <= '1';
		up_down <= '0';
		wait for 4 ns;

		enable <= '0';
		reset <= '1';
		up_down <= '1';
		wait for 4 ns;
		
		enable <= '1';
		reset <= '1';
		up_down <= '0';
		wait for 4 ns;


		enable <= '1';
		reset <= '1';
		up_down <= '1';
		wait for 4 ns;

		--parar contador
		enable <= '0';
		reset <= '0';
		up_down <= '0';
		wait for 4 ns;

		enable <= '0';
		reset <= '0';
		up_down <= '1';
		wait for 4 ns;

		--incrementar contador
		enable <= '1';
		reset <= '0';
		up_down <= '0';
		wait for 200 ns;

		--parar contador
		enable <= '0';
		reset <= '0';
		up_down <= '0';
		wait for 4 ns;

		--zerar contador;
		enable <= '0';
		reset <= '1';
		up_down <= '0';
		wait for 4 ns;

		--decrementar contador
		enable <= '1';
		reset <= '0';
		up_down <= '1';
		wait for 200 ns;

	end process;

end architecture;
