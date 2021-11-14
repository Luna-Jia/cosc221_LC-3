.ORIG x3000

AND     R1, R1, #0
AND     R2, R2, #0
AND     R3, R3, #0
AND     R4, R3, #0

LEA     R1, x00FB
AND     R2, R2, #8
LDR     R3, R1, 0
AND     R4, R4, R3
AND     R2, R2, #-1
BRZ     STOP
AND     R1, R1, #1
BRP     LOOP

STOP
HALT

.END