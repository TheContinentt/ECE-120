; This program calculates X! (X factorial). It can calculate
;   different numbers (4!, 6!, etc.) by changing the value of the first memory
;   location at the bottom of the code. It is currently set up to calculate
;   5!. The program does not account for zero or negative numbers as input.

; This program primarily uses registers in the following manner:
; R0 contains 0 (registers contain zero after reset)
; R1 contains multiplication result (6x5 = 30, 30x4 = 120, etc)
; R2 contains -1
; R3 contains counter for outer loop
; R4 contains counter for inner loop
; R5 contains current sum

            .ORIG x3000
            AND   R2,R2,00000         ; clear R2 as x0000
	    AND   R0,R0,00000         ; clear R0 as x0000
	    AND   R5,R5,00000         ; clear R5 as x0000
      	    AND   R1,R1,00000         ; clear R1 as x0000
            LD    R1,INPUT            ; R1 contains input number
            LD    R2,INPUT2           ; R2 contains -1
            ADD   R3,R5,R1            ; R3 contains input number 5
	    ADD   R3,R3,R2            ; R3 contains input number 4
            ADD   R3,R3,R2            ; R3 contains input number 3
                                      ;   (initializes outer count)
OUTERLOOP   ADD   R4,R0,R3            ; Copy outer count into inner count

; This loop multiplies via addition (6x5 = 6+6+6+6+6 = 30,
;   30x4 = 30+30+30+30 = 120, etc)
INNERLOOP   ADD   R5,R5,R1            ; Increment sum
            ADD   R4,R4,R2            ; Decrement inner count
            BRzp  INNERLOOP           ; Branch to inner loop if inner count
                                      ;   is positive or zero
            ADD   R1,R0,R5            ; R1 now contains sum result from inner loop
            AND   R5,R5,00000         ; Clear R5 (previous sum) to 0
            ADD   R3,R3,R2            ; Decrement outer count
            BRzp  OUTERLOOP           ; Branch to outer loop if outer count
                                      ;   is positive or zero

INPUT4      ST   R1,INPUT4            ; This address contains X!          
            TRAP x25

INPUT      .FILL  x0005               ; Input for X!, in this case X = 5
INPUT1     .FILL  x0010
INPUT2     .FILL  xFFFF               ; 2's complement of 1 (i.e. -1)
INPUT3     .FILL  x0000               ; At program completion, the result is
                                      ;   stored here
	   .END
