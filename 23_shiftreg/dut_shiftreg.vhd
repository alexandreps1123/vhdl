library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dut_shiftreg is
	generic(
		sr_depth : natural;
		sr_width : natural
	);
	port(
		clk : in std_logic;
		sr_in : in std_logic_vector(sr_width-1 downto 0);
		sr_out : out std_logic_vector(sr_width-1 downto 0)
	);
end dut_shiftreg;

architecture basic of dut_shiftreg is

	type sr_type is array (sr_depth-2 downto 0)
	of std_logic_vector(sr_width-1 downto 0);

	signal sr : sr_type;

begin

	process(clk)
	begin
		if rising_edge(clk) then
			sr <= sr(sr'high-1 downto sr'low) & sr_in;
			sr_out <= sr(sr'high);
		end if;
	end process;
end basic;
