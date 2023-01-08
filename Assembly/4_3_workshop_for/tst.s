.section .text
.align 2
.global _start

_start: 
    mov   r0, #0 @c
    mov   r1, #1 @a
    mov   r2, #5 @b
    mov   r3, r1 @i
    bl    _loop
    @cmp   r3, r2 @i < b
    @bllt  _loop  @i < b
    b     _end
    
_loop: 
    cmp r3, r2      @i < b
    moveq pc, lr
    addlt r3, r3, #1  @i++
    cmp r3, r2      @i < b
    addlt r0, r0, #1  @c++
    b     _loop       @i < b

_end: b _end

