--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:22:29 03/04/2024
-- Design Name:   
-- Module Name:   /home/student/Documents/13000122057/bfs/bfs_test.vhd
-- Project Name:  bfs
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bfs_rtl
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
 
ENTITY bfs_test IS
END bfs_test;
 
ARCHITECTURE behavior OF bfs_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bfs_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Bin : IN  std_logic;
         Diff : OUT  std_logic_vector(3 downto 0);
         Bout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Bin : std_logic := '0';

 	--Outputs
   signal Diff : std_logic_vector(3 downto 0);
   signal Bout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bfs_rtl PORT MAP (
          A => A,
          B => B,
          Bin => Bin,
          Diff => Diff,
          Bout => Bout
        );
   stim_proc: process
   begin		
      A <= "1010";
		B <= "0010";
		Bin <= '0';
		wait;
   end process;

END;
