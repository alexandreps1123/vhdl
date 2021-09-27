library IEEE;
use IEEE.std_logic_1164.all;

entity dut_sensi_list is
	port	(
	a : in std_logic;
	b : in std_logic;
	y : out std_logic
	);
end dut_sensi_list;

architecture basic of dut_sensi_list is

begin

--lista de sensibilidade do processo
--significa que o processo esta sensivel
--a alteracoes em 'a' ou 'b'
process (a, b) is
begin
	y <= a and b;
end process;

end basic;
