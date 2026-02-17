library IEEE; -- Include the IEEE library for standard logic definitions
use IEEE.STD_LOGIC_1164.ALL; -- Use the standard logic package from the IEEE library to define the types and operations for std_logic and std_logic_vector

entity grey2binary is -- Define the entity for the gray to binary converter
-- Define the ports for the entity
    Port ( G : in STD_LOGIC_VECTOR (7 downto 0); -- Input port for the 8-bit gray code
           B : inout STD_LOGIC_VECTOR (7 downto 0)); -- Inout port for the 8-bit binary output (can be used as input or output)
end grey2binary; -- End of the entity declaration

architecture Behavioral of grey2binary is -- Define the architecture for the gray to binary converter

begin

B(7) <= G(7); -- The MSB of the binary output is the same as the MSB of the gray code input

-- The next bit of the binary output is the XOR of the previous binary bit and the corresponding gray code bit
B(6) <= B(7) xor G(6);
B(5) <= B(6) xor G(5);
B(4) <= B(5) xor G(4);
B(3) <= B(4) xor G(3);
B(2) <= B(3) xor G(2);
B(1) <= B(2) xor G(1);
B(0) <= B(1) xor G(0);

end Behavioral; -- End of the architecture declaration