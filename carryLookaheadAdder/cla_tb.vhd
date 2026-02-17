library IEEE; -- Include the IEEE library for standard logic definitions
use IEEE.std_logic_1164.all; -- Use the standard logic package from the IEEE library

-- Define the testbench entity for the carry lookahead adder
entity cla_tb is
end cla_tb; -- End of the testbench entity declaration

architecture sim of cla_tb is -- Declare signals to connect to the inputs and outputs of the carry lookahead adder
    signal a, b : std_logic_vector(7 downto 0); -- 8-bit input vectors for the two numbers to be added
    signal cin : std_logic; -- Carry input signal
    signal s : std_logic_vector(7 downto 0); -- 8-bit output vector for the sum of the two input numbers
    signal cout : std_logic; -- Carry output signal, indicates if there is a carry out from the most significant bit

begin
    uut: entity work.cla -- Instantiate the carry lookahead adder
    -- Map the signals in the testbench to the ports of the carry lookahead adder    
    port map (
            a => a,
            b => b,
            cin => cin,
            s => s,
            cout => cout
        );
        process -- Define a process to apply test vectors to the inputs of the carry lookahead adder
        begin 
        -- Apply different test vectors to the inputs of the carry lookahead adder and wait for some time after each vector to observe the outputs

            a <= "00000000"; b <= "00000000"; cin <= '0'; -- Test case 1: Adding two zero numbers with no carry input
            wait for 20 ns;
            
            a <= "00000001"; b <= "00000001"; cin <= '0'; -- Test case 2: Adding two one numbers with no carry input
            wait for 20 ns;
            
            a <= "11111111"; b <= "11111111"; cin <= '0'; -- Test case 3: Adding two maximum numbers (255) with no carry input
            wait for 20 ns;
            
            a <= "10101010"; b <= "01010101"; cin <= '1'; -- Test case 4: Adding two bit patterns with a carry input of '1'
            wait for 20 ns;
            
            a <= "11001100"; b <= "00110011"; cin <= '0'; -- Test case 5: Adding two bit patterns with no carry input
            wait for 20 ns;
            
            a <= "11110000"; b <= "00001111"; cin <= '1'; -- Test case 6: Adding two bit patterns with a carry input of '1'
            wait for 20 ns;
            
            a <= "00001111"; b <= "11110000"; cin <= '0'; -- Test case 7: Adding two bit patterns with no carry input
            wait for 20 ns;
            
            a <= "10101010"; b <= "10101010"; cin <= '1'; -- Test case 8: Adding two identical bit patterns with a carry input of '1'
            wait for 20 ns;
    
            wait; -- Wait indefinitely

        end process; -- End of the process that applies test vectors to the inputs of the carry lookahead adder
        
end sim; -- End of the testbench architecture declaration