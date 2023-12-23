.global main        // Programa que altera bits al detectar una señal positiva.

.section .text

main:
    MOV R0, #0x64   // 100=01100100.
    MOV R1, #0xC8   // 200=11001000.

    ORR R0, R0, R1

    MOV R7, #0x01
    SVC 0           // 236=11101100.

.section .data
