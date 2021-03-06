section .text
    %macro return 1
        mov     rax, %1
        ret
    %endmacro

    global  _ft_isdigit

_ft_isdigit:
            cmp     rdi, 48
            jge     _checkUpper
            jmp     _false

_checkUpper:
            cmp     rdi, 57
            jle     _true
            jmp     _false            
        
_true:
            return 1
_false:
            return 0