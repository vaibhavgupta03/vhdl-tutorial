-- Include the library IEEE for standard logic definitions
library IEEE;
-- Use the standard logic package from the IEEE library to define the types and operations for std_logic and std_logic_vector
use IEEE.STD_LOGIC_1164.ALL;


-- Define the entity for the binary to gray code converter
entity binary2grey is
  -- Define the input and output ports for the entity
    Port ( B : in STD_LOGIC_VECTOR (7 downto 0);
           G : out STD_LOGIC_VECTOR (7 downto 0));
           -- B is the 8-bit binary input, and G is the 8-bit gray code output
end binary2grey; -- End of the entity declaration

-- Define the architecture for the binary to gray code converter
architecture rtl of binary2grey is
-- The architecture is named "rtl" (Register Transfer Level) and describes the behavior of the binary to gray code converter
begin
-- Process to convert binary input to gray code output

G(7) <= B(7); -- The most significant bit of the gray code is the same as the most significant bit of the binary input
-- Each subsequent bit of the gray code is obtained by XORing the current bit of the binary input with the previous bit

G(6) <= B(7) xor B(6); -- G(6) is obtained by XORing B(7) and B(6)
G(5) <= B(6) xor B(5); -- G(5) is obtained by XORing B(6) and B(5)
G(4) <= B(5) xor B(4); -- G(4) is obtained by XORing B(5) and B(4)
G(3) <= B(4) xor B(3); -- G(3) is obtained by XORing B(4) and B(3)
G(2) <= B(3) xor B(2); -- G(2) is obtained by XORing B(3) and B(2)
G(1) <= B(2) xor B(1); -- G(1) is obtained by XORing B(2) and B(1)
G(0) <= B(1) xor B(0); -- G(0) is obtained by XORing B(1) and B(0)

end rtl; -- End of the architecture declaration