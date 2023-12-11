
@R1
D = M
@SET_1
D; JEQ

@R1
D = M - 1
@SET_R0_R2
D; JEQ

@R0
D = M
@SET_0
D; JEQ

@R0
D = M - 1
@SET_1
D; JEQ

@MAIN
0; JMP

(SET_0)
@R2
M = 0
@END
0; JMP

(SET_1)
@R2
M = 1
@END
0; JMP

(SET_R0_R2)
$MV(R0, R2)
@END
0; JMP

(MUL)
	$MV(A0, M0)
	$MV(A1, M1)

	@MR
	M = 0
	$WHILE(M1)
		$SUM(M0, MR, MR)
		@M1
		M = M - 1
	$END
	$MV(MR, RV)
	@RA
	A = M
	0; JMP

(MAIN)
	@R2
	M = 1
	$MV(R1, i)
	$WHILE(i)
		$MV(R0, A1)
		$MV(R2, A0)
		@MUL_DONE
		D = A
		@RA
		M = D
		@MUL
		0; JMP

		(MUL_DONE)
		$MV(RV, R2)
		@i
		M = M - 1
	$END

(END)
@END
0; JMP
