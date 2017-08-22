section .data

section .text
    global _ft_puts
    EXTERN _ft_strlen

_ft_puts:
    mov rsi, rdi
    call _ft_strlen
    mov rdx, rax
    mov rax, 1
    mov rdi, 1

    syscall
    ret
