library IEEE;
use IEEE.std_logic_1164.all;

entity half_adder_tb is
  end half_adder_tb;

architecture sim of half_adder_tb is
  signal a : std_logic;
  signal b : std_logic;
  signal sum : std_logic;
  signal carry : std_logic;

  begin
    uut: entity work.half_adder
    port map(
      a => a,
      b => b,
      sum => sum,
      carry => carry
    );
    process
    begin
      report " A B | SUM CARRY";
      
      a <= '0'; b <= '0';
      wait for 10 ns;
      report "0 0 | " &std_logic'image(sum)& " " &std_logic'image(carry);
      a <= '0'; b <= '1';
      wait for 10 ns;
      report "0 1 | " &std_logic'image(sum)& " " &std_logic'image(carry);
      a <= '1'; b <= '0';
      wait for 10 ns;
      report "1 0 | " &std_logic'image(sum)& " " &std_logic'image(carry);
      a <= '1'; b <= '1';
      wait for 10 ns;
      report "1 1 | " &std_logic'image(sum)& " " &std_logic'image(carry);
      wait;
    end process;
    end sim;

