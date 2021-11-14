.ORIG x3000

;; R2=0
AND     R2, R2, #0  

;; R3=1 OF NUMS
LEA      R3, NUMBS  

count 
LDR     R0, R3, #0

BRz     done_count
ADD     R2, R2, #1
ADD     R3, R3, #1
BR      count 

done_count
ADD     R4, R2, #0  ;; R4 = len
BRz     sorted 

;;;;;;;;;;;;;;;;;;;;;;;
;; bubble sort start

outerloop
ADD     R4, R4, #-1
BRnz    sorted
ADD     R5, R4, #0
LD      R3, NUMS

innerloop
LDR     R0, R3, #0     ; R0 = 12
LDR     R1, R3, #1     ; R1 = 3 
NOT     R2, R1
ADD     R2, R2, #1     ; R2 = -3
ADD     R2, R0, R2     ; R2 = 12 - 3 = 9 = swap
BRnz    swapped 




;;;;;;;;;;;;;;;;;;

sorted
HALT

;;;;;;;;;;;;;;;;;;

;; variable 大写， cabel 小写

NUMS    .FILL   x3500      

;;;;;;;;;;;;;;;;;;

.END