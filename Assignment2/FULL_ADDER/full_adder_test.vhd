LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY full_adder_test IS
END full_adder_test;
 
ARCHITECTURE behavior OF full_adder_test IS 
 
    COMPONENT full_adder_rtl
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         sum : OUT  std_logic;
         carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal carry : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder_rtl PORT MAP (
          a => a,
          b => b,
          c => c,
          sum => sum,
          carry => carry
        );

   -- Stimulus process
   stim_proc: process
   begin		
      a<='0';
		b<='0';
		c<='0';
		wait for 1 ps;
		
		a<='0';
		b<='0';
		c<='1';
		wait for 1 ps;
		
		a<='0';
		b<='1';
		c<='0';
		wait for 1 ps;
		
		a<='0';
		b<='1';
		c<='1';
		wait for 1 ps;
		
		a<='1';
		b<='0';
		c<='0';
		wait for 1 ps;
		
		a<='1';
		b<='0';
		c<='1';
		wait for 1 ps;
		
		a<='1';
		b<='1';
		c<='0';
		wait for 1 ps;
		
		a<='1';
		b<='1';
		c<='1';
		wait for 1 ps;
		
   end process;

END;
