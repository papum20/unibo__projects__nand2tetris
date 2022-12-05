//INIT SEGMENTS
@256
D=A
@SP
M=D
@8
D=A
@R14
M=D







	////PUSH constant
		@111
		D=A
			@SP
			A=M
			M=D
				@SP
				M=M+1

//CURRENT INSTRUCTION INCREMENT
@11
D=A
@R14
M=D+M


	////PUSH constant
		@333
		D=A
			@SP
			A=M
			M=D
				@SP
				M=M+1

//CURRENT INSTRUCTION INCREMENT
@11
D=A
@R14
M=D+M


	////PUSH constant
		@888
		D=A
			@SP
			A=M
			M=D
				@SP
				M=M+1

//CURRENT INSTRUCTION INCREMENT
@11
D=A
@R14
M=D+M


	////POP static 8
				@SP
				M=M-1

			@SP
			A=M
			D=M

			@StaticTest.8
			M=D

//CURRENT INSTRUCTION INCREMENT
@11
D=A
@R14
M=D+M


	////POP static 3
				@SP
				M=M-1

			@SP
			A=M
			D=M

			@StaticTest.3
			M=D

//CURRENT INSTRUCTION INCREMENT
@11
D=A
@R14
M=D+M


	////POP static 1
				@SP
				M=M-1

			@SP
			A=M
			D=M

			@StaticTest.1
			M=D

//CURRENT INSTRUCTION INCREMENT
@11
D=A
@R14
M=D+M


	////PUSH static 3
			@StaticTest.3
			D=M

			@SP
			A=M
			M=D
				@SP
				M=M+1

//CURRENT INSTRUCTION INCREMENT
@11
D=A
@R14
M=D+M


	////PUSH static 1
			@StaticTest.1
			D=M

			@SP
			A=M
			M=D
				@SP
				M=M+1

//CURRENT INSTRUCTION INCREMENT
@11
D=A
@R14
M=D+M


	////SUB
				@SP
				M=M-1

			@SP
			A=M
			D=M

				@SP
				M=M-1

		@SP
		A=M
		D=M-D
			@SP
			A=M
			M=D
				@SP
				M=M+1

//CURRENT INSTRUCTION INCREMENT
@19
D=A
@R14
M=D+M


	////PUSH static 8
			@StaticTest.8
			D=M

			@SP
			A=M
			M=D
				@SP
				M=M+1

//CURRENT INSTRUCTION INCREMENT
@11
D=A
@R14
M=D+M


	////ADD
				@SP
				M=M-1

			@SP
			A=M
			D=M

				@SP
				M=M-1

		@SP
		A=M
		D=D+M
			@SP
			A=M
			M=D
				@SP
				M=M+1

//CURRENT INSTRUCTION INCREMENT
@19
D=A
@R14
M=D+M



