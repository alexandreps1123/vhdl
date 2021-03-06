library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dut_timer is
	port(
		clk 	: in std_logic;
		reset 	: in std_logic;
		enable	: in std_logic;
		contagem: out std_logic_vector(5 downto 0)
	);
end dut_timer;

architecture basic of dut_timer is

	type my_state is (Zera, Parado, Soma);
	signal estado_atual	: my_state;
	signal proximo_estado	: my_state;

	signal contador : unsigned(5 downto 0); --valores de 0 a 59
	signal controle : std_logic_vector(1 downto 0);

begin
	--concatenacao de sinal
	controle <= reset & enable;
	contagem <= std_logic_vector(contador);

	--processo sincrono
	process(clk)
	begin
		if rising_edge(clk) then
			estado_atual <= proximo_estado;
			case estado_atual is
				when Zera => contador <= to_unsigned(0, contador'length);
				when Parado => contador <= contador;
				when Soma => 
					if (contador=59) then
						contador <= to_unsigned(0, contador'length);
					else
						contador <= contador + 1;						
					end if;
			end case;
		end if;
	end process;

	--processo assincrono
	process(controle)
		begin
			case controle is
				--reset = 0 enable = 0
				when "00" => proximo_estado <= Parado;

				--reset = 0 enable = 1
				when "01" => proximo_estado <= Soma;

				--reset = 1 enable = 0
				when "10" => proximo_estado <= Zera;

				--reset = 1 enable = 1
				when "11" => proximo_estado <= Zera;

				when others => proximo_estado <= estado_atual;

		end case;
	end process;

end basic;
