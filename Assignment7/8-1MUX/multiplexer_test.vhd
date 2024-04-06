
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY multiplexer_test IS
END multiplexer_test;
 
ARCHITECTURE behavior OF multiplexer_test IS 
 
    COMPONENT multiplexer_rtl
    PORT(
         I : IN  std_logic_vector(7 downto 0);
         S : IN  std_logic_vector(2 downto 0);
         Y : OUT  std_logic
        );
    END COMPONENT;
    
   signal I : std_logic_vector(7 downto 0) := (others => '0');
   signal S : std_logic_vector(2 downto 0) := (others => '0');
   signal Y : std_logic;
 
BEGIN
   uut: multiplexer_rtl PORT MAP (
          I => I,
          S => S,
          Y => Y
        );
   stim_proc: process
   begin		
		I <= "00110001";
		S <= "010";
		wait for 1 ps;
		I <= "00010000";
		S <= "001";
		wait for 1 ps;
		I <= "00010000";
		S <= "010";
		wait for 1 ps;
		I <= "00010000";
		S <= "011";
		wait for 1 ps;
		I <= "00010000";
		S <= "100";
		wait for 1 ps;
		I <= "00010000";
		S <= "101";
		wait for 1 ps;
		I <= "00010000";
		S <= "110";
		wait for 1 ps;
		I <= "00010000";
		S <= "111";
		wait for 1 ps;
		
   end process;

END;
