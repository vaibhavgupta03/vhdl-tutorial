library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity binary2grey is
    Port ( B : in STD_LOGIC_VECTOR (7 downto 0);
           G : out STD_LOGIC_VECTOR (7 downto 0));
end binary2grey;

architecture rtl of binary2grey is

begin

G(7) <= B(7);
G(6) <= B(7) xor B(6);
G(5) <= B(6) xor B(5);
G(4) <= B(5) xor B(4);
G(3) <= B(4) xor B(3);
G(2) <= B(3) xor B(2);
G(1) <= B(2) xor B(1);
G(0) <= B(1) xor B(0);

end rtl;