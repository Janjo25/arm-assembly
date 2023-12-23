.global main

.section .text

main:
    MOV R0, #25
    MOV R1, #50

    ADD R0, R0, R1  // Usar "ADD" para sumar enteros y "ADC" cuando se necesita sumar con acarreo (carry).

    MOV R7, #0x01
    SVC 0

.section .data
