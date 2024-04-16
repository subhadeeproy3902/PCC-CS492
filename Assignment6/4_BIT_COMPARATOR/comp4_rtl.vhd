
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity comp4_rtl is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           lesser : out  STD_LOGIC;
           greater : out  STD_LOGIC;
           equal : out  STD_LOGIC);
end comp4_rtl;

architecture Behavioral of comp4_rtl is

component xnor_rtl is
	PORT(	x: in STD_LOGIC;
			y: in STD_LOGIC;
			op: out STD_LOGIC);
end component;

signal x0, x1, x2, x3: STD_LOGIC:='0';

begin

xn0: xnor_rtl port map(x => a(0), y => b(0), op => x0);
xn1: xnor_rtl port map(x => a(1), y => b(1), op => x1);
xn2: xnor_rtl port map(x => a(2), y => b(2), op => x2);
xn3: xnor_rtl port map(x => a(3), y => b(3), op => x3);
equal <= x0 and x1 and x2 and x3;
lesser <= (not a(3) and b(3)) or (x3 and not a(2) and b(2)) or (x3 and x2 and not a(1) and b(1)) or (x3 and x2 and x1 and not a(0) and b(0));
greater <= (not b(3) and a(3)) or (x3 and a(2) and not b(2)) or (x3 and x2 and a(1) and not b(1)) or (x3 and x2 and x1 and a(0) and not b(0));


end Behavioral;

