--Universidade de Brasilia - UnB
--Aluno: Alexandre Ferreira
--Matricula: 120025175
--Disciplina: Sistemas reconfiguráveis para automação
--Turma: 01
--Professor: Jones Yudi Mori Alves da Silva
--Projeto 02 : Media movel
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.parametros.all;

--
entity dut_media is
	generic(
		--comprimento da palavra
		n : natural := Nbits;

		--comprimento da janela de media movel
		m : natural := Mbits
	);
	port(
		s_clk : in std_logic;
		reg_in : in std_logic_vector(n-1 downto 0);
		media : out std_logic_vector(2*n-1 downto 0)
	);
end entity dut_media;
--

--
architecture basic of dut_media is
	
	type reg_type is array (m-2 downto 0)
	of std_logic_vector(n-1 downto 0);

	signal reg : reg_type;
	signal soma : reg_type;

begin

	media <= std_logic_vector(unsigned(soma(soma'high))/reg'length);
	soma(0) <= reg(0);
	g1: for A in 1 to m-2 generate
		soma(A) <= std_logic_vector(unsigned(soma(A-1)) + unsigned(reg(A)));
	end generate g1;

	process(s_clk)
	begin
		if rising_edge(s_clk) then
			reg <= reg(reg'high-1 downto reg'low) & reg_in;
		end if;
	end process;

end basic;