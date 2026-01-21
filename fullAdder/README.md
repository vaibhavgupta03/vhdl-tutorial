# Full Adder VHDL Implementation

This folder contains the VHDL implementation of a full adder circuit, including the design file and a testbench for verification.

## Design File: `full_adder.vhd`

The `full_adder.vhd` file defines the full adder entity and its architecture. A full adder is a digital circuit that performs addition of three binary digits: two input bits (A and B) and a carry-in bit (Cin). It produces two outputs: the sum bit and a carry-out bit (Cout).

### Entity Declaration
- **Inputs:**
  - `a`: First input bit
  - `b`: Second input bit
  - `c_in`: Carry-in bit
- **Outputs:**
  - `sum`: Sum of the inputs
  - `c_out`: Carry-out bit

### Architecture
The RTL (Register Transfer Level) architecture implements the full adder logic using combinational logic:
- `sum <= a xor b xor c_in;`
- `c_out <= (a and b) or (b and c_in) or (c_in and a);`

This logic ensures correct addition with carry propagation.

## Testbench File: `full_adder_tb.vhd`

The `full_adder_tb.vhd` file is a testbench that verifies the full adder functionality by testing all possible input combinations. It instantiates the `full_adder` entity and applies stimuli to check the outputs.

### Test Process
The testbench cycles through all 8 possible combinations of inputs (A, B, Cin) and reports the resulting Sum and Cout values. Each test case waits for 10 ns to allow signal propagation.

## Truth Table

The full adder follows this truth table:

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

This table shows how the full adder handles binary addition, including carry generation and propagation.

## How to Run and Simulate

To simulate this VHDL code, you need a VHDL simulator such as ModelSim, GHDL, or Vivado Simulator. Here I'm using GHDL as an example.

### Using GHDL (or similar):
1. **Compile the Design:**
   - `ghdl -a full_adder.vhd`

2. **Compile the Testbench:**
   - `ghdl -a full_adder_tb.vhd`

3. **Run the Simulation:**
   - `ghdl -r full_adder_tb --vcd=full_adder.vcd`
   - View waveforms with `gtkwave full_adder.vcd` if desired.


The simulation will execute all test cases and print the results to the console, allowing you to verify that the full adder produces the correct outputs according to the truth table.

## Checking Full Adder Basics

- **Sum Output:** Represents the least significant bit of the addition result.
- **Carry Output:** Represents the most significant bit, which becomes the carry-in for the next higher bit in multi-bit addition.
- The full adder can be used as a building block for larger adders (e.g., ripple carry adder).

For any issues or modifications, refer to the VHDL files or consult VHDL documentation.

## Conclusion
This implementation provides a basic yet complete example of a full adder in VHDL, along with a testbench for verification. It serves as a foundation for understanding digital addition and can be expanded for more complex arithmetic operations.

Feel free to modify and enhance the design as needed for your specific applications!