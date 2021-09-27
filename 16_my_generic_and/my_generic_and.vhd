-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity my_generic_and is
	generic(
    	Nbits: natural := 8
    );
	port(
    	a : in std_logic_vector(Nbits-1 downto 0);
        y : out std_logic
    );
end my_generic_and;

architecture basic of my_generic_and is

begin

	y <= and a;
	
end basic;