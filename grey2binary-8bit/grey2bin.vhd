library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity grey2binary is
    Port ( G : in STD_LOGIC_VECTOR (7 downto 0);
           B : inout STD_LOGIC_VECTOR (7 downto 0));
end grey2binary;

architecture Behavioral of grey2binary is

begin

B(7) <= G(7);
B(6) <= B(7) xor G(6);
B(5) <= B(6) xor G(5);
B(4) <= B(5) xor G(4);
B(3) <= B(4) xor G(3);
B(2) <= B(3) xor G(2);
B(1) <= B(2) xor G(1);
B(0) <= B(1) xor G(0);

end Behavioral;