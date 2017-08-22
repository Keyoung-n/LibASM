section .text
    nl db 10
    global _ft_puts
    EXTERN _ft_strlen

_ft_puts:
    mov rsi, rdi
    call _ft_strlen
    mov rdx, rax
    mov rax, 0x2000004
    mov rdi, 1
    syscall

    mov rax, 0x2000004
    mov rdi, 1
    mov rsi, nl
    mov rdx, 1
    syscall

    ret
