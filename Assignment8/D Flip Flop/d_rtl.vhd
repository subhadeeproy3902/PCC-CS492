
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity d_rtl is
    Port ( D : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QBar : out  STD_LOGIC);
end d_rtl;

architecture Behavioral of d_rtl is

signal temp : STD_LOGIC := '0';

begin
	Q <= temp;
	QBar <= (not temp);
	
	process(Reset,Clk)
	begin
		if (Reset = '1') then
			temp <= '0';
	
		elsif (RISING_EDGE(Clk)) then
			temp <= D;
		end if;
	end process;
end Behavioral;


