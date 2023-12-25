.global main

.extern printf

.section .text

main:
    LDR R0, =rowOne     // Se carga la cadena de formato en el registro "R0".
    MOV R1, #0          // El registro "R1" se asigna al primer marcador de posición (placeholder) en la cadena de formato, y así sucesivamente.
    EOR R1, R1, #0
    BL printf

    LDR R0, =rowTwo
    MOV R1, #1
    EOR R1, R1, #0
    BL printf

    LDR R0, =rowThree
    MOV R1, #0
    EOR R1, R1, #1
    BL printf

    LDR R0, =rowFour
    MOV R1, #1
    EOR R1, R1, #1
    BL printf

    MOV R7, #0x01
    MOV R0, #0
    SVC 0

.section .data
rowOne: .asciz "0 XOR 0 = %d\n"
rowTwo: .asciz "0 XOR 1 = %d\n"
rowThree: .asciz "1 XOR 0 = %d\n"
rowFour: .asciz "1 XOR 1 = %d\n"
