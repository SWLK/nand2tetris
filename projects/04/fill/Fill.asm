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

// Loop, increment i until 24575, if address 24576 is not zero

(START)

// Define variable i=16384, on=-1 (all 1s), off=0 (all 0s)

@16384
D=A
@i
M=D

// Loop, check input, set range 16384 to 24575

(LOOP)

@i
D=M
@24576
D=A-D
@START
D;JEQ

@24576
D=M
@KEYP
D;JNE

// @i
// @M
// M=0

@i
D=M
A=D
M=0
@INC
0;JMP

(KEYP)

// @i
// @M
// M=-1

@i
D=M
A=D
M=-1

(INC)

@i
M=M+1

@LOOP
0;JMP
