.section .text
.align 2
.global _start
_start:
    mov r0, #1
    mov r1, #2
    cmp r0, r1
    rsbne r0, r1, r1, lsl #2
    rsbeq r1, r0, r0, lsl #4

_end:
    b _end