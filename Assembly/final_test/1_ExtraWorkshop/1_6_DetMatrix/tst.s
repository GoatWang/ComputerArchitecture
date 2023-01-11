.section .text
.align 2
.global _start
_start: 
    mov r0, #1
    mov r1, #2
    mov r2, #3
    mov r3, #4

    mul r4, r0, r3
    mul r5, r1, r2
    sub r6, r4, r5 @ Det

    mov r7, #1
    lsl r6, r6, #8 @24.8
    lsl r7, r7, #16 @16.16
    sdiv r6, r7, r6

    lsl r0, r0, #8 @24.8
    lsl r1, r1, #8 @24.8
    lsl r2, r2, #8 @24.8
    lsl r3, r3, #8 @24.8

    mul r7, r6, r3
    lsr r7, r7, #8
    mov r4, #-1

    mul r1, r1, r4
    mul r8, r6, r1
    lsr r8, r8, #8

    mul r2, r2, r4
    mul r9, r6, r2
    lsr r9, r9, #8

    mul r10, r6, r0
    lsr r10, r10, #8

_end:
    b _end

