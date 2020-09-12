library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_bit.all;
entity Decoder_A6_KJW_PJH is
    Port ( X : in unsigned(3 downto 0);
           Y : out unsigned(6 downto 0));
end Decoder_A6_KJW_PJH;

architecture Behavioral of Decoder_A6_KJW_PJH is
begin
	process(X)
	begin
		case x is
		when "0000" => Y <= "1111110";
		when "0001" => Y <= "0110000";
		when "0010" => Y <= "1101101";
		when "0011" => Y <= "1111001";
		when "0100" => Y <= "0110011";
		when "0101" => Y <= "1011011";
		when "0110" => Y <= "1011111";
		when "0111" => Y <= "1110000";
		when "1000" => Y <= "1111111";
		when "1001" => Y <= "1111011";
		when others => null;
		end case;
	end process;
end Behavioral;

