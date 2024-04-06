
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY demultiplexer_test IS
END demultiplexer_test;
 
ARCHITECTURE behavior OF demultiplexer_test IS 

 
    COMPONENT demultiplexer_rtl
    PORT(
         I : IN  std_logic;
         S : IN  std_logic_vector(2 downto 0);
         Y : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic := '0';
   signal S : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: demultiplexer_rtl PORT MAP (
          I => I,
          S => S,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      I <= '1';
		S <= "000";
		wait for 1 ps;
		I <= '1';
		S <= "001";
		wait for 1 ps;
		I <= '1';
		S <= "010";
		wait for 1 ps;
		I <= '1';
		S <= "011";
		wait for 1 ps;
		I <= '1';
		S <= "100";
		wait for 1 ps;
		I <= '1';
		S <= "101";
		wait for 1 ps;
		I <= '1';
		S <= "110";
		wait for 1 ps;
		I <= '1';
		S <= "111";
		wait for 1 ps;
		
   end process;

END;
