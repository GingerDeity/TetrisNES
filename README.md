# TetrisNES
This contains the general instructions for setting up your NES Dev-Kit for the project! Reference: https://www.youtube.com/watch?v=RtY5FV5TrIU&list=PLgvDB6LWam2WXHIrK4EkgH1KnpZv3dEAd

## Installing Tools and Extensions

### GitHub
If cloning doesn't immediately work, the option that worked for me was downloading and extracting this repo as a zip, and double-clicking the .code-workspace file.

### VSCode
This is the environment for you to modify the 6502 Assembly code taken from the Tetris ROM. *Make sure to install the ca65 Macro Assembler Language Support (6502/65816) extension.*

### Disassemblers
This tool will take the original ROM binary and convert it into 6502 Assembly code for us to modify! While Ghidra is a great tool for viewing the disassembled code as a high-level language, it doesn't seem to offer an easy way to export the disassembly for us NES developers. To get a disassembly more suited for development, I used the nesgodisasm.exe file in the GitHub with the command: `./nesgodisasm -o tetris-project.asm tetris-OG.nes` to create our project's assembly file!

### Assembler
This is the tool that will translate the code you wrote in VSCode into binary instructions that an emulator can understand. Go to https://cc65.github.io/getting-started.html and follow the appropriate download instructions, ***make sure to extract the ZIP contents to C:\cc65***. How we'll automate the use of the assembler will be covered later.

### Emulator
The final piece, which will allow us to play our modified Tetris game! Go to https://fceux.com/web/download.html and download the binary called "FCEUX 2.6.6 win32 Binary" under "Downloads". This emulator comes with a built-in hex editor and debuggers that are perfect for development.  Extract the contents and double-click the executable inside to boot it up!


## Setting Up VSCode Builds
To have the VSCode editor build NES ROM files from assembly source files, we need to define a Build Task that uses the cc65 tools we've installed. Fortunately, the ca65 extension from earlier has a helpful command to automatically generate a build task for us!

1. Open the tetris-project.asm file, then hit Ctrl+Shift+P to open the command palette.
2. Type "configure default" in the palette and press Enter on the "Tasks: Configure Default Build Task" option. 
3. This should show a "ca65: Build without config" option, press Enter on that option, and you should see a new file called "/.vscode/tasks.json". This file only needs to be configured once before you reuse it over and over while you code
4. Save the tasks.json file!

Whenever you want to build a tetris-project.nes file, simply open the tetris-project.asm file and either:
- A) Hit Ctrl+Shift+B
- B) Hit Ctrl+Shift+P to open the command palette, type "run build task", and press Enter

If all goes well, you should see a result output in the terminal and see a new tetris-project.nes! If you're able to run this new .nes file in FCEUX, then your setup is complete!
