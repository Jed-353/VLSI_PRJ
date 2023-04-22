library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
-----------------------------------------------
---------- ALU 16-bit VHDL ---------------------
-----------------------------------------------
entity ALU is 
    Port (
    A, B     : in  STD_LOGIC_VECTOR(15 downto 0);
    ALU_Op  : in  STD_LOGIC_VECTOR(2 downto 0); 
    ALU_Out   : out  STD_LOGIC_VECTOR(15 downto 0);
    Overflow : out std_logic  
    );
end ALU; 
architecture Behavioral of ALU is

signal ALU_Result : std_logic_vector (15 downto 0);
signal tmp: std_logic_vector (16 downto 0);

begin
   process(A,B,ALU_Op)
 begin
  case(ALU_Op) is
  when "000" => -- Addition
   ALU_Result <= A + B ; 
  when "001" => -- Subtraction
   ALU_Result <= A - B ;
  when "010" => -- And
   ALU_Result <= A and B ;
  when "100" => -- Or
   ALU_Result <= A or B ;
  when "110" => -- Xor
   ALU_Result <= A xor B;
  when others => ALU_Result <= A + B ; 
  end case;
 end process;
 ALU_Out <= ALU_Result; -- ALU out
 tmp <= ('0' & A) + ('0' & B);
 Overflow <= tmp(8); -- Carryout flag
end Behavioral;
