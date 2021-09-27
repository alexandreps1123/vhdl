--tb_process
library IEEE;
use IEEE.std_logic_1164.all;

entity tb_process is
--vazio
end tb_process;

architecture tb1 of tb_process is

signal my_signal : integer := 0;

begin

--[label:] process [sensitity_list] [is]
--	[declarative_part]
--	begin
--		sequential_statement_part
--	end process [label];

contador: process is
	variable my_var : integer := 0;

begin
	--sinal necessita de tempo de simulacao para atualizar o valor
	--variavel nao necessita da passagem de tempo para autalizar valor

	report " inicio do processo";

	report "my_var: " & integer'image(my_var) & " my_sig: " & integer'image(my_signal);

	my_var := my_var + 1;
	my_signal <= my_signal + 1;

	wait for 1 ns;

	report "my_var: " & integer'image(my_var) & " my_sig: " & integer'image(my_signal);

	my_var := my_var + 1;
	my_signal <= my_signal + 1;

	wait for 1 ns;

	report "my_var: " & integer'image(my_var) & " my_sig: " & integer'image(my_signal);

	my_var := my_var + 1;
	my_signal <= my_signal + 1;

	wait for 1 ns;

	report "my_var: " & integer'image(my_var) & " my_sig: " & integer'image(my_signal);

	report "fim do processo";

end process;

end tb1;
