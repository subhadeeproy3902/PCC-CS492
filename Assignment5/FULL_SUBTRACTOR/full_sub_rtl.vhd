----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:18:21 03/06/2024 
-- Design Name: 
-- Module Name:    full_sub_rtl - Behavioral 
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

entity full_sub_rtl is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           D : out  STD_LOGIC;
           B : out  STD_LOGIC);
end full_sub_rtl;

architecture Behavioral of full_sub_rtl is

begin
	D<=( X xor Y) xor Z;
	B<=(( not X )and Y) or (not(X xor Y)and Z);

end Behavioral;

