.data
.org 100
i:	.word32 0
j:	.word32 0
.text
.org 200
	daddi R2, R0, 0;  # Counter
	daddi R3, R0, 0;  # Accum + 5
	daddi R5, R0, 10; # Limit Loop
WHILE:	slt   R6, R2, R5
	beqz  R6, ENDW
	daddi R3, R3, 5
	sw    R3, j(R0)
	daddi R2, R2, 1
	sw    R2, i(R0)
	j WHILE
ENDW:	nop
	halt
