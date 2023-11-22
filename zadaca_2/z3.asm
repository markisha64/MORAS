
@MAIN
0; JMP

(MAIN)
        D = 0;
        @0
        D = M;
        @1
        D = D + M;
        @2
        D = D + M;        
        @3
        D = D + M;        
        @4
        D = D + M;
        @5
        M = D;
        (MAIN_END)
        @MAIN_END
        0; JMP
