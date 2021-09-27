library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dut_case is
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
end dut_case;

architecture basic of dut_case is

	signal s_a : signed(Kbits-1 downto 0);
	signal s_b : signed(Kbits-1 downto 0);
	signal s_res : signed(2*Kbits-1 downto 0);

begin
	s_a <= signed(i_a);
	s_b <= signed(i_b);
	o_res <= std_logic_vector(s_res);

	process(clk) is
	begin
		if(rising_edge(clk))then

			case sel is
				when "00"	=> s_res <= resize(s_a + s_b, s_res'length);
				when "01"	=> s_res <= resize(s_a - s_b, s_res'length);
				when "10"	=> s_res <= resize(s_a * s_b, s_res'length);
				when "11"	=> s_res <= resize(s_a / s_b, s_res'length);
				when others 	=> s_res <= s_res;
			end case;
		end if;
	end process;

end basic;
