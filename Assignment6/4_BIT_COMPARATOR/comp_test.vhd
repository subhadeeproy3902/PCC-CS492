
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY comp_test IS
END comp_test;
 
ARCHITECTURE behavior OF comp_test IS 
 
    COMPONENT comp_rtl
    PORT(
         a : IN  std_logic_vector(1 downto 0);
         b : IN  std_logic_vector(1 downto 0);
         lesser : OUT  std_logic;
         greater : OUT  std_logic;
         equal : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(1 downto 0) := (others => '0');
   signal b : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal lesser : std_logic;
   signal greater : std_logic;
   signal equal : std_logic;
 
BEGIN
 
   uut: comp_rtl PORT MAP (
          a => a,
          b => b,
          lesser => lesser,
          greater => greater,
          equal => equal
        );

   stim_proc: process
   begin		
      a <= "11";
		b <= "11";
		wait for 1 ps;
		a <= "10";
		b <= "01";
		wait for 1 ps;
		a <= "01";
		b <= "10";
		wait for 1 ps;
		
   end process;

END;
