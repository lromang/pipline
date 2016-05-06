        # -----------------------------
        # Luis Manuel Roman Garcia
        # 117077
        # Ejercicio 3 c
        # -----------------------------


        # -----------------------------
        # Declaraciones
        # -----------------------------
        .data
array:  .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
        .word 12, 13, 14, 15, 16, 17, 18, 19 , 20
        .word 21, 22, 23, 24, 25, 26, 27, 28, 29
        .word 30, 31, 32  # El tamaño del arreglo es 32 con valores de prueba.
        # -----------------------------
        # Rutina
        # -----------------------------
        .text
        .globl main
main: 
	la    $s0, array
	addi  $s1, $zero, 128
while:   
        lw    $t0, 0($s0)
        lw    $t1, 4($s0)
	addi  $t0, $t0, 4
	addi  $t1, $t1, 4
	
	lw    $t2, 8($s0)
	lw    $t3, 16($s0)
	addi  $t2, $t2, 4
	addi  $t3, $t3, 4
	
	sw    $t0, 0($s0)	
	sw    $t1, 4($s0)
	sw    $s2, 8($s0)
	sw    $s3, 16($s0)
	
	addi  $s1, $s1, -16
	addi  $s0, $s0, 20
	bne   $s1, $zero, while
endw:
        # -----------------------------
        # Terminar rutina
        # -----------------------------
        li   $v0, 10
        syscall