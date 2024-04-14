
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sr_rtl is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QBar : out  STD_LOGIC);
end sr_rtl;

architecture Behavioral of sr_rtl is

signal temp : STD_LOGIC := '0';

begin
	Q <= temp;
	QBar <= (not temp);
	
	process(Reset,Clk)
	begin
		if (Reset = '1') then
			temp <= '0';
	
		elsif (RISING_EDGE(Clk)) then
			if (S = '0' and R = '0') then
				temp <= temp;
			elsif (S /= R) then
				temp <= S;
			elsif (S = '1' and R = '1') then
				temp <= 'Z';
			end if;
		end if;
	end process;
end Behavioral;

