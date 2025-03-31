# TetrisNES
This contains the general instructions for setting up your NES Dev-Kit for the project! Reference: https://www.youtube.com/watch?v=RtY5FV5TrIU&list=PLgvDB6LWam2WXHIrK4EkgH1KnpZv3dEAd

## Installing Tools

### VSCode
This is the environment for you to modify the 6502 Assembly code taken from the Tetris ROM. **Make sure to install the ca65 Macro Assembler Language Support (6502/65816) extension.**

### Disassemblers
These tools will take the original ROM binary and convert it into 6502 Assembly code for us to modify. Go to https://github.com/NationalSecurityAgency/ghidra/releases and download the ghidra_11.2.1_PUBLIC_20241105.zip file for Ghidra 11.2.1

Ghidra is a great tool for viewing the disassembled code as a high-level language, but it doesn't offer as much help for NES developers. To fix this

### Assembler
This is the tool that will translate the code you wrote in VSCode into binary instructions that an emulator can understand. Go to https://cc65.github.io/getting-started.html and follow the appropriate download instructions, **make sure to extract the ZIP contents to C:\cc65**.

### Emulator
The final piece, which allows us to play our modified Tetris game! Go to https://fceux.com/web/download.html and download the binary called "FCEUX 2.6.6 win32 Binary" under "Downloads". This emulator comes with a built-in hex editor and debuggers that are perfect for development.  Extract the contents and double-click the executable inside to boot it up!

## Final Steps
To have the VSCode editor build NES ROM files from assembly source files, we need to define build tasks. 
