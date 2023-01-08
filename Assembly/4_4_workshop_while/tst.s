
.section .text
.align 2
.global _start

_start: 
    mov   r0, #1
    mov   r1, #10
    bl _loop
    b _end
    
_loop: 
    add r0, r0, #1
    cmp r0, r1
    blt _loop
    mov pc, lr

_end: b _end
