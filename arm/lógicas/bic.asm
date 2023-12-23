.global main        // Programa que reinicia los 4 bits menos significativos.

.section .text

main:
    MOV R0, #0xB9   // 10111001.
    MOV R1, #0x0F   // 00001111.

    BIC R0, R0, R1

    MOV R7, #0x01
    SVC 0           // 10110000.

.section .data
