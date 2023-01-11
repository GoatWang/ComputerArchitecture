.section .data
    _data: .word 60, 75

.section .text
.align 2
.global _start
_start:    
    ldr r0, =_data
    ldr r1, [r0]
    ldr r2, [r0, #4]

_gcd:
    udiv r3, r2, r1
    mul r4, r3, r1
    sub r5, r2, r4 @ new r1
    cmp r5, #0
    moveq r6, r1
    beq _end
    movne r2, r1
    movne r1, r5
    bne _gcd

_end:
    b _end
