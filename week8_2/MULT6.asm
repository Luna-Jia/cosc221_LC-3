; Example from book, Figure 7.1, page 179
; Program to multiply an integer by the constant 6.
; Before execution, an integer must be stored in 
; NUMBER.

        .ORIG x3000
        LD R1, SIX
        LD R2, NUMBER
        AND R3, R3, #0 ;will contain product

AGAIN:  ADD R3, R3, R2
        ADD R1, R1, #-1
        BRp AGAIN
        HALT
        
NUMBER: .BLKW 1
SIX:    .FILL #65
        .END