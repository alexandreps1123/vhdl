library IEEE;
use IEEE.std_logic_1164.all;

entity tb_one_hot is
--vazio
end tb_one_hot;

architecture tb1 of tb_one_hot is

--DUT
component my_logic_one_hot is
	port(
		a   : in std_logic_vector(1 downto 0);
		sel : in std_logic_vector(5 downto 0);
		y   : out std_logic
	
	);
end component;

signal a_in	: std_logic_vector(1 downto 0);
signal sel_in	: std_logic_vector(5 downto 0);
signal y_out	: std_logic;

begin

DUT: my_logic_one_hot port map(
			a   => a_in,
			sel => sel_in,
			y   => y_out
		);

process
begin

	--XX
	a_in   <= "XX";
	sel_in <= "000000";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "000001";
	wait for 1 ns;

	a_in   <= "XX";
	sel_in <= "000010";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "000011";
	wait for 1 ns;

	a_in   <= "XX";
	sel_in <= "000100";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "000101";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "000110";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "000111";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "001000";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "001001";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "001010";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "001011";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "001100";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "001101";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "001110";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "001111";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "010000";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "010001";
	wait for 1 ns;

	a_in   <= "XX";
	sel_in <= "010010";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "010011";
	wait for 1 ns;

	a_in   <= "XX";
	sel_in <= "010100";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "010101";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "010110";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "010111";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "011000";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "011001";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "011010";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "011011";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "011100";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "011101";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "011110";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "011111";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "100000";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "100001";
	wait for 1 ns;

	a_in   <= "XX";
	sel_in <= "100010";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "100011";
	wait for 1 ns;

	a_in   <= "XX";
	sel_in <= "100100";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "100101";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "100110";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "100111";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "101000";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "101001";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "101010";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "101011";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "101100";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "101101";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "101110";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "101111";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "110000";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "110001";
	wait for 1 ns;

	a_in   <= "XX";
	sel_in <= "110010";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "110011";
	wait for 1 ns;

	a_in   <= "XX";
	sel_in <= "110100";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "110101";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "110110";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "110111";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "111000";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "111001";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "111010";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "111011";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "111100";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "111101";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "111110";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "111111";
	wait for 1 ns;
	
	--00
	a_in   <= "00";
	sel_in <= "000000";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "000001";
	wait for 1 ns;

	a_in   <= "00";
	sel_in <= "000010";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "000011";
	wait for 1 ns;

	a_in   <= "00";
	sel_in <= "000100";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "000101";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "000110";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "000111";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "001000";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "001001";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "001010";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "001011";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "001100";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "001101";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "001110";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "001111";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "010000";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "010001";
	wait for 1 ns;

	a_in   <= "00";
	sel_in <= "010010";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "010011";
	wait for 1 ns;

	a_in   <= "00";
	sel_in <= "010100";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "010101";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "010110";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "010111";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "011000";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "011001";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "011010";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "011011";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "011100";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "011101";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "011110";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "011111";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "100000";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "100001";
	wait for 1 ns;

	a_in   <= "00";
	sel_in <= "100010";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "100011";
	wait for 1 ns;

	a_in   <= "00";
	sel_in <= "100100";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "100101";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "100110";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "100111";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "101000";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "101001";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "101010";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "101011";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "101100";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "101101";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "101110";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "101111";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "110000";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "110001";
	wait for 1 ns;

	a_in   <= "00";
	sel_in <= "110010";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "110011";
	wait for 1 ns;

	a_in   <= "00";
	sel_in <= "110100";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "110101";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "110110";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "110111";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "111000";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "111001";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "111010";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "111011";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "111100";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "111101";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "111110";
	wait for 1 ns;
	
	a_in   <= "00";
	sel_in <= "111111";
	wait for 1 ns;
	
	--01
	a_in   <= "01";
	sel_in <= "000000";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "000001";
	wait for 1 ns;

	a_in   <= "01";
	sel_in <= "000010";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "000011";
	wait for 1 ns;

	a_in   <= "01";
	sel_in <= "000100";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "000101";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "000110";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "000111";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "001000";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "001001";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "001010";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "001011";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "001100";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "001101";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "001110";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "001111";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "010000";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "010001";
	wait for 1 ns;

	a_in   <= "01";
	sel_in <= "010010";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "010011";
	wait for 1 ns;

	a_in   <= "01";
	sel_in <= "010100";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "010101";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "010110";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "010111";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "011000";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "011001";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "011010";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "011011";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "011100";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "011101";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "011110";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "011111";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "100000";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "100001";
	wait for 1 ns;

	a_in   <= "01";
	sel_in <= "100010";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "100011";
	wait for 1 ns;

	a_in   <= "01";
	sel_in <= "100100";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "100101";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "100110";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "100111";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "101000";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "101001";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "101010";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "101011";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "101100";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "101101";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "101110";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "101111";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "110000";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "110001";
	wait for 1 ns;

	a_in   <= "01";
	sel_in <= "110010";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "110011";
	wait for 1 ns;

	a_in   <= "01";
	sel_in <= "110100";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "110101";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "110110";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "110111";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "111000";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "111001";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "111010";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "111011";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "111100";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "111101";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "111110";
	wait for 1 ns;
	
	a_in   <= "01";
	sel_in <= "111111";
	wait for 1 ns;
	
	--10
	a_in <= "10";
	sel_in <= "000000";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "000001";
	wait for 1 ns;

	a_in <= "10";
	sel_in <= "000010";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "000011";
	wait for 1 ns;

	a_in <= "10";
	sel_in <= "000100";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "000101";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "000110";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "000111";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "001000";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "001001";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "001010";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "001011";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "001100";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "001101";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "001110";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "001111";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "010000";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "010001";
	wait for 1 ns;

	a_in <= "10";
	sel_in <= "010010";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "010011";
	wait for 1 ns;

	a_in <= "10";
	sel_in <= "010100";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "010101";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "010110";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "010111";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "011000";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "011001";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "011010";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "011011";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "011100";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "011101";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "011110";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "011111";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "100000";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "100001";
	wait for 1 ns;

	a_in <= "10";
	sel_in <= "100010";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "100011";
	wait for 1 ns;

	a_in <= "10";
	sel_in <= "100100";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "100101";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "100110";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "100111";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "101000";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "101001";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "101010";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "101011";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "101100";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "101101";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "101110";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "101111";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "110000";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "110001";
	wait for 1 ns;

	a_in <= "10";
	sel_in <= "110010";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "110011";
	wait for 1 ns;

	a_in <= "10";
	sel_in <= "110100";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "110101";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "110110";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "110111";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "111000";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "111001";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "111010";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "111011";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "111100";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "111101";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "111110";
	wait for 1 ns;
	
	a_in <= "10";
	sel_in <= "111111";
	wait for 1 ns;
	
	--11
	a_in <= "11";
	sel_in <= "000000";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "000001";
	wait for 1 ns;

	a_in <= "11";
	sel_in <= "000010";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "000011";
	wait for 1 ns;

	a_in <= "11";
	sel_in <= "000100";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "000101";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "000110";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "000111";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "001000";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "001001";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "001010";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "001011";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "001100";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "001101";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "001110";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "001111";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "010000";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "010001";
	wait for 1 ns;

	a_in <= "11";
	sel_in <= "010010";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "010011";
	wait for 1 ns;

	a_in <= "11";
	sel_in <= "010100";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "010101";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "010110";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "010111";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "011000";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "011001";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "011010";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "011011";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "011100";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "011101";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "011110";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "011111";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "100000";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "100001";
	wait for 1 ns;

	a_in <= "11";
	sel_in <= "100010";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "100011";
	wait for 1 ns;

	a_in <= "11";
	sel_in <= "100100";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "100101";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "100110";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "100111";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "101000";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "101001";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "101010";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "101011";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "101100";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "101101";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "101110";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "101111";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "110000";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "110001";
	wait for 1 ns;

	a_in <= "11";
	sel_in <= "110010";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "110011";
	wait for 1 ns;

	a_in <= "11";
	sel_in <= "110100";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "110101";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "110110";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "110111";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "111000";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "111001";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "111010";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "111011";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "111100";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "111101";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "111110";
	wait for 1 ns;
	
	a_in <= "11";
	sel_in <= "111111";
	wait for 1 ns;
	
	--XX
	a_in   <= "XX";
	sel_in <= "000000";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "000001";
	wait for 1 ns;

	a_in   <= "XX";
	sel_in <= "000010";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "000011";
	wait for 1 ns;

	a_in   <= "XX";
	sel_in <= "000100";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "000101";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "000110";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "000111";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "001000";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "001001";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "001010";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "001011";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "001100";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "001101";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "001110";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "001111";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "010000";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "010001";
	wait for 1 ns;

	a_in   <= "XX";
	sel_in <= "010010";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "010011";
	wait for 1 ns;

	a_in   <= "XX";
	sel_in <= "010100";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "010101";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "010110";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "010111";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "011000";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "011001";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "011010";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "011011";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "011100";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "011101";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "011110";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "011111";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "100000";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "100001";
	wait for 1 ns;

	a_in   <= "XX";
	sel_in <= "100010";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "100011";
	wait for 1 ns;

	a_in   <= "XX";
	sel_in <= "100100";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "100101";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "100110";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "100111";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "101000";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "101001";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "101010";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "101011";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "101100";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "101101";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "101110";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "101111";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "110000";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "110001";
	wait for 1 ns;

	a_in   <= "XX";
	sel_in <= "110010";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "110011";
	wait for 1 ns;

	a_in   <= "XX";
	sel_in <= "110100";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "110101";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "110110";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "110111";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "111000";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "111001";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "111010";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "111011";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "111100";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "111101";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "111110";
	wait for 1 ns;
	
	a_in   <= "XX";
	sel_in <= "111111";
	wait;

end process;

end tb1;
