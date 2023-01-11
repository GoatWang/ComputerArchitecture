.section .text
.align 2
.global _start
_start:
    mov r0, #0
    mov r1, #3
    b _loop

_loop:
    add r0, r0, #1
    cmp r0, r1
    blt _loop

_end:
    b _end

