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
(forver)//forver:
    //arr=SCREEN[];//@SCREEN,D=A,@arr,M=D
    @SCREEN
    D=A
    @arr
    M=D
    //int n=8192;//@8192,D=A,@n,M=D
    @8192
    D=A
    @n
    M=D
    //int i=0;//@i,M=0
    @i
    M=0

(LOOP)//LOOP:
    //if(i>=n)goto forver//while(i<n)//@i,D=M,@n,D=M-D,@forver,D;JLE
    @i
    D=M
    @n
    D=M-D
    @forver
    D;JLE
    //if(KBD!=0) goto BLACK //@KBD,D=M,@BLACK,D;JNE,@WHITE,D;JEQ
    @KBD
    D=M
    @BLACK
    D;JNE
    @WHITE
    D;JEQ
(BLACK)//BLACK:
    //arr[i]=-1;//@arr,D=M,@i,A=D+M,M=-1
    @arr
    D=M
    @i
    A=D+M
    M=-1
    //i++;//@i,M=M+1,@LOOP,0;JMP
    @i
    M=M+1
    @LOOP
    0;JMP
    //else goto WHITE//line13
(WHITE)//WHITE:
    //arr[i]=0;//@arr,D=M,@i,A=D+M,M=0
    @arr
    D=M
    @i
    A=D+M
    M=0
    //i++;//@i,M=M+1,@LOOP,0;JMP
    @i
    M=M+1
    @LOOP
    0;JMP
