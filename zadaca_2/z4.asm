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

@4096
D = A;
@i
M = D;

(LOOP_I_0)
        @4104
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
        D; JEQ

        @i
        D = M;
        @SCREEN
        D = A + D;
        @AD
        M = D;
        @1
        D = A;
        @AD
        A = M;
        M = M | D;

        @32
        D = A;
        @i
        M = M + D;

        @LOOP_I_1
        0; JMP
(LOOP_I_1_END)

@40
D = A;
@i
M = D;

(LOOP_I_2)
        @4136
        D = A;
        @i
        D = M - D;
        @LOOP_I_2_END
        D; JEQ

        @i
        D = M;
        @SCREEN
        D = A + D;
        @AD
        M = D;
        @1
        D = A;
        @AD
        A = M;
        M = M | D;

        @32
        D = A;
        @i
        M = M + D;

        @LOOP_I_2
        0; JMP
(LOOP_I_2_END)

(END)
@END
0; JMP
