----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:20:48 03/04/2024 
-- Design Name: 
-- Module Name:    bfs_rtl - Behavioral 
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

entity bfs_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Bin : in  STD_LOGIC;
           Diff : out  STD_LOGIC_VECTOR (3 downto 0);
           Bout : out  STD_LOGIC);
end bfs_rtl;

architecture Behavioral of bfs_rtl is

component full_sub_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           Diff : out  STD_LOGIC;
           Borrow : out  STD_LOGIC);
end component;

signal C0, C1, C2, C3: STD_LOGIC;

begin

FS0: full_sub_rtl port map(A(0), B(0), Bin, Diff(0), C0);
FS1: full_sub_rtl port map(A(1), B(1), C0, Diff(1), C1);
FS2: full_sub_rtl port map(A(2), B(2), C1, Diff(2), C2);
FS3: full_sub_rtl port map(A(3), B(3), C2, Diff(3), Bout);

end Behavioral;

