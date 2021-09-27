--Universidade de Brasília - UnB
--Aluno: Alexandre Ferreira
--Matricula: 120025175
--Disciplina: Sistemas reconfiguráveis para automação
--Turma: 01
--Professor: Jones Yudi Mori Alves da Silva
--Projeto 01 : ULA - Unidade lógica aritmética
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dut_ula is
	generic(
		Nbits : natural := 4
	);
	port(
		clk : in std_logic;
		i_a : in std_logic_vector(Nbits-1 downto 0);
		i_b : in std_logic_vector(Nbits-1 downto 0);
		sel : in std_logic_vector(3 downto 0);
		o_r : out std_logic_vector(2*Nbits-1 downto 0)
	);
end dut_ula;

architecture basic of dut_ula is
	
signal s_a : signed(Nbits-1 downto 0);
signal s_b : signed(Nbits-1 downto 0);
signal s_r : signed(2*Nbits-1 downto 0);

begin
	s_a <= signed(i_a);
	s_b <= signed(i_b);
	o_r <= std_logic_vector(s_r);

	process(clk) is
	begin
		if(rising_edge(clk))then

			case sel is
				-- sel 0000 = soma
				when "0000" => s_r <= resize(s_a + s_b, s_r'length);
				-- sel 0001 = subtracao
				when "0001" => s_r <= resize(s_a - s_b, s_r'length);
				-- sel 0010 = multiplicacao
				when "0010" => s_r <= resize(s_a * s_b, s_r'length);
				-- sel 0011 = divisao
				when "0011" => s_r <= resize(s_a / s_b, s_r'length);
				-- sel 0100 = rem (resto inteiro, conserva o sinal do divisor)
				when "0100" => s_r <= resize(s_a rem s_b, s_r'length);
				-- sel 0101 = mod (resto inteiro, conserva o sinal do dividendo)
				when "0101" => s_r <= resize(s_a mod s_b, s_r'length);
				-- sel 0110 = abs (valor absoluto de um numero)
				when "0110" => s_r <= resize(abs(s_a), s_r'length);
				-- sel 0111 = not
				when "0111" => s_r <= resize(signed(not(std_logic_vector(s_a))), s_r'length);
				-- sel 1000 = and
				when "1000" => s_r <= resize(signed(std_logic_vector(s_a) and std_logic_vector(s_b)), s_r'length);
				-- sel 1001 = or
				when "1001" => s_r <= resize(signed(std_logic_vector(s_a) or std_logic_vector(s_b)), s_r'length);
				-- sel 1010 = xor
				when "1010" => s_r <= resize(signed(std_logic_vector(s_a) xor std_logic_vector(s_b)), s_r'length);
				-- sel XXXX
				when others => s_r <= s_r;
			end case;
		end if;
	end process;

end basic;
