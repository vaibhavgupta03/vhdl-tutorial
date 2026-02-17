library IEEE; -- Include the IEEE library for standard logic definitions
use IEEE.STD_LOGIC_1164.ALL; -- Use the standard logic package from the IEEE library

-- Define the entity for the carry lookahead adder
entity cla is
  -- Define the ports for the carry lookahead adder
    Port ( a,b : in STD_LOGIC_VECTOR (7 downto 0); -- 8-bit input vectors for the two numbers to be added
            cin : in std_logic := '0'; -- Carry input, default value is '0'
           s : out STD_LOGIC_VECTOR (7 downto 0); -- 8-bit output vector for the sum of the two input numbers
           cout : out STD_LOGIC); -- Carry output, indicates if there is a carry out from the most significant bit
end cla; -- End of the entity declaration

-- Define the architecture for the carry lookahead adder
architecture Behavioral of cla is
signal p,g,c : std_logic_vector (7 downto 0); -- Define internal signals for propagate (p), generate (g), and carry (c) for each bit
begin
  p <= a xor b; -- Calculate the propagate signal for each bit, which indicates if a carry will be propagated through that bit
  g <= a and b; -- Calculate the generate signal for each bit, which indicates if a carry will be generated at that bit
  
  c(0) <= cin; -- The carry for the least significant bit is the carry input (cin)
  c(1) <= (c(0) and p(0)) or g(0); -- Calculate the carry for the first bit based on the carry from the previous bit and the propagate and generate signals
  c(2) <= (c(1) and p(1)) or g(1); -- Calculate the carry for the second bit based on the carry from the previous bit and the propagate and generate signals
  c(3) <= (c(2) and p(2)) or g(2); -- Calculate the carry for the third bit based on the carry from the previous bit and the propagate and generate signals
  c(4) <= (c(3) and p(3)) or g(3); -- Calculate the carry for the fourth bit based on the carry from the previous bit and the propagate and generate signals
  c(5) <= (c(4) and p(4)) or g(4); -- Calculate the carry for the fifth bit based on the carry from the previous bit and the propagate and generate signals
  c(6) <= (c(5) and p(5)) or g(5); -- Calculate the carry for the sixth bit based on the carry from the previous bit and the propagate and generate signals
  c(7) <= (c(6) and p(6)) or g(6); -- Calculate the carry for the seventh bit based on the carry from the previous bit and the propagate and generate signals
  
  -- Calculate the carry out (cout) for the most significant bit based on the carry from the previous bits and the propagate and generate signals for all bits
  cout <= (c(0) and p(0) and p(1) and p(2) and p(3) and p(4) and p(5) and p(6) and p(7)) or
          (g(0) and p(1) and p(2) and p(3) and p(4) and p(5) and p(6) and p(7)) or
          (g(1) and p(2) and p(3) and p(4) and p(5) and p(6) and p(7)) or
          (g(2) and p(3) and p(4) and p(5) and p(6) and p(7)) or
          (g(3) and p(4) and p(5) and p(6) and p(7)) or
          (g(4) and p(5) and p(6) and p(7)) or
          (g(5) and p(6) and p(7)) or
          (g(6) and p(7)) or
          g(7);
  
  s <= p xor c; -- Calculate the sum output (s) for each bit by XORing the propagate signal with the carry for that bit

end Behavioral; -- End of the architecture declaration