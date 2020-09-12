LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_bit.ALL;

ENTITY A6_KJW_PJH_TB IS
END A6_KJW_PJH_TB;
 
ARCHITECTURE behavior OF A6_KJW_PJH_TB IS 
    COMPONENT A6_KJW_PJH
    PORT(
         A : IN  unsigned(7 downto 0);
         B : IN  unsigned(7 downto 0);
			f : OUT unsigned(11 downto 0);
         Seg3 : OUT  unsigned(6 downto 0);
         Seg2 : OUT  unsigned(6 downto 0);
         Seg1 : OUT  unsigned(6 downto 0)
        );
    END COMPONENT;
    
   signal A : unsigned(7 downto 0) := (others => '0');
   signal B : unsigned(7 downto 0) := (others => '0');
	signal f : unsigned(11 downto 0);
   signal Seg3 : unsigned(6 downto 0);
   signal Seg2 : unsigned(6 downto 0);
   signal Seg1 : unsigned(6 downto 0);
 
BEGIN
   uut: A6_KJW_PJH PORT MAP (
          A => A,
          B => B,
			 f => f,
          Seg3 => Seg3,
          Seg2 => Seg2,
          Seg1 => Seg1
        );

   stim_proc: process
   begin		
      A <= "10010011"; wait for 100 ns;
		A <= "00100111"; wait for 100 ns;
		A <= "01010001"; wait for 100 ns;
		A <= "01000011"; wait for 100 ns;
		A <= "01101001"; wait for 100 ns;
		A <= "00000100"; wait for 100 ns;
   end process;
	stim_proc1: process
	begin
		B <= "01110111"; wait for 100 ns;
		B <= "01100100"; wait for 100 ns;
		B <= "10011000"; wait for 100 ns;
		B <= "00110010"; wait for 100 ns;
		B <= "01101000"; wait for 100 ns;
		B <= "00000101"; wait for 100 ns;
	end process;
END;
