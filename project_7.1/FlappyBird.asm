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
(Bird.init)


		////PUSH constant 20
		@20
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Bird.0
		M=D


		////PUSH constant 35
		@35
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 1
		@SP
		AM=M-1
		D=M
		@Bird.1
		M=D


		////PUSH constant 50
		@50
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 6
		@SP
		AM=M-1
		D=M
		@Bird.6
		M=D


		////PUSH static 6
		@Bird.6
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Bird.2
		M=D


		////PUSH constant 9
		@9
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 3
		@SP
		AM=M-1
		D=M
		@Bird.3
		M=D


		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP static 4
		@SP
		AM=M-1
		D=M
		@Bird.4
		M=D


		////PUSH constant 8
		@8
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 5
		@SP
		AM=M-1
		D=M
		@Bird.5
		M=D


		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP static 7
		@SP
		AM=M-1
		D=M
		@Bird.7
		M=D



		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////POP static 8
		@SP
		AM=M-1
		D=M
		@Bird.8
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
(Bird.movement)
@SP
M=M+1
A=M-1
M=0


		////PUSH static 2
		@Bird.2
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 4
		@Bird.4
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


		////PUSH local 0
		@LCL
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
	@Hud.getHeight
	D=A
	@R15
	M=D
	@Bird.movement$ret.0
	D=A
	@54
	0;JMP

(Bird.movement$ret.0)

	////lt INSTRUCTION
	@Bird.movement$ret.1
	D=A
	@36
	0;JMP
	(Bird.movement$ret.1)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Bird.movement$BORDER
	D;JNE

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 3
		@Bird.3
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
	@Bird.movement$ret.2
	D=A
	@21
	0;JMP
	(Bird.movement$ret.2)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Bird.movement$GAME_OVER
	D;JNE

	////GOTO
	@Bird.movement$MOVE
	0;JMP


	////LABEL
(Bird.movement$BORDER)

	////CALL
	@0
	D=A
	@R14
	M=D
	@Hud.getHeight
	D=A
	@R15
	M=D
	@Bird.movement$ret.3
	D=A
	@54
	0;JMP

(Bird.movement$ret.3)

		////POP static 1
		@SP
		AM=M-1
		D=M
		@Bird.1
		M=D

	////GOTO
	@Bird.movement$END
	0;JMP


	////LABEL
(Bird.movement$GAME_OVER)

	////CALL
	@0
	D=A
	@R14
	M=D
	@Main.GameOver
	D=A
	@R15
	M=D
	@Bird.movement$ret.4
	D=A
	@54
	0;JMP

(Bird.movement$ret.4)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D


		////PUSH constant 200
		@200
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 3
		@Bird.3
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

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Bird.2
		M=D

	////GOTO
	@Bird.movement$END
	0;JMP


	////LABEL
(Bird.movement$MOVE)

		////PUSH local 0
		@LCL
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
		@Bird.2
		M=D

	////LABEL
(Bird.movement$END)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP


////FUNCTION
(Bird.setSpeed)

		////PUSH static 7
		@Bird.7
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Bird.setSpeed$SPACE_INPUT
	D;JNE

	////GOTO
	@Bird.setSpeed$NO_INPUT
	0;JMP

	////LABEL
(Bird.setSpeed$SPACE_INPUT)


		////PUSH static 8
		@Bird.8
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
	@Bird.setSpeed$ret.0
	D=A
	@6
	0;JMP
	(Bird.setSpeed$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Bird.setSpeed$APPLY_GRAVITY
	D;JNE


		////PUSH static 0
		@Bird.0
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 4
		@SP
		AM=M-1
		D=M
		@Bird.4
		M=D


		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP static 8
		@SP
		AM=M-1
		D=M
		@Bird.8
		M=D

	////GOTO
	@Bird.setSpeed$CONTINUE
	0;JMP

	////LABEL
(Bird.setSpeed$NO_INPUT)


		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////POP static 8
		@SP
		AM=M-1
		D=M
		@Bird.8
		M=D

	////LABEL
(Bird.setSpeed$APPLY_GRAVITY)


		////PUSH static 0
		@Bird.0
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

		////PUSH static 4
		@Bird.4
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 5
		@Bird.5
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
	@Math.max
	D=A
	@R15
	M=D
	@Bird.setSpeed$ret.1
	D=A
	@54
	0;JMP

(Bird.setSpeed$ret.1)

		////POP static 4
		@SP
		AM=M-1
		D=M
		@Bird.4
		M=D

	////LABEL
(Bird.setSpeed$CONTINUE)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP static 7
		@SP
		AM=M-1
		D=M
		@Bird.7
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
(Bird.draw)
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

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

	////CALL
	@1
	D=A
	@R14
	M=D
	@Screen.setColor
	D=A
	@R15
	M=D
	@Bird.draw$ret.0
	D=A
	@54
	0;JMP

(Bird.draw$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D


		////PUSH static 1
		@Bird.1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 3
		@Bird.3
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



		////PUSH static 4
		@Bird.4
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
	@Bird.draw$ret.1
	D=A
	@36
	0;JMP
	(Bird.draw$ret.1)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Bird.draw$GOING_DOWN
	D;JNE

	////LABEL
(Bird.draw$GOING_UP)

		////PUSH static 2
		@Bird.2
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

	////GOTO
	@Bird.draw$DRAW
	0;JMP

	////LABEL
(Bird.draw$GOING_DOWN)

		////PUSH static 2
		@Bird.2
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 3
		@Bird.3
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


	////LABEL
(Bird.draw$DRAW)


		////PUSH static 1
		@Bird.1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 2
		@Bird.2
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
	@Screen.drawLine
	D=A
	@R15
	M=D
	@Bird.draw$ret.2
	D=A
	@54
	0;JMP

(Bird.draw$ret.2)

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

		////PUSH local 1
		@LCL
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 1
		@Bird.1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 2
		@Bird.2
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 3
		@Bird.3
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
	@Screen.drawLine
	D=A
	@R15
	M=D
	@Bird.draw$ret.3
	D=A
	@54
	0;JMP

(Bird.draw$ret.3)

	////RETURN
	@95
	0;JMP

////FUNCTION
(Bird.erase)

	////RETURN
	@95
	0;JMP


////FUNCTION
(Bird.getVMax)

		////PUSH static 0
		@Bird.0
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Bird.getSpeed)

		////PUSH static 4
		@Bird.4
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Bird.getX)

		////PUSH static 1
		@Bird.1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Bird.getY)

		////PUSH static 2
		@Bird.2
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Bird.getS)

		////PUSH static 3
		@Bird.3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Bird.getDirection)

		////PUSH static 4
		@Bird.4
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
	@Bird.getDirection$ret.0
	D=A
	@36
	0;JMP
	(Bird.getDirection$ret.0)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////RETURN
	@95
	0;JMP

////FUNCTION
(Bird.setInput)

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////POP static 7
		@SP
		AM=M-1
		D=M
		@Bird.7
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Bird.reset)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP static 4
		@SP
		AM=M-1
		D=M
		@Bird.4
		M=D

		////PUSH static 6
		@Bird.6
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Bird.2
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
(Hud.init)

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 3
		@SP
		AM=M-1
		D=M
		@Hud.3
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP static 4
		@SP
		AM=M-1
		D=M
		@Hud.4
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Hud.stringsInit
	D=A
	@R15
	M=D
	@Hud.init$ret.0
	D=A
	@54
	0;JMP

(Hud.init$ret.0)

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
	@Hud.drawScore
	D=A
	@R15
	M=D
	@Hud.init$ret.1
	D=A
	@54
	0;JMP

(Hud.init$ret.1)

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
(Hud.clearScene)

	////CALL
	@0
	D=A
	@R14
	M=D
	@Main.setColorWhite
	D=A
	@R15
	M=D
	@Hud.clearScene$ret.0
	D=A
	@54
	0;JMP

(Hud.clearScene$ret.0)

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

	////CALL
	@0
	D=A
	@R14
	M=D
	@Hud.getHeight
	D=A
	@R15
	M=D
	@Hud.clearScene$ret.1
	D=A
	@54
	0;JMP

(Hud.clearScene$ret.1)

		////PUSH constant 511
		@511
		D=A
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

	////CALL
	@4
	D=A
	@R14
	M=D
	@Screen.drawRectangle
	D=A
	@R15
	M=D
	@Hud.clearScene$ret.2
	D=A
	@54
	0;JMP

(Hud.clearScene$ret.2)

	////RETURN
	@95
	0;JMP


////FUNCTION
(Hud.writeGameOver)


	////CALL
	@0
	D=A
	@R14
	M=D
	@Main.setColorBlack
	D=A
	@R15
	M=D
	@Hud.writeGameOver$ret.0
	D=A
	@54
	0;JMP

(Hud.writeGameOver$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D


		////PUSH constant 186
		@186
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 106
		@106
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 326
		@326
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 158
		@158
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
	@Hud.writeGameOver$ret.1
	D=A
	@54
	0;JMP

(Hud.writeGameOver$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D



		////PUSH constant 11
		@11
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Output.moveCursor
	D=A
	@R15
	M=D
	@Hud.writeGameOver$ret.2
	D=A
	@54
	0;JMP

(Hud.writeGameOver$ret.2)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D


		////PUSH static 2
		@Hud.2
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
	@Hud.writeGameOver$ret.3
	D=A
	@54
	0;JMP

(Hud.writeGameOver$ret.3)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D



		////PUSH constant 12
		@12
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Output.moveCursor
	D=A
	@R15
	M=D
	@Hud.writeGameOver$ret.4
	D=A
	@54
	0;JMP

(Hud.writeGameOver$ret.4)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D


		////PUSH static 6
		@Hud.6
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
	@Hud.writeGameOver$ret.5
	D=A
	@54
	0;JMP

(Hud.writeGameOver$ret.5)

	////RETURN
	@95
	0;JMP

////FUNCTION
(Hud.drawScore)


		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 6
		@6
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
	@Hud.drawScore$ret.0
	D=A
	@54
	0;JMP

(Hud.drawScore$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D


		////PUSH static 4
		@Hud.4
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
	@Hud.drawScore$ret.1
	D=A
	@54
	0;JMP

(Hud.drawScore$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Hud.drawSpeed)
@SP
M=M+1
A=M-1
M=0

	////CALL
	@0
	D=A
	@R14
	M=D
	@Bird.getSpeed
	D=A
	@R15
	M=D
	@Hud.drawSpeed$ret.0
	D=A
	@54
	0;JMP

(Hud.drawSpeed$ret.0)

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D


		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 61
		@61
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
	@Hud.drawSpeed$ret.1
	D=A
	@54
	0;JMP

(Hud.drawSpeed$ret.1)

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

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Hud.drawSpeed$ret.2
	D=A
	@36
	0;JMP
	(Hud.drawSpeed$ret.2)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

		////PUSH local 0
		@LCL
		A=M
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

	////lt INSTRUCTION
	@Hud.drawSpeed$ret.3
	D=A
	@36
	0;JMP
	(Hud.drawSpeed$ret.3)

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
	@Hud.drawSpeed$SECOND_SPACE
	D;JNE


		////PUSH local 0
		@LCL
		A=M
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

	////neg INSTRUCTION
	@SP
	A=M-1
	M=-M

	////gt INSTRUCTION
	@Hud.drawSpeed$ret.4
	D=A
	@21
	0;JMP
	(Hud.drawSpeed$ret.4)

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

	////lt INSTRUCTION
	@Hud.drawSpeed$ret.5
	D=A
	@36
	0;JMP
	(Hud.drawSpeed$ret.5)

	////and INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D&M

		////PUSH local 0
		@LCL
		A=M
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
	@Hud.drawSpeed$ret.6
	D=A
	@21
	0;JMP
	(Hud.drawSpeed$ret.6)

		////PUSH local 0
		@LCL
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
	@Bird.getVMax
	D=A
	@R15
	M=D
	@Hud.drawSpeed$ret.7
	D=A
	@54
	0;JMP

(Hud.drawSpeed$ret.7)

	////gt INSTRUCTION
	@Hud.drawSpeed$ret.8
	D=A
	@21
	0;JMP
	(Hud.drawSpeed$ret.8)

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
	@Hud.drawSpeed$FIRST_SPACE
	D;JNE


	////GOTO
	@Hud.drawSpeed$NUMBER
	0;JMP

	////LABEL
(Hud.drawSpeed$SECOND_SPACE)

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
	@Output.printChar
	D=A
	@R15
	M=D
	@Hud.drawSpeed$ret.9
	D=A
	@54
	0;JMP

(Hud.drawSpeed$ret.9)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Hud.drawSpeed$FIRST_SPACE)

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
	@Output.printChar
	D=A
	@R15
	M=D
	@Hud.drawSpeed$ret.10
	D=A
	@54
	0;JMP

(Hud.drawSpeed$ret.10)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Hud.drawSpeed$NUMBER)


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
	@Output.printInt
	D=A
	@R15
	M=D
	@Hud.drawSpeed$ret.11
	D=A
	@54
	0;JMP

(Hud.drawSpeed$ret.11)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Hud.writePause)
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Output.moveCursor
	D=A
	@R15
	M=D
	@Hud.writePause$ret.0
	D=A
	@54
	0;JMP

(Hud.writePause$ret.0)

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
	@Main.getState
	D=A
	@R15
	M=D
	@Hud.writePause$ret.1
	D=A
	@54
	0;JMP

(Hud.writePause$ret.1)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Hud.writePause$PAUSE
	D;JNE

		////PUSH constant 5
		@5
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
(Hud.writePause$RESUME)


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

	////lt INSTRUCTION
	@Hud.writePause$ret.2
	D=A
	@36
	0;JMP
	(Hud.writePause$ret.2)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Hud.writePause$END
	D;JNE


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
	@Output.printChar
	D=A
	@R15
	M=D
	@Hud.writePause$ret.3
	D=A
	@54
	0;JMP

(Hud.writePause$ret.3)

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
	@Hud.writePause$RESUME
	0;JMP

	////LABEL
(Hud.writePause$PAUSE)

		////PUSH static 5
		@Hud.5
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
	@Hud.writePause$ret.4
	D=A
	@54
	0;JMP

(Hud.writePause$ret.4)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Hud.writePause$END)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Hud.Seed)
@SP
M=M+1
A=M-1
M=0


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
	@Hud.Seed$ret.0
	D=A
	@54
	0;JMP

(Hud.Seed$ret.0)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D


		////PUSH constant 500
		@500
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
	@Sys.wait
	D=A
	@R15
	M=D
	@Hud.Seed$ret.1
	D=A
	@54
	0;JMP

(Hud.Seed$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH static 7
		@Hud.7
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
	@Keyboard.readInt
	D=A
	@R15
	M=D
	@Hud.Seed$ret.2
	D=A
	@54
	0;JMP

(Hud.Seed$ret.2)


	////CALL
	@1
	D=A
	@R14
	M=D
	@Random.setSeed
	D=A
	@R15
	M=D
	@Hud.Seed$ret.3
	D=A
	@54
	0;JMP

(Hud.Seed$ret.3)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D


		////PUSH constant 21
		@21
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
	@Hud.Seed$ret.4
	D=A
	@54
	0;JMP

(Hud.Seed$ret.4)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Hud.Seed$DELETE_CHARS)

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
	@Hud.Seed$ret.5
	D=A
	@6
	0;JMP
	(Hud.Seed$ret.5)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Hud.Seed$END
	D;JNE


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
	@Output.printChar
	D=A
	@R15
	M=D
	@Hud.Seed$ret.6
	D=A
	@54
	0;JMP

(Hud.Seed$ret.6)

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
	@Hud.Seed$DELETE_CHARS
	0;JMP

	////LABEL
(Hud.Seed$END)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP



////FUNCTION
(Hud.getHeight)

		////PUSH static 3
		@Hud.3
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

	////RETURN
	@95
	0;JMP





////FUNCTION
(Hud.setScore)

		////PUSH static 4
		@Hud.4
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

		////POP static 4
		@SP
		AM=M-1
		D=M
		@Hud.4
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
(Hud.resetScore)


		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////PUSH constant 6
		@6
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
	@Hud.resetScore$ret.0
	D=A
	@54
	0;JMP

(Hud.resetScore$ret.0)

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

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.printChar
	D=A
	@R15
	M=D
	@Hud.resetScore$ret.1
	D=A
	@54
	0;JMP

(Hud.resetScore$ret.1)

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

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.printChar
	D=A
	@R15
	M=D
	@Hud.resetScore$ret.2
	D=A
	@54
	0;JMP

(Hud.resetScore$ret.2)

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

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.printChar
	D=A
	@R15
	M=D
	@Hud.resetScore$ret.3
	D=A
	@54
	0;JMP

(Hud.resetScore$ret.3)

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

		////PUSH constant 6
		@6
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
	@Hud.resetScore$ret.4
	D=A
	@54
	0;JMP

(Hud.resetScore$ret.4)

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

	////CALL
	@1
	D=A
	@R14
	M=D
	@Output.printInt
	D=A
	@R15
	M=D
	@Hud.resetScore$ret.5
	D=A
	@54
	0;JMP

(Hud.resetScore$ret.5)

	////RETURN
	@95
	0;JMP


////FUNCTION
(Hud.stringsInit)


	////CALL
	@0
	D=A
	@R14
	M=D
	@Hud.ScoreString
	D=A
	@R15
	M=D
	@Hud.stringsInit$ret.0
	D=A
	@54
	0;JMP

(Hud.stringsInit$ret.0)

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Hud.0
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Hud.SpeedString
	D=A
	@R15
	M=D
	@Hud.stringsInit$ret.1
	D=A
	@54
	0;JMP

(Hud.stringsInit$ret.1)

		////POP static 1
		@SP
		AM=M-1
		D=M
		@Hud.1
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Hud.GameOverString
	D=A
	@R15
	M=D
	@Hud.stringsInit$ret.2
	D=A
	@54
	0;JMP

(Hud.stringsInit$ret.2)

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Hud.2
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Hud.PauseString
	D=A
	@R15
	M=D
	@Hud.stringsInit$ret.3
	D=A
	@54
	0;JMP

(Hud.stringsInit$ret.3)

		////POP static 5
		@SP
		AM=M-1
		D=M
		@Hud.5
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Hud.RtoRestartString
	D=A
	@R15
	M=D
	@Hud.stringsInit$ret.4
	D=A
	@54
	0;JMP

(Hud.stringsInit$ret.4)

		////POP static 6
		@SP
		AM=M-1
		D=M
		@Hud.6
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Hud.SeedString
	D=A
	@R15
	M=D
	@Hud.stringsInit$ret.5
	D=A
	@54
	0;JMP

(Hud.stringsInit$ret.5)

		////POP static 7
		@SP
		AM=M-1
		D=M
		@Hud.7
		M=D


	////CALL
	@0
	D=A
	@R14
	M=D
	@Main.setColorBlack
	D=A
	@R15
	M=D
	@Hud.stringsInit$ret.6
	D=A
	@54
	0;JMP

(Hud.stringsInit$ret.6)

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

		////PUSH constant 12
		@12
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

		////PUSH constant 15
		@15
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
	@Hud.stringsInit$ret.7
	D=A
	@54
	0;JMP

(Hud.stringsInit$ret.7)



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
	@2
	D=A
	@R14
	M=D
	@Output.moveCursor
	D=A
	@R15
	M=D
	@Hud.stringsInit$ret.8
	D=A
	@54
	0;JMP

(Hud.stringsInit$ret.8)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D


		////PUSH static 0
		@Hud.0
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
	@Hud.stringsInit$ret.9
	D=A
	@54
	0;JMP

(Hud.stringsInit$ret.9)

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

		////PUSH constant 55
		@55
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
	@Hud.stringsInit$ret.10
	D=A
	@54
	0;JMP

(Hud.stringsInit$ret.10)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D


		////PUSH static 1
		@Hud.1
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
	@Hud.stringsInit$ret.11
	D=A
	@54
	0;JMP

(Hud.stringsInit$ret.11)

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
(Hud.ScoreString)

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
	@Hud.ScoreString$ret.0
	D=A
	@54
	0;JMP

(Hud.ScoreString$ret.0)

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
	@Hud.ScoreString$ret.1
	D=A
	@54
	0;JMP

(Hud.ScoreString$ret.1)

		////PUSH constant 67
		@67
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
	@Hud.ScoreString$ret.2
	D=A
	@54
	0;JMP

(Hud.ScoreString$ret.2)

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
	@Hud.ScoreString$ret.3
	D=A
	@54
	0;JMP

(Hud.ScoreString$ret.3)

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
	@Hud.ScoreString$ret.4
	D=A
	@54
	0;JMP

(Hud.ScoreString$ret.4)

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
	@Hud.ScoreString$ret.5
	D=A
	@54
	0;JMP

(Hud.ScoreString$ret.5)

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
	@Hud.ScoreString$ret.6
	D=A
	@54
	0;JMP

(Hud.ScoreString$ret.6)

	////RETURN
	@95
	0;JMP


////FUNCTION
(Hud.SpeedString)

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
	@Hud.SpeedString$ret.0
	D=A
	@54
	0;JMP

(Hud.SpeedString$ret.0)

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
	@Hud.SpeedString$ret.1
	D=A
	@54
	0;JMP

(Hud.SpeedString$ret.1)

		////PUSH constant 80
		@80
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
	@Hud.SpeedString$ret.2
	D=A
	@54
	0;JMP

(Hud.SpeedString$ret.2)

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
	@Hud.SpeedString$ret.3
	D=A
	@54
	0;JMP

(Hud.SpeedString$ret.3)

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
	@Hud.SpeedString$ret.4
	D=A
	@54
	0;JMP

(Hud.SpeedString$ret.4)

		////PUSH constant 68
		@68
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
	@Hud.SpeedString$ret.5
	D=A
	@54
	0;JMP

(Hud.SpeedString$ret.5)

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
	@Hud.SpeedString$ret.6
	D=A
	@54
	0;JMP

(Hud.SpeedString$ret.6)

	////RETURN
	@95
	0;JMP


////FUNCTION
(Hud.GameOverString)

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
	@String.new
	D=A
	@R15
	M=D
	@Hud.GameOverString$ret.0
	D=A
	@54
	0;JMP

(Hud.GameOverString$ret.0)

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
	@Hud.GameOverString$ret.1
	D=A
	@54
	0;JMP

(Hud.GameOverString$ret.1)

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
	@Hud.GameOverString$ret.2
	D=A
	@54
	0;JMP

(Hud.GameOverString$ret.2)

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
	@Hud.GameOverString$ret.3
	D=A
	@54
	0;JMP

(Hud.GameOverString$ret.3)

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
	@Hud.GameOverString$ret.4
	D=A
	@54
	0;JMP

(Hud.GameOverString$ret.4)

		////PUSH constant 65
		@65
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
	@Hud.GameOverString$ret.5
	D=A
	@54
	0;JMP

(Hud.GameOverString$ret.5)

		////PUSH constant 77
		@77
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
	@Hud.GameOverString$ret.6
	D=A
	@54
	0;JMP

(Hud.GameOverString$ret.6)

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
	@Hud.GameOverString$ret.7
	D=A
	@54
	0;JMP

(Hud.GameOverString$ret.7)

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
	@Hud.GameOverString$ret.8
	D=A
	@54
	0;JMP

(Hud.GameOverString$ret.8)

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
	@Hud.GameOverString$ret.9
	D=A
	@54
	0;JMP

(Hud.GameOverString$ret.9)

		////PUSH constant 86
		@86
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
	@Hud.GameOverString$ret.10
	D=A
	@54
	0;JMP

(Hud.GameOverString$ret.10)

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
	@Hud.GameOverString$ret.11
	D=A
	@54
	0;JMP

(Hud.GameOverString$ret.11)

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
	@Hud.GameOverString$ret.12
	D=A
	@54
	0;JMP

(Hud.GameOverString$ret.12)

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
	@Hud.GameOverString$ret.13
	D=A
	@54
	0;JMP

(Hud.GameOverString$ret.13)

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
	@Hud.GameOverString$ret.14
	D=A
	@54
	0;JMP

(Hud.GameOverString$ret.14)

	////RETURN
	@95
	0;JMP


////FUNCTION
(Hud.RtoRestartString)

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
	@String.new
	D=A
	@R15
	M=D
	@Hud.RtoRestartString$ret.0
	D=A
	@54
	0;JMP

(Hud.RtoRestartString$ret.0)

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
	@Hud.RtoRestartString$ret.1
	D=A
	@54
	0;JMP

(Hud.RtoRestartString$ret.1)

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
	@Hud.RtoRestartString$ret.2
	D=A
	@54
	0;JMP

(Hud.RtoRestartString$ret.2)

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
	@Hud.RtoRestartString$ret.3
	D=A
	@54
	0;JMP

(Hud.RtoRestartString$ret.3)

		////PUSH constant 84
		@84
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
	@Hud.RtoRestartString$ret.4
	D=A
	@54
	0;JMP

(Hud.RtoRestartString$ret.4)

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
	@Hud.RtoRestartString$ret.5
	D=A
	@54
	0;JMP

(Hud.RtoRestartString$ret.5)

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
	@Hud.RtoRestartString$ret.6
	D=A
	@54
	0;JMP

(Hud.RtoRestartString$ret.6)

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
	@Hud.RtoRestartString$ret.7
	D=A
	@54
	0;JMP

(Hud.RtoRestartString$ret.7)

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
	@Hud.RtoRestartString$ret.8
	D=A
	@54
	0;JMP

(Hud.RtoRestartString$ret.8)

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
	@Hud.RtoRestartString$ret.9
	D=A
	@54
	0;JMP

(Hud.RtoRestartString$ret.9)

		////PUSH constant 84
		@84
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
	@Hud.RtoRestartString$ret.10
	D=A
	@54
	0;JMP

(Hud.RtoRestartString$ret.10)

		////PUSH constant 65
		@65
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
	@Hud.RtoRestartString$ret.11
	D=A
	@54
	0;JMP

(Hud.RtoRestartString$ret.11)

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
	@Hud.RtoRestartString$ret.12
	D=A
	@54
	0;JMP

(Hud.RtoRestartString$ret.12)

		////PUSH constant 84
		@84
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
	@Hud.RtoRestartString$ret.13
	D=A
	@54
	0;JMP

(Hud.RtoRestartString$ret.13)

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
	@Hud.RtoRestartString$ret.14
	D=A
	@54
	0;JMP

(Hud.RtoRestartString$ret.14)

	////RETURN
	@95
	0;JMP


////FUNCTION
(Hud.PauseString)

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
	@String.new
	D=A
	@R15
	M=D
	@Hud.PauseString$ret.0
	D=A
	@54
	0;JMP

(Hud.PauseString$ret.0)

		////PUSH constant 80
		@80
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
	@Hud.PauseString$ret.1
	D=A
	@54
	0;JMP

(Hud.PauseString$ret.1)

		////PUSH constant 65
		@65
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
	@Hud.PauseString$ret.2
	D=A
	@54
	0;JMP

(Hud.PauseString$ret.2)

		////PUSH constant 85
		@85
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
	@Hud.PauseString$ret.3
	D=A
	@54
	0;JMP

(Hud.PauseString$ret.3)

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
	@Hud.PauseString$ret.4
	D=A
	@54
	0;JMP

(Hud.PauseString$ret.4)

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
	@Hud.PauseString$ret.5
	D=A
	@54
	0;JMP

(Hud.PauseString$ret.5)

	////RETURN
	@95
	0;JMP


////FUNCTION
(Hud.SeedString)

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
	@String.new
	D=A
	@R15
	M=D
	@Hud.SeedString$ret.0
	D=A
	@54
	0;JMP

(Hud.SeedString$ret.0)

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
	@Hud.SeedString$ret.1
	D=A
	@54
	0;JMP

(Hud.SeedString$ret.1)

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
	@Hud.SeedString$ret.2
	D=A
	@54
	0;JMP

(Hud.SeedString$ret.2)

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
	@Hud.SeedString$ret.3
	D=A
	@54
	0;JMP

(Hud.SeedString$ret.3)

		////PUSH constant 68
		@68
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
	@Hud.SeedString$ret.4
	D=A
	@54
	0;JMP

(Hud.SeedString$ret.4)

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
	@Hud.SeedString$ret.5
	D=A
	@54
	0;JMP

(Hud.SeedString$ret.5)

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
(Level.init)
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

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Level.0
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 1
		@SP
		AM=M-1
		D=M
		@Level.1
		M=D

		////PUSH constant 5
		@5
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Level.2
		M=D

		////PUSH constant 150
		@150
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 3
		@SP
		AM=M-1
		D=M
		@Level.3
		M=D

		////PUSH constant 15
		@15
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 4
		@SP
		AM=M-1
		D=M
		@Level.4
		M=D

		////PUSH constant 50
		@50
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 5
		@SP
		AM=M-1
		D=M
		@Level.5
		M=D

		////PUSH constant 50
		@50
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 6
		@SP
		AM=M-1
		D=M
		@Level.6
		M=D

		////PUSH constant 80
		@80
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 7
		@SP
		AM=M-1
		D=M
		@Level.7
		M=D

		////PUSH constant 70
		@70
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 8
		@SP
		AM=M-1
		D=M
		@Level.8
		M=D

		////PUSH constant 200
		@200
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 9
		@SP
		AM=M-1
		D=M
		@Level.9
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
		@Level.0
		M=D

		////PUSH constant 10
		@10
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 11
		@SP
		AM=M-1
		D=M
		@Level.11
		M=D







	////CALL
	@0
	D=A
	@R14
	M=D
	@Level.arrayInit
	D=A
	@R15
	M=D
	@Level.init$ret.0
	D=A
	@54
	0;JMP

(Level.init$ret.0)


	////RETURN
	@95
	0;JMP


////FUNCTION
(Level.check)


		////PUSH static 0
		@Level.0
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 1
		@Level.1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@Level.check$ret.0
	D=A
	@6
	0;JMP
	(Level.check$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Level.check$DH_DECREMENT
	D;JNE



		////PUSH static 10
		@Level.10
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
	@Level.check$ret.1
	D=A
	@21
	0;JMP
	(Level.check$ret.1)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Level.check$DH_DECREMENT
	D;JNE


	////CALL
	@0
	D=A
	@R14
	M=D
	@Level.generate
	D=A
	@R15
	M=D
	@Level.check$ret.2
	D=A
	@54
	0;JMP

(Level.check$ret.2)


		////PUSH static 9
		@Level.9
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 8
		@Level.8
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
	@Random.Rand
	D=A
	@R15
	M=D
	@Level.check$ret.3
	D=A
	@54
	0;JMP

(Level.check$ret.3)

		////PUSH static 8
		@Level.8
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

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////POP static 10
		@SP
		AM=M-1
		D=M
		@Level.10
		M=D


		////PUSH static 0
		@Level.0
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
		@Level.0
		M=D

	////GOTO
	@Level.check$END
	0;JMP

	////LABEL
(Level.check$DH_DECREMENT)


		////PUSH static 10
		@Level.10
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 11
		@Level.11
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

		////POP static 10
		@SP
		AM=M-1
		D=M
		@Level.10
		M=D

	////LABEL
(Level.check$END)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP



////FUNCTION
(Level.iterator)
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
D=A
@SP
M=D

		////PUSH static 12
		@Level.12
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
(Level.iterator$FOR)


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
	@Level.endOfArray
	D=A
	@R15
	M=D
	@Level.iterator$ret.0
	D=A
	@54
	0;JMP

(Level.iterator$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Level.iterator$END
	D;JNE


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
	@Memory.peek
	D=A
	@R15
	M=D
	@Level.iterator$ret.1
	D=A
	@54
	0;JMP

(Level.iterator$ret.1)

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

	////CALL
	@1
	D=A
	@R14
	M=D
	@Memory.peek
	D=A
	@R15
	M=D
	@Level.iterator$ret.2
	D=A
	@54
	0;JMP

(Level.iterator$ret.2)

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

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////eq INSTRUCTION
	@Level.iterator$ret.3
	D=A
	@6
	0;JMP
	(Level.iterator$ret.3)

		////PUSH local 1
		@LCL
		A=M+1
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

	////lt INSTRUCTION
	@Level.iterator$ret.4
	D=A
	@36
	0;JMP
	(Level.iterator$ret.4)

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
	@Level.iterator$CONTINUE
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

	////CALL
	@1
	D=A
	@R14
	M=D
	@Memory.peek
	D=A
	@R15
	M=D
	@Level.iterator$ret.5
	D=A
	@54
	0;JMP

(Level.iterator$ret.5)

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


		////PUSH local 0
		@LCL
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

	////CALL
	@1
	D=A
	@R14
	M=D
	@Memory.peek
	D=A
	@R15
	M=D
	@Level.iterator$ret.6
	D=A
	@54
	0;JMP

(Level.iterator$ret.6)

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
	@4
	D=A
	@R14
	M=D
	@Level.drawPart
	D=A
	@R15
	M=D
	@Level.iterator$ret.7
	D=A
	@54
	0;JMP

(Level.iterator$ret.7)

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

		////PUSH local 1
		@LCL
		A=M+1
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

	////CALL
	@3
	D=A
	@R14
	M=D
	@Level.move
	D=A
	@R15
	M=D
	@Level.iterator$ret.8
	D=A
	@54
	0;JMP

(Level.iterator$ret.8)

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
	@4
	D=A
	@R14
	M=D
	@Level.drawPart
	D=A
	@R15
	M=D
	@Level.iterator$ret.9
	D=A
	@54
	0;JMP

(Level.iterator$ret.9)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
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
	@0
	D=A
	@R14
	M=D
	@Bird.getX
	D=A
	@R15
	M=D
	@Level.iterator$ret.10
	D=A
	@54
	0;JMP

(Level.iterator$ret.10)

	////CALL
	@0
	D=A
	@R14
	M=D
	@Bird.getS
	D=A
	@R15
	M=D
	@Level.iterator$ret.11
	D=A
	@54
	0;JMP

(Level.iterator$ret.11)

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

	////gt INSTRUCTION
	@Level.iterator$ret.12
	D=A
	@21
	0;JMP
	(Level.iterator$ret.12)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Level.iterator$CONTINUE
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
	@4
	D=A
	@R14
	M=D
	@Level.checkCollision
	D=A
	@R15
	M=D
	@Level.iterator$ret.13
	D=A
	@54
	0;JMP

(Level.iterator$ret.13)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Level.iterator$END
	D;JNE

	////LABEL
(Level.iterator$CONTINUE)

		////PUSH local 0
		@LCL
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

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////GOTO
	@Level.iterator$FOR
	0;JMP

	////LABEL
(Level.iterator$END)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP


////FUNCTION
(Level.resetO)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Level.0
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
(Level.endOfArray)

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 1
		@Level.1
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Level.endOfArray$ret.0
	D=A
	@54
	0;JMP

(Level.endOfArray$ret.0)

		////PUSH static 12
		@Level.12
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

	////eq INSTRUCTION
	@Level.endOfArray$ret.1
	D=A
	@6
	0;JMP
	(Level.endOfArray$ret.1)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Level.endOfArray$END
	D;JNE

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

	////LABEL
(Level.endOfArray$END)

	////RETURN
	@95
	0;JMP

////FUNCTION
(Level.arrayInit)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D


		////PUSH static 1
		@Level.1
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Math.multiply
	D=A
	@R15
	M=D
	@Level.arrayInit$ret.0
	D=A
	@54
	0;JMP

(Level.arrayInit$ret.0)

	////CALL
	@1
	D=A
	@R14
	M=D
	@Array.new
	D=A
	@R15
	M=D
	@Level.arrayInit$ret.1
	D=A
	@54
	0;JMP

(Level.arrayInit$ret.1)

		////POP static 12
		@SP
		AM=M-1
		D=M
		@Level.12
		M=D


	////CALL
	@0
	D=A
	@R14
	M=D
	@Level.arrayReset
	D=A
	@R15
	M=D
	@Level.arrayInit$ret.2
	D=A
	@54
	0;JMP

(Level.arrayInit$ret.2)

	////RETURN
	@95
	0;JMP


////FUNCTION
(Level.arrayReset)
@SP
A=M
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D

		////PUSH static 5
		@Level.5
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

		////PUSH static 12
		@Level.12
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
(Level.arrayReset$FOR)


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
	@Level.endOfArray
	D=A
	@R15
	M=D
	@Level.arrayReset$ret.0
	D=A
	@54
	0;JMP

(Level.arrayReset$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Level.arrayReset$END
	D;JNE


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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Memory.poke
	D=A
	@R15
	M=D
	@Level.arrayReset$ret.1
	D=A
	@54
	0;JMP

(Level.arrayReset$ret.1)

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

		////POP local 1
		@SP
		AM=M-1
		D=M
		@LCL
		A=M+1
		M=D

	////GOTO
	@Level.arrayReset$FOR
	0;JMP

	////LABEL
(Level.arrayReset$END)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP













































////FUNCTION
(Level.drawPart)
@SP
A=M
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

	////lt INSTRUCTION
	@Level.drawPart$ret.0
	D=A
	@36
	0;JMP
	(Level.drawPart$ret.0)

		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 11
		@Level.11
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

		////PUSH local 0
		@LCL
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
	@Level.drawPart$ret.1
	D=A
	@21
	0;JMP
	(Level.drawPart$ret.1)

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
	@Level.drawPart$END
	D;JNE


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

	////CALL
	@1
	D=A
	@R14
	M=D
	@Screen.setColor
	D=A
	@R15
	M=D
	@Level.drawPart$ret.2
	D=A
	@54
	0;JMP

(Level.drawPart$ret.2)

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
	@Level.drawPart$ret.3
	D=A
	@54
	0;JMP

(Level.drawPart$ret.3)

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

		////PUSH constant 256
		@256
		D=A
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

		////PUSH argument 1
		@ARG
		A=M+1
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
	@Level.drawPart$ret.4
	D=A
	@54
	0;JMP

(Level.drawPart$ret.4)

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

		////PUSH constant 255
		@255
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
	@Level.drawPart$ret.5
	D=A
	@54
	0;JMP

(Level.drawPart$ret.5)

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
	@0
	D=A
	@R14
	M=D
	@Hud.getHeight
	D=A
	@R15
	M=D
	@Level.drawPart$ret.6
	D=A
	@54
	0;JMP

(Level.drawPart$ret.6)

		////PUSH local 1
		@LCL
		A=M+1
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

	////CALL
	@4
	D=A
	@R14
	M=D
	@Screen.drawRectangle
	D=A
	@R15
	M=D
	@Level.drawPart$ret.7
	D=A
	@54
	0;JMP

(Level.drawPart$ret.7)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Level.drawPart$END)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP




////FUNCTION
(Level.move)


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

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Level.move$ret.0
	D=A
	@36
	0;JMP
	(Level.move$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Level.move$END
	D;JNE


		////PUSH argument 1
		@ARG
		A=M+1
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 11
		@Level.11
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Memory.poke
	D=A
	@R15
	M=D
	@Level.move$ret.1
	D=A
	@54
	0;JMP

(Level.move$ret.1)

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

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Level.move$ret.2
	D=A
	@36
	0;JMP
	(Level.move$ret.2)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Level.move$END
	D;JNE


		////PUSH static 0
		@Level.0
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
		@Level.0
		M=D


	////CALL
	@0
	D=A
	@R14
	M=D
	@Hud.setScore
	D=A
	@R15
	M=D
	@Level.move$ret.3
	D=A
	@54
	0;JMP

(Level.move$ret.3)

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
	@Main.setNewScore
	D=A
	@R15
	M=D
	@Level.move$ret.4
	D=A
	@54
	0;JMP

(Level.move$ret.4)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////LABEL
(Level.move$END)

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
(Level.generate)
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

		////PUSH static 12
		@Level.12
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
(Level.generate$CHECK_LOOP)

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
	@Memory.peek
	D=A
	@R15
	M=D
	@Level.generate$ret.0
	D=A
	@54
	0;JMP

(Level.generate$ret.0)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Level.generate$ret.1
	D=A
	@36
	0;JMP
	(Level.generate$ret.1)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Level.generate$GENERATE
	D;JNE

		////PUSH local 0
		@LCL
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

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////GOTO
	@Level.generate$CHECK_LOOP
	0;JMP

	////LABEL
(Level.generate$GENERATE)


		////PUSH local 0
		@LCL
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Memory.poke
	D=A
	@R15
	M=D
	@Level.generate$ret.2
	D=A
	@54
	0;JMP

(Level.generate$ret.2)

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

		////PUSH static 3
		@Level.3
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 2
		@Level.2
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
	@Random.Rand
	D=A
	@R15
	M=D
	@Level.generate$ret.3
	D=A
	@54
	0;JMP

(Level.generate$ret.3)

		////PUSH static 2
		@Level.2
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Memory.poke
	D=A
	@R15
	M=D
	@Level.generate$ret.4
	D=A
	@54
	0;JMP

(Level.generate$ret.4)

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

		////PUSH static 5
		@Level.5
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 4
		@Level.4
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
	@Random.Rand
	D=A
	@R15
	M=D
	@Level.generate$ret.5
	D=A
	@54
	0;JMP

(Level.generate$ret.5)

		////PUSH static 4
		@Level.4
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

	////CALL
	@2
	D=A
	@R14
	M=D
	@Memory.poke
	D=A
	@R15
	M=D
	@Level.generate$ret.6
	D=A
	@54
	0;JMP

(Level.generate$ret.6)

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

		////PUSH static 7
		@Level.7
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
	@0
	D=A
	@R14
	M=D
	@Hud.getHeight
	D=A
	@R15
	M=D
	@Level.generate$ret.7
	D=A
	@54
	0;JMP

(Level.generate$ret.7)

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

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

		////PUSH static 2
		@Level.2
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
	@Math.min
	D=A
	@R15
	M=D
	@Level.generate$ret.8
	D=A
	@54
	0;JMP

(Level.generate$ret.8)

		////PUSH static 6
		@Level.6
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
	@Random.Rand
	D=A
	@R15
	M=D
	@Level.generate$ret.9
	D=A
	@54
	0;JMP

(Level.generate$ret.9)

		////PUSH static 6
		@Level.6
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
	@2
	D=A
	@R14
	M=D
	@Memory.poke
	D=A
	@R15
	M=D
	@Level.generate$ret.10
	D=A
	@54
	0;JMP

(Level.generate$ret.10)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
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

	////RETURN
	@95
	0;JMP




////FUNCTION
(Level.checkCollision)
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
D=A
@SP
M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Bird.getX
	D=A
	@R15
	M=D
	@Level.checkCollision$ret.0
	D=A
	@54
	0;JMP

(Level.checkCollision$ret.0)

		////POP local 0
		@SP
		AM=M-1
		D=M
		@LCL
		A=M
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Bird.getY
	D=A
	@R15
	M=D
	@Level.checkCollision$ret.1
	D=A
	@54
	0;JMP

(Level.checkCollision$ret.1)

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
	@Bird.getS
	D=A
	@R15
	M=D
	@Level.checkCollision$ret.2
	D=A
	@54
	0;JMP

(Level.checkCollision$ret.2)

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

	////CALL
	@0
	D=A
	@R14
	M=D
	@Bird.getDirection
	D=A
	@R15
	M=D
	@Level.checkCollision$ret.3
	D=A
	@54
	0;JMP

(Level.checkCollision$ret.3)

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

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////LABEL
(Level.checkCollision$LOOP_Y)


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

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////lt INSTRUCTION
	@Level.checkCollision$ret.4
	D=A
	@36
	0;JMP
	(Level.checkCollision$ret.4)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Level.checkCollision$END
	D;JNE



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

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////PUSH constant 256
		@256
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

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

	////lt INSTRUCTION
	@Level.checkCollision$ret.5
	D=A
	@36
	0;JMP
	(Level.checkCollision$ret.5)

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

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

		////PUSH constant 256
		@256
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

	////sub INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=M-D

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

	////gt INSTRUCTION
	@Level.checkCollision$ret.6
	D=A
	@21
	0;JMP
	(Level.checkCollision$ret.6)

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
	@Level.checkCollision$CONTINUE_Y
	D;JNE



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

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Level.checkCollision$SPEED_POSITIVE
	D;JNE

	////LABEL
(Level.checkCollision$SPEED_NEGATIVE)

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

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

	////GOTO
	@Level.checkCollision$CHECK_X
	0;JMP

	////LABEL
(Level.checkCollision$SPEED_POSITIVE)

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

	////LABEL
(Level.checkCollision$CHECK_X)

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

	////gt INSTRUCTION
	@Level.checkCollision$ret.7
	D=A
	@21
	0;JMP
	(Level.checkCollision$ret.7)

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

		////PUSH argument 0
		@ARG
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////lt INSTRUCTION
	@Level.checkCollision$ret.8
	D=A
	@36
	0;JMP
	(Level.checkCollision$ret.8)

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
	@Level.checkCollision$CONTINUE_Y
	D;JNE


	////CALL
	@0
	D=A
	@R14
	M=D
	@Main.GameOver
	D=A
	@R15
	M=D
	@Level.checkCollision$ret.9
	D=A
	@54
	0;JMP

(Level.checkCollision$ret.9)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

	////GOTO
	@Level.checkCollision$END
	0;JMP

	////LABEL
(Level.checkCollision$CONTINUE_Y)

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

	////GOTO
	@Level.checkCollision$LOOP_Y
	0;JMP

	////LABEL
(Level.checkCollision$END)

	////RETURN
	@95
	0;JMP







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
(Main.main)

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Main.0
		M=D

		////PUSH constant 3
		@3
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 1
		@SP
		AM=M-1
		D=M
		@Main.1
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Main.2
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP static 3
		@SP
		AM=M-1
		D=M
		@Main.3
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Hud.init
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
	@Bird.init
	D=A
	@R15
	M=D
	@Main.main$ret.1
	D=A
	@54
	0;JMP

(Main.main$ret.1)

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
	@Level.init
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

	////CALL
	@0
	D=A
	@R14
	M=D
	@Random.init
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

		////PUSH static 1
		@Main.1
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
	@Random.setSeed
	D=A
	@R15
	M=D
	@Main.main$ret.4
	D=A
	@54
	0;JMP

(Main.main$ret.4)

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
	@Main.Update
	D=A
	@R15
	M=D
	@Main.main$ret.5
	D=A
	@54
	0;JMP

(Main.main$ret.5)

	////RETURN
	@95
	0;JMP


////FUNCTION
(Main.Update)

	////LABEL
(Main.Update$UPDATE)

		////PUSH static 0
		@Main.0
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
	@Main.Update$ret.0
	D=A
	@6
	0;JMP
	(Main.Update$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Main.Update$SKIP_UPDATE
	D;JNE



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
	@Bird.draw
	D=A
	@R15
	M=D
	@Main.Update$ret.1
	D=A
	@54
	0;JMP

(Main.Update$ret.1)

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
	@Bird.setSpeed
	D=A
	@R15
	M=D
	@Main.Update$ret.2
	D=A
	@54
	0;JMP

(Main.Update$ret.2)

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
	@Bird.movement
	D=A
	@R15
	M=D
	@Main.Update$ret.3
	D=A
	@54
	0;JMP

(Main.Update$ret.3)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

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
	@Bird.draw
	D=A
	@R15
	M=D
	@Main.Update$ret.4
	D=A
	@54
	0;JMP

(Main.Update$ret.4)

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
	@Level.iterator
	D=A
	@R15
	M=D
	@Main.Update$ret.5
	D=A
	@54
	0;JMP

(Main.Update$ret.5)

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
	@Level.check
	D=A
	@R15
	M=D
	@Main.Update$ret.6
	D=A
	@54
	0;JMP

(Main.Update$ret.6)

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
	@Hud.drawSpeed
	D=A
	@R15
	M=D
	@Main.Update$ret.7
	D=A
	@54
	0;JMP

(Main.Update$ret.7)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D


		////PUSH static 2
		@Main.2
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
	@Main.Update$ret.8
	D=A
	@6
	0;JMP
	(Main.Update$ret.8)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Main.Update$SKIP_UPDATE
	D;JNE


	////CALL
	@0
	D=A
	@R14
	M=D
	@Hud.drawScore
	D=A
	@R15
	M=D
	@Main.Update$ret.9
	D=A
	@54
	0;JMP

(Main.Update$ret.9)

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Main.2
		M=D

	////LABEL
(Main.Update$SKIP_UPDATE)

	////CALL
	@0
	D=A
	@R14
	M=D
	@Main.getInput
	D=A
	@R15
	M=D
	@Main.Update$ret.10
	D=A
	@54
	0;JMP

(Main.Update$ret.10)

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

	////CALL
	@1
	D=A
	@R14
	M=D
	@Sys.wait
	D=A
	@R15
	M=D
	@Main.Update$ret.11
	D=A
	@54
	0;JMP

(Main.Update$ret.11)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////GOTO
	@Main.Update$UPDATE
	0;JMP

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Main.GameOver)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Main.0
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////POP static 3
		@SP
		AM=M-1
		D=M
		@Main.3
		M=D

	////CALL
	@0
	D=A
	@R14
	M=D
	@Hud.writeGameOver
	D=A
	@R15
	M=D
	@Main.GameOver$ret.0
	D=A
	@54
	0;JMP

(Main.GameOver$ret.0)

	////RETURN
	@95
	0;JMP


////FUNCTION
(Main.getInput)
@SP
M=M+1
A=M-1
M=0


	////CALL
	@0
	D=A
	@R14
	M=D
	@Keyboard.keyPressed
	D=A
	@R15
	M=D
	@Main.getInput$ret.0
	D=A
	@54
	0;JMP

(Main.getInput$ret.0)

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

		////PUSH constant 32
		@32
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@Main.getInput$ret.1
	D=A
	@6
	0;JMP
	(Main.getInput$ret.1)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Main.getInput$SPACE
	D;JNE

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 82
		@82
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@Main.getInput$ret.2
	D=A
	@6
	0;JMP
	(Main.getInput$ret.2)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Main.getInput$R
	D;JNE

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 80
		@80
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@Main.getInput$ret.3
	D=A
	@6
	0;JMP
	(Main.getInput$ret.3)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Main.getInput$P
	D;JNE

		////PUSH local 0
		@LCL
		A=M
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH constant 83
		@83
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

	////eq INSTRUCTION
	@Main.getInput$ret.4
	D=A
	@6
	0;JMP
	(Main.getInput$ret.4)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Main.getInput$S
	D;JNE

	////GOTO
	@Main.getInput$END
	0;JMP

	////LABEL
(Main.getInput$SPACE)

	////CALL
	@0
	D=A
	@R14
	M=D
	@Bird.setInput
	D=A
	@R15
	M=D
	@Main.getInput$ret.5
	D=A
	@54
	0;JMP

(Main.getInput$ret.5)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

	////GOTO
	@Main.getInput$END
	0;JMP

	////LABEL
(Main.getInput$R)

	////CALL
	@0
	D=A
	@R14
	M=D
	@Main.restart
	D=A
	@R15
	M=D
	@Main.getInput$ret.6
	D=A
	@54
	0;JMP

(Main.getInput$ret.6)

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

		////POP static 3
		@SP
		AM=M-1
		D=M
		@Main.3
		M=D

	////GOTO
	@Main.getInput$END
	0;JMP

	////LABEL
(Main.getInput$S)

		////PUSH static 0
		@Main.0
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Main.getInput$END
	D;JNE

	////CALL
	@0
	D=A
	@R14
	M=D
	@Hud.Seed
	D=A
	@R15
	M=D
	@Main.getInput$ret.7
	D=A
	@54
	0;JMP

(Main.getInput$ret.7)

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

		////POP static 3
		@SP
		AM=M-1
		D=M
		@Main.3
		M=D

	////GOTO
	@Main.getInput$END
	0;JMP

	////LABEL
(Main.getInput$P)

	////CALL
	@0
	D=A
	@R14
	M=D
	@Hud.writePause
	D=A
	@R15
	M=D
	@Main.getInput$ret.8
	D=A
	@54
	0;JMP

(Main.getInput$ret.8)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D


		////PUSH constant 500
		@500
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
	@Sys.wait
	D=A
	@R15
	M=D
	@Main.getInput$ret.9
	D=A
	@54
	0;JMP

(Main.getInput$ret.9)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D


		////PUSH static 3
		@Main.3
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
	@Main.getInput$ret.10
	D=A
	@6
	0;JMP
	(Main.getInput$ret.10)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Main.getInput$END
	D;JNE


		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////PUSH static 0
		@Main.0
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

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Main.0
		M=D

	////LABEL
(Main.getInput$END)

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

	////RETURN
	@95
	0;JMP

////FUNCTION
(Main.restart)

		////PUSH static 0
		@Main.0
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
	@Main.restart$ret.0
	D=A
	@6
	0;JMP
	(Main.restart$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Main.restart$RESETS
	D;JNE


	////CALL
	@0
	D=A
	@R14
	M=D
	@Hud.writePause
	D=A
	@R15
	M=D
	@Main.restart$ret.1
	D=A
	@54
	0;JMP

(Main.restart$ret.1)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Main.0
		M=D

	////LABEL
(Main.restart$RESETS)

	////CALL
	@0
	D=A
	@R14
	M=D
	@Hud.clearScene
	D=A
	@R15
	M=D
	@Main.restart$ret.2
	D=A
	@54
	0;JMP

(Main.restart$ret.2)

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
	@Hud.resetScore
	D=A
	@R15
	M=D
	@Main.restart$ret.3
	D=A
	@54
	0;JMP

(Main.restart$ret.3)

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
	@Level.arrayReset
	D=A
	@R15
	M=D
	@Main.restart$ret.4
	D=A
	@54
	0;JMP

(Main.restart$ret.4)

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
	@Level.resetO
	D=A
	@R15
	M=D
	@Main.restart$ret.5
	D=A
	@54
	0;JMP

(Main.restart$ret.5)

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
	@Bird.reset
	D=A
	@R15
	M=D
	@Main.restart$ret.6
	D=A
	@54
	0;JMP

(Main.restart$ret.6)

		////POP temp 0
		@SP
		AM=M-1
		D=M
		@5
		M=D

		////PUSH constant 2000
		@2000
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
	@Sys.wait
	D=A
	@R15
	M=D
	@Main.restart$ret.7
	D=A
	@54
	0;JMP

(Main.restart$ret.7)

	////RETURN
	@95
	0;JMP


////FUNCTION
(Main.setColorWhite)

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
	@Main.setColorWhite$ret.0
	D=A
	@54
	0;JMP

(Main.setColorWhite$ret.0)

	////RETURN
	@95
	0;JMP

////FUNCTION
(Main.setColorBlack)

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
	@1
	D=A
	@R14
	M=D
	@Screen.setColor
	D=A
	@R15
	M=D
	@Main.setColorBlack$ret.0
	D=A
	@54
	0;JMP

(Main.setColorBlack$ret.0)

	////RETURN
	@95
	0;JMP


////FUNCTION
(Main.getState)

		////PUSH static 0
		@Main.0
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

	////RETURN
	@95
	0;JMP

////FUNCTION
(Main.setNewScore)

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Main.2
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
(MyMath.modulo)


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

	////lt INSTRUCTION
	@MyMath.modulo$ret.0
	D=A
	@36
	0;JMP
	(MyMath.modulo$ret.0)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@MyMath.modulo$END
	D;JNE

	////LABEL
(MyMath.modulo$WHILE)


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
	@MyMath.modulo$ret.1
	D=A
	@36
	0;JMP
	(MyMath.modulo$ret.1)

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@MyMath.modulo$END
	D;JNE


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
	@MyMath.modulo$WHILE
	0;JMP

	////LABEL
(MyMath.modulo$END)

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
(Random.init)

		////PUSH constant 4045
		@4045
		D=A
		@SP
		M=M+1
		A=M-1
		M=D

		////POP static 0
		@SP
		AM=M-1
		D=M
		@Random.0
		M=D

		////PUSH constant 1
		@SP
		M=M+1
		A=M-1
		M=1

		////POP static 1
		@SP
		AM=M-1
		D=M
		@Random.1
		M=D

		////PUSH constant 0
		@SP
		M=M+1
		A=M-1
		M=0

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Random.2
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
(Random.Rand)


		////PUSH static 0
		@Random.0
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 2
		@Random.2
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
	@Random.Rand$ret.0
	D=A
	@54
	0;JMP

(Random.Rand$ret.0)

		////PUSH static 1
		@Random.1
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

		////POP static 2
		@SP
		AM=M-1
		D=M
		@Random.2
		M=D

		////PUSH static 2
		@Random.2
		D=M
		@SP
		M=M+1
		A=M-1
		M=D


		////PUSH static 2
		@Random.2
		D=M
		@SP
		M=M+1
		A=M-1
		M=D

		////PUSH static 2
		@Random.2
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
	@Random.Rand$ret.1
	D=A
	@36
	0;JMP
	(Random.Rand$ret.1)

	////not INSTRUCTION
	@SP
	A=M-1
	M=!M

	////IF-GOTO
		@SP
		AM=M-1
		D=M
	@Random.Rand$MODULO
	D;JNE


		////PUSH constant 32767
		@32767
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

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

	////add INSTRUCTION
		@SP
		AM=M-1
		D=M
	A=A-1
	M=D+M

	////LABEL
(Random.Rand$MODULO)


		////POP static 2
		@SP
		AM=M-1
		D=M
		@Random.2
		M=D

		////PUSH static 2
		@Random.2
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
	@MyMath.modulo
	D=A
	@R15
	M=D
	@Random.Rand$ret.2
	D=A
	@54
	0;JMP

(Random.Rand$ret.2)

	////RETURN
	@95
	0;JMP


////FUNCTION
(Random.setSeed)

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
		@Random.2
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


