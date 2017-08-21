section .text
    global ft_isprint

ft_isprint:
    cmp     rdi, 32
    jge     _next
    jmp      Fail

_next:
    cmp rdi, 126
    jl Pass
    jmp Fail

Pass:
    mov rax, 1
    ret

Fail:
    mov rax, 0
    ret
