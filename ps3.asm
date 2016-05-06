        # -----------------------------
        # Luis Manuel Roman Garcia
        # 117077
        # Ejercicio 3 a
        # -----------------------------


        # -----------------------------
        # Declaraciones
        # -----------------------------
        .data
array:  .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
        .word 12, 13, 14, 15, 16, 17, 18, 19 , 20
        .word 21, 22, 23, 24, 25, 26, 27, 28, 29
        .word 30, 31, 32   # El tamaño del arreglo es 32 con valores de prueba.
        # -----------------------------
        # Rutina
        # -----------------------------
        .text
        .globl main
main: 
	la    $s0, array        # Cargar primer dirección del arreglo
	addi  $s1, $zero, 128   # 32*4 (elementos en el arreglo por su tamaño)
while:   
        lw    $s2, 0($s0)       # Cargar valor en la dirección apuntada por s0
	addi  $s2, $s2, 4       # Incrementar s2 en 4
	sw    $s2, 0($s0)       # Guardar el valor de s2 en la dirección apuntada por s0
	addi  $s1, $s1, -4      # Decrementar s1
	addi  $s0, $s0, 4       # Incrementar s0 en 4 (el tamaño de la palabra)
	bne   $s1, $zero, while # Verificar si s1 es igual a cero.
endw:
        # -----------------------------
        # Terminar rutina
        # -----------------------------
        li   $v0, 10
        syscall
