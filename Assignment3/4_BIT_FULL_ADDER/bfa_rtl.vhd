----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:16:50 03/04/2024 
-- Design Name: 
-- Module Name:    bfa_rtl - Behavioral 
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

entity bfa_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end bfa_rtl;

architecture Behavioral of bfa_rtl is

component full_adder_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Carry: out  STD_LOGIC);
end component;

signal C0, C1, C2, C3: STD_LOGIC;

begin

	FA1: full_adder_rtl port map(A(0), B(0), Cin, Sum(0), C0);
	FA2: full_adder_rtl port map(A(1), B(1), C0, Sum(1), C1);
	FA3: full_adder_rtl port map(A(2), B(2), C1, Sum(2), C2);
	FA4: full_adder_rtl port map(A(3), B(3), C2, Sum(3), Cout);

end Behavioral;

