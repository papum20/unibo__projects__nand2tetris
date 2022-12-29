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









	////PUSH constant
		@7
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


////CALL
				//CURRENT INSTRUCTION INCREMENT
				@47
				D=A
				@R14
				M=D+M

		D=M
			@SP
			M=M+1
			A=M-1
			M=D
		//push segment
			@LCL
			D=M
			@SP
			M=M+1
			A=M-1
			M=D
		//push segment
			@ARG
			D=M
			@SP
			M=M+1
			A=M-1
			M=D
		//push segment
			@THIS
			D=M
			@SP
			M=M+1
			A=M-1
			M=D
		//push segment
			@THAT
			D=M
			@SP
			M=M+1
			A=M-1
			M=D
		//set local
		@SP
		D=M
		@LCL
		M=D
		//set argument
		@6
		D=D-A
		@ARG
		M=D
	////GOTO
		@FibonacciElement.fibonacci
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

		@FibonacciElement.fibonacci
		0;JMP

	////LABEL
		(return_FibonacciElement.fibonacci)




	////LABEL
		(WHILE)


	////GOTO
		@WHILE
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

		@WHILE
		0;JMP




////FUNCTION
	////LABEL
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
				//CURRENT INSTRUCTION INCREMENT
				@13
				D=A
				@R14
				M=D+M


	////PUSH constant
		@2
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



	////IF-GOTO
		@R14
		D=M
		@R15
		M=D
		@IF_TRUE
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

			@SP
			AM=M-1
			D=M

		@IF_TRUE
		D;JNE

		@R15
		D=M
		@19
		D=D+A
		@R14
		M=D


	////GOTO
		@IF_FALSE
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

		@IF_FALSE
		0;JMP


	////LABEL
		(IF_TRUE)



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


	////LABEL
		(IF_FALSE)



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


	////PUSH constant
		@2
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


////CALL
				//CURRENT INSTRUCTION INCREMENT
				@47
				D=A
				@R14
				M=D+M

		D=M
			@SP
			M=M+1
			A=M-1
			M=D
		//push segment
			@LCL
			D=M
			@SP
			M=M+1
			A=M-1
			M=D
		//push segment
			@ARG
			D=M
			@SP
			M=M+1
			A=M-1
			M=D
		//push segment
			@THIS
			D=M
			@SP
			M=M+1
			A=M-1
			M=D
		//push segment
			@THAT
			D=M
			@SP
			M=M+1
			A=M-1
			M=D
		//set local
		@SP
		D=M
		@LCL
		M=D
		//set argument
		@6
		D=D-A
		@ARG
		M=D
	////GOTO
		@FibonacciElement.fibonacci
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

		@FibonacciElement.fibonacci
		0;JMP

	////LABEL
		(return_FibonacciElement.fibonacci)




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


	////PUSH constant
		@1
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


////CALL
				//CURRENT INSTRUCTION INCREMENT
				@47
				D=A
				@R14
				M=D+M

		D=M
			@SP
			M=M+1
			A=M-1
			M=D
		//push segment
			@LCL
			D=M
			@SP
			M=M+1
			A=M-1
			M=D
		//push segment
			@ARG
			D=M
			@SP
			M=M+1
			A=M-1
			M=D
		//push segment
			@THIS
			D=M
			@SP
			M=M+1
			A=M-1
			M=D
		//push segment
			@THAT
			D=M
			@SP
			M=M+1
			A=M-1
			M=D
		//set local
		@SP
		D=M
		@LCL
		M=D
		//set argument
		@6
		D=D-A
		@ARG
		M=D
	////GOTO
		@FibonacciElement.fibonacci
				//CURRENT INSTRUCTION SET
				D=A
				@R14
				M=D

		@FibonacciElement.fibonacci
		0;JMP

	////LABEL
		(return_FibonacciElement.fibonacci)




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




