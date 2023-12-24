.global main

.extern printf

.section .text

main:
    MOV R0, #5
    MOV R1, #0

    CMP R0, R1

    BGT greater             // Salta a la etiqueta "greater" si "R0" es mayor que "R1".

    LDR R0, =notGreaterMsg
    BL printf

    MOV R7, #0x01
    MOV R0, #0
    SVC 0

greater:
    LDR R0, =greaterMsg
    BL printf

    MOV R7, #0x01
    MOV R0, #0
    SVC 0

.section .data
greaterMsg: .asciz "R0 es mayor que R1.\n"
notGreaterMsg: .asciz "R0 no es mayor que R1.\n"
