library IEEE;
use IEEE.std_logic_1164.all;

entity binary2grey_tb is
  end binary2grey_tb;

architecture sim of binary2grey_tb is
  signal B : std_logic_vector(3 downto 0);
  signal G : std_logic_vector(3 downto 0);
  begin
    uut : entity work.binary2grey
    port map(B => B,
             G => G);
    process
    begin
      report "B | G";
      B <= "1100";
      wait for 10 ns;
      B <= "1010";
      wait for 10 ns;
      B <= "1111";
      wait for 10 ns;
      report "Check waveform for the output";
      wait;
    end process;
  end sim;