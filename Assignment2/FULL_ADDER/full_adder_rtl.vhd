library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_rtl is
    PORt ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end full_adder_rtl;

architecture BehaviORal of full_adder_rtl is

begin

sum <= a xor b xor c;
carry <= (a and b) or (c and (a xor b));


end BehaviORal;

