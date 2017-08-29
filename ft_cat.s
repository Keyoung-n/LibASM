section .text
    global _ft_cat
    extern _ft_bzero

_ft_cat:
    push    rbp
    mov     rbp, rsp
    sub     rbp, 16

    mov     r12, rdi
    mov     rdi, 1
    extern  _malloc
    call    _malloc
    mov     r13, rax
    xor     rax, rax
    jmp     l1

l1:
    mov     rax, 0x2000003 ; read
    mov     rdi, r12
    mov     rsi, r13
    mov     rdx, 1
    syscall

    cmp     rax, 0
    je      Ret

    mov     rsi, r13
    mov     rax, 0x2000004 ; write
    mov     rdi, 1 ; stdout
    mov     rdx, 1
    syscall
    jmp l1

Ret:
    add     rbp, 16
    pop     rbp
    ret
