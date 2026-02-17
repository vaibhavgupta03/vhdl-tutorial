
library IEEE; -- Include the IEEE library for standard logic definitions
use IEEE.STD_LOGIC_1164.ALL; -- Use the standard logic package from the IEEE library to define the types and operations for std_logic and std_logic_vector


-- Define the entity for the gray to binary converter testbench
entity gray2bintb is
--  Port ( );
end gray2bintb; -- End of the entity declaration

architecture Behavioral of gray2bintb is -- Define the architecture for the gray to binary converter testbench

signal g : std_logic_vector (7 downto 0); -- Define a signal for the 8-bit gray code input to the converter
signal b : std_logic_vector (7 downto 0); -- Define a signal for the 8-bit binary output from the converter

begin
uut: entity work.grey2binary -- Instantiate the gray to binary converter entity as a unit under test (uut)
port map( B => b,G => g); -- Map the signals G and B to the corresponding ports of the converter

-- Define a process to apply test vectors to the gray code input and observe the binary output
process
begin

g <= "11010100"; -- Apply a test vector to the gray code input
wait for 20 ns; -- Wait for 20 nanoseconds to allow the converter to process the input and produce the output

g <= "10000000"; -- Apply another test vector to the gray code input
wait for 20 ns; -- Wait for 20 nanoseconds to allow the converter to process the input and produce the output

g <= "11000000"; -- Apply another test vector to the gray code input
wait for 20 ns; -- Wait for 20 nanoseconds to allow the converter to process the input and produce the output
g <= "00101011";
wait;
end process;
end Behavioral;