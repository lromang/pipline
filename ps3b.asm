        # -----------------------------
        # Luis Manuel Roman Garcia
        # 117077
        # Ejercicio 3 b
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
        lw    $s2, 0($s0)
	addi  $s2, $s2, 4
	sw    $s2, 0($s0)
	
	lw    $s2, 4($s0)
	addi  $s2, $s2, 4
	sw    $s2, 4($s0)
	
	lw    $s2, 8($s0)
	addi  $s2, $s2, 4
	sw    $s2, 8($s0)
	
	lw    $s2, 16($s0)
	addi  $s2, $s2, 4
	sw    $s2, 16($s0)
	
	addi  $s1, $s1, -16
	addi  $s0, $s0, 20
	bne   $s1, $zero, while
endw:
        # -----------------------------
        # Terminar rutina
        # -----------------------------
        li   $v0, 10
        syscall