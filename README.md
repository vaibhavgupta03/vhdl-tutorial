# VHDL Tutorial

## Introduction

I've started learning VHDL recently, and since I already know Verilog, I'm approaching this by comparing VHDL code to Verilog equivalents. This tutorial folder contains basic examples (like a half adder) to help beginners understand VHDL syntax, structure, and simulation.

## VHDL Basics

VHDL (VHSIC Hardware Description Language) is a hardware description language used for modeling digital systems. It's more verbose than Verilog but offers strong typing and structural clarity.

- **File Extension**: VHDL files use the `.vhd` extension.

## Basic Syntax

VHDL code is organized into entities (defining interfaces) and architectures (defining behavior). Testbenches are used for simulation.

- **Entity**: Defines the inputs and outputs (ports).
- **Architecture**: Contains the logic implementation.
- **Library**: `IEEE.std_logic_1164` provides standard logic types like `std_logic`.

## Comparison with Verilog

### Key Differences
- **Structure**: Verilog uses `module` with ports directly. VHDL separates `entity` (interface) and `architecture` (implementation).
- **Assignments**: Verilog uses `assign` for continuous assignments. VHDL uses `<=` for signal assignments.
- **Typing**: VHDL requires explicit type declarations (e.g., `std_logic`). Verilog is more implicit.
- **Verbosity**: VHDL is more wordy, but clearer for complex designs.

## How to Run

To simulate VHDL code, you'll need a VHDL simulator. We'll use GHDL (free and open-source) as an example.

1. **Install GHDL**: Download from [ghdl.github.io](https://ghdl.github.io/ghdl/).
2. **Compile the Design**:
   ```
   ghdl -a your_design.vhd
   ```
3. **Compile the Testbench**:
   ```
   ghdl -a your_testbench.vhd
   ```
4. **Elaborate and Run**:
   ```
   ghdl -e your_testbench
   ghdl -r your_testbench
   ```

This will run the simulation and output results to the console.

## Checking Output

The testbench simulates all input combinations and reports the results.


If using a waveform viewer like GTKWave, you can generate a VCD file:
```
ghdl -r half_adder_tb --vcd=half_adder.vcd
```
Then open `half_adder.vcd` in GTKWave to visualize signal changes over time.

This tutorial provides a foundation for learning VHDL. Explore more complex examples as you progress!
