.section .text
.align 2
.global _start
_start:
    ldr r0, =_data
    mov r8, r0
    mov r1, #3      @count max
    mov r3, #0      @count start

    mov r4, #0      @1
    mov r5, #0      @4
    mov r6, #0      @2

    ldr r2, [r0]    @n
    b   _loop

_loop:
    tst   r2, #1
    lsreq r2, #1 @even
    rsbne r2, r2, lsl #2 @odd
    addne r2, r2, #1
    str   r2, [r0, #4]!

    cmp   r4, #0
    beq   _chk_1

    cmp   r5, #0
    beq   _chk_4

    b   _chk_2

_chk_1:
    cmp   r2, #1
    moveq r4, #1
    b     _loop

_chk_4:
    cmp   r2, #4
    moveq r5, #1
    b     _loop

_chk_2:
    cmp   r2, #2
    addeq r3, r3, #1
    cmp   r3, r1
    beq   _end
    mov   r4, #0
    mov   r5, #0
    b     _loop

_end:
    b     _end
    
.section .data
_data: 
    .word 5

