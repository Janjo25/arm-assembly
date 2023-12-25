.global main

.section .text

main:
    MOV R7, #0x04       // Se configura "R7" para indicar una llamada al sistema de escritura en la consola.
    MOV R0, #0x01       // Establecer "R0" en 1 (StdOut) para escribir en la consola.
    LDR R1, =message    // Cargar la dirección de la cadena a imprimir usando "LDR" (Load Register).
    MOV R2, #13         // Longitud de la cadena incluyendo el carácter nulo final.
    SVC 0

    MOV R7, #0x01
    MOV R0, #0
    SVC 0

.section .data
message: .asciz "Hello World!"  // Define la cadena con un carácter nulo al final.
