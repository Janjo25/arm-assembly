.global main

.extern printf

.section .text

main:
    MOV R0, #0
    MOV R1, #0

    CMP R0, R1

    BEQ equal               // Salta a la etiqueta "equal" si "R0" es igual a "R1".

    LDR R0, =notEqualMsg
    BL printf

    MOV R7, #0x01
    MOV R0, #0
    SVC 0

equal:
    LDR R0, =equalMsg
    BL printf

    MOV R7, #0x01
    MOV R0, #0
    SVC 0

.section .data
equalMsg: .asciz "Los números son iguales.\n"
notEqualMsg: .asciz "Los números no son iguales.\n"
