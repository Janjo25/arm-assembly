.global main

.extern printf, scanf

.section .text

main:
    LDR R0, =prompt
    BL printf

    LDR R0, =format     // Carga la dirección de la cadena "format" (un especificador de formato para enteros) en "R0".
    LDR R1, =number     // Carga la dirección de la variable "number" en "R1".
    BL scanf            // Llama a la función "scanf" para leer un entero del usuario y almacenarlo en "number".

    LDR R0, =message
    LDR R1, =number
    LDR R1, [R1]
    BL printf

    MOV R7, #0x01
    MOV R0, #0
    SVC 0

.section .data
format: .asciz "%d"
message: .asciz "El número ingresado es: %d\n"
prompt: .asciz "Introduzca un número: "

number: .word 0 // Un espacio para almacenar el entero leído del usuario.
