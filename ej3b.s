.data
x0: .word32 0
.text
	daddi R1, R0, 128;
LOOP:   lw    R10, 0(R1);
	daddi R10, R10, 4 ; 
	sw    R10, 0(R1); 

	lw    R11, -8(R1);
	daddi R11, R11, 4;
	sw    R11, -8(R1); 

	lw    R12, -16(R1);
	daddi R12, R12, 4; 
	sw    R12, -16(R1);

	lw    R13, -24(R1);
	daddi R13, R13, 4;
	sw    R13, -24(R1); 

	daddi R1, R1, -32;
	bne   R1, R0, LOOP
ENDW: nop
	halt











