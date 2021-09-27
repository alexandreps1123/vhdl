library IEEE;
use IEEE.std_logic_1164.all;

entity dut_clocked is
	port (
	clk : in std_logic;
	a : in std_logic;
	b : in std_logic;
	y : out std_logic
	);
end dut_clocked;

architecture basic of dut_clocked is

begin

process (clk) is
begin
	if(rising_edge(clk))then
		y <= a and b;
	end if;

end process;

end basic; 