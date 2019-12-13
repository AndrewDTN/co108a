#include <stdio.h>

int main()
{
    int R0=3;
    int R1=5;
    int R2=0; // @2, M=0

LOOP:
    if(R0<=0) goto END;// while(R0>0)
    // {
        R2=R1+R2;
        R0-=1;
        printf("R0=%d,R1%d,R2%d\n",R0,R1,R2);
    // }
    goto LOOP; 
END:
    printf("R2=%d\n",R2);
}