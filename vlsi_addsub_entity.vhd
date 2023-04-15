--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : VLSI_ALU16                                                   ==
--== Component : vlsi_addsub                                                  ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY vlsi_addsub IS
   PORT ( A_16     : IN  std_logic_vector( 15 DOWNTO 0 );
          B_16     : IN  std_logic_vector( 15 DOWNTO 0 );
          Sub      : IN  std_logic;
          Overflow : OUT std_logic;
          S_16     : OUT std_logic_vector( 15 DOWNTO 0 ) );
END ENTITY vlsi_addsub;
