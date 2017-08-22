section .text
    %macro return 1
        mov     rax, %1
        ret
    %endmacro

    global  _ft_isprint

_ft_isprint:
            cmp     rdi, 32
            jge     _next
            jmp     _false

_next:
            cmp     rdi, 126
            jle     _true
            jmp     _false

_true:
            return 1
_false:
            return 0
