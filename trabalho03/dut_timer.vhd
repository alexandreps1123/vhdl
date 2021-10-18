library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dut_timer is
	port(
		clk	: in std_logic;
		reset	: in std_logic;
		enable	: in std_logic;
		up_down	: in std_logic;
		contagem: out std_Logic_vector(5 downto 0)
	);
end dut_timer;

architecture basic of dut_timer is

	signal estado_atual	: std_logic_vector(2 downto 0);
	signal proximo_estado	: std_logic_vector(2 downto 0);

	signal contador		: unsigned(5 downto 0);
	signal controle		: std_logic_vector(2 downto 0);

begin
	controle <= enable & reset & up_down;
	contagem <= std_logic_vector(contador);

	--processo sincrono
	process(clk)
	begin
		if rising_edge(clk) then
			estado_atual <= proximo_estado;
			case estado_atual is
				
				--zerar contador
				when "010" => contador <= to_unsigned(0, contador'length);
				when "011" => contador <= to_unsigned(0, contador'length);
				when "110" => contador <= to_unsigned(0, contador'length);
				when "111" => contador <= to_unsigned(0, contador'length);

				--parar contador
				when "000" => contador <= contador;
				when "001" => contador <= contador;

				--incrementar contador
				when "100" =>
					if (contador = 59) then
						contador <= to_unsigned(0, contador'length);
					else
						contador <= contador + 1;
					end if;

				--decrementar contador
				when "101" =>
					if (contador = 0) then
						contador <= to_unsigned(59, contador'length);
					else
						contador <= contador - 1;
					end if;
				when others => contador <= "XXXXXX";
			end case;
		end if;
	end process;

	--processo assincrono
	process(controle)
		begin
			case controle is

				--zerar contador
				--enable = 0 reset = 1 up_down = 0
				--enable = 0 reset = 1 up_down = 1
				--enable = 1 reset = 1 up_down = 0
				--enable = 1 reset = 1 up_down = 1
				when "010" => proximo_estado <= "010";
				when "011" => proximo_estado <= "011";
				when "110" => proximo_estado <= "110";
				when "111" => proximo_estado <= "111";

				--parar contador
				--enable = 0 reset = 0 up_down = 0
				--enable = 0 reset = 0 up_down = 1
				when "000" => proximo_estado <= "000";
				when "001" => proximo_estado <= "001";

				--incrementar contador
				--enable = 1 reset = 0 up_down = 0
				when "100" => proximo_estado <= "100";

				--decrementar contador
				--enable = 1 reset = 0 up_down = 1
				when "101" => proximo_estado <= "101";

				when others => proximo_estado <= estado_atual;
			end case;
	end process;
	
end basic;