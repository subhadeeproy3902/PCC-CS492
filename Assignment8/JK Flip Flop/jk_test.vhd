
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY jk_test IS
END jk_test;
 
ARCHITECTURE behavior OF jk_test IS 
 
    COMPONENT jk_rtl
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         Q : OUT  std_logic;
         QBar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QBar : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: jk_rtl PORT MAP (
          J => J,
          K => K,
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
		J <= '0';
		K <= '0';
		wait for 2 ps;
		
		J <= '0';
		K <= '1';
		wait for 2 ps;
		
		J <= '1';
		K <= '0';
		wait for 2 ps;
		
		J <= '1';
		K <= '1';
		wait for 2 ps;
   end process;

END;
