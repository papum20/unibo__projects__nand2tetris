@0
D=M
@END //@23
D;JLE
@counter //@16
M=D
@SCREEN //@16384 (2**14)
D=A
@17
M=A
//@17
(LOOP) /*@10*/ A=M
M=-1    //first word of screen = -1
@17
D=M
@32
D=D+A   //calc next row
@17
M=D //set next word (in next row)
@counter
MD=M-1
@LOOP //@10
D;JGT
(END) @23
0;JMP