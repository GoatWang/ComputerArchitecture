.section .text
.align 2
.global _start
_start: 
    ldr r0, =_data
    mov r8, r0
    ldr r1, [r0], #4
    ldr r2, [r0], #4

_gcd:
    sdiv  r3, r1, r2
    mul   r4, r3, r2
    sub   r5, r1, r4
    str   r5, [r0], #4
    cmp   r5, #0
    moveq r6, r2
    beq   _end

    mov   r1, r2
    mov   r2, r5
    b     _gcd

_end:
    b _end

.section .data
_data:
    .word 75, 60


    