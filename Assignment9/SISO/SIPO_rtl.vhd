
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SIPO_rtl is
    Port ( Data : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0));
end SIPO_rtl;

architecture Behavioral of SIPO_rtl is

component d_rtl is
    Port ( D : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;


begin

D0: d_rtl port map(D => Data, CLK=>ClK, Reset=>Rst, Q=>Q(0));
D1: d_rtl port map(D => Q(0), CLK=>ClK, Reset=>Rst, Q=>Q(1));
D2: d_rtl port map(D => Q(1), CLK=>ClK, Reset=>Rst, Q=>Q(2));
D3: d_rtl port map(D => Q(2), CLK=>ClK, Reset=>Rst, Q=>Q(3));

end Behavioral;

