section .data

section .text
    global _ft_puts

_ft_puts:
    mov rsi, rdi
    call _ft_strlen
    mov rdx, rax
    mov rax, 1
    mov rdi, 1

    syscall
    ret

_ft_strlen:
          push  rbp
          mov   rbp, rsp
          sub   rcx, rcx
          not   rcx
          mov   rbx, [rbp + 8]
          sub   al, al
          cld
  repne scasb
          not   rcx
          pop   rbp
          lea   rax, [rcx - 1]
