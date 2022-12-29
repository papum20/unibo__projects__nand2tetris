//INIT
@256
D=A
@SP
M=D

@141
0;JMP
//DEFAULT COMPARE
@R15
M=D
		@SP
		AM=M-1
		D=M
A=A-1
D=M-D
M=0
@51
D;JNE
@SP
A=M-1
M=-1
@51
0;JMP

@R15
M=D
		@SP
		AM=M-1
		D=M
A=A-1
D=M-D
M=0
@51
D;JLE
@SP
A=M-1
M=-1
@51
0;JMP

@R15
M=D
		@SP
		AM=M-1
		D=M
A=A-1
D=M-D
M=0
@51
D;JGE
@SP
A=M-1
M=-1
@51
0;JMP

@R15
A=M
0;JMP

//DEFAULT_CALL
@R15
M=D
@R13
D=M
		@SP
		M=M+1
		A=M-1
		M=D
@1
D=M
		@SP
		M=M+1
		A=M-1
		M=D
@2
D=M
		@SP
		M=M+1
		A=M-1
		M=D
@3
D=M
		@SP
		M=M+1
		A=M-1
		M=D
@4
D=M
		@SP
		M=M+1
		A=M-1
		M=D

@SP
D=M
@LCL
M=D
@R14
D=D-M
@5
D=D-A
@ARG
M=D
@R15
A=M
0;JMP

//DEFAULT_RETURN
@LCL
D=M
@R14
M=D

@5
A=D-A
D=M
@R13
M=D

		////POP argument 0
		@SP
		AM=M-1
		D=M
@ARG
		A=M
		M=D
@ARG
D=M+1
@SP
M=D

@R14
AM=M-1
D=M
@4
M=D
@R14
AM=M-1
D=M
@3
M=D
@R14
AM=M-1
D=M
@2
M=D
@R14
AM=M-1
D=M
@1
M=D

@R13
A=M
0;JMP


//// FINE DEFAULT ////


		////PUSH constant 111
		@111
		D=A
		@SP
		M=M+1
		A=M-1
		M=D
		////PUSH constant 333
		@333
		D=A
		@SP
		M=M+1
		A=M-1
		M=D
		////PUSH constant 888
		@888
		D=A
		@SP
		M=M+1
		A=M-1
		M=D
		////POP static 8
		@SP
		AM=M-1
		D=M
		@StaticTest.8
		M=D
		////POP static 3
		@SP
		AM=M-1
		D=M
		@StaticTest.3
		M=D
		////POP static 1
		@SP
		AM=M-1
		D=M
		@StaticTest.1
		M=D
		////PUSH static 3
		@StaticTest.3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D
		////PUSH static 1
		@StaticTest.1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D
	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D
		////PUSH static 8
		@StaticTest.8
		D=M
		@SP
		M=M+1
		A=M-1
		M=D
	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M
