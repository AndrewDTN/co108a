//KBD->keyboard
//screen->8192
#include<stdio.h>

int main()
{
    forver://(forver)
    arr=SCREEN[];//@SCREEN,D=A,@arr,M=D
    int n=8192;//@8192,D=A,@n,M=D
    int i=0;//@i,M=0
    LOOP:(LOOP)
    if(i>=n)goto forver//while(i<n)//@i,D=M,@n,D=M-D,@forver,D;JLE
    //{
        if(KBD!=0) goto BLACK //@KBD,D=M,@BLACK,D;JNE,@WHITE,D;JEQ
        BLACK://(BLACK)
        arr[i]=-1;//@arr,D=M,@i,A=D+M,M=-1,@PLUS,0;JMP
        i++;//@i,M=M+1,@LOOP,0;JMP
        else goto WHITE//line13
        WHITE://(WHITE)
        i++;//@i,M=M+1,@LOOP,0;JMP
        arr[i]=0;//@arr,D=M,@i,A=D+M,M=0,@PLUS,0;JMP
    //}
    
}