        # -----------------------------
        # Luis Manuel Roman Garcia
        # 117077
        # Ejercicio 2
        # -----------------------------


        # -----------------------------
        # Declaraciones
        # -----------------------------
        .data
array:  .space 40  # Alocar espacio en número de bytes: 10*sizeof(int)
        # -----------------------------
        # Rutina
        # -----------------------------
        .text
        .globl main
main: 
	la   $s0, array       # Obtener dirección de base del arreglo.
	addi $s1, $zero, 1    # Acumulador de potencias de dos. Inicializar en 1.
	addi $s2, $zero, 0    # Índice del arreglo. Inicializar en 0.
	addi $s3, $zero, 10   # Valor máximo del arreglo. Inicializar en 10.
	add  $s4, $s0, $s2
while:
	slt  $t0, $s2, $s3    # Verificar si el índice es menor al máximo.
	beqz $t0, endw        # En caso negativo, salir del arreglo.
	sw   $s1, ($s4)	      # Guardar en la dirección apuntada por $s0 el valor de $s1.
	addi $s2, $s2, 1      # Incrementar el contador en 1.
	sll  $t1, $s2, 2	
	add  $s4, $s0, $t1    # Sumar a $s0
	sll  $s1, $s1, 1      # Multiplicar por 2. En el caso 1 reemplazar por mul $s1, $s1, 2
        j    while
endw:   
        # -----------------------------
        # Terminar rutina
        # -----------------------------
        li   $v0, 10
        syscall
