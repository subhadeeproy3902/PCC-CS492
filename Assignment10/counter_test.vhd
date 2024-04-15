--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:32:59 04/15/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122061/counter/counter_test.vhd
-- Project Name:  counter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter_rtl
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
 
ENTITY counter_test IS
END counter_test;
 
ARCHITECTURE behavior OF counter_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter_rtl
    PORT(
         Mode : IN  std_logic;
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         Count : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Mode : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '0';

	--BiDirs
   signal Count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter_rtl PORT MAP (
          Mode => Mode,
          Clk => Clk,
          Rst => Rst,
          Count => Count
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
	
		Mode<='0';
		Rst<='1';
		wait for 10 ps;
		
      Mode<='0';
		Rst<='0';
		wait for 10 ps;
		
		Mode<='1';
		Rst<='0';
		wait for 10 ps;
		
   end process;

END;
