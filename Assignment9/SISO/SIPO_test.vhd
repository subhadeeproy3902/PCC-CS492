
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY SIPO_test IS
END SIPO_test;
 
ARCHITECTURE behavior OF SIPO_test IS 
 
    COMPONENT SIPO_rtl
    PORT(
         Data : IN  std_logic;
         Rst : IN  std_logic;
         CLK : IN  std_logic;
         Q : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data : std_logic := '0';
   signal Rst : std_logic := '0';
   signal CLK : std_logic := '0';

	--BiDirs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SIPO_rtl PORT MAP (
          Data => Data,
          Rst => Rst,
          CLK => CLK,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      Data <= '1';
		Rst <= '0';
		wait for 2 ps;
   end process;

END;
