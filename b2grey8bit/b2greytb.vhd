library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity binary2grey_tb is
--  Port ( );
end binary2grey_tb;

architecture sim of binary2grey_tb is
signal B : std_logic_vector (7 downto 0);
signal G : std_logic_vector (7 downto 0);

begin
uut: entity work.binary2grey
port map( B => B,G => G);
process
begin
B <= "10011000";
wait for 20 ns;
B <= "11111111";
wait for 20 ns;
B <= "10000000";
wait for 20 ns;
B <= "00110010";
wait;
end process;
end sim;