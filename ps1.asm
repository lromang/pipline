        # -----------------------------
        # Luis Manuel Roman Garcia
        # 117077
        # Ejercicio 1
        # -----------------------------


        # -----------------------------
        # Declaraciones
        # -----------------------------
        .data
j:      .word 0  # Palabra con valor inicial 0
i:      .word 0  # Palabra con valor inicial 0
        # -----------------------------
        # Rutina
        # -----------------------------
        .text
        .globl main
main:
        addi $s2, $zero, 0   # Inicializar en 0 s2
        addi $s3, $zero, 0   # Inicializar en 0 s3
        addi $s4, $zero, 10  # Inicializar en 10 s4
while:
        slt  $t0, $s2, $s4   # Verificar si s2 es menor a s4
        beqz $t0, endw       # En caso contrario, terminar while
        addi $s3, $s3, 5     # Incrementar s3 en 5
        sw   $s3, j          # Guardar el valor de s3 en la dirección de j
        addi $s2, $s2, 1     # Incrementar el valor de s2 en 1 
        sw   $s2, i          # Guardar el valor de s2
        j    while
endw:
        # -----------------------------
        # Terminar rutina
        # -----------------------------
        li   $v0, 10
        syscall
