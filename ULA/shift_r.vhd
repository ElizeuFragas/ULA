library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_r is
	generic(
		nbits    : natural;
		shift : integer
	);
	-- Declação das entradas e saída
	port(
		a 			 : in std_logic_vector(nbits-1 downto 0);
		a_shifted : out std_logic_vector(nbits-1 downto 0)
	);
end shift_r;
-- Declação da arquitetura
architecture comportamento of shift_r is

begin

	a_shifted <= std_logic_vector(shift_right(unsigned(a), shift));

end comportamento;