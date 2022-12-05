//INIT
@256
D=A
@SP
M=D







	////PUSH constant 10
			@10
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
			@ARG
			D=M
			@1
			D=D+A
			@R15
			M=D

			@SP
			AM=M-1
			D=M
			@R15
			A=M
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
			D=M
			@0
			A=D+A
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


