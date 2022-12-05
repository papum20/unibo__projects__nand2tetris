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


	////CALL
	@0
	D=A
	@R14
	M=D
	@Sys.init
	D=A
	@R15
	M=D
	@null$ret.0
	D=A
	@54
	0;JMP

(null$ret.0)
////FUNCTION
(Array.new)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////gt INSTRUCTION
	@Array.new$ret.0
	D=A
	@21
	0;JMP
	(Array.new$ret.0)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Array.new$IF_TRUE0
	D;JNE

	////GOTO
	@Array.new$IF_FALSE0
	0;JMP

	////LABEL
(Array.new$IF_TRUE0)

		////PUSH constant 2
		@2
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@Array.new$ret.1
	D=A
	@54
	0;JMP

(Array.new$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Array.new$IF_FALSE0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Memory.alloc
	D=A
	@R15
	M=D
	@Array.new$ret.2
	D=A
	@54
	0;JMP

(Array.new$ret.2)

	////RETURN
	@95
	0;JMP

////FUNCTION
(Array.dispose)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Memory.deAlloc
	D=A
	@R15
	M=D
	@Array.dispose$ret.0
	D=A
	@54
	0;JMP

(Array.dispose$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP


////FUNCTION
(Ball.new)

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Memory.alloc
	D=A
	@R15
	M=D
	@Ball.new$ret.0
	D=A
	@54
	0;JMP

(Ball.new$ret.0)

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 0
		@SP
		AM=M-1
		D=M
		@THIS
		A=M
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 1
		@SP
		AM=M-1
		D=M
		@THIS
		A=M+1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 10
		@THIS
		D=M
		@10
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH argument 3
		@ARG
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
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

		////POP this 11
		@THIS
		D=M
		@11
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH argument 4
		@ARG
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 12
		@THIS
		D=M
		@12
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH argument 5
		@ARG
		D=M
		@5
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
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

		////POP this 13
		@THIS
		D=M
		@13
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP this 14
		@THIS
		D=M
		@14
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Ball.show
	D=A
	@R15
	M=D
	@Ball.new$ret.1
	D=A
	@54
	0;JMP

(Ball.new$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Ball.dispose)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Memory.deAlloc
	D=A
	@R15
	M=D
	@Ball.dispose$ret.0
	D=A
	@54
	0;JMP

(Ball.dispose$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Ball.show)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////CALL
	@1
	D=A
	@R14
	M=D
	@Screen.setColor
	D=A
	@R15
	M=D
	@Ball.show$ret.0
	D=A
	@54
	0;JMP

(Ball.show$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Ball.draw
	D=A
	@R15
	M=D
	@Ball.show$ret.1
	D=A
	@54
	0;JMP

(Ball.show$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Ball.hide)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@1
	D=A
	@R14
	M=D
	@Screen.setColor
	D=A
	@R15
	M=D
	@Ball.hide$ret.0
	D=A
	@54
	0;JMP

(Ball.hide$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Ball.draw
	D=A
	@R15
	M=D
	@Ball.hide$ret.1
	D=A
	@54
	0;JMP

(Ball.hide$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Ball.draw)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 5
		@5
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

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 5
		@5
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

	////CALL
	@4
	D=A
	@R14
	M=D
	@Screen.drawRectangle
	D=A
	@R15
	M=D
	@Ball.draw$ret.0
	D=A
	@54
	0;JMP

(Ball.draw$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Ball.getLeft)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Ball.getRight)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 5
		@5
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

	////RETURN
	@95
	0;JMP

////FUNCTION
(Ball.setDestination)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 0
		@THIS
		A=M
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

		////POP this 2
		@THIS
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

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 1
		@THIS
		A=M+1
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

		////POP this 3
		@THIS
		D=M
		@3
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Math.abs
	D=A
	@R15
	M=D
	@Ball.setDestination$ret.0
	D=A
	@54
	0;JMP

(Ball.setDestination$ret.0)

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH this 3
		@THIS
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Math.abs
	D=A
	@R15
	M=D
	@Ball.setDestination$ret.1
	D=A
	@54
	0;JMP

(Ball.setDestination$ret.1)

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Ball.setDestination$ret.2
	D=A
	@36
	0;JMP
	(Ball.setDestination$ret.2)

		////POP this 7
		@THIS
		D=M
		@7
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH this 7
		@THIS
		D=M
		@7
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
	@Ball.setDestination$IF_TRUE0
	D;JNE

	////GOTO
	@Ball.setDestination$IF_FALSE0
	0;JMP

	////LABEL
(Ball.setDestination$IF_TRUE0)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 2
		@LCL
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

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Ball.setDestination$ret.3
	D=A
	@36
	0;JMP
	(Ball.setDestination$ret.3)

		////POP this 8
		@THIS
		D=M
		@8
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Ball.setDestination$ret.4
	D=A
	@36
	0;JMP
	(Ball.setDestination$ret.4)

		////POP this 9
		@THIS
		D=M
		@9
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

	////GOTO
	@Ball.setDestination$IF_END0
	0;JMP

	////LABEL
(Ball.setDestination$IF_FALSE0)

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Ball.setDestination$ret.5
	D=A
	@36
	0;JMP
	(Ball.setDestination$ret.5)

		////POP this 8
		@THIS
		D=M
		@8
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Ball.setDestination$ret.6
	D=A
	@36
	0;JMP
	(Ball.setDestination$ret.6)

		////POP this 9
		@THIS
		D=M
		@9
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
(Ball.setDestination$IF_END0)

		////PUSH constant 2
		@2
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Ball.setDestination$ret.7
	D=A
	@54
	0;JMP

(Ball.setDestination$ret.7)

		////PUSH local 0
		@LCL
		A=M
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

		////POP this 4
		@THIS
		D=M
		@4
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH constant 2
		@2
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Ball.setDestination$ret.8
	D=A
	@54
	0;JMP

(Ball.setDestination$ret.8)

		////POP this 5
		@THIS
		D=M
		@5
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH constant 2
		@2
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Ball.setDestination$ret.9
	D=A
	@54
	0;JMP

(Ball.setDestination$ret.9)

		////POP this 6
		@THIS
		D=M
		@6
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Ball.move)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Ball.hide
	D=A
	@R15
	M=D
	@Ball.move$ret.0
	D=A
	@54
	0;JMP

(Ball.move$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH this 4
		@THIS
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Ball.move$ret.1
	D=A
	@36
	0;JMP
	(Ball.move$ret.1)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Ball.move$IF_TRUE0
	D;JNE

	////GOTO
	@Ball.move$IF_FALSE0
	0;JMP

	////LABEL
(Ball.move$IF_TRUE0)

		////PUSH this 4
		@THIS
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 5
		@THIS
		D=M
		@5
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

		////POP this 4
		@THIS
		D=M
		@4
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

	////GOTO
	@Ball.move$IF_END0
	0;JMP

	////LABEL
(Ball.move$IF_FALSE0)

		////PUSH this 4
		@THIS
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 6
		@THIS
		D=M
		@6
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

		////POP this 4
		@THIS
		D=M
		@4
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH this 9
		@THIS
		D=M
		@9
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
	@Ball.move$IF_TRUE1
	D;JNE

	////GOTO
	@Ball.move$IF_FALSE1
	0;JMP

	////LABEL
(Ball.move$IF_TRUE1)

		////PUSH this 7
		@THIS
		D=M
		@7
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
	@Ball.move$IF_TRUE2
	D;JNE

	////GOTO
	@Ball.move$IF_FALSE2
	0;JMP

	////LABEL
(Ball.move$IF_TRUE2)

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 4
		@4
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

		////POP this 0
		@SP
		AM=M-1
		D=M
		@THIS
		A=M
		M=D

	////GOTO
	@Ball.move$IF_END2
	0;JMP

	////LABEL
(Ball.move$IF_FALSE2)

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 4
		@4
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

		////POP this 1
		@SP
		AM=M-1
		D=M
		@THIS
		A=M+1
		M=D

	////LABEL
(Ball.move$IF_END2)

	////GOTO
	@Ball.move$IF_END1
	0;JMP

	////LABEL
(Ball.move$IF_FALSE1)

		////PUSH this 7
		@THIS
		D=M
		@7
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
	@Ball.move$IF_TRUE3
	D;JNE

	////GOTO
	@Ball.move$IF_FALSE3
	0;JMP

	////LABEL
(Ball.move$IF_TRUE3)

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 4
		@4
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

		////POP this 0
		@SP
		AM=M-1
		D=M
		@THIS
		A=M
		M=D

	////GOTO
	@Ball.move$IF_END3
	0;JMP

	////LABEL
(Ball.move$IF_FALSE3)

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 4
		@4
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

		////POP this 1
		@SP
		AM=M-1
		D=M
		@THIS
		A=M+1
		M=D

	////LABEL
(Ball.move$IF_END3)

	////LABEL
(Ball.move$IF_END1)

	////LABEL
(Ball.move$IF_END0)

		////PUSH this 8
		@THIS
		D=M
		@8
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
	@Ball.move$IF_TRUE4
	D;JNE

	////GOTO
	@Ball.move$IF_FALSE4
	0;JMP

	////LABEL
(Ball.move$IF_TRUE4)

		////PUSH this 7
		@THIS
		D=M
		@7
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
	@Ball.move$IF_TRUE5
	D;JNE

	////GOTO
	@Ball.move$IF_FALSE5
	0;JMP

	////LABEL
(Ball.move$IF_TRUE5)

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 4
		@4
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

		////POP this 1
		@SP
		AM=M-1
		D=M
		@THIS
		A=M+1
		M=D

	////GOTO
	@Ball.move$IF_END5
	0;JMP

	////LABEL
(Ball.move$IF_FALSE5)

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 4
		@4
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

		////POP this 0
		@SP
		AM=M-1
		D=M
		@THIS
		A=M
		M=D

	////LABEL
(Ball.move$IF_END5)

	////GOTO
	@Ball.move$IF_END4
	0;JMP

	////LABEL
(Ball.move$IF_FALSE4)

		////PUSH this 7
		@THIS
		D=M
		@7
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
	@Ball.move$IF_TRUE6
	D;JNE

	////GOTO
	@Ball.move$IF_FALSE6
	0;JMP

	////LABEL
(Ball.move$IF_TRUE6)

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 4
		@4
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

		////POP this 1
		@SP
		AM=M-1
		D=M
		@THIS
		A=M+1
		M=D

	////GOTO
	@Ball.move$IF_END6
	0;JMP

	////LABEL
(Ball.move$IF_FALSE6)

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 4
		@4
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

		////POP this 0
		@SP
		AM=M-1
		D=M
		@THIS
		A=M
		M=D

	////LABEL
(Ball.move$IF_END6)

	////LABEL
(Ball.move$IF_END4)

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 10
		@THIS
		D=M
		@10
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Ball.move$ret.2
	D=A
	@21
	0;JMP
	(Ball.move$ret.2)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Ball.move$IF_TRUE7
	D;JNE

	////GOTO
	@Ball.move$IF_FALSE7
	0;JMP

	////LABEL
(Ball.move$IF_TRUE7)

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////POP this 14
		@THIS
		D=M
		@14
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH this 10
		@THIS
		D=M
		@10
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 0
		@SP
		AM=M-1
		D=M
		@THIS
		A=M
		M=D

	////LABEL
(Ball.move$IF_FALSE7)

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 11
		@THIS
		D=M
		@11
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Ball.move$ret.3
	D=A
	@36
	0;JMP
	(Ball.move$ret.3)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Ball.move$IF_TRUE8
	D;JNE

	////GOTO
	@Ball.move$IF_FALSE8
	0;JMP

	////LABEL
(Ball.move$IF_TRUE8)

		////PUSH constant 2
		@2
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 14
		@THIS
		D=M
		@14
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH this 11
		@THIS
		D=M
		@11
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 0
		@SP
		AM=M-1
		D=M
		@THIS
		A=M
		M=D

	////LABEL
(Ball.move$IF_FALSE8)

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 12
		@THIS
		D=M
		@12
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Ball.move$ret.4
	D=A
	@21
	0;JMP
	(Ball.move$ret.4)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Ball.move$IF_TRUE9
	D;JNE

	////GOTO
	@Ball.move$IF_FALSE9
	0;JMP

	////LABEL
(Ball.move$IF_TRUE9)

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 14
		@THIS
		D=M
		@14
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH this 12
		@THIS
		D=M
		@12
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 1
		@SP
		AM=M-1
		D=M
		@THIS
		A=M+1
		M=D

	////LABEL
(Ball.move$IF_FALSE9)

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 13
		@THIS
		D=M
		@13
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Ball.move$ret.5
	D=A
	@36
	0;JMP
	(Ball.move$ret.5)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Ball.move$IF_TRUE10
	D;JNE

	////GOTO
	@Ball.move$IF_FALSE10
	0;JMP

	////LABEL
(Ball.move$IF_TRUE10)

		////PUSH constant 4
		@4
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 14
		@THIS
		D=M
		@14
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH this 13
		@THIS
		D=M
		@13
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 1
		@SP
		AM=M-1
		D=M
		@THIS
		A=M+1
		M=D

	////LABEL
(Ball.move$IF_FALSE10)

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Ball.show
	D=A
	@R15
	M=D
	@Ball.move$ret.6
	D=A
	@54
	0;JMP

(Ball.move$ret.6)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH this 14
		@THIS
		D=M
		@14
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Ball.bounce)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 10
		@10
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.divide
	D=A
	@R15
	M=D
	@Ball.bounce$ret.0
	D=A
	@54
	0;JMP

(Ball.bounce$ret.0)

		////POP local 2
		@LCL
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

		////PUSH this 3
		@THIS
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 10
		@10
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.divide
	D=A
	@R15
	M=D
	@Ball.bounce$ret.1
	D=A
	@54
	0;JMP

(Ball.bounce$ret.1)

		////POP local 3
		@LCL
		D=M
		@3
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////eq INSTRUCTION
	@Ball.bounce$ret.2
	D=A
	@6
	0;JMP
	(Ball.bounce$ret.2)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Ball.bounce$IF_TRUE0
	D;JNE

	////GOTO
	@Ball.bounce$IF_FALSE0
	0;JMP

	////LABEL
(Ball.bounce$IF_TRUE0)

		////PUSH constant 10
		@10
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 4
		@LCL
		D=M
		@4
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

	////GOTO
	@Ball.bounce$IF_END0
	0;JMP

	////LABEL
(Ball.bounce$IF_FALSE0)

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Ball.bounce$ret.3
	D=A
	@36
	0;JMP
	(Ball.bounce$ret.3)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////eq INSTRUCTION
	@Ball.bounce$ret.4
	D=A
	@6
	0;JMP
	(Ball.bounce$ret.4)

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Ball.bounce$ret.5
	D=A
	@36
	0;JMP
	(Ball.bounce$ret.5)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

	////eq INSTRUCTION
	@Ball.bounce$ret.6
	D=A
	@6
	0;JMP
	(Ball.bounce$ret.6)

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Ball.bounce$IF_TRUE1
	D;JNE

	////GOTO
	@Ball.bounce$IF_FALSE1
	0;JMP

	////LABEL
(Ball.bounce$IF_TRUE1)

		////PUSH constant 20
		@20
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 4
		@LCL
		D=M
		@4
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

	////GOTO
	@Ball.bounce$IF_END1
	0;JMP

	////LABEL
(Ball.bounce$IF_FALSE1)

		////PUSH constant 5
		@5
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 4
		@LCL
		D=M
		@4
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
(Ball.bounce$IF_END1)

	////LABEL
(Ball.bounce$IF_END0)

		////PUSH this 14
		@THIS
		D=M
		@14
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////eq INSTRUCTION
	@Ball.bounce$ret.7
	D=A
	@6
	0;JMP
	(Ball.bounce$ret.7)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Ball.bounce$IF_TRUE2
	D;JNE

	////GOTO
	@Ball.bounce$IF_FALSE2
	0;JMP

	////LABEL
(Ball.bounce$IF_TRUE2)

		////PUSH constant 506
		@506
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 50
		@50
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Ball.bounce$ret.8
	D=A
	@54
	0;JMP

(Ball.bounce$ret.8)

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.divide
	D=A
	@R15
	M=D
	@Ball.bounce$ret.9
	D=A
	@54
	0;JMP

(Ball.bounce$ret.9)

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 4
		@LCL
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Ball.bounce$ret.10
	D=A
	@54
	0;JMP

(Ball.bounce$ret.10)

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

	////GOTO
	@Ball.bounce$IF_END2
	0;JMP

	////LABEL
(Ball.bounce$IF_FALSE2)

		////PUSH this 14
		@THIS
		D=M
		@14
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 2
		@2
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@Ball.bounce$ret.11
	D=A
	@6
	0;JMP
	(Ball.bounce$ret.11)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Ball.bounce$IF_TRUE3
	D;JNE

	////GOTO
	@Ball.bounce$IF_FALSE3
	0;JMP

	////LABEL
(Ball.bounce$IF_TRUE3)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 50
		@50
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Ball.bounce$ret.12
	D=A
	@54
	0;JMP

(Ball.bounce$ret.12)

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.divide
	D=A
	@R15
	M=D
	@Ball.bounce$ret.13
	D=A
	@54
	0;JMP

(Ball.bounce$ret.13)

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 4
		@LCL
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Ball.bounce$ret.14
	D=A
	@54
	0;JMP

(Ball.bounce$ret.14)

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

	////GOTO
	@Ball.bounce$IF_END3
	0;JMP

	////LABEL
(Ball.bounce$IF_FALSE3)

		////PUSH this 14
		@THIS
		D=M
		@14
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@Ball.bounce$ret.15
	D=A
	@6
	0;JMP
	(Ball.bounce$ret.15)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Ball.bounce$IF_TRUE4
	D;JNE

	////GOTO
	@Ball.bounce$IF_FALSE4
	0;JMP

	////LABEL
(Ball.bounce$IF_TRUE4)

		////PUSH constant 250
		@250
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 25
		@25
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Ball.bounce$ret.16
	D=A
	@54
	0;JMP

(Ball.bounce$ret.16)

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.divide
	D=A
	@R15
	M=D
	@Ball.bounce$ret.17
	D=A
	@54
	0;JMP

(Ball.bounce$ret.17)

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 4
		@LCL
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Ball.bounce$ret.18
	D=A
	@54
	0;JMP

(Ball.bounce$ret.18)

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////GOTO
	@Ball.bounce$IF_END4
	0;JMP

	////LABEL
(Ball.bounce$IF_FALSE4)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 25
		@25
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Ball.bounce$ret.19
	D=A
	@54
	0;JMP

(Ball.bounce$ret.19)

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.divide
	D=A
	@R15
	M=D
	@Ball.bounce$ret.20
	D=A
	@54
	0;JMP

(Ball.bounce$ret.20)

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 4
		@LCL
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Ball.bounce$ret.21
	D=A
	@54
	0;JMP

(Ball.bounce$ret.21)

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////LABEL
(Ball.bounce$IF_END4)

	////LABEL
(Ball.bounce$IF_END3)

	////LABEL
(Ball.bounce$IF_END2)

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@3
	D=A
	@R14
	M=D
	@Ball.setDestination
	D=A
	@R15
	M=D
	@Ball.bounce$ret.22
	D=A
	@54
	0;JMP

(Ball.bounce$ret.22)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP


////FUNCTION
(Bat.new)

		////PUSH constant 5
		@5
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Memory.alloc
	D=A
	@R15
	M=D
	@Bat.new$ret.0
	D=A
	@54
	0;JMP

(Bat.new$ret.0)

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 0
		@SP
		AM=M-1
		D=M
		@THIS
		A=M
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 1
		@SP
		AM=M-1
		D=M
		@THIS
		A=M+1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 2
		@THIS
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

		////PUSH argument 3
		@ARG
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 3
		@THIS
		D=M
		@3
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH constant 2
		@2
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 4
		@THIS
		D=M
		@4
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Bat.show
	D=A
	@R15
	M=D
	@Bat.new$ret.1
	D=A
	@54
	0;JMP

(Bat.new$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Bat.dispose)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Memory.deAlloc
	D=A
	@R15
	M=D
	@Bat.dispose$ret.0
	D=A
	@54
	0;JMP

(Bat.dispose$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Bat.show)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////CALL
	@1
	D=A
	@R14
	M=D
	@Screen.setColor
	D=A
	@R15
	M=D
	@Bat.show$ret.0
	D=A
	@54
	0;JMP

(Bat.show$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Bat.draw
	D=A
	@R15
	M=D
	@Bat.show$ret.1
	D=A
	@54
	0;JMP

(Bat.show$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Bat.hide)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@1
	D=A
	@R14
	M=D
	@Screen.setColor
	D=A
	@R15
	M=D
	@Bat.hide$ret.0
	D=A
	@54
	0;JMP

(Bat.hide$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Bat.draw
	D=A
	@R15
	M=D
	@Bat.hide$ret.1
	D=A
	@54
	0;JMP

(Bat.hide$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Bat.draw)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
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

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 3
		@THIS
		D=M
		@3
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

	////CALL
	@4
	D=A
	@R14
	M=D
	@Screen.drawRectangle
	D=A
	@R15
	M=D
	@Bat.draw$ret.0
	D=A
	@54
	0;JMP

(Bat.draw$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Bat.setDirection)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 4
		@THIS
		D=M
		@4
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Bat.getLeft)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Bat.getRight)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
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

	////RETURN
	@95
	0;JMP

////FUNCTION
(Bat.setWidth)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Bat.hide
	D=A
	@R15
	M=D
	@Bat.setWidth$ret.0
	D=A
	@54
	0;JMP

(Bat.setWidth$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 2
		@THIS
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

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Bat.show
	D=A
	@R15
	M=D
	@Bat.setWidth$ret.1
	D=A
	@54
	0;JMP

(Bat.setWidth$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Bat.move)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH this 4
		@THIS
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////eq INSTRUCTION
	@Bat.move$ret.0
	D=A
	@6
	0;JMP
	(Bat.move$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Bat.move$IF_TRUE0
	D;JNE

	////GOTO
	@Bat.move$IF_FALSE0
	0;JMP

	////LABEL
(Bat.move$IF_TRUE0)

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 4
		@4
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

		////POP this 0
		@SP
		AM=M-1
		D=M
		@THIS
		A=M
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Bat.move$ret.1
	D=A
	@36
	0;JMP
	(Bat.move$ret.1)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Bat.move$IF_TRUE1
	D;JNE

	////GOTO
	@Bat.move$IF_FALSE1
	0;JMP

	////LABEL
(Bat.move$IF_TRUE1)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP this 0
		@SP
		AM=M-1
		D=M
		@THIS
		A=M
		M=D

	////LABEL
(Bat.move$IF_FALSE1)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@1
	D=A
	@R14
	M=D
	@Screen.setColor
	D=A
	@R15
	M=D
	@Bat.move$ret.2
	D=A
	@54
	0;JMP

(Bat.move$ret.2)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
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

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
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

		////PUSH constant 4
		@4
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

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 3
		@THIS
		D=M
		@3
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

	////CALL
	@4
	D=A
	@R14
	M=D
	@Screen.drawRectangle
	D=A
	@R15
	M=D
	@Bat.move$ret.3
	D=A
	@54
	0;JMP

(Bat.move$ret.3)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////CALL
	@1
	D=A
	@R14
	M=D
	@Screen.setColor
	D=A
	@R15
	M=D
	@Bat.move$ret.4
	D=A
	@54
	0;JMP

(Bat.move$ret.4)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
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

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 3
		@THIS
		D=M
		@3
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

	////CALL
	@4
	D=A
	@R14
	M=D
	@Screen.drawRectangle
	D=A
	@R15
	M=D
	@Bat.move$ret.5
	D=A
	@54
	0;JMP

(Bat.move$ret.5)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////GOTO
	@Bat.move$IF_END0
	0;JMP

	////LABEL
(Bat.move$IF_FALSE0)

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 4
		@4
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

		////POP this 0
		@SP
		AM=M-1
		D=M
		@THIS
		A=M
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
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

		////PUSH constant 511
		@511
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Bat.move$ret.6
	D=A
	@21
	0;JMP
	(Bat.move$ret.6)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Bat.move$IF_TRUE2
	D;JNE

	////GOTO
	@Bat.move$IF_FALSE2
	0;JMP

	////LABEL
(Bat.move$IF_TRUE2)

		////PUSH constant 511
		@511
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
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

		////POP this 0
		@SP
		AM=M-1
		D=M
		@THIS
		A=M
		M=D

	////LABEL
(Bat.move$IF_FALSE2)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@1
	D=A
	@R14
	M=D
	@Screen.setColor
	D=A
	@R15
	M=D
	@Bat.move$ret.7
	D=A
	@54
	0;JMP

(Bat.move$ret.7)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 4
		@4
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

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 3
		@THIS
		D=M
		@3
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

	////CALL
	@4
	D=A
	@R14
	M=D
	@Screen.drawRectangle
	D=A
	@R15
	M=D
	@Bat.move$ret.8
	D=A
	@54
	0;JMP

(Bat.move$ret.8)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////CALL
	@1
	D=A
	@R14
	M=D
	@Screen.setColor
	D=A
	@R15
	M=D
	@Bat.move$ret.9
	D=A
	@54
	0;JMP

(Bat.move$ret.9)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
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

		////PUSH constant 3
		@3
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

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
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

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 3
		@THIS
		D=M
		@3
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

	////CALL
	@4
	D=A
	@R14
	M=D
	@Screen.drawRectangle
	D=A
	@R15
	M=D
	@Bat.move$ret.10
	D=A
	@54
	0;JMP

(Bat.move$ret.10)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Bat.move$IF_END0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP


////FUNCTION
(Keyboard.init)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Keyboard.keyPressed)

		////PUSH constant 24576
		@24576
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Memory.peek
	D=A
	@R15
	M=D
	@Keyboard.keyPressed$ret.0
	D=A
	@54
	0;JMP

(Keyboard.keyPressed$ret.0)

	////RETURN
	@95
	0;JMP

////FUNCTION
(Keyboard.readChar)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.printChar
	D=A
	@R15
	M=D
	@Keyboard.readChar$ret.0
	D=A
	@54
	0;JMP

(Keyboard.readChar$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Keyboard.readChar$WHILE_EXP0)

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////eq INSTRUCTION
	@Keyboard.readChar$ret.1
	D=A
	@6
	0;JMP
	(Keyboard.readChar$ret.1)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////gt INSTRUCTION
	@Keyboard.readChar$ret.2
	D=A
	@21
	0;JMP
	(Keyboard.readChar$ret.2)

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

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Keyboard.readChar$WHILE_END0
	D;JNE

	////CALL
	@0
	D=A
	@R14
	M=D
	@Keyboard.keyPressed
	D=A
	@R15
	M=D
	@Keyboard.readChar$ret.3
	D=A
	@54
	0;JMP

(Keyboard.readChar$ret.3)

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////gt INSTRUCTION
	@Keyboard.readChar$ret.4
	D=A
	@21
	0;JMP
	(Keyboard.readChar$ret.4)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Keyboard.readChar$IF_TRUE0
	D;JNE

	////GOTO
	@Keyboard.readChar$IF_FALSE0
	0;JMP

	////LABEL
(Keyboard.readChar$IF_TRUE0)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

	////LABEL
(Keyboard.readChar$IF_FALSE0)

	////GOTO
	@Keyboard.readChar$WHILE_EXP0
	0;JMP

	////LABEL
(Keyboard.readChar$WHILE_END0)

	////CALL
	@0
	D=A
	@R14
	M=D
	@String.backSpace
	D=A
	@R15
	M=D
	@Keyboard.readChar$ret.5
	D=A
	@54
	0;JMP

(Keyboard.readChar$ret.5)

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.printChar
	D=A
	@R15
	M=D
	@Keyboard.readChar$ret.6
	D=A
	@54
	0;JMP

(Keyboard.readChar$ret.6)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.printChar
	D=A
	@R15
	M=D
	@Keyboard.readChar$ret.7
	D=A
	@54
	0;JMP

(Keyboard.readChar$ret.7)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Keyboard.readLine)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH constant 80
		@80
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@String.new
	D=A
	@R15
	M=D
	@Keyboard.readLine$ret.0
	D=A
	@54
	0;JMP

(Keyboard.readLine$ret.0)

		////POP local 3
		@LCL
		D=M
		@3
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
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.printString
	D=A
	@R15
	M=D
	@Keyboard.readLine$ret.1
	D=A
	@54
	0;JMP

(Keyboard.readLine$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@String.newLine
	D=A
	@R15
	M=D
	@Keyboard.readLine$ret.2
	D=A
	@54
	0;JMP

(Keyboard.readLine$ret.2)

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@String.backSpace
	D=A
	@R15
	M=D
	@Keyboard.readLine$ret.3
	D=A
	@54
	0;JMP

(Keyboard.readLine$ret.3)

		////POP local 2
		@LCL
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

	////LABEL
(Keyboard.readLine$WHILE_EXP0)

		////PUSH local 4
		@LCL
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Keyboard.readLine$WHILE_END0
	D;JNE

	////CALL
	@0
	D=A
	@R14
	M=D
	@Keyboard.readChar
	D=A
	@R15
	M=D
	@Keyboard.readLine$ret.4
	D=A
	@54
	0;JMP

(Keyboard.readLine$ret.4)

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@Keyboard.readLine$ret.5
	D=A
	@6
	0;JMP
	(Keyboard.readLine$ret.5)

		////POP local 4
		@LCL
		D=M
		@4
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 4
		@LCL
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Keyboard.readLine$IF_TRUE0
	D;JNE

	////GOTO
	@Keyboard.readLine$IF_FALSE0
	0;JMP

	////LABEL
(Keyboard.readLine$IF_TRUE0)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@Keyboard.readLine$ret.6
	D=A
	@6
	0;JMP
	(Keyboard.readLine$ret.6)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Keyboard.readLine$IF_TRUE1
	D;JNE

	////GOTO
	@Keyboard.readLine$IF_FALSE1
	0;JMP

	////LABEL
(Keyboard.readLine$IF_TRUE1)

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@String.eraseLastChar
	D=A
	@R15
	M=D
	@Keyboard.readLine$ret.7
	D=A
	@54
	0;JMP

(Keyboard.readLine$ret.7)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////GOTO
	@Keyboard.readLine$IF_END1
	0;JMP

	////LABEL
(Keyboard.readLine$IF_FALSE1)

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@Keyboard.readLine$ret.8
	D=A
	@54
	0;JMP

(Keyboard.readLine$ret.8)

		////POP local 3
		@LCL
		D=M
		@3
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
(Keyboard.readLine$IF_END1)

	////LABEL
(Keyboard.readLine$IF_FALSE0)

	////GOTO
	@Keyboard.readLine$WHILE_EXP0
	0;JMP

	////LABEL
(Keyboard.readLine$WHILE_END0)

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Keyboard.readInt)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Keyboard.readLine
	D=A
	@R15
	M=D
	@Keyboard.readInt$ret.0
	D=A
	@54
	0;JMP

(Keyboard.readInt$ret.0)

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@String.intValue
	D=A
	@R15
	M=D
	@Keyboard.readInt$ret.1
	D=A
	@54
	0;JMP

(Keyboard.readInt$ret.1)

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@String.dispose
	D=A
	@R15
	M=D
	@Keyboard.readInt$ret.2
	D=A
	@54
	0;JMP

(Keyboard.readInt$ret.2)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP


////FUNCTION
(Main.main)
@SP
M=M+1
A=M-1
M=0

	////CALL
	@0
	D=A
	@R14
	M=D
	@PongGame.newInstance
	D=A
	@R15
	M=D
	@Main.main$ret.0
	D=A
	@54
	0;JMP

(Main.main$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@PongGame.getInstance
	D=A
	@R15
	M=D
	@Main.main$ret.1
	D=A
	@54
	0;JMP

(Main.main$ret.1)

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@PongGame.run
	D=A
	@R15
	M=D
	@Main.main$ret.2
	D=A
	@54
	0;JMP

(Main.main$ret.2)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@PongGame.dispose
	D=A
	@R15
	M=D
	@Main.main$ret.3
	D=A
	@54
	0;JMP

(Main.main$ret.3)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP


////FUNCTION
(Math.init)
@SP
M=M+1
A=M-1
M=0

		////PUSH constant 16
		@16
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Array.new
	D=A
	@R15
	M=D
	@Math.init$ret.0
	D=A
	@54
	0;JMP

(Math.init$ret.0)

		////POP static 1
		@SP
		AM=M-1
		D=M
		@Math.1
		M=D

		////PUSH constant 16
		@16
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Array.new
	D=A
	@R15
	M=D
	@Math.init$ret.1
	D=A
	@54
	0;JMP

(Math.init$ret.1)

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Math.0
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH static 0
		@Math.0
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

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

	////LABEL
(Math.init$WHILE_EXP0)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Math.init$ret.2
	D=A
	@36
	0;JMP
	(Math.init$ret.2)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Math.init$WHILE_END0
	D;JNE

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 0
		@Math.0
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

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////PUSH static 0
		@Math.0
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////PUSH static 0
		@Math.0
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
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

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

	////GOTO
	@Math.init$WHILE_EXP0
	0;JMP

	////LABEL
(Math.init$WHILE_END0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Math.abs)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Math.abs$ret.0
	D=A
	@36
	0;JMP
	(Math.abs$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Math.abs$IF_TRUE0
	D;JNE

	////GOTO
	@Math.abs$IF_FALSE0
	0;JMP

	////LABEL
(Math.abs$IF_TRUE0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

		////POP argument 0
		@SP
		AM=M-1
		D=M
		@ARG
		A=M
		M=D

	////LABEL
(Math.abs$IF_FALSE0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Math.multiply)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Math.multiply$ret.0
	D=A
	@36
	0;JMP
	(Math.multiply$ret.0)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////gt INSTRUCTION
	@Math.multiply$ret.1
	D=A
	@21
	0;JMP
	(Math.multiply$ret.1)

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////gt INSTRUCTION
	@Math.multiply$ret.2
	D=A
	@21
	0;JMP
	(Math.multiply$ret.2)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Math.multiply$ret.3
	D=A
	@36
	0;JMP
	(Math.multiply$ret.3)

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////POP local 4
		@LCL
		D=M
		@4
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
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Math.abs
	D=A
	@R15
	M=D
	@Math.multiply$ret.4
	D=A
	@54
	0;JMP

(Math.multiply$ret.4)

		////POP argument 0
		@SP
		AM=M-1
		D=M
		@ARG
		A=M
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Math.abs
	D=A
	@R15
	M=D
	@Math.multiply$ret.5
	D=A
	@54
	0;JMP

(Math.multiply$ret.5)

		////POP argument 1
		@SP
		AM=M-1
		D=M
		@ARG
		A=M+1
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Math.multiply$ret.6
	D=A
	@36
	0;JMP
	(Math.multiply$ret.6)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Math.multiply$IF_TRUE0
	D;JNE

	////GOTO
	@Math.multiply$IF_FALSE0
	0;JMP

	////LABEL
(Math.multiply$IF_TRUE0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP argument 0
		@SP
		AM=M-1
		D=M
		@ARG
		A=M
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP argument 1
		@SP
		AM=M-1
		D=M
		@ARG
		A=M+1
		M=D

	////LABEL
(Math.multiply$IF_FALSE0)

	////LABEL
(Math.multiply$WHILE_EXP0)

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

	////lt INSTRUCTION
	@Math.multiply$ret.7
	D=A
	@36
	0;JMP
	(Math.multiply$ret.7)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Math.multiply$WHILE_END0
	D;JNE

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 0
		@Math.0
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////eq INSTRUCTION
	@Math.multiply$ret.8
	D=A
	@6
	0;JMP
	(Math.multiply$ret.8)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Math.multiply$IF_TRUE1
	D;JNE

	////GOTO
	@Math.multiply$IF_FALSE1
	0;JMP

	////LABEL
(Math.multiply$IF_TRUE1)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 0
		@ARG
		A=M
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
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 0
		@Math.0
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
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

		////POP local 2
		@LCL
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

	////LABEL
(Math.multiply$IF_FALSE1)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 0
		@ARG
		A=M
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

		////POP argument 0
		@SP
		AM=M-1
		D=M
		@ARG
		A=M
		M=D

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 3
		@LCL
		D=M
		@3
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

	////GOTO
	@Math.multiply$WHILE_EXP0
	0;JMP

	////LABEL
(Math.multiply$WHILE_END0)

		////PUSH local 4
		@LCL
		D=M
		@4
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
	@Math.multiply$IF_TRUE2
	D;JNE

	////GOTO
	@Math.multiply$IF_FALSE2
	0;JMP

	////LABEL
(Math.multiply$IF_TRUE2)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////LABEL
(Math.multiply$IF_FALSE2)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Math.divide)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////eq INSTRUCTION
	@Math.divide$ret.0
	D=A
	@6
	0;JMP
	(Math.divide$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Math.divide$IF_TRUE0
	D;JNE

	////GOTO
	@Math.divide$IF_FALSE0
	0;JMP

	////LABEL
(Math.divide$IF_TRUE0)

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@Math.divide$ret.1
	D=A
	@54
	0;JMP

(Math.divide$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Math.divide$IF_FALSE0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Math.divide$ret.2
	D=A
	@36
	0;JMP
	(Math.divide$ret.2)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////gt INSTRUCTION
	@Math.divide$ret.3
	D=A
	@21
	0;JMP
	(Math.divide$ret.3)

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////gt INSTRUCTION
	@Math.divide$ret.4
	D=A
	@21
	0;JMP
	(Math.divide$ret.4)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Math.divide$ret.5
	D=A
	@36
	0;JMP
	(Math.divide$ret.5)

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////POP local 2
		@LCL
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

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH static 1
		@Math.1
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
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Math.abs
	D=A
	@R15
	M=D
	@Math.divide$ret.6
	D=A
	@54
	0;JMP

(Math.divide$ret.6)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Math.abs
	D=A
	@R15
	M=D
	@Math.divide$ret.7
	D=A
	@54
	0;JMP

(Math.divide$ret.7)

		////POP argument 0
		@SP
		AM=M-1
		D=M
		@ARG
		A=M
		M=D

	////LABEL
(Math.divide$WHILE_EXP0)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Math.divide$ret.8
	D=A
	@36
	0;JMP
	(Math.divide$ret.8)

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Math.divide$WHILE_END0
	D;JNE

		////PUSH constant 32767
		@32767
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 1
		@Math.1
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 1
		@Math.1
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

	////lt INSTRUCTION
	@Math.divide$ret.9
	D=A
	@36
	0;JMP
	(Math.divide$ret.9)

		////POP local 3
		@LCL
		D=M
		@3
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Math.divide$IF_TRUE1
	D;JNE

	////GOTO
	@Math.divide$IF_FALSE1
	0;JMP

	////LABEL
(Math.divide$IF_TRUE1)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////PUSH static 1
		@Math.1
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

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 1
		@Math.1
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 1
		@Math.1
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
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

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////PUSH static 1
		@Math.1
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

	////gt INSTRUCTION
	@Math.divide$ret.10
	D=A
	@21
	0;JMP
	(Math.divide$ret.10)

		////POP local 3
		@LCL
		D=M
		@3
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Math.divide$IF_TRUE2
	D;JNE

	////GOTO
	@Math.divide$IF_FALSE2
	0;JMP

	////LABEL
(Math.divide$IF_TRUE2)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////LABEL
(Math.divide$IF_FALSE2)

	////LABEL
(Math.divide$IF_FALSE1)

	////GOTO
	@Math.divide$WHILE_EXP0
	0;JMP

	////LABEL
(Math.divide$WHILE_END0)

	////LABEL
(Math.divide$WHILE_EXP1)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

	////gt INSTRUCTION
	@Math.divide$ret.11
	D=A
	@21
	0;JMP
	(Math.divide$ret.11)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Math.divide$WHILE_END1
	D;JNE

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 1
		@Math.1
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

	////gt INSTRUCTION
	@Math.divide$ret.12
	D=A
	@21
	0;JMP
	(Math.divide$ret.12)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Math.divide$IF_TRUE3
	D;JNE

	////GOTO
	@Math.divide$IF_FALSE3
	0;JMP

	////LABEL
(Math.divide$IF_TRUE3)

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 0
		@Math.0
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
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

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 1
		@Math.1
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
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

		////POP argument 0
		@SP
		AM=M-1
		D=M
		@ARG
		A=M
		M=D

	////LABEL
(Math.divide$IF_FALSE3)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////GOTO
	@Math.divide$WHILE_EXP1
	0;JMP

	////LABEL
(Math.divide$WHILE_END1)

		////PUSH local 2
		@LCL
		D=M
		@2
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
	@Math.divide$IF_TRUE4
	D;JNE

	////GOTO
	@Math.divide$IF_FALSE4
	0;JMP

	////LABEL
(Math.divide$IF_TRUE4)

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

	////LABEL
(Math.divide$IF_FALSE4)

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Math.sqrt)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Math.sqrt$ret.0
	D=A
	@36
	0;JMP
	(Math.sqrt$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Math.sqrt$IF_TRUE0
	D;JNE

	////GOTO
	@Math.sqrt$IF_FALSE0
	0;JMP

	////LABEL
(Math.sqrt$IF_TRUE0)

		////PUSH constant 4
		@4
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@Math.sqrt$ret.1
	D=A
	@54
	0;JMP

(Math.sqrt$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Math.sqrt$IF_FALSE0)

		////PUSH constant 7
		@7
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////LABEL
(Math.sqrt$WHILE_EXP0)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

	////gt INSTRUCTION
	@Math.sqrt$ret.2
	D=A
	@21
	0;JMP
	(Math.sqrt$ret.2)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Math.sqrt$WHILE_END0
	D;JNE

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 0
		@Math.0
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
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

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Math.sqrt$ret.3
	D=A
	@54
	0;JMP

(Math.sqrt$ret.3)

		////POP local 2
		@LCL
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

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Math.sqrt$ret.4
	D=A
	@21
	0;JMP
	(Math.sqrt$ret.4)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Math.sqrt$ret.5
	D=A
	@36
	0;JMP
	(Math.sqrt$ret.5)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Math.sqrt$IF_TRUE1
	D;JNE

	////GOTO
	@Math.sqrt$IF_FALSE1
	0;JMP

	////LABEL
(Math.sqrt$IF_TRUE1)

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 3
		@LCL
		D=M
		@3
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
(Math.sqrt$IF_FALSE1)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////GOTO
	@Math.sqrt$WHILE_EXP0
	0;JMP

	////LABEL
(Math.sqrt$WHILE_END0)

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Math.max)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Math.max$ret.0
	D=A
	@21
	0;JMP
	(Math.max$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Math.max$IF_TRUE0
	D;JNE

	////GOTO
	@Math.max$IF_FALSE0
	0;JMP

	////LABEL
(Math.max$IF_TRUE0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP argument 1
		@SP
		AM=M-1
		D=M
		@ARG
		A=M+1
		M=D

	////LABEL
(Math.max$IF_FALSE0)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Math.min)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Math.min$ret.0
	D=A
	@36
	0;JMP
	(Math.min$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Math.min$IF_TRUE0
	D;JNE

	////GOTO
	@Math.min$IF_FALSE0
	0;JMP

	////LABEL
(Math.min$IF_TRUE0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP argument 1
		@SP
		AM=M-1
		D=M
		@ARG
		A=M+1
		M=D

	////LABEL
(Math.min$IF_FALSE0)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP


////FUNCTION
(Memory.init)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Memory.0
		M=D

		////PUSH constant 2048
		@2048
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 0
		@Memory.0
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

		////PUSH constant 14334
		@14334
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 2049
		@2049
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 0
		@Memory.0
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

		////PUSH constant 2050
		@2050
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Memory.peek)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 0
		@Memory.0
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Memory.poke)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 0
		@Memory.0
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
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Memory.alloc)
@SP
M=M+1
A=M-1
M=0

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////lt INSTRUCTION
	@Memory.alloc$ret.0
	D=A
	@36
	0;JMP
	(Memory.alloc$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Memory.alloc$IF_TRUE0
	D;JNE

	////GOTO
	@Memory.alloc$IF_FALSE0
	0;JMP

	////LABEL
(Memory.alloc$IF_TRUE0)

		////PUSH constant 5
		@5
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@Memory.alloc$ret.1
	D=A
	@54
	0;JMP

(Memory.alloc$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Memory.alloc$IF_FALSE0)

		////PUSH constant 2048
		@2048
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////LABEL
(Memory.alloc$WHILE_EXP0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH local 0
		@LCL
		A=M
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Memory.alloc$ret.2
	D=A
	@36
	0;JMP
	(Memory.alloc$ret.2)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Memory.alloc$WHILE_END0
	D;JNE

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////PUSH local 0
		@LCL
		A=M
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////GOTO
	@Memory.alloc$WHILE_EXP0
	0;JMP

	////LABEL
(Memory.alloc$WHILE_END0)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 0
		@ARG
		A=M
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

		////PUSH constant 16379
		@16379
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Memory.alloc$ret.3
	D=A
	@21
	0;JMP
	(Memory.alloc$ret.3)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Memory.alloc$IF_TRUE1
	D;JNE

	////GOTO
	@Memory.alloc$IF_FALSE1
	0;JMP

	////LABEL
(Memory.alloc$IF_TRUE1)

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@Memory.alloc$ret.4
	D=A
	@54
	0;JMP

(Memory.alloc$ret.4)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Memory.alloc$IF_FALSE1)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH local 0
		@LCL
		A=M
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 2
		@2
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

	////gt INSTRUCTION
	@Memory.alloc$ret.5
	D=A
	@21
	0;JMP
	(Memory.alloc$ret.5)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Memory.alloc$IF_TRUE2
	D;JNE

	////GOTO
	@Memory.alloc$IF_FALSE2
	0;JMP

	////LABEL
(Memory.alloc$IF_TRUE2)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 2
		@2
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

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH local 0
		@LCL
		A=M
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 0
		@ARG
		A=M
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

		////PUSH constant 2
		@2
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

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////PUSH local 0
		@LCL
		A=M
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 2
		@2
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

	////eq INSTRUCTION
	@Memory.alloc$ret.6
	D=A
	@6
	0;JMP
	(Memory.alloc$ret.6)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Memory.alloc$IF_TRUE3
	D;JNE

	////GOTO
	@Memory.alloc$IF_FALSE3
	0;JMP

	////LABEL
(Memory.alloc$IF_TRUE3)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
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

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 0
		@ARG
		A=M
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

		////PUSH constant 4
		@4
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

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

	////GOTO
	@Memory.alloc$IF_END3
	0;JMP

	////LABEL
(Memory.alloc$IF_FALSE3)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
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

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////PUSH local 0
		@LCL
		A=M
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

	////LABEL
(Memory.alloc$IF_END3)

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 0
		@ARG
		A=M
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

		////PUSH constant 2
		@2
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

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

	////LABEL
(Memory.alloc$IF_FALSE2)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 2
		@2
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

	////RETURN
	@95
	0;JMP

////FUNCTION
(Memory.deAlloc)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 2
		@2
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

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////PUSH local 0
		@LCL
		A=M
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH local 1
		@LCL
		A=M+1
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////eq INSTRUCTION
	@Memory.deAlloc$ret.0
	D=A
	@6
	0;JMP
	(Memory.deAlloc$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Memory.deAlloc$IF_TRUE0
	D;JNE

	////GOTO
	@Memory.deAlloc$IF_FALSE0
	0;JMP

	////LABEL
(Memory.deAlloc$IF_TRUE0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////PUSH local 0
		@LCL
		A=M
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH constant 2
		@2
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

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

	////GOTO
	@Memory.deAlloc$IF_END0
	0;JMP

	////LABEL
(Memory.deAlloc$IF_FALSE0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////PUSH local 0
		@LCL
		A=M
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH local 1
		@LCL
		A=M+1
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
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

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////PUSH local 1
		@LCL
		A=M+1
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 2
		@2
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

	////eq INSTRUCTION
	@Memory.deAlloc$ret.1
	D=A
	@6
	0;JMP
	(Memory.deAlloc$ret.1)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Memory.deAlloc$IF_TRUE1
	D;JNE

	////GOTO
	@Memory.deAlloc$IF_FALSE1
	0;JMP

	////LABEL
(Memory.deAlloc$IF_TRUE1)

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 2
		@2
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

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

	////GOTO
	@Memory.deAlloc$IF_END1
	0;JMP

	////LABEL
(Memory.deAlloc$IF_FALSE1)

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////PUSH local 1
		@LCL
		A=M+1
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

	////LABEL
(Memory.deAlloc$IF_END1)

	////LABEL
(Memory.deAlloc$IF_END0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP


////FUNCTION
(Output.init)

		////PUSH constant 16384
		@16384
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 4
		@SP
		AM=M-1
		D=M
		@Output.4
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Output.2
		M=D

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 1
		@SP
		AM=M-1
		D=M
		@Output.1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Output.0
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@String.new
	D=A
	@R15
	M=D
	@Output.init$ret.0
	D=A
	@54
	0;JMP

(Output.init$ret.0)

		////POP static 3
		@SP
		AM=M-1
		D=M
		@Output.3
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Output.initMap
	D=A
	@R15
	M=D
	@Output.init$ret.1
	D=A
	@54
	0;JMP

(Output.init$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Output.createShiftedMap
	D=A
	@R15
	M=D
	@Output.init$ret.2
	D=A
	@54
	0;JMP

(Output.init$ret.2)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Output.initMap)

		////PUSH constant 127
		@127
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Array.new
	D=A
	@R15
	M=D
	@Output.initMap$ret.0
	D=A
	@54
	0;JMP

(Output.initMap$ret.0)

		////POP static 5
		@SP
		AM=M-1
		D=M
		@Output.5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.1
	D=A
	@54
	0;JMP

(Output.initMap$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.2
	D=A
	@54
	0;JMP

(Output.initMap$ret.2)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 33
		@33
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.3
	D=A
	@54
	0;JMP

(Output.initMap$ret.3)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 34
		@34
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 54
		@54
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 54
		@54
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 20
		@20
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.4
	D=A
	@54
	0;JMP

(Output.initMap$ret.4)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 35
		@35
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 18
		@18
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 18
		@18
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 18
		@18
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 18
		@18
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 18
		@18
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 18
		@18
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.5
	D=A
	@54
	0;JMP

(Output.initMap$ret.5)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 36
		@36
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.6
	D=A
	@54
	0;JMP

(Output.initMap$ret.6)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 37
		@37
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 35
		@35
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 49
		@49
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.7
	D=A
	@54
	0;JMP

(Output.initMap$ret.7)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 38
		@38
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 54
		@54
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 54
		@54
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.8
	D=A
	@54
	0;JMP

(Output.initMap$ret.8)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 39
		@39
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.9
	D=A
	@54
	0;JMP

(Output.initMap$ret.9)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 40
		@40
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.10
	D=A
	@54
	0;JMP

(Output.initMap$ret.10)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 41
		@41
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.11
	D=A
	@54
	0;JMP

(Output.initMap$ret.11)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 42
		@42
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.12
	D=A
	@54
	0;JMP

(Output.initMap$ret.12)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 43
		@43
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.13
	D=A
	@54
	0;JMP

(Output.initMap$ret.13)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 44
		@44
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.14
	D=A
	@54
	0;JMP

(Output.initMap$ret.14)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 45
		@45
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.15
	D=A
	@54
	0;JMP

(Output.initMap$ret.15)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 46
		@46
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.16
	D=A
	@54
	0;JMP

(Output.initMap$ret.16)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 47
		@47
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.17
	D=A
	@54
	0;JMP

(Output.initMap$ret.17)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.18
	D=A
	@54
	0;JMP

(Output.initMap$ret.18)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 49
		@49
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 14
		@14
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.19
	D=A
	@54
	0;JMP

(Output.initMap$ret.19)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 50
		@50
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.20
	D=A
	@54
	0;JMP

(Output.initMap$ret.20)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 28
		@28
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.21
	D=A
	@54
	0;JMP

(Output.initMap$ret.21)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 52
		@52
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

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 28
		@28
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 26
		@26
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 25
		@25
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 60
		@60
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.22
	D=A
	@54
	0;JMP

(Output.initMap$ret.22)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 53
		@53
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
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

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.23
	D=A
	@54
	0;JMP

(Output.initMap$ret.23)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 54
		@54
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 28
		@28
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
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

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.24
	D=A
	@54
	0;JMP

(Output.initMap$ret.24)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 55
		@55
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 49
		@49
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.25
	D=A
	@54
	0;JMP

(Output.initMap$ret.25)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 56
		@56
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.26
	D=A
	@54
	0;JMP

(Output.initMap$ret.26)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 57
		@57
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 62
		@62
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 14
		@14
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.27
	D=A
	@54
	0;JMP

(Output.initMap$ret.27)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 58
		@58
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.28
	D=A
	@54
	0;JMP

(Output.initMap$ret.28)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 59
		@59
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.29
	D=A
	@54
	0;JMP

(Output.initMap$ret.29)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 60
		@60
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.30
	D=A
	@54
	0;JMP

(Output.initMap$ret.30)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 61
		@61
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.31
	D=A
	@54
	0;JMP

(Output.initMap$ret.31)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 62
		@62
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.32
	D=A
	@54
	0;JMP

(Output.initMap$ret.32)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 64
		@64
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 59
		@59
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 59
		@59
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 59
		@59
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.33
	D=A
	@54
	0;JMP

(Output.initMap$ret.33)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.34
	D=A
	@54
	0;JMP

(Output.initMap$ret.34)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 65
		@65
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.35
	D=A
	@54
	0;JMP

(Output.initMap$ret.35)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 66
		@66
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

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
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

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
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

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.36
	D=A
	@54
	0;JMP

(Output.initMap$ret.36)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 67
		@67
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 28
		@28
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 54
		@54
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 35
		@35
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 35
		@35
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 54
		@54
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 28
		@28
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.37
	D=A
	@54
	0;JMP

(Output.initMap$ret.37)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 68
		@68
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.38
	D=A
	@54
	0;JMP

(Output.initMap$ret.38)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 69
		@69
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 35
		@35
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 11
		@11
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 11
		@11
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 35
		@35
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.39
	D=A
	@54
	0;JMP

(Output.initMap$ret.39)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 70
		@70
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 35
		@35
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 11
		@11
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 11
		@11
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.40
	D=A
	@54
	0;JMP

(Output.initMap$ret.40)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 71
		@71
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 28
		@28
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 54
		@54
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 35
		@35
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 59
		@59
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 54
		@54
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 44
		@44
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.41
	D=A
	@54
	0;JMP

(Output.initMap$ret.41)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 72
		@72
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.42
	D=A
	@54
	0;JMP

(Output.initMap$ret.42)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 73
		@73
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.43
	D=A
	@54
	0;JMP

(Output.initMap$ret.43)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 74
		@74
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 60
		@60
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 14
		@14
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.44
	D=A
	@54
	0;JMP

(Output.initMap$ret.44)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 75
		@75
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.45
	D=A
	@54
	0;JMP

(Output.initMap$ret.45)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 76
		@76
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 35
		@35
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.46
	D=A
	@54
	0;JMP

(Output.initMap$ret.46)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 77
		@77
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 33
		@33
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.47
	D=A
	@54
	0;JMP

(Output.initMap$ret.47)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 78
		@78
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 55
		@55
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 55
		@55
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 59
		@59
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 59
		@59
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.48
	D=A
	@54
	0;JMP

(Output.initMap$ret.48)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 79
		@79
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.49
	D=A
	@54
	0;JMP

(Output.initMap$ret.49)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 80
		@80
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

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
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

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.50
	D=A
	@54
	0;JMP

(Output.initMap$ret.50)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 81
		@81
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 59
		@59
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.51
	D=A
	@54
	0;JMP

(Output.initMap$ret.51)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 82
		@82
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

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
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

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.52
	D=A
	@54
	0;JMP

(Output.initMap$ret.52)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 83
		@83
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 28
		@28
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.53
	D=A
	@54
	0;JMP

(Output.initMap$ret.53)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 84
		@84
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
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

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.54
	D=A
	@54
	0;JMP

(Output.initMap$ret.54)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 85
		@85
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.55
	D=A
	@54
	0;JMP

(Output.initMap$ret.55)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 86
		@86
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.56
	D=A
	@54
	0;JMP

(Output.initMap$ret.56)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 87
		@87
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 18
		@18
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.57
	D=A
	@54
	0;JMP

(Output.initMap$ret.57)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 88
		@88
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.58
	D=A
	@54
	0;JMP

(Output.initMap$ret.58)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 89
		@89
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.59
	D=A
	@54
	0;JMP

(Output.initMap$ret.59)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 90
		@90
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 49
		@49
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 35
		@35
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.60
	D=A
	@54
	0;JMP

(Output.initMap$ret.60)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 91
		@91
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.61
	D=A
	@54
	0;JMP

(Output.initMap$ret.61)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 92
		@92
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.62
	D=A
	@54
	0;JMP

(Output.initMap$ret.62)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 93
		@93
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.63
	D=A
	@54
	0;JMP

(Output.initMap$ret.63)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 94
		@94
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 8
		@8
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 28
		@28
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 54
		@54
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.64
	D=A
	@54
	0;JMP

(Output.initMap$ret.64)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 95
		@95
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.65
	D=A
	@54
	0;JMP

(Output.initMap$ret.65)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 96
		@96
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.66
	D=A
	@54
	0;JMP

(Output.initMap$ret.66)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 97
		@97
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 14
		@14
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 54
		@54
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.67
	D=A
	@54
	0;JMP

(Output.initMap$ret.67)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 98
		@98
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.68
	D=A
	@54
	0;JMP

(Output.initMap$ret.68)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 99
		@99
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.69
	D=A
	@54
	0;JMP

(Output.initMap$ret.69)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 100
		@100
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 60
		@60
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 54
		@54
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.70
	D=A
	@54
	0;JMP

(Output.initMap$ret.70)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 101
		@101
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.71
	D=A
	@54
	0;JMP

(Output.initMap$ret.71)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 102
		@102
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 28
		@28
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 54
		@54
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 38
		@38
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.72
	D=A
	@54
	0;JMP

(Output.initMap$ret.72)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 103
		@103
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 62
		@62
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.73
	D=A
	@54
	0;JMP

(Output.initMap$ret.73)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 104
		@104
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 55
		@55
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.74
	D=A
	@54
	0;JMP

(Output.initMap$ret.74)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 105
		@105
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 14
		@14
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.75
	D=A
	@54
	0;JMP

(Output.initMap$ret.75)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 106
		@106
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 56
		@56
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.76
	D=A
	@54
	0;JMP

(Output.initMap$ret.76)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 107
		@107
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.77
	D=A
	@54
	0;JMP

(Output.initMap$ret.77)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 108
		@108
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 14
		@14
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.78
	D=A
	@54
	0;JMP

(Output.initMap$ret.78)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 109
		@109
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 29
		@29
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 43
		@43
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 43
		@43
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 43
		@43
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 43
		@43
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.79
	D=A
	@54
	0;JMP

(Output.initMap$ret.79)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 110
		@110
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 29
		@29
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.80
	D=A
	@54
	0;JMP

(Output.initMap$ret.80)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 111
		@111
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.81
	D=A
	@54
	0;JMP

(Output.initMap$ret.81)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 112
		@112
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
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

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.82
	D=A
	@54
	0;JMP

(Output.initMap$ret.82)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 113
		@113
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 62
		@62
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.83
	D=A
	@54
	0;JMP

(Output.initMap$ret.83)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 114
		@114
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 29
		@29
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 55
		@55
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 7
		@7
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.84
	D=A
	@54
	0;JMP

(Output.initMap$ret.84)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 115
		@115
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.85
	D=A
	@54
	0;JMP

(Output.initMap$ret.85)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 116
		@116
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 4
		@4
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 54
		@54
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 28
		@28
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.86
	D=A
	@54
	0;JMP

(Output.initMap$ret.86)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 117
		@117
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 54
		@54
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.87
	D=A
	@54
	0;JMP

(Output.initMap$ret.87)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 118
		@118
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.88
	D=A
	@54
	0;JMP

(Output.initMap$ret.88)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 119
		@119
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 18
		@18
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.89
	D=A
	@54
	0;JMP

(Output.initMap$ret.89)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 120
		@120
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 30
		@30
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.90
	D=A
	@54
	0;JMP

(Output.initMap$ret.90)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 121
		@121
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 62
		@62
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 24
		@24
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.91
	D=A
	@54
	0;JMP

(Output.initMap$ret.91)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 122
		@122
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 51
		@51
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.92
	D=A
	@54
	0;JMP

(Output.initMap$ret.92)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 123
		@123
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 56
		@56
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 7
		@7
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 56
		@56
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.93
	D=A
	@54
	0;JMP

(Output.initMap$ret.93)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 124
		@124
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.94
	D=A
	@54
	0;JMP

(Output.initMap$ret.94)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 125
		@125
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 7
		@7
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 56
		@56
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 7
		@7
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.95
	D=A
	@54
	0;JMP

(Output.initMap$ret.95)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 126
		@126
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 38
		@38
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

		////PUSH constant 25
		@25
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@12
	D=A
	@R14
	M=D
	@Output.create
	D=A
	@R15
	M=D
	@Output.initMap$ret.96
	D=A
	@54
	0;JMP

(Output.initMap$ret.96)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Output.create)
@SP
M=M+1
A=M-1
M=0

		////PUSH constant 11
		@11
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Array.new
	D=A
	@R15
	M=D
	@Output.create$ret.0
	D=A
	@54
	0;JMP

(Output.create$ret.0)

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 5
		@Output.5
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

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH local 0
		@LCL
		A=M
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
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 2
		@2
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH argument 3
		@ARG
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH argument 4
		@ARG
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 4
		@4
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH argument 5
		@ARG
		D=M
		@5
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 5
		@5
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH argument 6
		@ARG
		D=M
		@6
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH argument 7
		@ARG
		D=M
		@7
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 7
		@7
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH argument 8
		@ARG
		D=M
		@8
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 8
		@8
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH argument 9
		@ARG
		D=M
		@9
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 9
		@9
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH argument 10
		@ARG
		D=M
		@10
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 10
		@10
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
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

		////PUSH argument 11
		@ARG
		D=M
		@11
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Output.createShiftedMap)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH constant 127
		@127
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Array.new
	D=A
	@R15
	M=D
	@Output.createShiftedMap$ret.0
	D=A
	@54
	0;JMP

(Output.createShiftedMap$ret.0)

		////POP static 6
		@SP
		AM=M-1
		D=M
		@Output.6
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP local 2
		@LCL
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

	////LABEL
(Output.createShiftedMap$WHILE_EXP0)

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 127
		@127
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Output.createShiftedMap$ret.1
	D=A
	@36
	0;JMP
	(Output.createShiftedMap$ret.1)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Output.createShiftedMap$WHILE_END0
	D;JNE

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 5
		@Output.5
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH constant 11
		@11
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Array.new
	D=A
	@R15
	M=D
	@Output.createShiftedMap$ret.2
	D=A
	@54
	0;JMP

(Output.createShiftedMap$ret.2)

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 6
		@Output.6
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

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP local 3
		@LCL
		D=M
		@3
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
(Output.createShiftedMap$WHILE_EXP1)

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 11
		@11
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Output.createShiftedMap$ret.3
	D=A
	@36
	0;JMP
	(Output.createShiftedMap$ret.3)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Output.createShiftedMap$WHILE_END1
	D;JNE

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
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

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 256
		@256
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Output.createShiftedMap$ret.4
	D=A
	@54
	0;JMP

(Output.createShiftedMap$ret.4)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 3
		@LCL
		D=M
		@3
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

	////GOTO
	@Output.createShiftedMap$WHILE_EXP1
	0;JMP

	////LABEL
(Output.createShiftedMap$WHILE_END1)

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////eq INSTRUCTION
	@Output.createShiftedMap$ret.5
	D=A
	@6
	0;JMP
	(Output.createShiftedMap$ret.5)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Output.createShiftedMap$IF_TRUE0
	D;JNE

	////GOTO
	@Output.createShiftedMap$IF_FALSE0
	0;JMP

	////LABEL
(Output.createShiftedMap$IF_TRUE0)

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 2
		@LCL
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

	////GOTO
	@Output.createShiftedMap$IF_END0
	0;JMP

	////LABEL
(Output.createShiftedMap$IF_FALSE0)

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 2
		@LCL
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

	////LABEL
(Output.createShiftedMap$IF_END0)

	////GOTO
	@Output.createShiftedMap$WHILE_EXP0
	0;JMP

	////LABEL
(Output.createShiftedMap$WHILE_END0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Output.getMap)
@SP
M=M+1
A=M-1
M=0

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Output.getMap$ret.0
	D=A
	@36
	0;JMP
	(Output.getMap$ret.0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 126
		@126
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Output.getMap$ret.1
	D=A
	@21
	0;JMP
	(Output.getMap$ret.1)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Output.getMap$IF_TRUE0
	D;JNE

	////GOTO
	@Output.getMap$IF_FALSE0
	0;JMP

	////LABEL
(Output.getMap$IF_TRUE0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP argument 0
		@SP
		AM=M-1
		D=M
		@ARG
		A=M
		M=D

	////LABEL
(Output.getMap$IF_FALSE0)

		////PUSH static 2
		@Output.2
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Output.getMap$IF_TRUE1
	D;JNE

	////GOTO
	@Output.getMap$IF_FALSE1
	0;JMP

	////LABEL
(Output.getMap$IF_TRUE1)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 5
		@Output.5
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////GOTO
	@Output.getMap$IF_END1
	0;JMP

	////LABEL
(Output.getMap$IF_FALSE1)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 6
		@Output.6
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////LABEL
(Output.getMap$IF_END1)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Output.drawChar)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.getMap
	D=A
	@R15
	M=D
	@Output.drawChar$ret.0
	D=A
	@54
	0;JMP

(Output.drawChar$ret.0)

		////POP local 2
		@LCL
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

		////PUSH static 1
		@Output.1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////LABEL
(Output.drawChar$WHILE_EXP0)

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 11
		@11
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Output.drawChar$ret.1
	D=A
	@36
	0;JMP
	(Output.drawChar$ret.1)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Output.drawChar$WHILE_END0
	D;JNE

		////PUSH static 2
		@Output.2
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Output.drawChar$IF_TRUE0
	D;JNE

	////GOTO
	@Output.drawChar$IF_FALSE0
	0;JMP

	////LABEL
(Output.drawChar$IF_TRUE0)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 4
		@Output.4
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 256
		@256
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

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

		////POP local 3
		@LCL
		D=M
		@3
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

	////GOTO
	@Output.drawChar$IF_END0
	0;JMP

	////LABEL
(Output.drawChar$IF_FALSE0)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 4
		@Output.4
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 255
		@255
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

		////POP local 3
		@LCL
		D=M
		@3
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
(Output.drawChar$IF_END0)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 4
		@Output.4
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

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
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

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 32
		@32
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

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

	////GOTO
	@Output.drawChar$WHILE_EXP0
	0;JMP

	////LABEL
(Output.drawChar$WHILE_END0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Output.moveCursor)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Output.moveCursor$ret.0
	D=A
	@36
	0;JMP
	(Output.moveCursor$ret.0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
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

	////gt INSTRUCTION
	@Output.moveCursor$ret.1
	D=A
	@21
	0;JMP
	(Output.moveCursor$ret.1)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Output.moveCursor$ret.2
	D=A
	@36
	0;JMP
	(Output.moveCursor$ret.2)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 63
		@63
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Output.moveCursor$ret.3
	D=A
	@21
	0;JMP
	(Output.moveCursor$ret.3)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Output.moveCursor$IF_TRUE0
	D;JNE

	////GOTO
	@Output.moveCursor$IF_FALSE0
	0;JMP

	////LABEL
(Output.moveCursor$IF_TRUE0)

		////PUSH constant 20
		@20
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@Output.moveCursor$ret.4
	D=A
	@54
	0;JMP

(Output.moveCursor$ret.4)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Output.moveCursor$IF_FALSE0)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 2
		@2
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.divide
	D=A
	@R15
	M=D
	@Output.moveCursor$ret.5
	D=A
	@54
	0;JMP

(Output.moveCursor$ret.5)

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Output.0
		M=D

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 352
		@352
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Output.moveCursor$ret.6
	D=A
	@54
	0;JMP

(Output.moveCursor$ret.6)

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////PUSH static 0
		@Output.0
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

		////POP static 1
		@SP
		AM=M-1
		D=M
		@Output.1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 0
		@Output.0
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 2
		@2
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Output.moveCursor$ret.7
	D=A
	@54
	0;JMP

(Output.moveCursor$ret.7)

	////eq INSTRUCTION
	@Output.moveCursor$ret.8
	D=A
	@6
	0;JMP
	(Output.moveCursor$ret.8)

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Output.2
		M=D

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.drawChar
	D=A
	@R15
	M=D
	@Output.moveCursor$ret.9
	D=A
	@54
	0;JMP

(Output.moveCursor$ret.9)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Output.printChar)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@String.newLine
	D=A
	@R15
	M=D
	@Output.printChar$ret.0
	D=A
	@54
	0;JMP

(Output.printChar$ret.0)

	////eq INSTRUCTION
	@Output.printChar$ret.1
	D=A
	@6
	0;JMP
	(Output.printChar$ret.1)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Output.printChar$IF_TRUE0
	D;JNE

	////GOTO
	@Output.printChar$IF_FALSE0
	0;JMP

	////LABEL
(Output.printChar$IF_TRUE0)

	////CALL
	@0
	D=A
	@R14
	M=D
	@Output.println
	D=A
	@R15
	M=D
	@Output.printChar$ret.2
	D=A
	@54
	0;JMP

(Output.printChar$ret.2)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////GOTO
	@Output.printChar$IF_END0
	0;JMP

	////LABEL
(Output.printChar$IF_FALSE0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@String.backSpace
	D=A
	@R15
	M=D
	@Output.printChar$ret.3
	D=A
	@54
	0;JMP

(Output.printChar$ret.3)

	////eq INSTRUCTION
	@Output.printChar$ret.4
	D=A
	@6
	0;JMP
	(Output.printChar$ret.4)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Output.printChar$IF_TRUE1
	D;JNE

	////GOTO
	@Output.printChar$IF_FALSE1
	0;JMP

	////LABEL
(Output.printChar$IF_TRUE1)

	////CALL
	@0
	D=A
	@R14
	M=D
	@Output.backSpace
	D=A
	@R15
	M=D
	@Output.printChar$ret.5
	D=A
	@54
	0;JMP

(Output.printChar$ret.5)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////GOTO
	@Output.printChar$IF_END1
	0;JMP

	////LABEL
(Output.printChar$IF_FALSE1)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.drawChar
	D=A
	@R15
	M=D
	@Output.printChar$ret.6
	D=A
	@54
	0;JMP

(Output.printChar$ret.6)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH static 2
		@Output.2
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Output.printChar$IF_TRUE2
	D;JNE

	////GOTO
	@Output.printChar$IF_FALSE2
	0;JMP

	////LABEL
(Output.printChar$IF_TRUE2)

		////PUSH static 0
		@Output.0
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Output.0
		M=D

		////PUSH static 1
		@Output.1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP static 1
		@SP
		AM=M-1
		D=M
		@Output.1
		M=D

	////LABEL
(Output.printChar$IF_FALSE2)

		////PUSH static 0
		@Output.0
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@Output.printChar$ret.7
	D=A
	@6
	0;JMP
	(Output.printChar$ret.7)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Output.printChar$IF_TRUE3
	D;JNE

	////GOTO
	@Output.printChar$IF_FALSE3
	0;JMP

	////LABEL
(Output.printChar$IF_TRUE3)

	////CALL
	@0
	D=A
	@R14
	M=D
	@Output.println
	D=A
	@R15
	M=D
	@Output.printChar$ret.8
	D=A
	@54
	0;JMP

(Output.printChar$ret.8)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////GOTO
	@Output.printChar$IF_END3
	0;JMP

	////LABEL
(Output.printChar$IF_FALSE3)

		////PUSH static 2
		@Output.2
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Output.2
		M=D

	////LABEL
(Output.printChar$IF_END3)

	////LABEL
(Output.printChar$IF_END1)

	////LABEL
(Output.printChar$IF_END0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Output.printString)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@String.length
	D=A
	@R15
	M=D
	@Output.printString$ret.0
	D=A
	@54
	0;JMP

(Output.printString$ret.0)

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

	////LABEL
(Output.printString$WHILE_EXP0)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Output.printString$ret.1
	D=A
	@36
	0;JMP
	(Output.printString$ret.1)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Output.printString$WHILE_END0
	D;JNE

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.charAt
	D=A
	@R15
	M=D
	@Output.printString$ret.2
	D=A
	@54
	0;JMP

(Output.printString$ret.2)

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.printChar
	D=A
	@R15
	M=D
	@Output.printString$ret.3
	D=A
	@54
	0;JMP

(Output.printString$ret.3)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////GOTO
	@Output.printString$WHILE_EXP0
	0;JMP

	////LABEL
(Output.printString$WHILE_END0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Output.printInt)

		////PUSH static 3
		@Output.3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.setInt
	D=A
	@R15
	M=D
	@Output.printInt$ret.0
	D=A
	@54
	0;JMP

(Output.printInt$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH static 3
		@Output.3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.printString
	D=A
	@R15
	M=D
	@Output.printInt$ret.1
	D=A
	@54
	0;JMP

(Output.printInt$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Output.println)

		////PUSH static 1
		@Output.1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 352
		@352
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

		////PUSH static 0
		@Output.0
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

		////POP static 1
		@SP
		AM=M-1
		D=M
		@Output.1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Output.0
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Output.2
		M=D

		////PUSH static 1
		@Output.1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 8128
		@8128
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@Output.println$ret.0
	D=A
	@6
	0;JMP
	(Output.println$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Output.println$IF_TRUE0
	D;JNE

	////GOTO
	@Output.println$IF_FALSE0
	0;JMP

	////LABEL
(Output.println$IF_TRUE0)

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 1
		@SP
		AM=M-1
		D=M
		@Output.1
		M=D

	////LABEL
(Output.println$IF_FALSE0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Output.backSpace)

		////PUSH static 2
		@Output.2
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Output.backSpace$IF_TRUE0
	D;JNE

	////GOTO
	@Output.backSpace$IF_FALSE0
	0;JMP

	////LABEL
(Output.backSpace$IF_TRUE0)

		////PUSH static 0
		@Output.0
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////gt INSTRUCTION
	@Output.backSpace$ret.0
	D=A
	@21
	0;JMP
	(Output.backSpace$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Output.backSpace$IF_TRUE1
	D;JNE

	////GOTO
	@Output.backSpace$IF_FALSE1
	0;JMP

	////LABEL
(Output.backSpace$IF_TRUE1)

		////PUSH static 0
		@Output.0
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Output.0
		M=D

		////PUSH static 1
		@Output.1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////POP static 1
		@SP
		AM=M-1
		D=M
		@Output.1
		M=D

	////GOTO
	@Output.backSpace$IF_END1
	0;JMP

	////LABEL
(Output.backSpace$IF_FALSE1)

		////PUSH constant 31
		@31
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Output.0
		M=D

		////PUSH static 1
		@Output.1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@Output.backSpace$ret.1
	D=A
	@6
	0;JMP
	(Output.backSpace$ret.1)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Output.backSpace$IF_TRUE2
	D;JNE

	////GOTO
	@Output.backSpace$IF_FALSE2
	0;JMP

	////LABEL
(Output.backSpace$IF_TRUE2)

		////PUSH constant 8128
		@8128
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 1
		@SP
		AM=M-1
		D=M
		@Output.1
		M=D

	////LABEL
(Output.backSpace$IF_FALSE2)

		////PUSH static 1
		@Output.1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 321
		@321
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

		////POP static 1
		@SP
		AM=M-1
		D=M
		@Output.1
		M=D

	////LABEL
(Output.backSpace$IF_END1)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Output.2
		M=D

	////GOTO
	@Output.backSpace$IF_END0
	0;JMP

	////LABEL
(Output.backSpace$IF_FALSE0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Output.2
		M=D

	////LABEL
(Output.backSpace$IF_END0)

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.drawChar
	D=A
	@R15
	M=D
	@Output.backSpace$ret.2
	D=A
	@54
	0;JMP

(Output.backSpace$ret.2)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP


////FUNCTION
(PongGame.new)

		////PUSH constant 7
		@7
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Memory.alloc
	D=A
	@R15
	M=D
	@PongGame.new$ret.0
	D=A
	@54
	0;JMP

(PongGame.new$ret.0)

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Screen.clearScreen
	D=A
	@R15
	M=D
	@PongGame.new$ret.1
	D=A
	@54
	0;JMP

(PongGame.new$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 50
		@50
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 6
		@THIS
		D=M
		@6
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH constant 230
		@230
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 229
		@229
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 6
		@THIS
		D=M
		@6
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 7
		@7
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@4
	D=A
	@R14
	M=D
	@Bat.new
	D=A
	@R15
	M=D
	@PongGame.new$ret.2
	D=A
	@54
	0;JMP

(PongGame.new$ret.2)

		////POP this 0
		@SP
		AM=M-1
		D=M
		@THIS
		A=M
		M=D

		////PUSH constant 253
		@253
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 222
		@222
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 511
		@511
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 229
		@229
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@6
	D=A
	@R14
	M=D
	@Ball.new
	D=A
	@R15
	M=D
	@PongGame.new$ret.3
	D=A
	@54
	0;JMP

(PongGame.new$ret.3)

		////POP this 1
		@SP
		AM=M-1
		D=M
		@THIS
		A=M+1
		M=D

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 400
		@400
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@3
	D=A
	@R14
	M=D
	@Ball.setDestination
	D=A
	@R15
	M=D
	@PongGame.new$ret.4
	D=A
	@54
	0;JMP

(PongGame.new$ret.4)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 238
		@238
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 511
		@511
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 240
		@240
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@4
	D=A
	@R14
	M=D
	@Screen.drawRectangle
	D=A
	@R15
	M=D
	@PongGame.new$ret.5
	D=A
	@54
	0;JMP

(PongGame.new$ret.5)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 22
		@22
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@2
	D=A
	@R14
	M=D
	@Output.moveCursor
	D=A
	@R15
	M=D
	@PongGame.new$ret.6
	D=A
	@54
	0;JMP

(PongGame.new$ret.6)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 8
		@8
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@String.new
	D=A
	@R15
	M=D
	@PongGame.new$ret.7
	D=A
	@54
	0;JMP

(PongGame.new$ret.7)

		////PUSH constant 83
		@83
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@PongGame.new$ret.8
	D=A
	@54
	0;JMP

(PongGame.new$ret.8)

		////PUSH constant 99
		@99
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@PongGame.new$ret.9
	D=A
	@54
	0;JMP

(PongGame.new$ret.9)

		////PUSH constant 111
		@111
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@PongGame.new$ret.10
	D=A
	@54
	0;JMP

(PongGame.new$ret.10)

		////PUSH constant 114
		@114
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@PongGame.new$ret.11
	D=A
	@54
	0;JMP

(PongGame.new$ret.11)

		////PUSH constant 101
		@101
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@PongGame.new$ret.12
	D=A
	@54
	0;JMP

(PongGame.new$ret.12)

		////PUSH constant 58
		@58
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@PongGame.new$ret.13
	D=A
	@54
	0;JMP

(PongGame.new$ret.13)

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@PongGame.new$ret.14
	D=A
	@54
	0;JMP

(PongGame.new$ret.14)

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@PongGame.new$ret.15
	D=A
	@54
	0;JMP

(PongGame.new$ret.15)

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.printString
	D=A
	@R15
	M=D
	@PongGame.new$ret.16
	D=A
	@54
	0;JMP

(PongGame.new$ret.16)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP this 3
		@THIS
		D=M
		@3
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP this 4
		@THIS
		D=M
		@4
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP this 2
		@THIS
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

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP this 5
		@THIS
		D=M
		@5
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(PongGame.dispose)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Bat.dispose
	D=A
	@R15
	M=D
	@PongGame.dispose$ret.0
	D=A
	@54
	0;JMP

(PongGame.dispose$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Ball.dispose
	D=A
	@R15
	M=D
	@PongGame.dispose$ret.1
	D=A
	@54
	0;JMP

(PongGame.dispose$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Memory.deAlloc
	D=A
	@R15
	M=D
	@PongGame.dispose$ret.2
	D=A
	@54
	0;JMP

(PongGame.dispose$ret.2)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(PongGame.newInstance)

	////CALL
	@0
	D=A
	@R14
	M=D
	@PongGame.new
	D=A
	@R15
	M=D
	@PongGame.newInstance$ret.0
	D=A
	@54
	0;JMP

(PongGame.newInstance$ret.0)

		////POP static 0
		@SP
		AM=M-1
		D=M
		@PongGame.0
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(PongGame.getInstance)

		////PUSH static 0
		@PongGame.0
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(PongGame.run)
@SP
M=M+1
A=M-1
M=0

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

	////LABEL
(PongGame.run$WHILE_EXP0)

		////PUSH this 3
		@THIS
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@PongGame.run$WHILE_END0
	D;JNE

	////LABEL
(PongGame.run$WHILE_EXP1)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////eq INSTRUCTION
	@PongGame.run$ret.0
	D=A
	@6
	0;JMP
	(PongGame.run$ret.0)

		////PUSH this 3
		@THIS
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@PongGame.run$WHILE_END1
	D;JNE

	////CALL
	@0
	D=A
	@R14
	M=D
	@Keyboard.keyPressed
	D=A
	@R15
	M=D
	@PongGame.run$ret.1
	D=A
	@54
	0;JMP

(PongGame.run$ret.1)

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Bat.move
	D=A
	@R15
	M=D
	@PongGame.run$ret.2
	D=A
	@54
	0;JMP

(PongGame.run$ret.2)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@PongGame.moveBall
	D=A
	@R15
	M=D
	@PongGame.run$ret.3
	D=A
	@54
	0;JMP

(PongGame.run$ret.3)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////GOTO
	@PongGame.run$WHILE_EXP1
	0;JMP

	////LABEL
(PongGame.run$WHILE_END1)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 130
		@130
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@PongGame.run$ret.4
	D=A
	@6
	0;JMP
	(PongGame.run$ret.4)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@PongGame.run$IF_TRUE0
	D;JNE

	////GOTO
	@PongGame.run$IF_FALSE0
	0;JMP

	////LABEL
(PongGame.run$IF_TRUE0)

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////CALL
	@2
	D=A
	@R14
	M=D
	@Bat.setDirection
	D=A
	@R15
	M=D
	@PongGame.run$ret.5
	D=A
	@54
	0;JMP

(PongGame.run$ret.5)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////GOTO
	@PongGame.run$IF_END0
	0;JMP

	////LABEL
(PongGame.run$IF_FALSE0)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 132
		@132
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@PongGame.run$ret.6
	D=A
	@6
	0;JMP
	(PongGame.run$ret.6)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@PongGame.run$IF_TRUE1
	D;JNE

	////GOTO
	@PongGame.run$IF_FALSE1
	0;JMP

	////LABEL
(PongGame.run$IF_TRUE1)

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 2
		@2
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Bat.setDirection
	D=A
	@R15
	M=D
	@PongGame.run$ret.7
	D=A
	@54
	0;JMP

(PongGame.run$ret.7)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////GOTO
	@PongGame.run$IF_END1
	0;JMP

	////LABEL
(PongGame.run$IF_FALSE1)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 140
		@140
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@PongGame.run$ret.8
	D=A
	@6
	0;JMP
	(PongGame.run$ret.8)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@PongGame.run$IF_TRUE2
	D;JNE

	////GOTO
	@PongGame.run$IF_FALSE2
	0;JMP

	////LABEL
(PongGame.run$IF_TRUE2)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

		////POP this 3
		@THIS
		D=M
		@3
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
(PongGame.run$IF_FALSE2)

	////LABEL
(PongGame.run$IF_END1)

	////LABEL
(PongGame.run$IF_END0)

	////LABEL
(PongGame.run$WHILE_EXP2)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////eq INSTRUCTION
	@PongGame.run$ret.9
	D=A
	@6
	0;JMP
	(PongGame.run$ret.9)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

		////PUSH this 3
		@THIS
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@PongGame.run$WHILE_END2
	D;JNE

	////CALL
	@0
	D=A
	@R14
	M=D
	@Keyboard.keyPressed
	D=A
	@R15
	M=D
	@PongGame.run$ret.10
	D=A
	@54
	0;JMP

(PongGame.run$ret.10)

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Bat.move
	D=A
	@R15
	M=D
	@PongGame.run$ret.11
	D=A
	@54
	0;JMP

(PongGame.run$ret.11)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@PongGame.moveBall
	D=A
	@R15
	M=D
	@PongGame.run$ret.12
	D=A
	@54
	0;JMP

(PongGame.run$ret.12)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////GOTO
	@PongGame.run$WHILE_EXP2
	0;JMP

	////LABEL
(PongGame.run$WHILE_END2)

	////GOTO
	@PongGame.run$WHILE_EXP0
	0;JMP

	////LABEL
(PongGame.run$WHILE_END0)

		////PUSH this 3
		@THIS
		D=M
		@3
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
	@PongGame.run$IF_TRUE3
	D;JNE

	////GOTO
	@PongGame.run$IF_FALSE3
	0;JMP

	////LABEL
(PongGame.run$IF_TRUE3)

		////PUSH constant 10
		@10
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 27
		@27
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Output.moveCursor
	D=A
	@R15
	M=D
	@PongGame.run$ret.13
	D=A
	@54
	0;JMP

(PongGame.run$ret.13)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 9
		@9
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@String.new
	D=A
	@R15
	M=D
	@PongGame.run$ret.14
	D=A
	@54
	0;JMP

(PongGame.run$ret.14)

		////PUSH constant 71
		@71
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@PongGame.run$ret.15
	D=A
	@54
	0;JMP

(PongGame.run$ret.15)

		////PUSH constant 97
		@97
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@PongGame.run$ret.16
	D=A
	@54
	0;JMP

(PongGame.run$ret.16)

		////PUSH constant 109
		@109
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@PongGame.run$ret.17
	D=A
	@54
	0;JMP

(PongGame.run$ret.17)

		////PUSH constant 101
		@101
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@PongGame.run$ret.18
	D=A
	@54
	0;JMP

(PongGame.run$ret.18)

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@PongGame.run$ret.19
	D=A
	@54
	0;JMP

(PongGame.run$ret.19)

		////PUSH constant 79
		@79
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@PongGame.run$ret.20
	D=A
	@54
	0;JMP

(PongGame.run$ret.20)

		////PUSH constant 118
		@118
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@PongGame.run$ret.21
	D=A
	@54
	0;JMP

(PongGame.run$ret.21)

		////PUSH constant 101
		@101
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@PongGame.run$ret.22
	D=A
	@54
	0;JMP

(PongGame.run$ret.22)

		////PUSH constant 114
		@114
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@PongGame.run$ret.23
	D=A
	@54
	0;JMP

(PongGame.run$ret.23)

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.printString
	D=A
	@R15
	M=D
	@PongGame.run$ret.24
	D=A
	@54
	0;JMP

(PongGame.run$ret.24)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(PongGame.run$IF_FALSE3)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(PongGame.moveBall)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Ball.move
	D=A
	@R15
	M=D
	@PongGame.moveBall$ret.0
	D=A
	@54
	0;JMP

(PongGame.moveBall$ret.0)

		////POP this 2
		@THIS
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

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////gt INSTRUCTION
	@PongGame.moveBall$ret.1
	D=A
	@21
	0;JMP
	(PongGame.moveBall$ret.1)

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 5
		@THIS
		D=M
		@5
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@PongGame.moveBall$ret.2
	D=A
	@6
	0;JMP
	(PongGame.moveBall$ret.2)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@PongGame.moveBall$IF_TRUE0
	D;JNE

	////GOTO
	@PongGame.moveBall$IF_FALSE0
	0;JMP

	////LABEL
(PongGame.moveBall$IF_TRUE0)

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 5
		@THIS
		D=M
		@5
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Bat.getLeft
	D=A
	@R15
	M=D
	@PongGame.moveBall$ret.3
	D=A
	@54
	0;JMP

(PongGame.moveBall$ret.3)

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Bat.getRight
	D=A
	@R15
	M=D
	@PongGame.moveBall$ret.4
	D=A
	@54
	0;JMP

(PongGame.moveBall$ret.4)

		////POP local 2
		@LCL
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

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Ball.getLeft
	D=A
	@R15
	M=D
	@PongGame.moveBall$ret.5
	D=A
	@54
	0;JMP

(PongGame.moveBall$ret.5)

		////POP local 3
		@LCL
		D=M
		@3
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Ball.getRight
	D=A
	@R15
	M=D
	@PongGame.moveBall$ret.6
	D=A
	@54
	0;JMP

(PongGame.moveBall$ret.6)

		////POP local 4
		@LCL
		D=M
		@4
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 4
		@4
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@PongGame.moveBall$ret.7
	D=A
	@6
	0;JMP
	(PongGame.moveBall$ret.7)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@PongGame.moveBall$IF_TRUE1
	D;JNE

	////GOTO
	@PongGame.moveBall$IF_FALSE1
	0;JMP

	////LABEL
(PongGame.moveBall$IF_TRUE1)

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 4
		@LCL
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@PongGame.moveBall$ret.8
	D=A
	@21
	0;JMP
	(PongGame.moveBall$ret.8)

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@PongGame.moveBall$ret.9
	D=A
	@36
	0;JMP
	(PongGame.moveBall$ret.9)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////POP this 3
		@THIS
		D=M
		@3
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH this 3
		@THIS
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@PongGame.moveBall$IF_TRUE2
	D;JNE

	////GOTO
	@PongGame.moveBall$IF_FALSE2
	0;JMP

	////LABEL
(PongGame.moveBall$IF_TRUE2)

		////PUSH local 4
		@LCL
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 10
		@10
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

	////lt INSTRUCTION
	@PongGame.moveBall$ret.10
	D=A
	@36
	0;JMP
	(PongGame.moveBall$ret.10)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@PongGame.moveBall$IF_TRUE3
	D;JNE

	////GOTO
	@PongGame.moveBall$IF_FALSE3
	0;JMP

	////LABEL
(PongGame.moveBall$IF_TRUE3)

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////GOTO
	@PongGame.moveBall$IF_END3
	0;JMP

	////LABEL
(PongGame.moveBall$IF_FALSE3)

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 10
		@10
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

	////gt INSTRUCTION
	@PongGame.moveBall$ret.11
	D=A
	@21
	0;JMP
	(PongGame.moveBall$ret.11)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@PongGame.moveBall$IF_TRUE4
	D;JNE

	////GOTO
	@PongGame.moveBall$IF_FALSE4
	0;JMP

	////LABEL
(PongGame.moveBall$IF_TRUE4)

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////LABEL
(PongGame.moveBall$IF_FALSE4)

	////LABEL
(PongGame.moveBall$IF_END3)

		////PUSH this 6
		@THIS
		D=M
		@6
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 2
		@2
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

		////POP this 6
		@THIS
		D=M
		@6
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 6
		@THIS
		D=M
		@6
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Bat.setWidth
	D=A
	@R15
	M=D
	@PongGame.moveBall$ret.12
	D=A
	@54
	0;JMP

(PongGame.moveBall$ret.12)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH this 4
		@THIS
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP this 4
		@THIS
		D=M
		@4
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH constant 22
		@22
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 7
		@7
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Output.moveCursor
	D=A
	@R15
	M=D
	@PongGame.moveBall$ret.13
	D=A
	@54
	0;JMP

(PongGame.moveBall$ret.13)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH this 4
		@THIS
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.printInt
	D=A
	@R15
	M=D
	@PongGame.moveBall$ret.14
	D=A
	@54
	0;JMP

(PongGame.moveBall$ret.14)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(PongGame.moveBall$IF_FALSE2)

	////LABEL
(PongGame.moveBall$IF_FALSE1)

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Ball.bounce
	D=A
	@R15
	M=D
	@PongGame.moveBall$ret.15
	D=A
	@54
	0;JMP

(PongGame.moveBall$ret.15)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(PongGame.moveBall$IF_FALSE0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP


////FUNCTION
(Screen.init)
@SP
M=M+1
A=M-1
M=0

		////PUSH constant 16384
		@16384
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 1
		@SP
		AM=M-1
		D=M
		@Screen.1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Screen.2
		M=D

		////PUSH constant 17
		@17
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Array.new
	D=A
	@R15
	M=D
	@Screen.init$ret.0
	D=A
	@54
	0;JMP

(Screen.init$ret.0)

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Screen.0
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH static 0
		@Screen.0
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

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

	////LABEL
(Screen.init$WHILE_EXP0)

		////PUSH local 0
		@LCL
		A=M
		D=M
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

	////lt INSTRUCTION
	@Screen.init$ret.1
	D=A
	@36
	0;JMP
	(Screen.init$ret.1)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.init$WHILE_END0
	D;JNE

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 0
		@Screen.0
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

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////PUSH static 0
		@Screen.0
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////PUSH static 0
		@Screen.0
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
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

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

	////GOTO
	@Screen.init$WHILE_EXP0
	0;JMP

	////LABEL
(Screen.init$WHILE_END0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Screen.clearScreen)
@SP
M=M+1
A=M-1
M=0

	////LABEL
(Screen.clearScreen$WHILE_EXP0)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 8192
		@8192
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Screen.clearScreen$ret.0
	D=A
	@36
	0;JMP
	(Screen.clearScreen$ret.0)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.clearScreen$WHILE_END0
	D;JNE

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 1
		@Screen.1
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

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////GOTO
	@Screen.clearScreen$WHILE_EXP0
	0;JMP

	////LABEL
(Screen.clearScreen$WHILE_END0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Screen.updateLocation)

		////PUSH static 2
		@Screen.2
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.updateLocation$IF_TRUE0
	D;JNE

	////GOTO
	@Screen.updateLocation$IF_FALSE0
	0;JMP

	////LABEL
(Screen.updateLocation$IF_TRUE0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 1
		@Screen.1
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

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 1
		@Screen.1
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
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

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

	////GOTO
	@Screen.updateLocation$IF_END0
	0;JMP

	////LABEL
(Screen.updateLocation$IF_FALSE0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 1
		@Screen.1
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

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 1
		@Screen.1
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

	////LABEL
(Screen.updateLocation$IF_END0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Screen.setColor)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Screen.2
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Screen.drawPixel)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Screen.drawPixel$ret.0
	D=A
	@36
	0;JMP
	(Screen.drawPixel$ret.0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 511
		@511
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Screen.drawPixel$ret.1
	D=A
	@21
	0;JMP
	(Screen.drawPixel$ret.1)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Screen.drawPixel$ret.2
	D=A
	@36
	0;JMP
	(Screen.drawPixel$ret.2)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 255
		@255
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Screen.drawPixel$ret.3
	D=A
	@21
	0;JMP
	(Screen.drawPixel$ret.3)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.drawPixel$IF_TRUE0
	D;JNE

	////GOTO
	@Screen.drawPixel$IF_FALSE0
	0;JMP

	////LABEL
(Screen.drawPixel$IF_TRUE0)

		////PUSH constant 7
		@7
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@Screen.drawPixel$ret.4
	D=A
	@54
	0;JMP

(Screen.drawPixel$ret.4)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Screen.drawPixel$IF_FALSE0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.divide
	D=A
	@R15
	M=D
	@Screen.drawPixel$ret.5
	D=A
	@54
	0;JMP

(Screen.drawPixel$ret.5)

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Screen.drawPixel$ret.6
	D=A
	@54
	0;JMP

(Screen.drawPixel$ret.6)

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Screen.drawPixel$ret.7
	D=A
	@54
	0;JMP

(Screen.drawPixel$ret.7)

		////PUSH local 0
		@LCL
		A=M
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

		////POP local 2
		@LCL
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

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 0
		@Screen.0
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Screen.updateLocation
	D=A
	@R15
	M=D
	@Screen.drawPixel$ret.8
	D=A
	@54
	0;JMP

(Screen.drawPixel$ret.8)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Screen.drawConditional)

		////PUSH argument 2
		@ARG
		D=M
		@2
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
	@Screen.drawConditional$IF_TRUE0
	D;JNE

	////GOTO
	@Screen.drawConditional$IF_FALSE0
	0;JMP

	////LABEL
(Screen.drawConditional$IF_TRUE0)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Screen.drawPixel
	D=A
	@R15
	M=D
	@Screen.drawConditional$ret.0
	D=A
	@54
	0;JMP

(Screen.drawConditional$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////GOTO
	@Screen.drawConditional$IF_END0
	0;JMP

	////LABEL
(Screen.drawConditional$IF_FALSE0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Screen.drawPixel
	D=A
	@R15
	M=D
	@Screen.drawConditional$ret.1
	D=A
	@54
	0;JMP

(Screen.drawConditional$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Screen.drawConditional$IF_END0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Screen.drawLine)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Screen.drawLine$ret.0
	D=A
	@36
	0;JMP
	(Screen.drawLine$ret.0)

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 511
		@511
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Screen.drawLine$ret.1
	D=A
	@21
	0;JMP
	(Screen.drawLine$ret.1)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Screen.drawLine$ret.2
	D=A
	@36
	0;JMP
	(Screen.drawLine$ret.2)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////PUSH argument 3
		@ARG
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 255
		@255
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Screen.drawLine$ret.3
	D=A
	@21
	0;JMP
	(Screen.drawLine$ret.3)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.drawLine$IF_TRUE0
	D;JNE

	////GOTO
	@Screen.drawLine$IF_FALSE0
	0;JMP

	////LABEL
(Screen.drawLine$IF_TRUE0)

		////PUSH constant 8
		@8
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@Screen.drawLine$ret.4
	D=A
	@54
	0;JMP

(Screen.drawLine$ret.4)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Screen.drawLine$IF_FALSE0)

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 0
		@ARG
		A=M
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

	////CALL
	@1
	D=A
	@R14
	M=D
	@Math.abs
	D=A
	@R15
	M=D
	@Screen.drawLine$ret.5
	D=A
	@54
	0;JMP

(Screen.drawLine$ret.5)

		////POP local 3
		@LCL
		D=M
		@3
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH argument 3
		@ARG
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
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

	////CALL
	@1
	D=A
	@R14
	M=D
	@Math.abs
	D=A
	@R15
	M=D
	@Screen.drawLine$ret.6
	D=A
	@54
	0;JMP

(Screen.drawLine$ret.6)

		////POP local 2
		@LCL
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

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Screen.drawLine$ret.7
	D=A
	@36
	0;JMP
	(Screen.drawLine$ret.7)

		////POP local 6
		@LCL
		D=M
		@6
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 6
		@LCL
		D=M
		@6
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 3
		@ARG
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Screen.drawLine$ret.8
	D=A
	@36
	0;JMP
	(Screen.drawLine$ret.8)

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

		////PUSH local 6
		@LCL
		D=M
		@6
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Screen.drawLine$ret.9
	D=A
	@36
	0;JMP
	(Screen.drawLine$ret.9)

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.drawLine$IF_TRUE1
	D;JNE

	////GOTO
	@Screen.drawLine$IF_FALSE1
	0;JMP

	////LABEL
(Screen.drawLine$IF_TRUE1)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 4
		@LCL
		D=M
		@4
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP argument 0
		@SP
		AM=M-1
		D=M
		@ARG
		A=M
		M=D

		////PUSH local 4
		@LCL
		D=M
		@4
		A=D+A
		D=M
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

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 4
		@LCL
		D=M
		@4
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH argument 3
		@ARG
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP argument 1
		@SP
		AM=M-1
		D=M
		@ARG
		A=M+1
		M=D

		////PUSH local 4
		@LCL
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP argument 3
		@ARG
		D=M
		@3
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
(Screen.drawLine$IF_FALSE1)

		////PUSH local 6
		@LCL
		D=M
		@6
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
	@Screen.drawLine$IF_TRUE2
	D;JNE

	////GOTO
	@Screen.drawLine$IF_FALSE2
	0;JMP

	////LABEL
(Screen.drawLine$IF_TRUE2)

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 4
		@LCL
		D=M
		@4
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 3
		@LCL
		D=M
		@3
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 4
		@LCL
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 2
		@LCL
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

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH argument 3
		@ARG
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 8
		@LCL
		D=M
		@8
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
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Screen.drawLine$ret.10
	D=A
	@21
	0;JMP
	(Screen.drawLine$ret.10)

		////POP local 7
		@LCL
		D=M
		@7
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

	////GOTO
	@Screen.drawLine$IF_END2
	0;JMP

	////LABEL
(Screen.drawLine$IF_FALSE2)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 8
		@LCL
		D=M
		@8
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 3
		@ARG
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Screen.drawLine$ret.11
	D=A
	@21
	0;JMP
	(Screen.drawLine$ret.11)

		////POP local 7
		@LCL
		D=M
		@7
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
(Screen.drawLine$IF_END2)

		////PUSH constant 2
		@2
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Screen.drawLine$ret.12
	D=A
	@54
	0;JMP

(Screen.drawLine$ret.12)

		////PUSH local 3
		@LCL
		D=M
		@3
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

		////POP local 5
		@LCL
		D=M
		@5
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH constant 2
		@2
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Screen.drawLine$ret.13
	D=A
	@54
	0;JMP

(Screen.drawLine$ret.13)

		////POP local 9
		@LCL
		D=M
		@9
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH constant 2
		@2
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 3
		@LCL
		D=M
		@3
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Screen.drawLine$ret.14
	D=A
	@54
	0;JMP

(Screen.drawLine$ret.14)

		////POP local 10
		@LCL
		D=M
		@10
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 6
		@LCL
		D=M
		@6
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@3
	D=A
	@R14
	M=D
	@Screen.drawConditional
	D=A
	@R15
	M=D
	@Screen.drawLine$ret.15
	D=A
	@54
	0;JMP

(Screen.drawLine$ret.15)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Screen.drawLine$WHILE_EXP0)

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 8
		@LCL
		D=M
		@8
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Screen.drawLine$ret.16
	D=A
	@36
	0;JMP
	(Screen.drawLine$ret.16)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.drawLine$WHILE_END0
	D;JNE

		////PUSH local 5
		@LCL
		D=M
		@5
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Screen.drawLine$ret.17
	D=A
	@36
	0;JMP
	(Screen.drawLine$ret.17)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.drawLine$IF_TRUE3
	D;JNE

	////GOTO
	@Screen.drawLine$IF_FALSE3
	0;JMP

	////LABEL
(Screen.drawLine$IF_TRUE3)

		////PUSH local 5
		@LCL
		D=M
		@5
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 9
		@LCL
		D=M
		@9
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

		////POP local 5
		@LCL
		D=M
		@5
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

	////GOTO
	@Screen.drawLine$IF_END3
	0;JMP

	////LABEL
(Screen.drawLine$IF_FALSE3)

		////PUSH local 5
		@LCL
		D=M
		@5
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 10
		@LCL
		D=M
		@10
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

		////POP local 5
		@LCL
		D=M
		@5
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 7
		@LCL
		D=M
		@7
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
	@Screen.drawLine$IF_TRUE4
	D;JNE

	////GOTO
	@Screen.drawLine$IF_FALSE4
	0;JMP

	////LABEL
(Screen.drawLine$IF_TRUE4)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////GOTO
	@Screen.drawLine$IF_END4
	0;JMP

	////LABEL
(Screen.drawLine$IF_FALSE4)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////LABEL
(Screen.drawLine$IF_END4)

	////LABEL
(Screen.drawLine$IF_END3)

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 6
		@LCL
		D=M
		@6
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@3
	D=A
	@R14
	M=D
	@Screen.drawConditional
	D=A
	@R15
	M=D
	@Screen.drawLine$ret.18
	D=A
	@54
	0;JMP

(Screen.drawLine$ret.18)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////GOTO
	@Screen.drawLine$WHILE_EXP0
	0;JMP

	////LABEL
(Screen.drawLine$WHILE_END0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Screen.drawRectangle)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Screen.drawRectangle$ret.0
	D=A
	@21
	0;JMP
	(Screen.drawRectangle$ret.0)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 3
		@ARG
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Screen.drawRectangle$ret.1
	D=A
	@21
	0;JMP
	(Screen.drawRectangle$ret.1)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Screen.drawRectangle$ret.2
	D=A
	@36
	0;JMP
	(Screen.drawRectangle$ret.2)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 511
		@511
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Screen.drawRectangle$ret.3
	D=A
	@21
	0;JMP
	(Screen.drawRectangle$ret.3)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Screen.drawRectangle$ret.4
	D=A
	@36
	0;JMP
	(Screen.drawRectangle$ret.4)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////PUSH argument 3
		@ARG
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 255
		@255
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Screen.drawRectangle$ret.5
	D=A
	@21
	0;JMP
	(Screen.drawRectangle$ret.5)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.drawRectangle$IF_TRUE0
	D;JNE

	////GOTO
	@Screen.drawRectangle$IF_FALSE0
	0;JMP

	////LABEL
(Screen.drawRectangle$IF_TRUE0)

		////PUSH constant 9
		@9
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@Screen.drawRectangle$ret.6
	D=A
	@54
	0;JMP

(Screen.drawRectangle$ret.6)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Screen.drawRectangle$IF_FALSE0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.divide
	D=A
	@R15
	M=D
	@Screen.drawRectangle$ret.7
	D=A
	@54
	0;JMP

(Screen.drawRectangle$ret.7)

		////POP local 3
		@LCL
		D=M
		@3
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
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Screen.drawRectangle$ret.8
	D=A
	@54
	0;JMP

(Screen.drawRectangle$ret.8)

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////POP local 7
		@LCL
		D=M
		@7
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.divide
	D=A
	@R15
	M=D
	@Screen.drawRectangle$ret.9
	D=A
	@54
	0;JMP

(Screen.drawRectangle$ret.9)

		////POP local 4
		@LCL
		D=M
		@4
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 4
		@LCL
		D=M
		@4
		A=D+A
		D=M
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Screen.drawRectangle$ret.10
	D=A
	@54
	0;JMP

(Screen.drawRectangle$ret.10)

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////POP local 8
		@LCL
		D=M
		@8
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 7
		@LCL
		D=M
		@7
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 0
		@Screen.0
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

		////POP local 6
		@LCL
		D=M
		@6
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 8
		@LCL
		D=M
		@8
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////PUSH static 0
		@Screen.0
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////POP local 5
		@LCL
		D=M
		@5
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Screen.drawRectangle$ret.11
	D=A
	@54
	0;JMP

(Screen.drawRectangle$ret.11)

		////PUSH local 3
		@LCL
		D=M
		@3
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
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH local 4
		@LCL
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 3
		@LCL
		D=M
		@3
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

		////POP local 2
		@LCL
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

	////LABEL
(Screen.drawRectangle$WHILE_EXP0)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 3
		@ARG
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Screen.drawRectangle$ret.12
	D=A
	@21
	0;JMP
	(Screen.drawRectangle$ret.12)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.drawRectangle$WHILE_END0
	D;JNE

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
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

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////eq INSTRUCTION
	@Screen.drawRectangle$ret.13
	D=A
	@6
	0;JMP
	(Screen.drawRectangle$ret.13)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.drawRectangle$IF_TRUE1
	D;JNE

	////GOTO
	@Screen.drawRectangle$IF_FALSE1
	0;JMP

	////LABEL
(Screen.drawRectangle$IF_TRUE1)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 5
		@LCL
		D=M
		@5
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 6
		@LCL
		D=M
		@6
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

	////CALL
	@2
	D=A
	@R14
	M=D
	@Screen.updateLocation
	D=A
	@R15
	M=D
	@Screen.drawRectangle$ret.14
	D=A
	@54
	0;JMP

(Screen.drawRectangle$ret.14)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////GOTO
	@Screen.drawRectangle$IF_END1
	0;JMP

	////LABEL
(Screen.drawRectangle$IF_FALSE1)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 6
		@LCL
		D=M
		@6
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Screen.updateLocation
	D=A
	@R15
	M=D
	@Screen.drawRectangle$ret.15
	D=A
	@54
	0;JMP

(Screen.drawRectangle$ret.15)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////LABEL
(Screen.drawRectangle$WHILE_EXP1)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Screen.drawRectangle$ret.16
	D=A
	@36
	0;JMP
	(Screen.drawRectangle$ret.16)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.drawRectangle$WHILE_END1
	D;JNE

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

	////CALL
	@2
	D=A
	@R14
	M=D
	@Screen.updateLocation
	D=A
	@R15
	M=D
	@Screen.drawRectangle$ret.17
	D=A
	@54
	0;JMP

(Screen.drawRectangle$ret.17)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////GOTO
	@Screen.drawRectangle$WHILE_EXP1
	0;JMP

	////LABEL
(Screen.drawRectangle$WHILE_END1)

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 5
		@LCL
		D=M
		@5
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Screen.updateLocation
	D=A
	@R15
	M=D
	@Screen.drawRectangle$ret.18
	D=A
	@54
	0;JMP

(Screen.drawRectangle$ret.18)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Screen.drawRectangle$IF_END1)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP argument 1
		@SP
		AM=M-1
		D=M
		@ARG
		A=M+1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 32
		@32
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

		////PUSH local 2
		@LCL
		D=M
		@2
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

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////GOTO
	@Screen.drawRectangle$WHILE_EXP0
	0;JMP

	////LABEL
(Screen.drawRectangle$WHILE_END0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Screen.drawHorizontal)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.min
	D=A
	@R15
	M=D
	@Screen.drawHorizontal$ret.0
	D=A
	@54
	0;JMP

(Screen.drawHorizontal$ret.0)

		////POP local 7
		@LCL
		D=M
		@7
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.max
	D=A
	@R15
	M=D
	@Screen.drawHorizontal$ret.1
	D=A
	@54
	0;JMP

(Screen.drawHorizontal$ret.1)

		////POP local 8
		@LCL
		D=M
		@8
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
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

	////gt INSTRUCTION
	@Screen.drawHorizontal$ret.2
	D=A
	@21
	0;JMP
	(Screen.drawHorizontal$ret.2)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 256
		@256
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Screen.drawHorizontal$ret.3
	D=A
	@36
	0;JMP
	(Screen.drawHorizontal$ret.3)

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

		////PUSH local 7
		@LCL
		D=M
		@7
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 512
		@512
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Screen.drawHorizontal$ret.4
	D=A
	@36
	0;JMP
	(Screen.drawHorizontal$ret.4)

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

		////PUSH local 8
		@LCL
		D=M
		@8
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

	////gt INSTRUCTION
	@Screen.drawHorizontal$ret.5
	D=A
	@21
	0;JMP
	(Screen.drawHorizontal$ret.5)

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.drawHorizontal$IF_TRUE0
	D;JNE

	////GOTO
	@Screen.drawHorizontal$IF_FALSE0
	0;JMP

	////LABEL
(Screen.drawHorizontal$IF_TRUE0)

		////PUSH local 7
		@LCL
		D=M
		@7
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.max
	D=A
	@R15
	M=D
	@Screen.drawHorizontal$ret.6
	D=A
	@54
	0;JMP

(Screen.drawHorizontal$ret.6)

		////POP local 7
		@LCL
		D=M
		@7
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 8
		@LCL
		D=M
		@8
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 511
		@511
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.min
	D=A
	@R15
	M=D
	@Screen.drawHorizontal$ret.7
	D=A
	@54
	0;JMP

(Screen.drawHorizontal$ret.7)

		////POP local 8
		@LCL
		D=M
		@8
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 7
		@LCL
		D=M
		@7
		A=D+A
		D=M
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.divide
	D=A
	@R15
	M=D
	@Screen.drawHorizontal$ret.8
	D=A
	@54
	0;JMP

(Screen.drawHorizontal$ret.8)

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH local 7
		@LCL
		D=M
		@7
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Screen.drawHorizontal$ret.9
	D=A
	@54
	0;JMP

(Screen.drawHorizontal$ret.9)

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////POP local 9
		@LCL
		D=M
		@9
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 8
		@LCL
		D=M
		@8
		A=D+A
		D=M
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.divide
	D=A
	@R15
	M=D
	@Screen.drawHorizontal$ret.10
	D=A
	@54
	0;JMP

(Screen.drawHorizontal$ret.10)

		////POP local 2
		@LCL
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

		////PUSH local 8
		@LCL
		D=M
		@8
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Screen.drawHorizontal$ret.11
	D=A
	@54
	0;JMP

(Screen.drawHorizontal$ret.11)

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////POP local 10
		@LCL
		D=M
		@10
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 9
		@LCL
		D=M
		@9
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 0
		@Screen.0
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

		////POP local 5
		@LCL
		D=M
		@5
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 10
		@LCL
		D=M
		@10
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////PUSH static 0
		@Screen.0
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////POP local 4
		@LCL
		D=M
		@4
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
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Screen.drawHorizontal$ret.12
	D=A
	@54
	0;JMP

(Screen.drawHorizontal$ret.12)

		////PUSH local 1
		@LCL
		A=M+1
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
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
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

		////POP local 6
		@LCL
		D=M
		@6
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 6
		@LCL
		D=M
		@6
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

		////POP local 3
		@LCL
		D=M
		@3
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 6
		@LCL
		D=M
		@6
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////eq INSTRUCTION
	@Screen.drawHorizontal$ret.13
	D=A
	@6
	0;JMP
	(Screen.drawHorizontal$ret.13)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.drawHorizontal$IF_TRUE1
	D;JNE

	////GOTO
	@Screen.drawHorizontal$IF_FALSE1
	0;JMP

	////LABEL
(Screen.drawHorizontal$IF_TRUE1)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 4
		@LCL
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 5
		@LCL
		D=M
		@5
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

	////CALL
	@2
	D=A
	@R14
	M=D
	@Screen.updateLocation
	D=A
	@R15
	M=D
	@Screen.drawHorizontal$ret.14
	D=A
	@54
	0;JMP

(Screen.drawHorizontal$ret.14)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////GOTO
	@Screen.drawHorizontal$IF_END1
	0;JMP

	////LABEL
(Screen.drawHorizontal$IF_FALSE1)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 5
		@LCL
		D=M
		@5
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Screen.updateLocation
	D=A
	@R15
	M=D
	@Screen.drawHorizontal$ret.15
	D=A
	@54
	0;JMP

(Screen.drawHorizontal$ret.15)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////LABEL
(Screen.drawHorizontal$WHILE_EXP0)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Screen.drawHorizontal$ret.16
	D=A
	@36
	0;JMP
	(Screen.drawHorizontal$ret.16)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.drawHorizontal$WHILE_END0
	D;JNE

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

	////CALL
	@2
	D=A
	@R14
	M=D
	@Screen.updateLocation
	D=A
	@R15
	M=D
	@Screen.drawHorizontal$ret.17
	D=A
	@54
	0;JMP

(Screen.drawHorizontal$ret.17)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////GOTO
	@Screen.drawHorizontal$WHILE_EXP0
	0;JMP

	////LABEL
(Screen.drawHorizontal$WHILE_END0)

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 4
		@LCL
		D=M
		@4
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Screen.updateLocation
	D=A
	@R15
	M=D
	@Screen.drawHorizontal$ret.18
	D=A
	@54
	0;JMP

(Screen.drawHorizontal$ret.18)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Screen.drawHorizontal$IF_END1)

	////LABEL
(Screen.drawHorizontal$IF_FALSE0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Screen.drawSymetric)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 3
		@ARG
		D=M
		@3
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

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
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

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
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

	////CALL
	@3
	D=A
	@R14
	M=D
	@Screen.drawHorizontal
	D=A
	@R15
	M=D
	@Screen.drawSymetric$ret.0
	D=A
	@54
	0;JMP

(Screen.drawSymetric$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 3
		@ARG
		D=M
		@3
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

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
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

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
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

	////CALL
	@3
	D=A
	@R14
	M=D
	@Screen.drawHorizontal
	D=A
	@R15
	M=D
	@Screen.drawSymetric$ret.1
	D=A
	@54
	0;JMP

(Screen.drawSymetric$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
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

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 3
		@ARG
		D=M
		@3
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

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 3
		@ARG
		D=M
		@3
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

	////CALL
	@3
	D=A
	@R14
	M=D
	@Screen.drawHorizontal
	D=A
	@R15
	M=D
	@Screen.drawSymetric$ret.2
	D=A
	@54
	0;JMP

(Screen.drawSymetric$ret.2)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
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

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 3
		@ARG
		D=M
		@3
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

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 3
		@ARG
		D=M
		@3
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

	////CALL
	@3
	D=A
	@R14
	M=D
	@Screen.drawHorizontal
	D=A
	@R15
	M=D
	@Screen.drawSymetric$ret.3
	D=A
	@54
	0;JMP

(Screen.drawSymetric$ret.3)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Screen.drawCircle)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Screen.drawCircle$ret.0
	D=A
	@36
	0;JMP
	(Screen.drawCircle$ret.0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 511
		@511
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Screen.drawCircle$ret.1
	D=A
	@21
	0;JMP
	(Screen.drawCircle$ret.1)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Screen.drawCircle$ret.2
	D=A
	@36
	0;JMP
	(Screen.drawCircle$ret.2)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 255
		@255
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Screen.drawCircle$ret.3
	D=A
	@21
	0;JMP
	(Screen.drawCircle$ret.3)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.drawCircle$IF_TRUE0
	D;JNE

	////GOTO
	@Screen.drawCircle$IF_FALSE0
	0;JMP

	////LABEL
(Screen.drawCircle$IF_TRUE0)

		////PUSH constant 12
		@12
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@Screen.drawCircle$ret.4
	D=A
	@54
	0;JMP

(Screen.drawCircle$ret.4)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Screen.drawCircle$IF_FALSE0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
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

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Screen.drawCircle$ret.5
	D=A
	@36
	0;JMP
	(Screen.drawCircle$ret.5)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
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

		////PUSH constant 511
		@511
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Screen.drawCircle$ret.6
	D=A
	@21
	0;JMP
	(Screen.drawCircle$ret.6)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
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

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Screen.drawCircle$ret.7
	D=A
	@36
	0;JMP
	(Screen.drawCircle$ret.7)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 2
		@ARG
		D=M
		@2
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

		////PUSH constant 255
		@255
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Screen.drawCircle$ret.8
	D=A
	@21
	0;JMP
	(Screen.drawCircle$ret.8)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.drawCircle$IF_TRUE1
	D;JNE

	////GOTO
	@Screen.drawCircle$IF_FALSE1
	0;JMP

	////LABEL
(Screen.drawCircle$IF_TRUE1)

		////PUSH constant 13
		@13
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@Screen.drawCircle$ret.9
	D=A
	@54
	0;JMP

(Screen.drawCircle$ret.9)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Screen.drawCircle$IF_FALSE1)

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////PUSH argument 2
		@ARG
		D=M
		@2
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

		////POP local 2
		@LCL
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

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@4
	D=A
	@R14
	M=D
	@Screen.drawSymetric
	D=A
	@R15
	M=D
	@Screen.drawCircle$ret.10
	D=A
	@54
	0;JMP

(Screen.drawCircle$ret.10)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Screen.drawCircle$WHILE_EXP0)

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@Screen.drawCircle$ret.11
	D=A
	@21
	0;JMP
	(Screen.drawCircle$ret.11)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.drawCircle$WHILE_END0
	D;JNE

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Screen.drawCircle$ret.12
	D=A
	@36
	0;JMP
	(Screen.drawCircle$ret.12)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Screen.drawCircle$IF_TRUE2
	D;JNE

	////GOTO
	@Screen.drawCircle$IF_FALSE2
	0;JMP

	////LABEL
(Screen.drawCircle$IF_TRUE2)

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 2
		@2
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Screen.drawCircle$ret.13
	D=A
	@54
	0;JMP

(Screen.drawCircle$ret.13)

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////PUSH constant 3
		@3
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

		////POP local 2
		@LCL
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

	////GOTO
	@Screen.drawCircle$IF_END2
	0;JMP

	////LABEL
(Screen.drawCircle$IF_FALSE2)

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 2
		@2
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Screen.drawCircle$ret.14
	D=A
	@54
	0;JMP

(Screen.drawCircle$ret.14)

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////PUSH constant 5
		@5
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

		////POP local 2
		@LCL
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

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

	////LABEL
(Screen.drawCircle$IF_END2)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@4
	D=A
	@R14
	M=D
	@Screen.drawSymetric
	D=A
	@R15
	M=D
	@Screen.drawCircle$ret.15
	D=A
	@54
	0;JMP

(Screen.drawCircle$ret.15)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////GOTO
	@Screen.drawCircle$WHILE_EXP0
	0;JMP

	////LABEL
(Screen.drawCircle$WHILE_END0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP


////FUNCTION
(String.new)

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Memory.alloc
	D=A
	@R15
	M=D
	@String.new$ret.0
	D=A
	@54
	0;JMP

(String.new$ret.0)

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@String.new$ret.1
	D=A
	@36
	0;JMP
	(String.new$ret.1)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@String.new$IF_TRUE0
	D;JNE

	////GOTO
	@String.new$IF_FALSE0
	0;JMP

	////LABEL
(String.new$IF_TRUE0)

		////PUSH constant 14
		@14
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@String.new$ret.2
	D=A
	@54
	0;JMP

(String.new$ret.2)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(String.new$IF_FALSE0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////gt INSTRUCTION
	@String.new$ret.3
	D=A
	@21
	0;JMP
	(String.new$ret.3)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@String.new$IF_TRUE1
	D;JNE

	////GOTO
	@String.new$IF_FALSE1
	0;JMP

	////LABEL
(String.new$IF_TRUE1)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Array.new
	D=A
	@R15
	M=D
	@String.new$ret.4
	D=A
	@54
	0;JMP

(String.new$ret.4)

		////POP this 1
		@SP
		AM=M-1
		D=M
		@THIS
		A=M+1
		M=D

	////LABEL
(String.new$IF_FALSE1)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP this 0
		@SP
		AM=M-1
		D=M
		@THIS
		A=M
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP this 2
		@THIS
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

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(String.dispose)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////gt INSTRUCTION
	@String.dispose$ret.0
	D=A
	@21
	0;JMP
	(String.dispose$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@String.dispose$IF_TRUE0
	D;JNE

	////GOTO
	@String.dispose$IF_FALSE0
	0;JMP

	////LABEL
(String.dispose$IF_TRUE0)

		////PUSH this 1
		@THIS
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Array.dispose
	D=A
	@R15
	M=D
	@String.dispose$ret.1
	D=A
	@54
	0;JMP

(String.dispose$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(String.dispose$IF_FALSE0)

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Memory.deAlloc
	D=A
	@R15
	M=D
	@String.dispose$ret.2
	D=A
	@54
	0;JMP

(String.dispose$ret.2)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(String.length)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(String.charAt)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@String.charAt$ret.0
	D=A
	@36
	0;JMP
	(String.charAt$ret.0)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@String.charAt$ret.1
	D=A
	@21
	0;JMP
	(String.charAt$ret.1)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@String.charAt$ret.2
	D=A
	@6
	0;JMP
	(String.charAt$ret.2)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@String.charAt$IF_TRUE0
	D;JNE

	////GOTO
	@String.charAt$IF_FALSE0
	0;JMP

	////LABEL
(String.charAt$IF_TRUE0)

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@String.charAt$ret.3
	D=A
	@54
	0;JMP

(String.charAt$ret.3)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(String.charAt$IF_FALSE0)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 1
		@THIS
		A=M+1
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(String.setCharAt)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@String.setCharAt$ret.0
	D=A
	@36
	0;JMP
	(String.setCharAt$ret.0)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@String.setCharAt$ret.1
	D=A
	@21
	0;JMP
	(String.setCharAt$ret.1)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@String.setCharAt$ret.2
	D=A
	@6
	0;JMP
	(String.setCharAt$ret.2)

	////or INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D|M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@String.setCharAt$IF_TRUE0
	D;JNE

	////GOTO
	@String.setCharAt$IF_FALSE0
	0;JMP

	////LABEL
(String.setCharAt$IF_TRUE0)

		////PUSH constant 16
		@16
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@String.setCharAt$ret.3
	D=A
	@54
	0;JMP

(String.setCharAt$ret.3)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(String.setCharAt$IF_FALSE0)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 1
		@THIS
		A=M+1
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

		////PUSH argument 2
		@ARG
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(String.appendChar)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@String.appendChar$ret.0
	D=A
	@6
	0;JMP
	(String.appendChar$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@String.appendChar$IF_TRUE0
	D;JNE

	////GOTO
	@String.appendChar$IF_FALSE0
	0;JMP

	////LABEL
(String.appendChar$IF_TRUE0)

		////PUSH constant 17
		@17
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@String.appendChar$ret.1
	D=A
	@54
	0;JMP

(String.appendChar$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(String.appendChar$IF_FALSE0)

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 1
		@THIS
		A=M+1
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
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP this 2
		@THIS
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

		////PUSH pointer 0
		@3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(String.eraseLastChar)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////eq INSTRUCTION
	@String.eraseLastChar$ret.0
	D=A
	@6
	0;JMP
	(String.eraseLastChar$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@String.eraseLastChar$IF_TRUE0
	D;JNE

	////GOTO
	@String.eraseLastChar$IF_FALSE0
	0;JMP

	////LABEL
(String.eraseLastChar$IF_TRUE0)

		////PUSH constant 18
		@18
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@String.eraseLastChar$ret.1
	D=A
	@54
	0;JMP

(String.eraseLastChar$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(String.eraseLastChar$IF_FALSE0)

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////POP this 2
		@THIS
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

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(String.intValue)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////eq INSTRUCTION
	@String.intValue$ret.0
	D=A
	@6
	0;JMP
	(String.intValue$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@String.intValue$IF_TRUE0
	D;JNE

	////GOTO
	@String.intValue$IF_FALSE0
	0;JMP

	////LABEL
(String.intValue$IF_TRUE0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

	////LABEL
(String.intValue$IF_FALSE0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

		////POP local 3
		@LCL
		D=M
		@3
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH this 1
		@THIS
		A=M+1
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
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

	////eq INSTRUCTION
	@String.intValue$ret.1
	D=A
	@6
	0;JMP
	(String.intValue$ret.1)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@String.intValue$IF_TRUE1
	D;JNE

	////GOTO
	@String.intValue$IF_FALSE1
	0;JMP

	////LABEL
(String.intValue$IF_TRUE1)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

		////POP local 4
		@LCL
		D=M
		@4
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////LABEL
(String.intValue$IF_FALSE1)

	////LABEL
(String.intValue$WHILE_EXP0)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@String.intValue$ret.2
	D=A
	@36
	0;JMP
	(String.intValue$ret.2)

		////PUSH local 3
		@LCL
		D=M
		@3
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@String.intValue$WHILE_END0
	D;JNE

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 1
		@THIS
		A=M+1
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 48
		@48
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

		////POP local 2
		@LCL
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

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@String.intValue$ret.3
	D=A
	@36
	0;JMP
	(String.intValue$ret.3)

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 9
		@9
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////gt INSTRUCTION
	@String.intValue$ret.4
	D=A
	@21
	0;JMP
	(String.intValue$ret.4)

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

		////POP local 3
		@LCL
		D=M
		@3
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH local 3
		@LCL
		D=M
		@3
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
	@String.intValue$IF_TRUE2
	D;JNE

	////GOTO
	@String.intValue$IF_FALSE2
	0;JMP

	////LABEL
(String.intValue$IF_TRUE2)

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 10
		@10
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@String.intValue$ret.5
	D=A
	@54
	0;JMP

(String.intValue$ret.5)

		////PUSH local 2
		@LCL
		D=M
		@2
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

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////LABEL
(String.intValue$IF_FALSE2)

	////GOTO
	@String.intValue$WHILE_EXP0
	0;JMP

	////LABEL
(String.intValue$WHILE_END0)

		////PUSH local 4
		@LCL
		D=M
		@4
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
	@String.intValue$IF_TRUE3
	D;JNE

	////GOTO
	@String.intValue$IF_FALSE3
	0;JMP

	////LABEL
(String.intValue$IF_TRUE3)

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

	////LABEL
(String.intValue$IF_FALSE3)

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(String.setInt)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP pointer 0
		@SP
		AM=M-1
		D=M
		@3
		M=D

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////eq INSTRUCTION
	@String.setInt$ret.0
	D=A
	@6
	0;JMP
	(String.setInt$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@String.setInt$IF_TRUE0
	D;JNE

	////GOTO
	@String.setInt$IF_FALSE0
	0;JMP

	////LABEL
(String.setInt$IF_TRUE0)

		////PUSH constant 19
		@19
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@String.setInt$ret.1
	D=A
	@54
	0;JMP

(String.setInt$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(String.setInt$IF_FALSE0)

		////PUSH constant 6
		@6
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Array.new
	D=A
	@R15
	M=D
	@String.setInt$ret.2
	D=A
	@54
	0;JMP

(String.setInt$ret.2)

		////POP local 2
		@LCL
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

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@String.setInt$ret.3
	D=A
	@36
	0;JMP
	(String.setInt$ret.3)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@String.setInt$IF_TRUE1
	D;JNE

	////GOTO
	@String.setInt$IF_FALSE1
	0;JMP

	////LABEL
(String.setInt$IF_TRUE1)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

		////POP local 3
		@LCL
		D=M
		@3
		D=D+A
		@R15
		M=D

		@SP
		AM=M-1
		D=M
		@R15
		A=M
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

		////POP argument 1
		@SP
		AM=M-1
		D=M
		@ARG
		A=M+1
		M=D

	////LABEL
(String.setInt$IF_FALSE1)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

	////LABEL
(String.setInt$WHILE_EXP0)

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////gt INSTRUCTION
	@String.setInt$ret.4
	D=A
	@21
	0;JMP
	(String.setInt$ret.4)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@String.setInt$WHILE_END0
	D;JNE

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 10
		@10
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.divide
	D=A
	@R15
	M=D
	@String.setInt$ret.5
	D=A
	@54
	0;JMP

(String.setInt$ret.5)

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
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

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 10
		@10
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@String.setInt$ret.6
	D=A
	@54
	0;JMP

(String.setInt$ret.6)

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP argument 1
		@SP
		AM=M-1
		D=M
		@ARG
		A=M+1
		M=D

	////GOTO
	@String.setInt$WHILE_EXP0
	0;JMP

	////LABEL
(String.setInt$WHILE_END0)

		////PUSH local 3
		@LCL
		D=M
		@3
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
	@String.setInt$IF_TRUE2
	D;JNE

	////GOTO
	@String.setInt$IF_FALSE2
	0;JMP

	////LABEL
(String.setInt$IF_TRUE2)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 2
		@LCL
		D=M
		@2
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

		////PUSH constant 45
		@45
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////LABEL
(String.setInt$IF_FALSE2)

		////PUSH this 0
		@THIS
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@String.setInt$ret.7
	D=A
	@36
	0;JMP
	(String.setInt$ret.7)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@String.setInt$IF_TRUE3
	D;JNE

	////GOTO
	@String.setInt$IF_FALSE3
	0;JMP

	////LABEL
(String.setInt$IF_TRUE3)

		////PUSH constant 19
		@19
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@String.setInt$ret.8
	D=A
	@54
	0;JMP

(String.setInt$ret.8)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(String.setInt$IF_FALSE3)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////eq INSTRUCTION
	@String.setInt$ret.9
	D=A
	@6
	0;JMP
	(String.setInt$ret.9)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@String.setInt$IF_TRUE4
	D;JNE

	////GOTO
	@String.setInt$IF_FALSE4
	0;JMP

	////LABEL
(String.setInt$IF_TRUE4)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH this 1
		@THIS
		A=M+1
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

		////PUSH constant 48
		@48
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////POP this 2
		@THIS
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

	////GOTO
	@String.setInt$IF_END4
	0;JMP

	////LABEL
(String.setInt$IF_FALSE4)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP this 2
		@THIS
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

	////LABEL
(String.setInt$WHILE_EXP1)

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@String.setInt$ret.10
	D=A
	@36
	0;JMP
	(String.setInt$ret.10)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@String.setInt$WHILE_END1
	D;JNE

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 1
		@THIS
		A=M+1
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

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

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

		////PUSH local 2
		@LCL
		D=M
		@2
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

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH that 0
		@THAT
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP pointer 1
		@SP
		AM=M-1
		D=M
		@4
		M=D

		////PUSH temp 0
		@5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP that 0
		@SP
		AM=M-1
		D=M
		@THAT
		A=M
		M=D

		////PUSH this 2
		@THIS
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP this 2
		@THIS
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

	////GOTO
	@String.setInt$WHILE_EXP1
	0;JMP

	////LABEL
(String.setInt$WHILE_END1)

	////LABEL
(String.setInt$IF_END4)

		////PUSH local 2
		@LCL
		D=M
		@2
		A=D+A
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Array.dispose
	D=A
	@R15
	M=D
	@String.setInt$ret.11
	D=A
	@54
	0;JMP

(String.setInt$ret.11)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(String.newLine)

		////PUSH constant 128
		@128
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(String.backSpace)

		////PUSH constant 129
		@129
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(String.doubleQuote)

		////PUSH constant 34
		@34
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP


////FUNCTION
(Sys.init)

	////CALL
	@0
	D=A
	@R14
	M=D
	@Memory.init
	D=A
	@R15
	M=D
	@Sys.init$ret.0
	D=A
	@54
	0;JMP

(Sys.init$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Math.init
	D=A
	@R15
	M=D
	@Sys.init$ret.1
	D=A
	@54
	0;JMP

(Sys.init$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Screen.init
	D=A
	@R15
	M=D
	@Sys.init$ret.2
	D=A
	@54
	0;JMP

(Sys.init$ret.2)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Output.init
	D=A
	@R15
	M=D
	@Sys.init$ret.3
	D=A
	@54
	0;JMP

(Sys.init$ret.3)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Keyboard.init
	D=A
	@R15
	M=D
	@Sys.init$ret.4
	D=A
	@54
	0;JMP

(Sys.init$ret.4)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Main.main
	D=A
	@R15
	M=D
	@Sys.init$ret.5
	D=A
	@54
	0;JMP

(Sys.init$ret.5)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Sys.halt
	D=A
	@R15
	M=D
	@Sys.init$ret.6
	D=A
	@54
	0;JMP

(Sys.init$ret.6)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Sys.halt)

	////LABEL
(Sys.halt$WHILE_EXP0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Sys.halt$WHILE_END0
	D;JNE

	////GOTO
	@Sys.halt$WHILE_EXP0
	0;JMP

	////LABEL
(Sys.halt$WHILE_END0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Sys.wait)
@SP
M=M+1
A=M-1
M=0

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Sys.wait$ret.0
	D=A
	@36
	0;JMP
	(Sys.wait$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Sys.wait$IF_TRUE0
	D;JNE

	////GOTO
	@Sys.wait$IF_FALSE0
	0;JMP

	////LABEL
(Sys.wait$IF_TRUE0)

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.error
	D=A
	@R15
	M=D
	@Sys.wait$ret.1
	D=A
	@54
	0;JMP

(Sys.wait$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Sys.wait$IF_FALSE0)

	////LABEL
(Sys.wait$WHILE_EXP0)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////gt INSTRUCTION
	@Sys.wait$ret.2
	D=A
	@21
	0;JMP
	(Sys.wait$ret.2)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Sys.wait$WHILE_END0
	D;JNE

		////PUSH constant 50
		@50
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////LABEL
(Sys.wait$WHILE_EXP1)

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////gt INSTRUCTION
	@Sys.wait$ret.3
	D=A
	@21
	0;JMP
	(Sys.wait$ret.3)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Sys.wait$WHILE_END1
	D;JNE

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////GOTO
	@Sys.wait$WHILE_EXP1
	0;JMP

	////LABEL
(Sys.wait$WHILE_END1)

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

		////POP argument 0
		@SP
		AM=M-1
		D=M
		@ARG
		A=M
		M=D

	////GOTO
	@Sys.wait$WHILE_EXP0
	0;JMP

	////LABEL
(Sys.wait$WHILE_END0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Sys.error)

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@String.new
	D=A
	@R15
	M=D
	@Sys.error$ret.0
	D=A
	@54
	0;JMP

(Sys.error$ret.0)

		////PUSH constant 69
		@69
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@Sys.error$ret.1
	D=A
	@54
	0;JMP

(Sys.error$ret.1)

		////PUSH constant 82
		@82
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@Sys.error$ret.2
	D=A
	@54
	0;JMP

(Sys.error$ret.2)

		////PUSH constant 82
		@82
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@2
	D=A
	@R14
	M=D
	@String.appendChar
	D=A
	@R15
	M=D
	@Sys.error$ret.3
	D=A
	@54
	0;JMP

(Sys.error$ret.3)

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.printString
	D=A
	@R15
	M=D
	@Sys.error$ret.4
	D=A
	@54
	0;JMP

(Sys.error$ret.4)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.printInt
	D=A
	@R15
	M=D
	@Sys.error$ret.5
	D=A
	@54
	0;JMP

(Sys.error$ret.5)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Sys.halt
	D=A
	@R15
	M=D
	@Sys.error$ret.6
	D=A
	@54
	0;JMP

(Sys.error$ret.6)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP


