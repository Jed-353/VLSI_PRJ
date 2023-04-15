--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : VLSI_ALU16                                                   ==
--== Component : main                                                         ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY main IS
   PORT ( ALU_A     : IN  std_logic_vector( 15 DOWNTO 0 );
          ALU_B     : IN  std_logic_vector( 15 DOWNTO 0 );
          Operation : IN  std_logic_vector( 2 DOWNTO 0 );
          ALU_out   : OUT std_logic_vector( 15 DOWNTO 0 );
          Overflow  : OUT std_logic );
END ENTITY main;
