
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity gray2bintb is
--  Port ( );
end gray2bintb;

architecture Behavioral of gray2bintb is

signal G : std_logic_vector (7 downto 0);
signal B : std_logic_vector (7 downto 0);

begin
uut: entity work.grey2binary
port map( B => B,G => G);
process
begin
G <= "11010100";
wait for 20 ns;
G <= "10000000";
wait for 20 ns;
G <= "11000000";
wait for 20 ns;
G <= "00101011";
wait;
end process;
end Behavioral;