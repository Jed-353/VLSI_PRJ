library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_16_tb is
--  Port ( );
end ALU_16_tb;

architecture Behavioral of ALU_16_tb is

    COMPONENT ALU_16 IS
    PORT(
        A, B: in STD_LOGIC_VECTOR(15 downto 0);
        ALU_Op: in STD_LOGIC_VECTOR (2 downto 0);
        ALU_Out: out STD_LOGIC_VECTOR (15 downto 0);
        Overflow: out STD_LOGIC
    );
    END COMPONENT;
    
    --Inputs
    signal A : STD_LOGIC_VECTOR (15 downto 0) := x"0000";
    signal B : STD_LOGIC_VECTOR (15 downto 0) := x"0000";
    signal Op : STD_LOGIC_VECTOR (2 downto 0) := "000";
    
    
    --Outputs
    signal Out_sig : STD_LOGIC_VECTOR (15 downto 0);
    signal O_flow : STD_LOGIC;
    
    signal i: integer;
    
begin

    uut: ALU_16 PORT MAP(
          A => A ,
          B => B ,
          ALU_Op => Op,
          ALU_Out => Out_sig,
          Overflow => O_flow
         );
          
    -- Stimulus
    stim_proc : process
    begin
        A <= x"00ab";
        B <= x"0007";
        
        Op <= "000";
        wait for 10 ns;
        
        Op <= "001";
        wait for 10 ns;
        
        Op <= "010";
        wait for 10 ns;
        
        Op <= "100";
        wait for 10 ns;
        
        Op <= "110";
        wait for 10 ns;
        
        A <= x"200b";
        B <= x"0105";
        
        Op <= "000";
        wait for 10 ns;
        
        Op <= "001";
        wait for 10 ns;
        
        Op <= "010";
        wait for 10 ns;
        
        Op <= "100";
        wait for 10 ns;
        
        Op <= "110";
        wait for 10 ns;               
        
    end process;
    

end Behavioral;

