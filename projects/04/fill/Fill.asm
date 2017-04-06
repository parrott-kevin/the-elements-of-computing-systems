@ SCREEN
D = A
@ pixel
M = D 
@ i
M = 1

// add pixels
(FILL)
@ KBD
D = M
@ CLEAR
D; JEQ
@ 24575
D = M
@ CLEAR
D; JLT
@ i
D = M
@ pixel
A = M + D
M = -1
@ i
M = M + 1
@ FILL
0; JMP

// deletes pixels
(CLEAR)
@ KBD
D = M
@ FILL
D; JGT
@ i
D = M
@ FILL
D; JLT
@ pixel
A = M + D
M = 0
@ i
M = M - 1
@ CLEAR
0; JMP
