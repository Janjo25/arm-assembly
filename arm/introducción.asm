.global main        // Declara "main" como un símbolo global. Este el punto de entrada del programa.

.section .text      // La sección ".text" señala que, a partir de este punto hacia abajo, se encuentra el código del programa.

main:               // Etiqueta que indica el comienzo del programa.
    MOV r7, #0x01   // Se configura "R7" para indicar que, al realizar "SVC", se ejecutará la acción correspondiente al código asignado a "R7".
    MOV r0, #25     // Carga el código de salida "25" en "R0".
    SVC 0           // Realiza una llamada al sistema. El número 0 puede ser por convención y generalmente se ignora, pero "R7" determina la acción.

.section .data      // Inicia la sección ".data", típicamente utilizada para datos inicializados.
