.global main

.section .text

main:
    MOV R0, #50
    MOV R1, #25

    SUB R0, R0, R1  // Usar "SUB" para restar enteros y "SBC" cuando se necesita restar con acarreo (carry).

    MOV R7, #0x01
    SVC 0

.section .data
