
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity jk_rtl is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QBar : out  STD_LOGIC);
end jk_rtl;

architecture Behavioral of jk_rtl is

signal temp : STD_LOGIC := '0';

begin
	Q <= temp;
	QBar <= (not temp);
	
	process(Reset,Clk)
	begin
		if (Reset = '1') then
			temp <= '0';
	
		elsif (RISING_EDGE(Clk)) then
			if (J = '0' and K = '0') then
				temp <= temp;
			elsif (J /= K) then
				temp <= J;
			elsif (J = '1' and K = '1') then
				temp <= not temp;
			end if;
		end if;
	end process;
end Behavioral;

