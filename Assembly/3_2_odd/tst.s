.section .text
.align 2
.global _start
_start: mov   r0, #5
        
_loop:  ands  r2, r0, #1
        bleq   _even
        blne   _odd
        b      _loop

_end: b _end
        
_odd:   add  r0, r0, r0
        add  r0, r0, r0
        add  r0, r0, #1
        mov pc, lr

_even:  lsr  r0, r0, #1
        mov pc, lr
