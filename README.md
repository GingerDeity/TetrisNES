# TetrisNES
This contains the general instructions for setting up your NES Dev-Kit for the project!

## Installing Tools

### VSCode
This is the environment for you to modify the 6502 Assembly code taken from the Tetris ROM. **Make sure to install the ca65 Macro Assembler Language Support (6502/65816) extension.**

### Disassemblers
These tools will take the original ROM binary and convert it into 6502 Assembly code for us to modify. Go to https://github.com/NationalSecurityAgency/ghidra/releases and download the ghidra_11.2.1_PUBLIC_20241105.zip file for Ghidra 11.2.1

Ghidra is a great tool for viewing the disassembled code as a high-level language, but it doesn't offer as much help for NES developers. To fix this

### Assembler
This is the tool that will translate the code you wrote in VSCode into binary instructions that an emulator can understand. Go to https://cc65.github.io/getting-started.html and follow the appropriate download instructions, **make sure to extract the ZIP contents to C:\cc65**.
