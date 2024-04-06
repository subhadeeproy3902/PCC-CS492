library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end and_rtl;

architecture Behavioral of and_rtl is

begin

c <= a and b;


end Behavioral;

