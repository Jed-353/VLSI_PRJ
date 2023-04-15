--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : VLSI_ALU16                                                   ==
--== Component : vlsi_adder16                                                 ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF vlsi_adder16 IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT vlsi_fulladder
         PORT ( A  : IN  std_logic;
                B  : IN  std_logic;
                Ci : IN  std_logic;
                Co : OUT std_logic;
                S  : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus52 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus72 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus79 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet16 : std_logic;
   SIGNAL s_logisimNet17 : std_logic;
   SIGNAL s_logisimNet18 : std_logic;
   SIGNAL s_logisimNet19 : std_logic;
   SIGNAL s_logisimNet20 : std_logic;
   SIGNAL s_logisimNet21 : std_logic;
   SIGNAL s_logisimNet22 : std_logic;
   SIGNAL s_logisimNet23 : std_logic;
   SIGNAL s_logisimNet25 : std_logic;
   SIGNAL s_logisimNet26 : std_logic;
   SIGNAL s_logisimNet27 : std_logic;
   SIGNAL s_logisimNet28 : std_logic;
   SIGNAL s_logisimNet29 : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet30 : std_logic;
   SIGNAL s_logisimNet31 : std_logic;
   SIGNAL s_logisimNet32 : std_logic;
   SIGNAL s_logisimNet33 : std_logic;
   SIGNAL s_logisimNet34 : std_logic;
   SIGNAL s_logisimNet35 : std_logic;
   SIGNAL s_logisimNet36 : std_logic;
   SIGNAL s_logisimNet37 : std_logic;
   SIGNAL s_logisimNet38 : std_logic;
   SIGNAL s_logisimNet39 : std_logic;
   SIGNAL s_logisimNet40 : std_logic;
   SIGNAL s_logisimNet41 : std_logic;
   SIGNAL s_logisimNet42 : std_logic;
   SIGNAL s_logisimNet44 : std_logic;
   SIGNAL s_logisimNet45 : std_logic;
   SIGNAL s_logisimNet46 : std_logic;
   SIGNAL s_logisimNet48 : std_logic;
   SIGNAL s_logisimNet49 : std_logic;
   SIGNAL s_logisimNet5  : std_logic;
   SIGNAL s_logisimNet50 : std_logic;
   SIGNAL s_logisimNet51 : std_logic;
   SIGNAL s_logisimNet53 : std_logic;
   SIGNAL s_logisimNet56 : std_logic;
   SIGNAL s_logisimNet57 : std_logic;
   SIGNAL s_logisimNet58 : std_logic;
   SIGNAL s_logisimNet59 : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet61 : std_logic;
   SIGNAL s_logisimNet62 : std_logic;
   SIGNAL s_logisimNet63 : std_logic;
   SIGNAL s_logisimNet65 : std_logic;
   SIGNAL s_logisimNet66 : std_logic;
   SIGNAL s_logisimNet68 : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet70 : std_logic;
   SIGNAL s_logisimNet71 : std_logic;
   SIGNAL s_logisimNet73 : std_logic;
   SIGNAL s_logisimNet74 : std_logic;
   SIGNAL s_logisimNet75 : std_logic;
   SIGNAL s_logisimNet76 : std_logic;
   SIGNAL s_logisimNet77 : std_logic;
   SIGNAL s_logisimNet78 : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus52(15 DOWNTO 0) <= A;
   s_logisimBus72(15 DOWNTO 0) <= B;
   s_logisimNet61              <= Cin;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   Cout   <= s_logisimNet78;
   Sum_16 <= s_logisimBus79(15 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   FA8 : vlsi_fulladder
      PORT MAP ( A  => s_logisimBus52(8),
                 B  => s_logisimBus72(8),
                 Ci => s_logisimNet18,
                 Co => s_logisimNet19,
                 S  => s_logisimBus79(8) );

   FA11 : vlsi_fulladder
      PORT MAP ( A  => s_logisimBus52(11),
                 B  => s_logisimBus72(11),
                 Ci => s_logisimNet26,
                 Co => s_logisimNet53,
                 S  => s_logisimBus79(11) );

   FA9 : vlsi_fulladder
      PORT MAP ( A  => s_logisimBus52(9),
                 B  => s_logisimBus72(9),
                 Ci => s_logisimNet19,
                 Co => s_logisimNet5,
                 S  => s_logisimBus79(9) );

   FA10 : vlsi_fulladder
      PORT MAP ( A  => s_logisimBus52(10),
                 B  => s_logisimBus72(10),
                 Ci => s_logisimNet5,
                 Co => s_logisimNet26,
                 S  => s_logisimBus79(10) );

   FA1 : vlsi_fulladder
      PORT MAP ( A  => s_logisimBus52(1),
                 B  => s_logisimBus72(1),
                 Ci => s_logisimNet6,
                 Co => s_logisimNet9,
                 S  => s_logisimBus79(1) );

   FA0 : vlsi_fulladder
      PORT MAP ( A  => s_logisimBus52(0),
                 B  => s_logisimBus72(0),
                 Ci => s_logisimNet61,
                 Co => s_logisimNet6,
                 S  => s_logisimBus79(0) );

   FA2 : vlsi_fulladder
      PORT MAP ( A  => s_logisimBus52(2),
                 B  => s_logisimBus72(2),
                 Ci => s_logisimNet9,
                 Co => s_logisimNet21,
                 S  => s_logisimBus79(2) );

   FA3 : vlsi_fulladder
      PORT MAP ( A  => s_logisimBus52(3),
                 B  => s_logisimBus72(3),
                 Ci => s_logisimNet21,
                 Co => s_logisimNet63,
                 S  => s_logisimBus79(3) );

   FA7 : vlsi_fulladder
      PORT MAP ( A  => s_logisimBus52(7),
                 B  => s_logisimBus72(7),
                 Ci => s_logisimNet15,
                 Co => s_logisimNet18,
                 S  => s_logisimBus79(7) );

   FA4 : vlsi_fulladder
      PORT MAP ( A  => s_logisimBus52(4),
                 B  => s_logisimBus72(4),
                 Ci => s_logisimNet63,
                 Co => s_logisimNet25,
                 S  => s_logisimBus79(4) );

   FA6 : vlsi_fulladder
      PORT MAP ( A  => s_logisimBus52(6),
                 B  => s_logisimBus72(6),
                 Ci => s_logisimNet33,
                 Co => s_logisimNet15,
                 S  => s_logisimBus79(6) );

   FA5 : vlsi_fulladder
      PORT MAP ( A  => s_logisimBus52(5),
                 B  => s_logisimBus72(5),
                 Ci => s_logisimNet25,
                 Co => s_logisimNet33,
                 S  => s_logisimBus79(5) );

   FA15 : vlsi_fulladder
      PORT MAP ( A  => s_logisimBus52(15),
                 B  => s_logisimBus72(15),
                 Ci => s_logisimNet22,
                 Co => s_logisimNet78,
                 S  => s_logisimBus79(15) );

   FA12 : vlsi_fulladder
      PORT MAP ( A  => s_logisimBus52(12),
                 B  => s_logisimBus72(12),
                 Ci => s_logisimNet53,
                 Co => s_logisimNet10,
                 S  => s_logisimBus79(12) );

   FA14 : vlsi_fulladder
      PORT MAP ( A  => s_logisimBus52(14),
                 B  => s_logisimBus72(14),
                 Ci => s_logisimNet36,
                 Co => s_logisimNet22,
                 S  => s_logisimBus79(14) );

   FA13 : vlsi_fulladder
      PORT MAP ( A  => s_logisimBus52(13),
                 B  => s_logisimBus72(13),
                 Ci => s_logisimNet10,
                 Co => s_logisimNet36,
                 S  => s_logisimBus79(13) );

END platformIndependent;
