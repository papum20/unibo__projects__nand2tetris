//INIT
@256
D=A
@SP
M=D








		////PUSH constant 0
		@0
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 0
		@LCL
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

	////LABEL
(null$LOOP_START)

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

		////PUSH local 0
		@LCL
		D=M
		@0
		A=D+A
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
		@LCL
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

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@null$LOOP_START
	D;JNE

		////PUSH local 0
		@LCL
		D=M
		@0
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D


