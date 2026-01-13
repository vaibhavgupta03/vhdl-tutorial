library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adder_tb is
end adder_tb;

architecture sim of adder_tb is
    signal A, B : std_logic_vector(3 downto 0);
    signal SUM  : std_logic_vector(4 downto 0);
begin
    uut: entity work.adder
        port map (
            A => A,
            B => B,
            SUM => SUM
        );

    process
    begin
        A <= "0011"; B <= "0101";
        wait for 10 ns;
        report "A=3 B=5 SUM=" &
               integer'image(to_integer(unsigned(SUM)));

        A <= "1111"; B <= "0001";
        wait for 10 ns;
        report "A=15 B=1 SUM=" &
               integer'image(to_integer(unsigned(SUM)));

        wait;
    end process;
end sim;
