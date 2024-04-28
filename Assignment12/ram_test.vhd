--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:45:38 04/27/2024
-- Design Name:   
-- Module Name:   /home/sumit/Desktop/pca/counter/ram_test.vhd
-- Project Name:  counter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Single_port_RAM_VHDL
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
-- VHDL testbench code for the single-port RAM
ENTITY tb_RAM_VHDL IS
END tb_RAM_VHDL;
 
ARCHITECTURE behavior OF tb_RAM_VHDL IS 
 
    -- Component Declaration for the single-port RAM in VHDL
 
    COMPONENT Single_port_RAM_VHDL
    PORT(
         RAM_ADDR : IN  std_logic_vector(6 downto 0);
         RAM_DATA_IN : IN  std_logic_vector(7 downto 0);
         RAM_WR : IN  std_logic;
         RAM_CLOCK : IN  std_logic;
         RAM_DATA_OUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RAM_ADDR : std_logic_vector(6 downto 0) := (others => '0');
   signal RAM_DATA_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal RAM_WR : std_logic := '0';
   signal RAM_CLOCK : std_logic := '0';

  --Outputs
   signal RAM_DATA_OUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant RAM_CLOCK_period : time := 10 ns;
 
BEGIN
 
 -- Instantiate the single-port RAM in VHDL
   uut: Single_port_RAM_VHDL PORT MAP (
          RAM_ADDR => RAM_ADDR,
          RAM_DATA_IN => RAM_DATA_IN,
          RAM_WR => RAM_WR,
          RAM_CLOCK => RAM_CLOCK,
          RAM_DATA_OUT => RAM_DATA_OUT
        );

   -- Clock process definitions
   RAM_CLOCK_process :process
   begin
  RAM_CLOCK <= '0';
  wait for RAM_CLOCK_period/2;
  RAM_CLOCK <= '1';
  wait for RAM_CLOCK_period/2;
   end process;

   stim_proc: process
   begin  
  RAM_WR <= '0'; 
  RAM_ADDR <= "0000000";
  RAM_DATA_IN <= x"FF";
      wait for 100 ns; 
  -- start reading data from RAM 
  for i in 0 to 5 loop
  RAM_ADDR <= RAM_ADDR + "0000001";
      wait for RAM_CLOCK_period*5;
  end loop;
  RAM_ADDR <= "0000000";
  RAM_WR <= '1';
  -- start writing to RAM
  wait for 100 ns; 
  for i in 0 to 5 loop
  RAM_ADDR <= RAM_ADDR + "0000001";
  RAM_DATA_IN <= RAM_DATA_IN-x"01";
      wait for RAM_CLOCK_period*5;
  end loop;  
  RAM_WR <= '0';
      wait;
   end process;

END;