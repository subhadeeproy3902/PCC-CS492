library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end half_adder_rtl;

architecture Behavioral of half_adder_rtl is

begin

sum <= (a and (not b)) or (not a and b);
carry <= a and b;

end Behavioral;

