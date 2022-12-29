#include "assembler.h"



void set_dest(char from[], char to[], int len_from)
{
    char dest[3] = {'A', 'D', 'M'};
    for(int j = 0; j < len_from; j++)
    {
        for(int d = 0; d < 3; d++)
            if(dest[d] == from[j]) to[10 + d] = '1';
    }
}



//chiamata sempre con len > 0
void set_comp(char from[], char to[], int len_from)
{
    //zx (D)(c1)
    to[4] = '1';
    //zy (A/M)(c3)
    to[6] = '1';

    for(int i = 0; i < len_from; i++)
    {
        if(from[i] == 'M')
        {
            to[3] = '1';    //a
            to[6] = '0';    //zy
        }
        //zx (c1)
        else if(from[i] == 'D') to[4] = '0';
        //zy (c3)
        else if(from[i] == 'A') to[6] = '0';
        //f (c5)
        else if(from[i] == '0' || from[i] == '1' || from[i] == '+' || from[i] == '-')
            to[8] = '1';
    }

    //nx (D)(c2)
    if( (to[4] == '1' && from[0] != '0') || (len_from == 3 && (strcmp(from, "D+1") == 0 ||
        (strcmp(from, "D-A") == 0 || strcmp(from, "D-M") == 0) || from[1] == '|') ) )
        to[5] = '1';
    //ny (A/M)(c4)
    if( (to[6] == '1' && ((len_from == 1 && from[0] != '0')||(len_from == 2 && from[1] != '1')) ) || (len_from == 3 &&
        ( (from[2] == '1' && (strcmp(from, "A-1") != 0 && strcmp(from, "M-1") != 0)) ||
          (from[1] == '-' && from[2] == 'D') || from[1] == '|') ) )
        to[7] = '1';
    //no (c6)
    if(from[0] == '1' || (len_from == 2 && from[1] != '1') || (len_from == 3 &&
        ( (from[1] == '+' && from[2] == '1') || (from[1] == '-' && from[2] != '1') || from[1] == '|') ) )
        to[9] = '1';
}



void set_jmp(char from[], char res[])
{
    //init res[13..15] to 1 (j1,j2,j3), so JMP = 111
    for(int i = 13; i < 16; i++) res[i] = '1';
    //scan c
    for(int i = 0; i < 3; i++)
    {
        if(from[i] == 'L') res[15] = '0';                          // (j3) if less, then not greater
        else if(from[i] == 'G') res[13] = '0';                     // (j1) if greater, then not less
        else if(from[i] == 'N' || from[i] == 'T') res[14] = '0';   // (j2) not equal, greater or less
    }
}