.global _start      // Declara "_start" como un símbolo global. Este el punto de entrada del programa.

.section .text      // La sección ".text" señala que, a partir de este punto hacia abajo, se encuentra el código del programa.

_start:             // Etiqueta que indica el comienzo del programa.
    mov r7, #0x01   // Se configura "r7" para indicar que, al realizar "swi", se ejecutará la acción correspondiente al código asignado a "r7".
    mov r0, #25     // Carga el código de salida "25" en "r0".

    swi 0           // Realiza una llamada al sistema. El número 0 puede ser por convención y generalmente se ignora, pero "r7" determina la acción.

.section .data      // Inicia la sección ".data", típicamente utilizada para datos inicializados.
