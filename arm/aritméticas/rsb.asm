.global main

.section .text

main:
    MOV R0, #25
    MOV R1, #50

    RSB R0, R0, R1  // Usar "RSB" para restar inversamente enteros y "RSC" cuando se necesita restar inversamente con acarreo (carry).

    MOV R7, #0x01
    SVC 0

.section .data
