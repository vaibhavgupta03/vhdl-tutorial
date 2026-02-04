library ieee;
use ieee.std_logic_1164.all;

entity decoder_tb is
end entity decoder_tb;

architecture behavior of decoder_tb is
  -- Signals to connect to UUT
  signal I : std_logic_vector (2 downto 0);
  signal y : std_logic_vector (7 downto 0);
begin
  uut: entity work.decoder
    port map (
      I => I,
      y => y
    );
process
  begin
    I <= "000";
      wait for 10 ns;
    I <= "001";
      wait for 10 ns;
    I <= "010";
      wait for 10 ns;
    I <= "011";
      wait for 10 ns;
    I <= "100";
      wait for 10 ns;
    I <= "101";
      wait for 10 ns;
    I <= "110";
      wait for 10 ns;
    I <= "111";
      wait for 10 ns;
    wait;
  end process;

end architecture behavior;