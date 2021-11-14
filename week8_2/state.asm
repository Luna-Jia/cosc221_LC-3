.ORIG x3000
;;;;;;;;;;;;;;

;;; save the address of state into R1
LEA R1, state

;;; load prompt1 into R0
LEA R0, prompt1

;;; show string on the screen
PUTS

;;; Read a single letter 
LOOP GETC


ADD R5, R0, #-10
BRz DONE
OUT
STR R0, R1, #0
ADD R1, R1, #1
BR LOOP
DONE LEA R0, prompt2
PUTS
GETC
OUT
NOT R2, R0
ADD R2, R2, #1
LEA R1, state
AND R4, R4, #0
LDR R3, R1, #0
BRZ STOP
ADD R4, R4, #1
NOCOUNT ADD R1, R1, #1
BR LOOP
STOP LD R7, zero
ADD R0,R7, R4
OUT




HALT
;;;;;;;;;;;;;;;

prompt1 .STRINGZ "Enter a state: "
prompt2 .STRINGZ "Enter a letter: "

state .BLKW #15

zero .FILL #48

;;;;;;;;;;;;;;;;;
.END