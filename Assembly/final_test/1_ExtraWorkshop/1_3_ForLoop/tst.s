.section .text
.align 2
.global _start
_start:
    mov r0, #0 @c
    mov r1, #0 @a
    mov r2, #3 @b
    mov r3, r1 @i
    cmp r3, r2
    blt _loop

_loop:
    add r0, r0, #1
    add r3, r3, #1
    cmp r3, r2
    blt _loop

_end:
    b _end



