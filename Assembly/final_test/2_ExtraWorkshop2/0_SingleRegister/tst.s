@A: 0x41
@Z: 0x5A
@a: 0x61
@z: 0x7A
@space: 0x20
@end: 0x0A

.section .text
.align 2
.global _start
_start:
    ldr     r0, =_data
    mov     r8, r0
    ldr     r2, [r0]
    cmp     r2, #0x0A
    beq     _end
    bl      _chk_is_valid
    cmp     r5, #1
    subeq   r2, r2, #0x20
    str     r2, [r0], #4
    mov     r1, r2
    b       _loop

_loop: 
    ldr     r2, [r0]
    cmp     r2, #0x0A
    beq     _end
    bl      _chk_proceed_by_space
    cmp     r6, #1
    bne     _loop_end
    bl      _chk_is_valid
    cmp     r5, #1
    subeq   r2, r2, #0x20
    b       _loop_end

_loop_end:
    str     r2, [r0], #4
    mov     r1, r2
    b       _loop


_chk_proceed_by_space:
    mov r6, #0
    cmp r1, #0x20
    moveq r6, #1
    mov pc, lr

_chk_is_valid: @not lower & not space
    mov r5, #0
    cmp r2, #0x61
    movlt pc, lr
    cmpge r2, #0x7A
    movgt pc, lr
    movle r5, #1
    movle pc, lr

_end:
    b _end

.section .data
_data:
    @Hi I know how to code with ARM assembly
    .word 0x48, 0x69, 0x20, 0x49, 0x20, 0x6B, 0x6E, 0x6F, 0x77, 0x20, 0x68, 0x6F, 0x77, 0x20, 0x74, 0x6F, 0x20, 0x63, 0x6F, 0x64, 0x65, 0x20, 0x77, 0x69, 0x74, 0x68, 0x20, 0x41, 0x52, 0x4D, 0x20, 0x61, 0x73, 0x73, 0x65, 0x6D, 0x62, 0x6C, 0x79, 0x0A
