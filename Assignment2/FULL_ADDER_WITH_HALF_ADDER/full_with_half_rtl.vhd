library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_with_half_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end full_with_half_rtl;

architecture Behavioral of full_with_half_rtl is

component half_adder_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;

signal temp, c1, c2 : STD_LOGIC := '0';


begin

HA0: half_adder_rtl port map(a=>a, b=>b, sum=>temp, carry=>c1);
HA1: half_adder_rtl port map(a=>temp, b=>c, sum=>sum, carry=>c2);
carry <= c1 or c2;

end Behavioral;

