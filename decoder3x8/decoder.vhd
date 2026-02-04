library IEEE;
use IEEE.std_logic_1164.all;
entity decoder is
  port(
    I : in std_logic_vector (2 downto 0);
    y : out std_logic_vector (7 downto 0)
  );
end entity decoder;

architecture behavior of decoder is
begin
  process(I)
  begin
    case I is
      when "000" =>
        y(0) <= '1';
      when "001" =>
        y(1) <= '1'; y(0) <= '0';
      when "010" =>
        y(2) <= '1'; y(1 downto 0) <= ("00");
      when "011" =>
        y(3) <= '1'; y(2 downto 0) <= ("000");
      when "100" =>
        y(4) <= '1'; y(3 downto 0) <= ("0000");
      when "101" =>
        y(5) <= '1'; y(4 downto 0) <= ("00000");
      when "110" =>
        y(6) <= '1'; y(5 downto 0) <= ("000000");
      when "111" =>
        y(7) <= '1';  y(6 downto 0) <= ("0000000");
      when others =>
        y <= (others => '0');
    end case;
  end process;
end architecture behavior;