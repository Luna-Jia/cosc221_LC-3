;read and display strings
;iostr.asm means input and ouput strings 

             .ORIG   x3000          ; start program at location x3000

             LD     R2, enter       ; R2 has the (enter key) negative
             LEA    R1, state       ; put the address of state to R1
             LEA    R0, prompt1     ; put the address of prompt1 to R0
             PUTS                   ; display prompt1 on the screen
 again:      GETC                   ; wait users to enter a character, r0 = 'O'
             ADD    R3, R0, R2      ; check if user pressed enter key 
             BRZ    outLoop         ; if enter key is pressed, leave
             OUT                    ; display letter O on the screen
             
             ; load the letter into the state 
             STR    R0, R1, #0      ; story R0 in R1, R1 is the address of the state
             ADD    R1, R1, #1      ; increment the address by 1
             BR     again


 outLoop:    LEA     R0, eol    
            PUTS
             LEA     R0, state
             PUTS
             HALT                   ; end of the instruction 
prompt1      .STRINGZ "Enter a state"  
state        .BLKW      20           ;BLKW means block of word, reserve 20 space 
enter        .FILL      #-10
eol          .STRINGZ "\n"
             .END                    ;end of the entire program 