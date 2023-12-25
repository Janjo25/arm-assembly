.global main

.extern printf

.section .text

main:
    LDR R0, =prompt
    BL printf

    MOV R7, #0x03       // Preparar para la llamada al sistema "read" (número de llamada al sistema 3).
    MOV R0, #0x00       // Establecer "R0" en 0 (StdIn) para leer de la entrada.
    LDR R1, =buffer     // Carga la dirección del búfer para almacenar la entrada.
    MOV R2, #15         // Número de bytes a leer (15 en este caso).
    SVC 0

    LDR R0, =greeting   // Carga la dirección de la cadena "greeting" en "R0".
    LDR R1, =buffer     // Carga la dirección del búfer de entrada (ahora contiene el nombre) en "R1".
    BL printf

    MOV R7, #0x01
    MOV R0, #0
    SVC 0

.section .data
greeting: .asciz "Hola, %s\n"
prompt: .asciz "Introduzca su nombre:\n"

buffer: .fill 15                        // Búfer para almacenar 15 bytes de entrada del usuario.
