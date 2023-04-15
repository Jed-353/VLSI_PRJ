--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : VLSI_ALU16                                                   ==
--== Component : vlsi_fulladder                                               ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY vlsi_fulladder IS
   PORT ( A  : IN  std_logic;
          B  : IN  std_logic;
          Ci : IN  std_logic;
          Co : OUT std_logic;
          S  : OUT std_logic );
END ENTITY vlsi_fulladder;
