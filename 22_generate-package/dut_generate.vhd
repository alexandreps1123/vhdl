library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.parametros.all;

entity dut_generate is
	generic(
		n : natural := Kbits
	);
	port(
		i : in std_logic_vector(1 to n);
		o : out std_logic
	);
end dut_generate;

architecture basic of dut_generate is
	signal a : std_logic_vector(1 to n);
begin
	o <= a(n);
	a(1) <= i(1);
	g1: for x in 2 to n generate
		a(x) <= i(x) and a(x-1);
	end generate g1;
end basic;
