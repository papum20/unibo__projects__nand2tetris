//INIT
@256
D=A
@SP
M=D







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


