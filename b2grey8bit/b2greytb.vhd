-- This is a testbench for the binary to gray code converter

-- Include the library IEEE for standard logic definitions
library IEEE;
-- Use the standard logic package from the IEEE library to define the types and operations for std_logic and std_logic_vector
use IEEE.STD_LOGIC_1164.ALL;

-- Define the entity for the testbench
entity binary2grey_tb is
--  Port ( );
end binary2grey_tb; -- End of the entity declaration

-- Define the architecture for the testbench
-- The architecture is named "sim" (simulation) and describes the behavior of the testbench
architecture sim of binary2grey_tb is
-- Declare signals to connect the binary input and gray code output of the unit under test (UUT)

signal B : std_logic_vector (7 downto 0); -- Signal for the 8-bit binary input
signal G : std_logic_vector (7 downto 0); -- Signal for the 8-bit gray code output

begin
-- Instantiate the unit under test (UUT) and connect the signals to the ports of the UUT
uut: entity work.binary2grey
-- Map the binary input signal B to the input port B of the UUT, and the gray code output signal G to the output port G of the UUT
port map( B => B,G => G);
-- Process to apply test vectors to the binary input signal B and observe the corresponding gray code output G
process
begin
-- Apply different binary input values to the signal B and wait for a certain time to observe the output G

B <= "10011000"; -- Apply the binary value "10011000" to the signal B
wait for 20 ns; -- Wait for 20 nanoseconds to allow the UUT to process the input and produce the output

B <= "11111111"; -- Apply the binary value "11111111" to the signal B
wait for 20 ns; -- Wait for 20 nanoseconds to allow the UUT to process the input and produce the output

B <= "10000000"; -- Apply the binary value "10000000" to the signal B
wait for 20 ns; -- Wait for 20 nanoseconds to allow the UUT to process the input and produce the output

B <= "00110010"; -- Apply the binary value "00110010" to the signal B
wait for 20 ns; -- Wait for 20 nanoseconds to allow the UUT to process the input and produce the output

wait; -- Wait indefinitely to allow the simulation to run and observe the outputs

end process; -- End of the process declaration

end sim; -- End of the architecture declaration