section .text
    %macro return 1
        mov     rax, %1
        ret
    %endmacro
    EXTERN  _ft_strlen
    EXTERN _malloc
    EXTERN _ft_memcpy
    global  _ft_strdup

_ft_strdup:
            push    rbp
            mov     rbp, rsp
            sub     rbp, 16

            mov     rsi, rdi; backup string pointer into rbx

            call _ft_strlen; call ft_strlen
            inc rax; increment return of ft_strlen
            mov rax, [rsi]
            ;mov r11, rax; move return of ft_strlen into rdi to pass to malloc
            ;call _malloc; call malloc

            ;mov rdi, rax
            ;mov rsi, r8
            ;mov rdx, r9
            ;jmp _ft_memcpy; if memory was allocated then start looping
            ret
            ;ret

RetPointer:
            ret

_false:
            return 0
