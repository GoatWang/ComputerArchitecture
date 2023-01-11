.section .data
    _data: .word 0x05

.section .text
.align 2
.global _start
_start: 
    ldr r0, =_data
    ldr r1, [r0]
    b _loop

_loop:
    tst r1, #0x01
    asreq r1, r1, #1
    rsbne r1, r1, r1, lsl #2 @3np1
    addne r1, r1, #1
    cmp r1, #0x01
    bne _loop
    beq _end

_end:
    b _end
