library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adder is
    Port (
        A   : in  std_logic_vector(3 downto 0);
        B   : in  std_logic_vector(3 downto 0);
        SUM : out std_logic_vector(4 downto 0)
    );
end adder;

architecture Behavioral of adder is
begin
    SUM <= std_logic_vector(
              resize(unsigned(A), 5) + resize(unsigned(B), 5)
           );
end Behavioral;
