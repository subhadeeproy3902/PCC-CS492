
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY sr_test IS
END sr_test;
 
ARCHITECTURE behavior OF sr_test IS 
 
    COMPONENT sr_rtl
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         Q : OUT  std_logic;
         QBar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '0';
   signal R : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QBar : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sr_rtl PORT MAP (
          S => S,
          R => R,
          Reset => Reset,
          Clk => Clk,
          Q => Q,
          QBar => QBar
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
      Reset <= '0';
		S <= '0';
		R <= '0';
		wait for 2 ps;
		
		S <= '0';
		R <= '1';
		wait for 2 ps;
		
		S <= '1';
		R <= '0';
		wait for 2 ps;
		
		S <= '1';
		R <= '1';
		wait for 2 ps;
		
		
   end process;

END;
