.global _start      // Programa que altera bits al detectar una señal positiva.

.section .text

_start:
    mov R0, #0x64   // 100=01100100.
    mov R1, #0xC8   // 200=11001000.
    ORR R0, R0, R1

    mov R7, #0x01
    swi 0           // 236=11101100.

.section .data
