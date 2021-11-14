.ORIG x3000
LD R0, Number1
LD R1, Number2

ST R2, saveR2
LD R5, adrSUB

; call the SUB subroutine, use JSRR if the SUB is within 11 bit ; offset.

JSRR R5
ST R3, Result
LD R2, saveR2

HALT
Number1 .FILL x000A
Number2 .FILL #8
Result .BLKW #1
saveR2 .BLKW #1
adrSUB .FILL x300D

 NOT R1, R1 ; negate R1 ; create a subroutine called SUB
    ADD R2, R1, #1 ; 2's complement
    ADD R3, R0, R2 ; R3 = R0 - R2
    RET

.END