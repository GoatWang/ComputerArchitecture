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

    @ _chk_is_valid
    cmp     r2, #0x60
    msrle   cpsr, #0x40000000
    cmpgt   r2, #0x7A
    msrge   cpsr, #0
    subeq   r2, r2, #0x20
    streq   r2, [r0]
    b       _loop

_loop:
    ldmia r0, {r1-r12}

    cmp     r2, #0x0A               @ _chk_end
    beq     _end
    cmp   r2, #0x60               @ _chk_is_valid
    msrle   cpsr, #0x40000000
    cmpgt   r2, #0x7A               @ _chk_is_valid
    msrge   cpsr, #0
    cmplt   r1, #0x20
    subeq   r2, r2, #0x20

    cmp     r3, #0x0A
    beq     _end
    cmp     r3, #0x60
    msrle   cpsr, #0x40000000
    cmpgt   r3, #0x7A
    msrge   cpsr, #0
    cmplt   r2, #0x20
    subeq   r3, r3, #0x20

    cmp     r4, #0x0A
    beq     _end
    cmp     r4, #0x60
    msrle   cpsr, #0x40000000
    cmpgt   r4, #0x7A
    msrge   cpsr, #0
    cmplt   r3, #0x20
    subeq   r4, r4, #0x20

    cmp     r5, #0x0A
    beq     _end
    cmp     r5, #0x60
    msrle   cpsr, #0x40000000
    cmpgt   r5, #0x7A
    msrge   cpsr, #0
    cmplt   r4, #0x20
    subeq   r5, r5, #0x20

    cmp     r6, #0x0A
    beq     _end
    cmp     r6, #0x60
    msrle   cpsr, #0x40000000
    cmpgt   r6, #0x7A
    msrge   cpsr, #0
    cmplt   r5, #0x20
    subeq   r6, r6, #0x20

    cmp     r7, #0x0A
    beq     _end
    cmp     r7, #0x60
    msrle   cpsr, #0x40000000
    cmpgt   r7, #0x7A
    msrge   cpsr, #0
    cmplt   r6, #0x20
    subeq   r7, r7, #0x20

    cmp     r8, #0x0A
    beq     _end
    cmp     r8, #0x60
    msrle   cpsr, #0x40000000
    cmpgt   r8, #0x7A
    msrge   cpsr, #0
    cmplt   r7, #0x20
    subeq   r8, r8, #0x20

    cmp     r9, #0x0A
    beq     _end
    cmp     r9, #0x60
    msrle   cpsr, #0x40000000
    cmpgt   r9, #0x7A
    msrge   cpsr, #0
    cmplt   r8, #0x20
    subeq   r9, r9, #0x20

    cmp     r1, #0x0A
    beq     _end
    cmp     r10, #0x60
    msrle   cpsr, #0x40000000
    cmpgt   r10, #0x7A
    msrge   cpsr, #0
    cmplt   r9, #0x20
    subeq   r10, r10, #0x20

    cmp     r11, #0x0A
    beq     _end
    cmp     r11, #0x60
    msrle   cpsr, #0x40000000
    cmpgt   r11, #0x7A
    msrge   cpsr, #0
    cmplt   r10, #0x20
    subeq   r11, r11, #0x20

    cmp     r12, #0x0A
    beq     _end
    cmp     r12, #0x60
    msrle   cpsr, #0x40000000
    cmpgt   r12, #0x7A
    msrge   cpsr, #0
    cmplt   r11, #0x20
    subeq   r12, r12, #0x20

    stmia r0!, {r1-r12}
    sub   r0, r0, #4
    b _loop
    
_end:
    b     _end

.section .data
_data:
     .word 0x48, 0x69, 0x20, 0x49, 0x20, 0x6B, 0x6E, 0x6F, 0x77, 0x20, 0x68, 0x6F, 0x77, 0x20, 0x74, 0x6F, 0x20, 0x63, 0x6F, 0x64, 0x65, 0x20, 0x77, 0x69, 0x74, 0x68, 0x20, 0x41, 0x52, 0x4D, 0x20, 0x61, 0x73, 0x73, 0x65, 0x6D, 0x62, 0x6C, 0x79, 0x0A

@ x/40 $r8
@ 0x18094:        72      105     32      73
@ 0x180a4:        32      75      110     111
@ 0x180b4:        119     32      72      111
@ 0x180c4:        119     32      84      111
@ 0x180d4:        32      67      111     100
@ 0x180e4:        101     32      87      105
@ 0x180f4:        116     104     32      65
@ 0x18104:        82      77      32      65
@ 0x18114:        115     115     101     109
@ 0x18124:        98      108     121     10
