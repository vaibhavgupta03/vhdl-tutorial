library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cla is
    Port ( a,b : in STD_LOGIC_VECTOR (7 downto 0);
            cin : in std_logic := '0';
           s : out STD_LOGIC_VECTOR (7 downto 0);
           cout : out STD_LOGIC);
end cla;

architecture Behavioral of cla is
signal p,g,c : std_logic_vector (7 downto 0);
begin
  p <= a xor b;
  g <= a and b;
  
  c(0) <= cin;
  c(1) <= (c(0) and p(0)) or g(0);
  c(2) <= (c(1) and p(1)) or g(1);
  c(3) <= (c(2) and p(2)) or g(2);
  c(4) <= (c(3) and p(3)) or g(3);
  c(5) <= (c(4) and p(4)) or g(4);
  c(6) <= (c(5) and p(5)) or g(5);
  c(7) <= (c(6) and p(6)) or g(6);
  
  cout <= (c(0) and p(0) and p(1) and p(2) and p(3) and p(4) and p(5) and p(6) and p(7)) or
          (g(0) and p(1) and p(2) and p(3) and p(4) and p(5) and p(6) and p(7)) or
          (g(1) and p(2) and p(3) and p(4) and p(5) and p(6) and p(7)) or
          (g(2) and p(3) and p(4) and p(5) and p(6) and p(7)) or
          (g(3) and p(4) and p(5) and p(6) and p(7)) or
          (g(4) and p(5) and p(6) and p(7)) or
          (g(5) and p(6) and p(7)) or
          (g(6) and p(7)) or
          g(7);
  
  s <= p xor c;

end Behavioral;