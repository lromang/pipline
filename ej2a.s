.data
.org 100
i: .word32 0
.text
.org 200
	daddi R1, R0, 0;  # Counter
	daddi R2, R0, 10; # Limit loop
	daddi R3, R0, 0;  # Index array
	daddi R4, R0, 2;  # Increase powers of two
	daddi R5, R0, 1;  # Accum powers of two
WHILE:  daddi R1, R1, 1
        slt   R6, R1, R2
	beqz  R6, ENDW
	dmul  R5, R5, R4
	sw    R5, i(R3)
	daddi R3, R3, 8
        j WHILE
ENDW:	nop
	halt
