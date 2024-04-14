
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY d_test IS
END d_test;
 
ARCHITECTURE behavior OF d_test IS 
 
    COMPONENT d_rtl
    PORT(
         D : IN  std_logic;
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         Q : OUT  std_logic;
         QBar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QBar : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d_rtl PORT MAP (
          D => D,
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
		D <= '0';
		wait for 2 ps;
		
		D <= '1';
		wait for 2 ps;
	
   end process;

END;
