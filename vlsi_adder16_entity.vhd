--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : VLSI_ALU16                                                   ==
--== Component : vlsi_adder16                                                 ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY vlsi_adder16 IS
   PORT ( A      : IN  std_logic_vector( 15 DOWNTO 0 );
          B      : IN  std_logic_vector( 15 DOWNTO 0 );
          Cin    : IN  std_logic;
          Cout   : OUT std_logic;
          Sum_16 : OUT std_logic_vector( 15 DOWNTO 0 ) );
END ENTITY vlsi_adder16;
