library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_bit.all;

entity A6_KJW_PJH is
    Port ( A : in unsigned(7 downto 0);
           B : in unsigned(7 downto 0);
			  f : out unsigned(11 downto 0);
           Seg3 : out unsigned(6 downto 0);
           Seg2 : out unsigned(6 downto 0);
           Seg1 : out unsigned(6 downto 0));
end A6_KJW_PJH;

architecture Behavioral of A6_KJW_PJH is
component BCD_Adder_A6_KJW_PJH
	port( X : in unsigned(7 downto 0);
         Y : in unsigned(7 downto 0);
         Z : out unsigned(11 downto 0));
end component;

component Decoder_A6_KJW_PJH is
	port( X : in  unsigned(3 downto 0);
         Y : out unsigned(6 downto 0));
end component;
signal Q : unsigned(11 downto 0);
begin
	Adder1: BCD_Adder_A6_KJW_PJH port map(A,B,Q);
	Decoder1: Decoder_A6_KJW_PJH port map(Q(3 downto 0),seg1);
	Decoder2: Decoder_A6_KJW_PJH port map(Q(7 downto 4),seg2);
	Decoder3: Decoder_A6_KJW_PJH port map(Q(11 downto 8),seg3);
	f <= Q;
end Behavioral;

