//INIT
@256
D=A
@SP
M=D








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
			@SP
			AM=M-1
			D=M
			A=A-1
			D=M-D

		@null$___0
		D;JEQ
		D=0
		@null$___1
		0;JMP
		(null$___0)
		D=-1
		(null$___1)
		@SP
		A=M-1
		M=D


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
			@SP
			AM=M-1
			D=M
			A=A-1
			D=M-D

		@null$___2
		D;JEQ
		D=0
		@null$___3
		0;JMP
		(null$___2)
		D=-1
		(null$___3)
		@SP
		A=M-1
		M=D


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
			@SP
			AM=M-1
			D=M
			A=A-1
			D=M-D

		@null$___4
		D;JEQ
		D=0
		@null$___5
		0;JMP
		(null$___4)
		D=-1
		(null$___5)
		@SP
		A=M-1
		M=D


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
			@SP
			AM=M-1
			D=M
			A=A-1
			D=M-D

		@null$___6
		D;JLT
		D=0
		@null$___7
		0;JMP
		(null$___6)
		D=-1
		(null$___7)
		@SP
		A=M-1
		M=D


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
			@SP
			AM=M-1
			D=M
			A=A-1
			D=M-D

		@null$___8
		D;JLT
		D=0
		@null$___9
		0;JMP
		(null$___8)
		D=-1
		(null$___9)
		@SP
		A=M-1
		M=D


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
			@SP
			AM=M-1
			D=M
			A=A-1
			D=M-D

		@null$___10
		D;JLT
		D=0
		@null$___11
		0;JMP
		(null$___10)
		D=-1
		(null$___11)
		@SP
		A=M-1
		M=D


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
			@SP
			AM=M-1
			D=M
			A=A-1
			D=M-D

		@null$___12
		D;JGT
		D=0
		@null$___13
		0;JMP
		(null$___12)
		D=-1
		(null$___13)
		@SP
		A=M-1
		M=D


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
			@SP
			AM=M-1
			D=M
			A=A-1
			D=M-D

		@null$___14
		D;JGT
		D=0
		@null$___15
		0;JMP
		(null$___14)
		D=-1
		(null$___15)
		@SP
		A=M-1
		M=D


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
			@SP
			AM=M-1
			D=M
			A=A-1
			D=M-D

		@null$___16
		D;JGT
		D=0
		@null$___17
		0;JMP
		(null$___16)
		D=-1
		(null$___17)
		@SP
		A=M-1
		M=D


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


