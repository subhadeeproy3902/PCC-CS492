--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:45:16 03/04/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122050/composite/composite_test.vhd
-- Project Name:  composite
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: composite_rtl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY composite_test IS
END composite_test;
 
ARCHITECTURE behavior OF composite_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT composite_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         M : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         Carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal M : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: composite_rtl PORT MAP (
          A => A,
          B => B,
          M => M,
          S => S,
          Carry => Carry
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
      A<= "0110";
		B<= "1110";
		M<= '0';
		wait for 1 ps;
		A<= "0110";
		B<= "1110";
		M<= '1';
		wait for 1 ps;
   end process;

END;
