----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:33:11 03/04/2024 
-- Design Name: 
-- Module Name:    composite_rtl - Behavioral 
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

entity composite_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           M : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Carry : out  STD_LOGIC);
end composite_rtl;

architecture Behavioral of composite_rtl is

COMPONENT full_adder_rtl is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           SUM : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end COMPONENT;

signal c0,c1,c2,t0,t1,t2,t3 : STD_LOGIC :='0';

begin

t0 <= B(0) XOR M;
t1 <= B(1) XOR M;
t2 <= B(2) XOR M;
t3 <= B(3) XOR M;

adder01 : full_adder_rtl port map(
	X => A(0),
	Y => t0,
	Z => M,
	SUM => S(0),
	Cout => c0);
	
adder02 : full_adder_rtl port map(
	X => A(1),
	Y => t1,
	Z => c0,
	SUM => S(1),
	Cout => c1);

adder03 : full_adder_rtl port map(
	X => A(2),
	Y => t2,
	Z => c1,
	SUM => S(2),
	Cout => c2);

adder04 : full_adder_rtl port map(
	X => A(3),
	Y => t3,
	Z => c2,
	SUM => S(3),
	Cout => Carry);


end Behavioral;

