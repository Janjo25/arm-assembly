.global main

.extern printf

.section .text

main:
    MOV R0, #25
    MOV R1, #50

    CMP R0, R1

    BLT less            // Salta a la etiqueta "less" si "R0" es menor que "R1".

    LDR R0, =notLessMsg
    BL printf

    MOV R7, #0x01
    MOV R0, #0
    SVC 0

less:
    LDR R0, =lessMsg
    BL printf

    MOV R7, #0x01
    MOV R0, #0
    SVC 0

.section .data
lessMsg: .asciz "R0 es menor que R1.\n"
notLessMsg: .asciz "R0 no es menor que R1.\n"
