
@MINUS_1
M = -1

@0
D = M - 1
@i
M = D - 1

// BUBBLE SORT
$WHILE(i)
	@0
	D = M
	@j
	M = D
	@i
	D = M
	@j
	M = M - D
	M = M - 1
	$WHILE(j)
		@j
		D = M
		@99
		A = A + D
		D = M

		// compare v 1
		@C1
		M = D

		@j
		D = M
		@100
		A = A + D
		D = M

		@C1
		D = M - D
		@SKIP_SWAP
		D; JLE

		@j
		D = M
		@99
		A = A + D
		D = M
		@S1
		M = D
		
		@j
		D = M
		@99
		A = A + D
		A = A + 1
		D = M
		@S2
		M = D

		@j
		D = M
		@99
		A = A + D
		D = A
		@AD
		M = D
		@S2
		D = M
		@AD
		A = M
		M =  D

		@j
		D = M
		@99
		A = A + D
		D = A + 1
		@AD
		M = D
		@S1
		D = M
		@AD
		A = M
		M =  D


		(SKIP_SWAP)

		$SUM(j, MINUS_1, j)
	$END

	$SUM(i, MINUS_1, i)	
$END

(END)
@END
0; JMP
