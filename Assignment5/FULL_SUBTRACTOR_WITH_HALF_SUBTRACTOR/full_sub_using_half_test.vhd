--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:27:46 03/04/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122050/full_sub_using_half/full_sub_using_half_test.vhd
-- Project Name:  full_sub_using_half
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_sub_using_half_rtl
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
 
ENTITY full_sub_using_half_test IS
END full_sub_using_half_test;
 
ARCHITECTURE behavior OF full_sub_using_half_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_sub_using_half_rtl
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         Diff : OUT  std_logic;
         Borrow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal Diff : std_logic;
   signal Borrow : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_sub_using_half_rtl PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Diff => Diff,
          Borrow => Borrow
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
      A <= '0';
		B <= '0';
		Cin <= '0';
      wait for 1 ps;	
		A <= '0';
		B <= '0';
		Cin <= '1';
      wait for 1 ps;
		A <= '0';
		B <= '1';
		Cin <= '0';
      wait for 1 ps;
		A <= '0';
		B <= '1';
		Cin <= '1';
      wait for 1 ps;
		A <= '1';
		B <= '0';
		Cin <= '0';
      wait for 1 ps;
		A <= '1';
		B <= '0';
		Cin <= '1';
      wait for 1 ps;
		A <= '1';
		B <= '1';
		Cin <= '0';
      wait for 1 ps;
		A <= '1';
		B <= '1';
		Cin <= '1';
      wait for 1 ps;
   end process;

END;
