# Half Adder

## Description

A half adder is a basic digital circuit that performs addition of two single-bit binary numbers. It produces two outputs: the sum and the carry. The half adder does not account for any carry input from a previous addition, hence the name "half" adder. It is commonly used as a building block for more complex adders, such as full adders.

### Inputs
- `a`: First input bit (0 or 1)
- `b`: Second input bit (0 or 1)

### Outputs
- `sum`: The sum of the two input bits (XOR operation)
- `carry`: The carry output (AND operation)

## Truth Table

The truth table below shows all possible combinations of inputs and their corresponding outputs:

| A | B | Sum | Carry |
|---|---|-----|-------|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |

- When both inputs are 0, sum is 0 and carry is 0.
- When one input is 1 and the other is 0, sum is 1 and carry is 0.
- When both inputs are 1, sum is 0 and carry is 1 (since 1 + 1 = 10 in binary).

## VHDL Implementation

The half adder is implemented in VHDL using the following files:

- `halfAdder.vhd`: Contains the entity and architecture for the half adder.
- `halfAdder_tb.vhd`: Contains the testbench for simulation.

### Entity Declaration
```vhdl
entity half_adder is
  port(
    a : in std_logic;
    b : in std_logic;
    sum : out std_logic;
    carry : out std_logic
  );
end half_adder;
```

### Architecture
```vhdl
architecture rtl of half_adder is
begin
  sum <= a xor b;
  carry <= a and b;
end rtl;
```

The architecture uses concurrent signal assignments:
- `sum` is assigned the result of `a XOR b`.
- `carry` is assigned the result of `a AND b`.

## Simulation with GHDL

GHDL (GHDL: VHDL simulator) is an open-source VHDL simulator that can be used to compile and simulate VHDL designs. Follow these steps to simulate the half adder:

### Prerequisites
- Ensure GHDL is installed on your system. You can download it from the official GHDL website or install it via package managers (e.g., `sudo apt install ghdl` on Ubuntu).

### Steps to Simulate

1. **Navigate to the halfAdder directory:**
   ```
   cd halfAdder
   ```

2. **Analyze the design file:**
   ```
   ghdl -a halfAdder.vhd
   ```
   This compiles the half adder entity and architecture.

3. **Analyze the testbench file:**
   ```
   ghdl -a halfAdder_tb.vhd
   ```
   This compiles the testbench.

4. **Elaborate the testbench:**
   ```
   ghdl -e half_adder_tb
   ```
   This prepares the testbench for simulation.

5. **Run the simulation:**
   ```
   ghdl -r half_adder_tb
   ```
   This executes the simulation. The testbench will run through all input combinations and report the results.

### Checking the Output

The testbench (`halfAdder_tb.vhd`) uses `report` statements to print the simulation results to the console. When you run the simulation, you should see output similar to the following:

```
 A B | SUM CARRY
0 0 | 0 0
0 1 | 1 0
1 0 | 1 0
1 1 | 0 1
```

This output matches the truth table, confirming that the half adder is functioning correctly.

### Optional: Viewing Waveforms

If you want to visualize the waveforms, you can generate a VCD (Value Change Dump) file and view it with a waveform viewer like GTKWave.

1. **Run simulation with VCD output:**
   ```
   ghdl -r half_adder_tb --vcd=half_adder.vcd
   ```

2. **Open the VCD file with GTKWave:**
   ```
   gtkwave half_adder.vcd
   ```

This allows you to see the signal changes over time graphically.

## Files in this Directory

- `halfAdder.vhd`: VHDL source code for the half adder.
- `halfAdder_tb.vhd`: VHDL testbench for simulation.
- `half_adder.vcd`: Generated VCD file for waveform viewing (after simulation).
- `README.md`: This documentation file.
