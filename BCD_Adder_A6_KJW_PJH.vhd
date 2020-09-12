library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_bit.all;
entity BCD_Adder_A6_KJW_PJH is
    Port ( X : in unsigned(7 downto 0);
           Y : in unsigned(7 downto 0);
           Z : out unsigned(11 downto 0));
end BCD_Adder_A6_KJW_PJH;

architecture Behavioral of BCD_Adder_A6_KJW_PJH is
signal X0: unsigned(3 downto 0);
signal X1: unsigned(3 downto 0);
signal Y0: unsigned(3 downto 0);
signal Y1: unsigned(3 downto 0);
signal z0: unsigned(3 downto 0);
signal z1: unsigned(3 downto 0);
signal z2: unsigned(3 downto 0);
signal S0, S1: unsigned(4 downto 0);
signal c: bit;

begin
	X0 <= X(3 downto 0);
	X1 <= X(7 downto 4);
	Y0 <= Y(3 downto 0);
	Y1 <= Y(7 downto 4);
	S0 <= '0' & X0 + Y0;
	z0 <= S0(3 downto 0) +6 when s0 > 9
		else S0(3 downto 0);
	c <= '1' when S0 > 9
		else '0';
	S1 <= '0' & X1 + Y1 + unsigned'(0 => C);
	Z1 <= S1(3 downto 0) + 6 when S1 >9
		else S1(3 downto 0);
	Z2 <= "0001" when S1 > 9 else "0000";
	Z <= Z2 & Z1 & Z0;
end Behavioral;

