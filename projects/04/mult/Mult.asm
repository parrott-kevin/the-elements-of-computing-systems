// Create a program that multiplies R0 and R1
@ i
M = 1
@ R2 
M = 0
(LOOP)
    @ i
    D = M
    @ R1
    D = D - M
    @ END
    D; JGT
    @ R0
    D = M
    @ R2
    M = D + M
    @ i
    M = M + 1
    @ LOOP
    0; JMP
(END)
    @ END
    0; JMP
