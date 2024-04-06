--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:21:22 03/06/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122061/full_sub/full_sub_test.vhd
-- Project Name:  full_sub
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_sub_rtl
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
 
ENTITY full_sub_test IS
END full_sub_test;
 
ARCHITECTURE behavior OF full_sub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_sub_rtl
    PORT(
         X : IN  std_logic;
         Y : IN  std_logic;
         Z : IN  std_logic;
         D : OUT  std_logic;
         B : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
   signal Z : std_logic := '0';

 	--Outputs
   signal D : std_logic;
   signal B : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_sub_rtl PORT MAP (
          X => X,
          Y => Y,
          Z => Z,
          D => D,
          B => B
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin	
		X<='0';
		Y<='0';
		Z<='0';
		wait for 1 ps;
		X<='0';
		Y<='0';
		Z<='1';
		wait for 1 ps;
		X<='0';
		Y<='1';
		Z<='0';
		wait for 1 ps;
		X<='0';
		Y<='1';
		Z<='1';
		wait for 1 ps;
		X<='1';
		Y<='0';
		Z<='0';
		wait for 1 ps;
		X<='1';
		Y<='0';
		Z<='1';
		wait for 1 ps;
		X<='1';
		Y<='1';
		Z<='0';
		wait for 1 ps;
		X<='1';
		Y<='1';
		Z<='1';
		wait for 1 ps;
  
   end process;

END;
