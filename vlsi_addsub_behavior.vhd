--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : VLSI_ALU16                                                   ==
--== Component : vlsi_addsub                                                  ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF vlsi_addsub IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT Multiplexer_bus_2
         GENERIC ( nrOfBits : INTEGER );
         PORT ( enable  : IN  std_logic;
                muxIn_0 : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                muxIn_1 : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                sel     : IN  std_logic;
                muxOut  : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT vlsi_adder16
         PORT ( A      : IN  std_logic_vector( 15 DOWNTO 0 );
                B      : IN  std_logic_vector( 15 DOWNTO 0 );
                Cin    : IN  std_logic;
                Cout   : OUT std_logic;
                Sum_16 : OUT std_logic_vector( 15 DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus1 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus2 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus3 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus4 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus5 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimNet0 : std_logic;
   SIGNAL s_logisimNet6 : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus2(15 DOWNTO 0) <= A_16;
   s_logisimBus3(15 DOWNTO 0) <= B_16;
   s_logisimNet0              <= Sub;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   Overflow <= s_logisimNet6;
   S_16     <= s_logisimBus5(15 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- NOT Gate
   s_logisimBus4 <=  NOT s_logisimBus3;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   PLEXERS_1 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 16 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus3(15 DOWNTO 0),
                 muxIn_1 => s_logisimBus4(15 DOWNTO 0),
                 muxOut  => s_logisimBus1(15 DOWNTO 0),
                 sel     => s_logisimNet0 );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   adder16 : vlsi_adder16
      PORT MAP ( A      => s_logisimBus2(15 DOWNTO 0),
                 B      => s_logisimBus1(15 DOWNTO 0),
                 Cin    => s_logisimNet0,
                 Cout   => s_logisimNet6,
                 Sum_16 => s_logisimBus5(15 DOWNTO 0) );

END platformIndependent;
