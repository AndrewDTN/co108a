// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.


    //int R0=3;
    //@0
    //M=3
    //int R1=5;
    //@1
    //M=5
    //int R2=0;  
    @2
    M=0   

(LOOP) // LOOP:
    // if(R0<=0) goto END;// while(R0>0) 
    @0
    D=M
    @END
    D;JLE 
    // R2=R1+R2;
    @1
    D=M
    @2
    M=D+M
    //R0-=1;
    @0
    M=M-1
    //goto LOOP; 
    @0
    D=M
    @LOOP
    D;JGT
(END)//END:
   @END
   0;JMP
