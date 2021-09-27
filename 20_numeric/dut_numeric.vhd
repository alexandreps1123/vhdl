--exemplo de utilizacao do pacote numeric_std
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dut_numeric is
	generic(
		Kbits: natural := 8
	);
	port(
		clk : in std_logic;
		i_a : in std_logic_vector(Kbits-1 downto 0);
		i_b : in std_logic_vector(Kbits-1 downto 0);
		o_y : out std_logic_vector(2*Kbits-1 downto 0)
	);
end dut_numeric;

architecture basic of dut_numeric is
	signal s_a : unsigned(Kbits-1 downto 0);
	signal s_b : unsigned(Kbits-1 downto 0);
	signal s_y : unsigned(2*Kbits-1 downto 0);

begin
	s_a <= unsigned(i_a);
	s_b <= unsigned(i_b);
	o_y <= std_logic_vector(s_y);

	process (clk) is
	begin
		if(rising_edge(clk))then
		
		s_y <= resize(s_a + s_b, s_y'length);

		end if;
	end process;

end basic;
