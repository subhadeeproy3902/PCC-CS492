--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:14:39 03/06/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122061/half_sub/half_sub_test.vhd
-- Project Name:  half_sub
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: half_sub_rtl
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
 
ENTITY half_sub_test IS
END half_sub_test;
 
ARCHITECTURE behavior OF half_sub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT half_sub_rtl
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Diff : OUT  std_logic;
         Borrow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal Diff : std_logic;
   signal Borrow : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: half_sub_rtl PORT MAP (
          A => A,
          B => B,
          Diff => Diff,
          Borrow => Borrow
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
			A<='0';
			B<='0';
			wait for 1 ps;
			A<='0';
			B<='1';
			wait for 1 ps;
			A<='1';
			B<='0';
			wait for 1 ps;
			A<='1';
			B<='1';
			wait for 1 ps;
			
		
		
		
   end process;

END;
