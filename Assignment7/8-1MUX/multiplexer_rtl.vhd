
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity multiplexer_rtl is
    Port ( I : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC);
end multiplexer_rtl;

architecture Behavioral of multiplexer_rtl is


begin
	process (I, S)
	begin
		case S is
		when "000" => Y <= I(0);
		when "001" => Y <= I(1);
		when "010" => Y <= I(2);
		when "011" => Y <= I(3);
		when "100" => Y <= I(4);
		when "101" => Y <= I(5);
		when "110" => Y <= I(6);
		when "111" => Y <= I(7);
		when others => Y <= '0';
		end case;	
	end process;

end Behavioral;

