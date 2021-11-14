;;;;;;;;;;;;;;;;;;;;

.ORIG x3000

;;;;;;;;;;;;;;;;;;;;

LEA R0, STATE
PUTS

ADD R1, R0, #0

LOOP 
LDR R3, R1, #0

BRz DONE
ADD R1, R1, #1
BR LOOP

DONE 
NOT R2, R0

ADD R2, R2, R1 

LOOP2 
ADD R2, R2, #0
BRn DONE2
LDR R3, R0, #0
LDR R4, R1, #0

STR R4, R0, #0
STR R4, R1, #0

ADD R0, R0, #1
ADD R1, R1, #-1
ADD R2, R2, #-2
BR LOOP2

DONE2
LEA R0, STATE
PUTS

;;;;;;;;;;;;;;;;;;;;;;;

HALT

;;;;;;;;;;;;;;;;;;;;

STATE .STRINGZ "MISSISSIPI\n"

;;;;;;;;;;;;;;;;;;;;;;;;;

.END