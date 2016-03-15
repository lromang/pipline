.data
x0: .word32 0
.text
	daddi R1, R0, 128
LOOP:   lw    R10, 0(R1)
	daddi R10, R10, 4
	sw    R10, 0(R1)
	daddi R1, R1, -4
	bne   R1, R0, LOOP
ENDW: nop
      halt
