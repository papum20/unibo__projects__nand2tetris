//INIT SEGMENTS
@256
D=A
@SP
M=D
@R14
M=0

//INIT COMPARE
	////GOTO
		@SCRIPT_START
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

		@SCRIPT_START
		0;JMP

	////LABEL
		(EQ_LABEL)

			//COMPARE
			@SP
			AM=M-1
			D=M

			@SP
			AM=M-1
			D=M-D

@RETURN_TRUE
D;JEQ
@RETURN_FALSE
0;JMP

	////LABEL
		(GT_LABEL)

			//COMPARE
			@SP
			AM=M-1
			D=M

			@SP
			AM=M-1
			D=M-D

@RETURN_TRUE
D;JGT
@RETURN_FALSE
0;JMP

	////LABEL
		(LT_LABEL)

			//COMPARE
			@SP
			AM=M-1
			D=M

			@SP
			AM=M-1
			D=M-D

@RETURN_TRUE
D;JLT
@RETURN_FALSE
0;JMP

	////LABEL
		(RETURN_TRUE)

	////PUSH constant
		@0
		D=A
			@SP
			M=M+1
			A=M-1
			M=D
				//CURRENT INSTRUCTION INCREMENT
				@10
				D=A
				@R14
				M=D+M

	////not INSTRUCTION
		@SP
		A=M-1
		M=!M
				//CURRENT INSTRUCTION INCREMENT
				@7
				D=A
				@R14
				M=D+M

@R13
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

@R13
A=M
0;JMP

	////LABEL
		(RETURN_FALSE)

	////PUSH constant
		@0
		D=A
			@SP
			M=M+1
			A=M-1
			M=D
				//CURRENT INSTRUCTION INCREMENT
				@10
				D=A
				@R14
				M=D+M

@R13
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

@R13
A=M
0;JMP

//////////////////////
//// SCRIPT START ////
//////////////////////

	////LABEL
		(SCRIPT_START)










////FUNCTION
	////LABEL
		(SimpleFunction.test)

	////PUSH constant
		@0
		D=A
			@SP
			M=M+1
			A=M-1
			M=D
				//CURRENT INSTRUCTION INCREMENT
				@10
				D=A
				@R14
				M=D+M

	////PUSH constant
		@0
		D=A
			@SP
			M=M+1
			A=M-1
			M=D
				//CURRENT INSTRUCTION INCREMENT
				@10
				D=A
				@R14
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
				//CURRENT INSTRUCTION INCREMENT
				@13
				D=A
				@R14
				M=D+M


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
				//CURRENT INSTRUCTION INCREMENT
				@13
				D=A
				@R14
				M=D+M


	////add INSTRUCTION
			@SP
			AM=M-1
			D=M

		@SP
		A=M-1
		M=D+M
				//CURRENT INSTRUCTION INCREMENT
				@10
				D=A
				@R14
				M=D+M


	////not INSTRUCTION
		@SP
		A=M-1
		M=!M
				//CURRENT INSTRUCTION INCREMENT
				@7
				D=A
				@R14
				M=D+M


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
				//CURRENT INSTRUCTION INCREMENT
				@13
				D=A
				@R14
				M=D+M


	////add INSTRUCTION
			@SP
			AM=M-1
			D=M

		@SP
		A=M-1
		M=D+M
				//CURRENT INSTRUCTION INCREMENT
				@10
				D=A
				@R14
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
				//CURRENT INSTRUCTION INCREMENT
				@13
				D=A
				@R14
				M=D+M


	////sub INSTRUCTION
			@SP
			AM=M-1
			D=M

		@SP
		A=M-1
		M=M-D
				//CURRENT INSTRUCTION INCREMENT
				@10
				D=A
				@R14
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

				//CURRENT INSTRUCTION INCREMENT
				@16
				D=A
				@R14
				M=D+M

		//reset sp
		@ARG
		D=M+1
		@SP
		M=D

		//set frame
		@LCL
		D=M
		@R14
		M=D
				//RESET SEGMENT
				@R14
				AM=M-1
				D=M
				@THAT
				M=D

				//RESET SEGMENT
				@R14
				AM=M-1
				D=M
				@THIS
				M=D

				//RESET SEGMENT
				@R14
				AM=M-1
				D=M
				@ARG
				M=D

				//RESET SEGMENT
				@R14
				AM=M-1
				D=M
				@LCL
				M=D

		@R14
		AM=M-1
		A=M
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

		@R14
		A=M
		0;JMP



