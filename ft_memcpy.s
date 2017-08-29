section .text
global _ft_memcpy

_ft_memcpy:
  mov rcx, rdx
  cmp rcx, 0
  jg  l1
  mov rax, rdi
  ret

l1:
  mov rbx, [rsi]
  mov [rdi], bl
  inc  rdi
  inc  rsi
  loop l1
  ret
