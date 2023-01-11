.section .text
.align 2
.global _start
_start:
    ldr r4, =_matrix
    ldr r0, [r4]
    ldr r1, [r4, #4]!
    ldr r2, [r4, #4]!
    ldr r3, [r4, #4]!
    mul r5, r0, r3
    mul r6, r1, r2
    sub r7, r5, r6

_end:
    b _end


.section .data
_matrix: .word 1,2,3,4 @ a,b,c, and d values