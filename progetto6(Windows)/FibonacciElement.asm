//INIT
@256
D=A
@SP
M=D









		////PUSH constant 7
		@7
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@null$ret.0
	D=A
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
	@6
	D=D-A
	@ARG
	M=D
	@FibonacciElement.fibonacci
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
		D=M
		@0
		A=D+A
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
		@SP
		AM=M-1
		D=M
		A=A-1
		D=M-D

		@FibonacciElement.fibonacci$___0
		D;JLT
		D=0
		@FibonacciElement.fibonacci$___1
		0;JMP
		(FibonacciElement.fibonacci$___0)
		D=-1
		(FibonacciElement.fibonacci$___1)
		@SP
		A=M-1
		M=D


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
		D=M
		@0
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
		////POP argument 0
		@ARG
		D=M
		@0
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D
	@ARG
	D=M+1
	@SP
	M=D

	@LCL
	D=M
	@R14
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

	@R14
	A=M-1
	A=M
	0;JMP

	////LABEL
(FibonacciElement.fibonacci$IF_FALSE)

		////PUSH argument 0
		@ARG
		D=M
		@0
		A=D+A
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
	@FibonacciElement.fibonacci$ret.0
	D=A
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
	@6
	D=D-A
	@ARG
	M=D
	@FibonacciElement.fibonacci
	0;JMP

(FibonacciElement.fibonacci$ret.0)

		////PUSH argument 0
		@ARG
		D=M
		@0
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@1
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
	@FibonacciElement.fibonacci$ret.1
	D=A
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
	@6
	D=D-A
	@ARG
	M=D
	@FibonacciElement.fibonacci
	0;JMP

(FibonacciElement.fibonacci$ret.1)

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
		A=A-1
		M=D+M

	////RETURN
		////POP argument 0
		@ARG
		D=M
		@0
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D
	@ARG
	D=M+1
	@SP
	M=D

	@LCL
	D=M
	@R14
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

	@R14
	A=M-1
	A=M
	0;JMP



