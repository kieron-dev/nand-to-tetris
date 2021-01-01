// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed.
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(LOOP)

@KBD
D=M

@WHITE
D;JEQ

@colour
M=-1

@FILL
0;JMP

(WHITE)

@colour
M=0

(FILL)

@i
M=0

(FILL_LOOP)

@8192
D=A

@i
D=D-M

@LOOP
D;JLE

@SCREEN
D=A

@i
D=D+M

@p
M=D

@colour
D=M

@p
A=M
M=D

@i
M=M+1

@FILL_LOOP
0;JMP
