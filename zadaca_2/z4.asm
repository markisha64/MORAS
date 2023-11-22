@32
D = A;
@i
M = D;

(LOOP_I)
        @40
        D = A;
        @i
        D = M - D;
        @LOOP_I_END
        D; JEQ

        @i
        D = M;
        @SCREEN
        A = A + D;
        M = -1;

        @i
        M = M + 1;

        @LOOP_I
        0; JMP
(LOOP_I_END)

@4032
D = A;
@i
M = D;

(LOOP_I_0)
        @4040
        D = A;
        @i
        D = M - D;
        @LOOP_I_0_END
        D; JEQ

        @i
        D = M;
        @SCREEN
        A = A + D;
        M = -1;

        @i
        M = M + 1;

        @LOOP_I_0
        0; JMP
(LOOP_I_0_END)

@32
D = A;
@i
M = D;

(LOOP_I_1)
        @4128
        D = A;
        @i
        D = M - D;
        @LOOP_I_1_END
        D; JGE

        @i
        D = M;
        @SCREEN
        D = A + D;
        @AD
        M = D;
        @1
        D = M;
        @AD
        A = M;
        M = M | D;

        @32
        D = M
        @i
        M = M + D;

        @LOOP_I_1
        0; JMP
(LOOP_I_1_END)

(END)
@END
0; JMP
