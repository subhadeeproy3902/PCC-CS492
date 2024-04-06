
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY comp4_test IS
END comp4_test;
 
ARCHITECTURE behavior OF comp4_test IS 
 
 
    COMPONENT comp4_rtl
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         lesser : OUT  std_logic;
         greater : OUT  std_logic;
         equal : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal lesser : std_logic;
   signal greater : std_logic;
   signal equal : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comp4_rtl PORT MAP (
          a => a,
          b => b,
          lesser => lesser,
          greater => greater,
          equal => equal
        );

   -- Stimulus process
   stim_proc: process
   begin		
      a <= "0000";
		b <= "0000";
		wait for 1 ps;
		a <= "0001";
		b <= "0000";
		wait for 1 ps;
		a <= "0000";
		b <= "0001";
		wait for 1 ps;
		
   end process;

END;
