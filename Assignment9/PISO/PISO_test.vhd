
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY PISOO_test IS
END PISOO_test;
 
ARCHITECTURE behavior OF PISOO_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PISO_rtl
    PORT(
         Data : IN  std_logic_vector(3 downto 0);
         Rst : IN  std_logic;
         CLK : IN  std_logic;
         Load : IN  std_logic;
         Dout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Data : std_logic_vector(3 downto 0) := (others => '0');
   signal Rst : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Load : std_logic := '0';

 	--Outputs
   signal Dout : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PISO_rtl PORT MAP (
          Data => Data,
          Rst => Rst,
          CLK => CLK,
          Load => Load,
          Dout => Dout
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
      Data<="0001";
		Rst<='0';
		Load<='1';
		wait for 2 ps;
		
   end process;

END;
