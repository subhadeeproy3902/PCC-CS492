----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comp_rtl is
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0);
           b : in  STD_LOGIC_VECTOR (1 downto 0);
           lesser : out  STD_LOGIC;
           greater : out  STD_LOGIC;
           equal : out  STD_LOGIC);
end comp_rtl;

architecture Behavioral of comp_rtl is
signal t0, t1: StD_LOGIC:= '0';


begin

t0 <= not((a(0) and not(b(0))) or (b(0) and (not a(0))));
t1 <= not((a(1) and not(b(1))) or (b(1) and (not a(1))));


greater <= (a(1) and (not b(1))) or (t1 and (a(0) and (not b(0))));
lesser <= (b(1) and (not a(1))) or (t1 and (b(0) and (not a(0))));
equal <= t0 and t1;


end Behavioral;

