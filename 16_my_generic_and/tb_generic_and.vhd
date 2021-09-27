library IEEE;
use IEEE.std_logic_1164.all;
--numeric_std permite o uso de valores numericos
use IEEE.numeric_std.all;

entity tb_generic_and is
    --no tb pode-se informar um valor para o parametro generic
    --se nao for informado um valor generic recebe o valor default = 8
    --maior flexibilidade para descricao de hardware
    generic(
        Nbits: natural := 8
    );
end tb_generic_and;

architecture tb1 of tb_generic_and is

--declaracao de componentes
component my_generic_and is
    generic(
        Nbits: natural := 8
    );
    port(
        a : in std_logic_vector(Nbits-1 downto 0);
        y : out std_logic
    );
end component;
--

signal a_in : std_logic_vector(Nbits-1 downto 0);
signal y_out : std_logic;

begin

--instaciacao de componentes
GEN_AND: my_generic_and
            generic map(
                Nbits => Nbits
            )
            port map(
                a => a_in,
                y => y_out
            );
--
process
begin
    --
    --laco 'for' no testbench apresenta 
    --comportamento semelhante ao 'for' 
    --tradicional em linguagens de programacao
    --
    for I in 0 to 2**Nbits-1 loop
        a_in <= std_logic_vector(to_unsigned(I, a_in'length));  
        wait for 1 ns;
    end loop;

    wait for 5 ns;
    a_in <= std_logic_vector(to_unsigned(0, a_in'length));

    wait;
end process;

end tb1;