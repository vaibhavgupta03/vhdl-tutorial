library IEEE;
use IEEE.std_logic_1164.all;

entity cla_tb is
end cla_tb;

architecture sim of cla_tb is
    signal a, b : std_logic_vector(7 downto 0);
    signal cin : std_logic;
    signal s : std_logic_vector(7 downto 0);
    signal cout : std_logic;
begin
    uut: entity work.cla
        port map (
            a => a,
            b => b,
            cin => cin,
            s => s,
            cout => cout
        );
        process
        begin
            a <= "00000000"; b <= "00000000"; cin <= '0'; 
            wait for 20 ns;
            
            a <= "00000001"; b <= "00000001"; cin <= '0'; 
            wait for 20 ns;
            
            a <= "11111111"; b <= "11111111"; cin <= '0';
            wait for 20 ns;
            
            a <= "10101010"; b <= "01010101"; cin <= '1';
            wait for 20 ns;
            
            a <= "11001100"; b <= "00110011"; cin <= '0';
            wait for 20 ns;
            
            a <= "11110000"; b <= "00001111"; cin <= '1';
            wait for 20 ns;
            
            a <= "00001111"; b <= "11110000"; cin <= '0';
            wait for 20 ns;
            
            a <= "10101010"; b <= "10101010"; cin <= '1';
            wait for 20 ns;
    
            wait; -- Wait indefinitely
        end process;
        
end sim;