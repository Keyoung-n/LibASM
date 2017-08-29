section .text

    extern  _ft_strlen
    extern  _malloc
    global  _ft_strdup

_ft_strdup:
            push    rbp
            mov     rbp, rsp
            sub     rbp, 16
            mov     r12, rdi
            call    _ft_strlen
            mov     r13, rax
            inc     r13
            mov     rdi, r13
            call    _malloc
            mov     QWORD [rax], r12
            pop     rbp
            mov     rax, QWORD [rax]
            ret
