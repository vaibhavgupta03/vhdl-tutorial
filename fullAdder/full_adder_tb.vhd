library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder_tb is
end full_adder_tb;

architecture sim of full_adder_tb is
  signal a : std_logic;
  signal b : std_logic;
  signal c_in : std_logic;
  signal sum : std_logic;
  signal c_out : std_logic;

  begin
    uut : entity work.full_adder
    port map(
      a => a,
      b => b,
      c_in => c_in,
      sum => sum,
      c_out => c_out
    );
  
  process
  begin
    report "A B Carry_in | Sum Carry_Out";
    a <= '0'; b <= '0'; c_in <= '0';
    wait for 10 ns;
    report "0 0 0 |" &std_logic'image(sum)& " " &std_logic'image(c_out);
    a <= '0'; b <= '0'; c_in <= '1';
    wait for 10 ns;
    report "0 0 1 |" &std_logic'image(sum)& " " &std_logic'image(c_out);
    a <= '0'; b <= '1'; c_in <= '0';
    wait for 10 ns;
    report "0 1 0 |" &std_logic'image(sum)& " " &std_logic'image(c_out);
    a <= '0'; b <= '1'; c_in <= '1';
    wait for 10 ns;
    report "0 1 1 |" &std_logic'image(sum)& " " &std_logic'image(c_out);
    a <= '1'; b <= '0'; c_in <= '0';
    wait for 10 ns;
    report "1 0 0 |" &std_logic'image(sum)& " " &std_logic'image(c_out);
    a <= '1'; b <= '0'; c_in <= '1';
    wait for 10 ns;
    report "1 0 1 |" &std_logic'image(sum)& " " &std_logic'image(c_out);
    a <= '1'; b <= '1'; c_in <= '0';
    wait for 10 ns;
    report "1 1 0 |" &std_logic'image(sum)& " " &std_logic'image(c_out);
    a <= '1'; b <= '1'; c_in <= '1';
    wait for 10 ns;
    report "1 1 1 |" &std_logic'image(sum)& " " &std_logic'image(c_out);
    wait;
  end process;
end sim;

