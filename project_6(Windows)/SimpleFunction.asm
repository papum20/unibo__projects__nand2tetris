//INIT
@256
D=A
@SP
M=D










////FUNCTION
		(SimpleFunction.test)
D=0
@SP
A=M
M=D
A=A+1
M=D
A=A+1
@2
D=A
@SP
M=D+M


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

	////PUSH local 1
			@LCL
			D=M
			@1
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

	////not INSTRUCTION
		@SP
		A=M-1
		M=!M

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

	////add INSTRUCTION
			@SP
			AM=M-1
			D=M
		A=A-1
		M=D+M

	////PUSH argument 1
			@ARG
			D=M
			@1
			A=D+A
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



