
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY alu_test IS
END alu_test;
 
ARCHITECTURE behavior OF alu_test IS 
 
    COMPONENT alu_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         S : IN  std_logic_vector(2 downto 0);
         ALU_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal S : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal ALU_out : std_logic_vector(3 downto 0); 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu_rtl PORT MAP (
          A => A,
          B => B,
          S => S,
          ALU_out => ALU_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
		A <= "0010";
		B <= "0001";
		S <= "000";
		wait for 1 ps;
		A <= "0010";
		B <= "0001";
		S <= "001";
		wait for 1 ps;
		A <= "0010";
		B <= "0001";
		S <= "010";
		wait for 1 ps;
		A <= "0010";
		B <= "0001";
		S <= "011";
		wait for 1 ps;
		A <= "0010";
		B <= "0001";
		S <= "100";
		wait for 1 ps;
		A <= "0010";
		B <= "0001";
		S <= "101";
		wait for 1 ps;
		A <= "0010";
		B <= "0001";
		S <= "110";
		wait for 1 ps;
		A <= "0010";
		B <= "0001";
		S <= "111";
		wait for 1 ps;
   end process;

END;
