--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:45:38 03/04/2024
-- Design Name:   
-- Module Name:   /home/student/Documents/13000122057/bfa/bfa_test.vhd
-- Project Name:  bfa
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bfa_rtl
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
 
ENTITY bfa_test IS
END bfa_test;
 
ARCHITECTURE behavior OF bfa_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bfa_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bfa_rtl PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Sum => Sum,
          Cout => Cout
        );


   -- Stimulus process
   stim_proc: process
   begin		
      A<="1110";
		B<="0011";
		Cin<='1';
		wait for 1 ps;
   end process;

END;
