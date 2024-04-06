----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:59:15 03/11/2024 
-- Design Name: 
-- Module Name:    half_sub_rtl - Behavioral 
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

entity half_sub_rtl is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Diff : out  STD_LOGIC;
           Borrow : out  STD_LOGIC);
end half_sub_rtl;

architecture Behavioral of half_sub_rtl is

begin

Diff <= X XOR Y;
Borrow <= NOT(X) AND Y;


end Behavioral;

