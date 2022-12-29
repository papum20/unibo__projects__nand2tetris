//INIT SEGMENTS
@256
D=A
@SP
M=D
@8
D=A
@R14
M=D

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
				M=M-1

			@SP
			A=M
			D=M

				@SP
				M=M-1

			@SP
			A=M
			D=M-D

@RETURN_TRUE
D;JEQ
@RETURN_FALSE
0;JMP

	////LABEL
		(GT_LABEL)

			//COMPARE
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

@RETURN_TRUE
D;JGT
@RETURN_FALSE
0;JMP

	////LABEL
		(LT_LABEL)

			//COMPARE
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
			A=M
			M=D
				@SP
				M=M+1

				//CURRENT INSTRUCTION INCREMENT
				@11
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
			A=M
			M=D
				@SP
				M=M+1

				//CURRENT INSTRUCTION INCREMENT
				@11
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








	////PUSH constant
		@17
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
		@17
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


	////eq INSTRUCTION
				//SET R13
				@R14
				D=M
				@12
				D=D+A
				@R13
				M=D

	////GOTO
		@EQ_LABEL
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

		@EQ_LABEL
		0;JMP

				//CURRENT INSTRUCTION SET
				D=A
				@5
				D=D+A
				@R14
				M=D



	////PUSH constant
		@17
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
		@16
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


	////eq INSTRUCTION
				//SET R13
				@R14
				D=M
				@12
				D=D+A
				@R13
				M=D

	////GOTO
		@EQ_LABEL
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

		@EQ_LABEL
		0;JMP

				//CURRENT INSTRUCTION SET
				D=A
				@5
				D=D+A
				@R14
				M=D



	////PUSH constant
		@16
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
		@17
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


	////eq INSTRUCTION
				//SET R13
				@R14
				D=M
				@12
				D=D+A
				@R13
				M=D

	////GOTO
		@EQ_LABEL
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

		@EQ_LABEL
		0;JMP

				//CURRENT INSTRUCTION SET
				D=A
				@5
				D=D+A
				@R14
				M=D



	////PUSH constant
		@892
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
		@891
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


	////lt INSTRUCTION
				//SET R13
				@R14
				D=M
				@12
				D=D+A
				@R13
				M=D

	////GOTO
		@LT_LABEL
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

		@LT_LABEL
		0;JMP

				//CURRENT INSTRUCTION SET
				D=A
				@5
				D=D+A
				@R14
				M=D



	////PUSH constant
		@891
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
		@892
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


	////lt INSTRUCTION
				//SET R13
				@R14
				D=M
				@12
				D=D+A
				@R13
				M=D

	////GOTO
		@LT_LABEL
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

		@LT_LABEL
		0;JMP

				//CURRENT INSTRUCTION SET
				D=A
				@5
				D=D+A
				@R14
				M=D



	////PUSH constant
		@891
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
		@891
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


	////lt INSTRUCTION
				//SET R13
				@R14
				D=M
				@12
				D=D+A
				@R13
				M=D

	////GOTO
		@LT_LABEL
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

		@LT_LABEL
		0;JMP

				//CURRENT INSTRUCTION SET
				D=A
				@5
				D=D+A
				@R14
				M=D



	////PUSH constant
		@32767
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
		@32766
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


	////gt INSTRUCTION
				//SET R13
				@R14
				D=M
				@12
				D=D+A
				@R13
				M=D

	////GOTO
		@GT_LABEL
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

		@GT_LABEL
		0;JMP

				//CURRENT INSTRUCTION SET
				D=A
				@5
				D=D+A
				@R14
				M=D



	////PUSH constant
		@32766
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
		@32767
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


	////gt INSTRUCTION
				//SET R13
				@R14
				D=M
				@12
				D=D+A
				@R13
				M=D

	////GOTO
		@GT_LABEL
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

		@GT_LABEL
		0;JMP

				//CURRENT INSTRUCTION SET
				D=A
				@5
				D=D+A
				@R14
				M=D



	////PUSH constant
		@32766
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
		@32766
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


	////gt INSTRUCTION
				//SET R13
				@R14
				D=M
				@12
				D=D+A
				@R13
				M=D

	////GOTO
		@GT_LABEL
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

		@GT_LABEL
		0;JMP

				//CURRENT INSTRUCTION SET
				D=A
				@5
				D=D+A
				@R14
				M=D



	////PUSH constant
		@57
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
		@31
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
		@53
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


	////add INSTRUCTION
				@SP
				M=M-1

			@SP
			A=M
			D=M

		@SP
		A=M-1
		M=D+M
				//CURRENT INSTRUCTION INCREMENT
				@12
				D=A
				@R14
				M=D+M


	////PUSH constant
		@112
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


	////sub INSTRUCTION
				@SP
				M=M-1

			@SP
			A=M
			D=M

		@SP
		A=M-1
		M=M-D
				//CURRENT INSTRUCTION INCREMENT
				@12
				D=A
				@R14
				M=D+M


	////neg INSTRUCTION
		@SP
		A=M-1
		M=-M
				//CURRENT INSTRUCTION INCREMENT
				@7
				D=A
				@R14
				M=D+M


	////and INSTRUCTION
				@SP
				M=M-1

			@SP
			A=M
			D=M

		@SP
		A=M-1
		M=D&M
				//CURRENT INSTRUCTION INCREMENT
				@12
				D=A
				@R14
				M=D+M


	////PUSH constant
		@82
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


	////or INSTRUCTION
				@SP
				M=M-1

			@SP
			A=M
			D=M

		@SP
		A=M-1
		M=D|M
				//CURRENT INSTRUCTION INCREMENT
				@12
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



