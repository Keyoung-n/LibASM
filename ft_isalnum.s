section .text
            %macro return 1
                mov     rax, %1
                ret
            %endmacro
            EXTERN  _ft_isalpha
            EXTERN  _ft_isdigit
            global  _ft_isalnum

_ft_isalnum:
            call     _ft_isalpha
            cmp     rax, 1
            je      _true
            call     _ft_isdigit
            cmp     rax, 1
            je      _true
            jmp     _false

_true:
            return  1
_false:
            return  0
