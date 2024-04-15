
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


entity counter_rtl is
    Port ( Mode : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Count : inout  STD_LOGIC_VECTOR (3 downto 0));
end counter_rtl;

architecture Behavioral of counter_rtl is

begin
	process (Clk,Rst)
	begin 
		if(Rst='1') then 
			Count<="0000";
		elsif(RISING_EDGE(Clk)) then 
			if(Mode = '0') then 
				Count<=Count+1;
			else 
			Count <= Count -1;
			
			end if;
		end if;
	
	end process;

end Behavioral;

