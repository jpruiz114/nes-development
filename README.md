# NES Development

A collection of Nintendo Entertainment System (NES) development examples using the CC65 cross-compiler toolchain. This repository contains basic C programs that demonstrate fundamental NES programming concepts including PPU manipulation, text rendering, and hardware register access.

## Project Overview

This project includes three simple NES programs that showcase basic text rendering on the NES hardware. All programs are based on the original "Hello, NES!" example by WolfCoder (2010) and demonstrate low-level hardware programming techniques.

## Programs

### hello-world.c
- **Output**: "Hello, NES!"
- **Description**: The original example program that displays a greeting message
- **ROM**: `hello-world.nes`

### test-01.c
- **Output**: "Hola novia!!"
- **Description**: Modified version with a Spanish greeting
- **ROM**: `test-01.nes`

### test-02.c
- **Output**: "Coma tapioca alcornoque"
- **Description**: Modified version with a Spanish phrase
- **ROM**: `test-02.nes`

## Technical Features

All programs demonstrate the following NES programming concepts:

- **VBLANK Synchronization**: Proper timing with the PPU rendering cycles
- **Memory-Mapped I/O**: Direct hardware register manipulation
- **PPU Control**: Picture Processing Unit configuration and control
- **Color Palette Setup**: Background and text color configuration
- **Text Rendering**: Character display using ASCII-mapped graphics
- **Screen Positioning**: Scroll and cursor positioning

## Hardware Registers Used

- `0x2001`: PPU Control Register 2 (screen enable/disable)
- `0x2005`: PPU Scroll Register (screen positioning)
- `0x2006`: PPU Address Register (VRAM addressing)
- `0x2007`: PPU Data Register (VRAM data read/write)
- `0x3F00-0x3F03`: Color palette memory addresses

## Build System

The project uses the CC65 compiler toolchain for cross-compilation to the 6502 processor architecture used by the NES.

### Requirements
- CC65 cross-compiler for NES development
- Windows environment (batch files provided)

### Compilation
Each program has its own compilation batch file:

```batch
hello-world-compile.bat  # Compiles hello-world.c to hello-world.nes
test-01-compile.bat      # Compiles test-01.c to test-01.nes
test-02-compile.bat      # Compiles test-02.c to test-02.nes
```

The compilation process:
1. Sets CC65_HOME environment variable
2. Uses cl65 linker with NES target (-t nes)
3. Links against CC65 NES libraries
4. Outputs .nes ROM files ready for emulation

## Running the Programs

The compiled `.nes` files can be run on:
- NES emulators (Nestopia, FCEUX, etc.)
- Flash cartridges on original NES hardware
- Browser-based NES emulators

## File Structure

```
├── hello-world.c              # Source: "Hello, NES!" program
├── hello-world-compile.bat    # Compilation script
├── hello-world.nes            # Compiled ROM
├── hello-world.o              # Object file
├── test-01.c                  # Source: "Hola novia!!" program
├── test-01-compile.bat        # Compilation script
├── test-01.nes                # Compiled ROM
├── test-01.o                  # Object file
├── test-02.c                  # Source: "Coma tapioca alcornoque" program
├── test-02-compile.bat        # Compilation script
├── test-02.nes                # Compiled ROM
├── test-02.o                  # Object file
└── README.md                  # This file
```

## Learning Resources

These examples serve as an introduction to:
- 6502 assembly programming concepts
- NES hardware architecture
- PPU (Picture Processing Unit) programming
- Memory-mapped I/O on vintage systems
- Cross-compilation for embedded systems

## Credits

Original "Hello, NES!" program by WolfCoder (2010). Modified versions demonstrate variations of the basic text rendering approach.
