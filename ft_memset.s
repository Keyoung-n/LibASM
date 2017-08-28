section .text
  global _ft_memset

_ft_memset:
  mov rbx, rsi
  mov rcx, rdx
  cmp rcx, 0
  jg  l1
  mov rax, rdi
  ret

l1:
  mov [rdi], bl
  inc  rdi
  loop l1
  ret
