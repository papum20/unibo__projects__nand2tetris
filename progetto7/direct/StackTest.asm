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








		////PUSH constant 17
		@17
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 17
		@17
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@null$ret.0
	D=A
	@6
	0;JMP
	(null$ret.0)

		////PUSH constant 17
		@17
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 16
		@16
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@null$ret.1
	D=A
	@6
	0;JMP
	(null$ret.1)

		////PUSH constant 16
		@16
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 17
		@17
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@null$ret.2
	D=A
	@6
	0;JMP
	(null$ret.2)

		////PUSH constant 892
		@892
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 891
		@891
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@null$ret.3
	D=A
	@36
	0;JMP
	(null$ret.3)

		////PUSH constant 891
		@891
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 892
		@892
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@null$ret.4
	D=A
	@36
	0;JMP
	(null$ret.4)

		////PUSH constant 891
		@891
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 891
		@891
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@null$ret.5
	D=A
	@36
	0;JMP
	(null$ret.5)

		////PUSH constant 32767
		@32767
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 32766
		@32766
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@null$ret.6
	D=A
	@21
	0;JMP
	(null$ret.6)

		////PUSH constant 32766
		@32766
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 32767
		@32767
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@null$ret.7
	D=A
	@21
	0;JMP
	(null$ret.7)

		////PUSH constant 32766
		@32766
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 32766
		@32766
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@null$ret.8
	D=A
	@21
	0;JMP
	(null$ret.8)

		////PUSH constant 57
		@57
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 31
		@31
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 53
		@53
		D=A
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

		////PUSH constant 112
		@112
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

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

		////PUSH constant 82
		@82
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M


