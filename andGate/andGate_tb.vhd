library IEEE;
use IEEE.std_logic_1164.all;

entity andGate_tb is
end andGate_tb;

architecture sim of andGate_tb is
  signal a : std_logic;
  signal b : std_logic;
  signal c : std_logic;
  begin
    uut : entity work.andGate
    port map (
      a => a,
      b => b,
      c => c
    );
  process
  begin
    report "a b | c";
    a <= '0'; b<='0';
    wait for 10 ns;
    report "0 0 |" &std_logic'image(c);
    a <= '0'; b <='1';
    wait for 10 ns;
    report "0 1 |" &std_logic'image(c);
    a <= '1'; b <='0';
    wait for 10 ns;
    report "1 0 |" &std_logic'image(c);
    a <= '1'; b<='1';
    wait for 10 ns;
    report "1 1 |" &std_logic'image(c);
    wait;
    end process;
    end sim;