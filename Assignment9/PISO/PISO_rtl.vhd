
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity PISO_rtl is
    Port ( Data : in  STD_LOGIC_VECTOR (3 downto 0);
           Rst : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Load : in  STD_LOGIC;
           Dout : out  STD_LOGIC);
end PISO_rtl;

architecture Behavioral of PISO_rtl is
component d_ff_rtl is
    Port ( D : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QBar : out  STD_LOGIC);
end component;
component mux_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end component;
signal t0,t1,t2,t3,t4,t5,t6: std_logic:='0';
begin
D0: d_ff_rtl port map(D=>Data(0),CLK=>CLK,Reset=>Rst,Q=>t0);
M0: mux_rtl port map(A=>t0,B=>Load,C=>Load,D=>Data(1),Y=>t1);

D1: d_ff_rtl port map(D=>t1,CLK=>CLK,Reset=>Rst,Q=>t2);
M1: mux_rtl port map(A=>t2,B=>Load,C=>Load,D=>Data(2),Y=>t3);

D2: d_ff_rtl port map(D=>t3,CLK=>CLK,Reset=>Rst,Q=>t4);
M2: mux_rtl port map(A=>t4,B=>Load,C=>Load,D=>Data(3),Y=>t5);

D3: d_ff_rtl port map(D=>t5,CLK=>CLK,Reset=>rst,Q=>Dout);
end Behavioral;

