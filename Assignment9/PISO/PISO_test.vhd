
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY piso_test IS
END piso_test;
 
ARCHITECTURE behavior OF piso_test IS 
 
    COMPONENT piso_rtl
    PORT(
         Data : IN  std_logic_vector(3 downto 0);
         Rst : IN  std_logic;
         CLK : IN  std_logic;
         Load : IN  std_logic;
         Dout_vector : OUT  std_logic_vector(3 downto 0);
         Dout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Data : std_logic_vector(3 downto 0) := (others => '0');
   signal Rst : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Load : std_logic := '0';

 	--Outputs
   signal Dout_vector : std_logic_vector(3 downto 0);
   signal Dout : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: piso_rtl PORT MAP (
          Data => Data,
          Rst => Rst,
          CLK => CLK,
          Load => Load,
          Dout_vector => Dout_vector,
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
      Rst <= '1';
		wait for 2 ps;
		
		Rst <= '0';
		Load <= '0';
		Data <= "1110";
		wait for 2 ps;
		
		shift : for i in 0 to 3 loop
			Rst <= '0';
			Load <= '1';
			Data <= "1110";
			wait for 2 ps;
		end loop;
   end process;

END;
