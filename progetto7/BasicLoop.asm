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


		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0
		////POP local 0
		@SP
		AM=M-1
		D=M
@LCL
		A=M
		M=D
	////LABEL
(null$LOOP_START)
		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D
		////PUSH local 0
		@LCL
		A=M
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
		////POP local 0
		@SP
		AM=M-1
		D=M
@LCL
		A=M
		M=D
		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D
		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1
	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D
		////POP argument 0
		@SP
		AM=M-1
		D=M
@ARG
		A=M
		M=D
		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D
	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@null$LOOP_START
	D;JNE
		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D
