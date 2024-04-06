LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY nand_test IS
END nand_test;
 
ARCHITECTURE behavior OF nand_test IS 
 
    COMPONENT nand_rtl
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal c : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nand_rtl PORT MAP (
          a => a,
          b => b,
          c => c
        );

   -- Stimulus process
   stim_proc: process
   begin		
      a <= '0';
		b <= '0';
		wait for 1 ps;
		
		a <= '0';
		b <= '1';
		wait for 1 ps;
		
		a <= '1';
		b <= '0';
		wait for 1 ps;
		
		a <= '1';
		b <= '1';
		wait for 1 ps;
   end process;

END;
