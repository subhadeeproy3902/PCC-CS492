library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end or_rtl;

architecture Behavioral of or_rtl is

begin
c <= a or b;

end Behavioral;

