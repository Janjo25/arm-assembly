.global _start      // Programa para verificar paridad.

.section .text

_start:
    mov R7, #0x01
    mov R1, #25
    AND R0, R1, #1  // Operación "AND" bit a bit entre "R1" y "#1". El "LSB" determina la paridad (R0=1 si impar, R0=0 si par).

    swi 0

.section .data
