.global _start      // Programa que reinicia los 4 bits menos significativos.

.section .text

_start:
    mov R0, #0xB9   // 10111001.
    mov R1, #0x0F   // 00001111.
    BIC R0, R0, R1

    mov R7, #0x01
    swi 0           // 10110000.

.section .data
