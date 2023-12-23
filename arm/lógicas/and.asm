.global main        // Programa para verificar paridad.

.section .text

main:
    MOV R1, #25

    AND R0, R1, #1  // Operación "AND" bit a bit entre "R1" y "#1". El "LSB" determina la paridad (R0=1 si impar, R0=0 si par).

    MOV R7, #0x01
    SVC 0

.section .data
