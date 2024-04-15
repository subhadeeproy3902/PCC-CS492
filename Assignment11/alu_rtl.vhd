
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


entity alu_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           ALU_out : out  STD_LOGIC_VECTOR (3 downto 0));
end alu_rtl;

architecture Behavioral of alu_rtl is

signal t0,t1,t2,t3 :STD_LOGIC_VECTOR(3 downto 0) :="0000";

begin
t0 <= A and B;
t1 <= A or B;
t2 <= not A;
t3 <= A xor B;

process (A,B,S)
	begin
		case S is
			when "000" => ALU_out <= A + B;
			when "001" => ALU_out <= A - B;
			when "010" => ALU_out <= A + 1;
			when "011" => ALU_out <= A - 1;
			when "100" => ALU_out <= t0;
			when "101" => ALU_out <= t1;
			when "110" => ALU_out <= t2;
			when "111" => ALU_out <= t3;
			when others => ALU_out <= "0000";
		end case;
	end process;
end Behavioral;


