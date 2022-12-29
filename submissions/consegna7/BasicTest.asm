//INIT
@256
D=A
@SP
M=D

@137
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







		////PUSH constant 10
		@10
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH constant 21
		@21
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 22
		@22
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP argument 2
		@ARG
		D=M
		@2
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////POP argument 1
		@SP
		AM=M-1
		D=M
		@ARG
		A=M+1
		M=D

		////PUSH constant 36
		@36
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 4
		@SP
		AM=M-1
		D=M
		@BasicTest.4
		M=D

		////PUSH constant 42
		@42
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 45
		@45
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 7
		@SP
		AM=M-1
		D=M
		@BasicTest.7
		M=D

		////POP static 1
		@SP
		AM=M-1
		D=M
		@BasicTest.1
		M=D

		////PUSH constant 510
		@510
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 0
		@SP
		AM=M-1
		D=M
		@BasicTest.0
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 7
		@BasicTest.7
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

		////PUSH argument 1
		@ARG
		A=M+1
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

		////PUSH static 4
		@BasicTest.4
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 4
		@BasicTest.4
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

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////PUSH static 0
		@BasicTest.0
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


