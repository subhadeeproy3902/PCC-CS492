----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:17:15 03/04/2024 
-- Design Name: 
-- Module Name:    full_sub_using_half_rtl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_sub_using_half_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Diff : out  STD_LOGIC;
           Borrow : out  STD_LOGIC);
end full_sub_using_half_rtl;

architecture Behavioral of full_sub_using_half_rtl is

COMPONENT half_sub_rtl is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Diff : out  STD_LOGIC;
           Borrow : out  STD_LOGIC);
end COMPONENT;

signal temp, c1, c2 : STD_LOGIC := '0';

begin

HS0: half_sub_rtl port map(X=>A, Y=>B, Diff=>temp, Borrow=>c1);
HS1: half_sub_rtl port map(X=>temp, Y=>Cin, Diff=>Diff, Borrow=>c2);
Borrow <= c1 or c2;


end Behavioral;

