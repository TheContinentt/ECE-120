 .ORIG x3000

        LEA R1,STUFF

LOOP    LDR R0,R1,#0

        AND R0,R0,xFF

        BRz DONE

        OUT

        ADD R1,R1,#1

        BRnzp LOOP

DONE    HALT

STUFF   .FILL x7768

        .FILL xAB65

        .FILL xEA6C

        .FILL xF06C

        .FILL x976F

        .FILL x1200

 

        .END
