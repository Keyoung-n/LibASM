section .text
    %macro return 1
        mov     rax, %1
        ret
    %endmacro

    global  _ft_isalpha

_ft_isalpha:
            cmp     rdi, 65
            jge     _elseif
            jmp     _false

_elseif:
            cmp     rdi, 90
            jle     _true
            jmp     _checkLower

_checkLower:
            cmp     rdi, 97
            jge     _elseifLower
            jmp     _false

_elseifLower:
            cmp     rdi, 122
            jle     _true
            jmp     _false
_true:
            return  1
_false:
            return  0
