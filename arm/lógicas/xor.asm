.global main        // Programa que altera bits al identificar un cambio de señal (0 a 1 o 1 a 0).

.section .text

main:
    MOV R0, #0xFF   // 255=11111111.
    MOV R1, #0x96   // 150=10010110.

    EOR R0, R0, R1

    MOV R7, #0x01
    SVC 0           // 105=01101001.

.section .data
