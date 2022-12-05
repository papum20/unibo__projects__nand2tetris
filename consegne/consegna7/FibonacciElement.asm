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








		////PUSH constant 7
		@7
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@FibonacciElement.fibonacci
	D=A
	@R15
	M=D
	@null$ret.0
	D=A
	@54
	0;JMP

(null$ret.0)

	////LABEL
(null$WHILE)

	////GOTO
	@null$WHILE
	0;JMP

////FUNCTION
(FibonacciElement.fibonacci)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 2
		@2
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@FibonacciElement.fibonacci$ret.0
	D=A
	@36
	0;JMP
	(FibonacciElement.fibonacci$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@FibonacciElement.fibonacci$IF_TRUE
	D;JNE

	////GOTO
	@FibonacciElement.fibonacci$IF_FALSE
	0;JMP

	////LABEL
(FibonacciElement.fibonacci$IF_TRUE)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

	////LABEL
(FibonacciElement.fibonacci$IF_FALSE)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 2
		@2
		D=A
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

	////CALL
	@1
	D=A
	@R14
	M=D
	@FibonacciElement.fibonacci
	D=A
	@R15
	M=D
	@FibonacciElement.fibonacci$ret.1
	D=A
	@54
	0;JMP

(FibonacciElement.fibonacci$ret.1)

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

	////CALL
	@1
	D=A
	@R14
	M=D
	@FibonacciElement.fibonacci
	D=A
	@R15
	M=D
	@FibonacciElement.fibonacci$ret.2
	D=A
	@54
	0;JMP

(FibonacciElement.fibonacci$ret.2)

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

	////RETURN
	@95
	0;JMP


