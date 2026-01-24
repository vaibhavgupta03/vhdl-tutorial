library IEEE;
use IEEE.std_logic_1164.all;

entity binary2grey is
  port(
    B : in std_logic_vector(3 downto 0);
    G : out std_logic_vector(3 downto 0)
  );
end binary2grey;

architecture rtl of binary2grey is
  begin
    G(3) <= B(3);
    G(2) <= B(3) xor B(2);
    G(1) <= B(2) xor B(1);
    G(0) <= B(1) xor B(0);
end rtl;
