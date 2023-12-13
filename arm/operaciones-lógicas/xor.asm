.global _start      // Programa que altera bits al identificar un cambio de señal (0 a 1 o 1 a 0).

.section .text

_start:
    mov R0, #0xFF   // 255=11111111.
    mov R1, #0x96   // 150=10010110.
    EOR R0, R0, R1

    mov R7, #0x01
    swi 0           // 105=01101001.

.section .data
