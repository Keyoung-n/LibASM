section .text
    extern _ft_strlen
    global _ft_strcat, ft_strcat

_ft_strcat:
ft_strcat:
            mov     rax, rdi
            jmp     _firstLoop

_firstLoop:
            cmp     [rdi], byte 0x0
            je      _catenate
            inc     rdi
            jmp     _firstLoop

_catenate:
            movsq
            cmp     [rsi], byte 0x0
            je      _leave
            mov     rdi, [rsi]
            inc     rdi
            inc     rsi
            jmp     _catenate

_leave:
            ret