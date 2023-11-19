
// definiraj registre
@A0
@A1
@A3
@RA
@RV
@V0
@V1
@V2
@V3

// namjesti konstante
@15
D = A;
@B
M = D;

@240
D = A;
@B
A = A + 1;
M = D;

@3840
D = A;
@B
A = A + 1;
A = A + 1;
M = D;

@61440
D = A;
@B
A = A + 1;
A = A + 1;
A = A + 1;
M = D;

// odi u main
@MAIN
0; JMP

(MUL)
        // v0 iterator
        @A1
        D = M;
        @V0
        M = D;

        // v1 rjesenje
        @V1
        M = 0;        

        (MUL_LOOP)
                @V0
                D = M;
                @MUL_LOOP_END
                D; JEQ

                @A0
                D = M;
                @V1
                M = M + D;

                @V0
                M = M - 1; 

                @MUL_LOOP
                0; JMP

        (MUL_LOOP_END)
        @V1
        D = M;
        @RV
        M = D;
        @RA
        D = M;
        A = D;
        0; JMP         


(DIV)
        // rjesenje i iterator
        @V0
        M = 0;
      
        // ucitaj a0 u v1
        @A0
        D = M;
        @V1
        M = D;
         
        (DIV_LOOP)
                @V1 
                D = M;
                @DIV_LOOP_END
                D; JLT

                @A1
                D = M;
                @V1
                M = M - D;
                @V0
                M = M + 1;

                @DIV_LOOP
                0; JMP

        (DIV_LOOP_END)
        @V1
        D = M;
        @DIV_ADD_1_END
        D; JEQ
        
        (DIV_ADD_1)
        @V0
        M = M - 1;

        (DIV_ADD_1_END)
        @V0
        D = M;
        @RV
        M = D;
        @RA
        D = M;
        A = D;
        0; JMP
              

(MAIN)
        @B
        D = M;

        @44
        D = A;
        @A0
        M = D;

        @3
        D = A;
        @A1
        M = D;

        @t0
        D = A;
        @RA
        M = D;

        @MUL
        0; JMP

        (t0)
        @RV
        D = M;
        @0
        M = D;


        (MAIN_END)
                @MAIN_END
                0; JMP
       
