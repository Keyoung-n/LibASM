section .text
    %macro return 1
        mov     rax, %1
        ret
    %endmacro

    global  _ft_isascii

_ft_isascii:
            cmp     rdi, 0
            jge     _checkUpper
            jmp     _false

_checkUpper:
            cmp     rdi, 127
            jle     _true
            jmp     _false

_true:
            return 1
_false:
            return 0
