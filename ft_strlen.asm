section .text
global _ft_strlen

_ft_strlen:
  mov rbx, rsi
  mov rax, 0
  cmp rcx, 0
  jg  l1
  ret

l1:
  mov [rdi], bl
  inc  rdi
  loop l1
  ret
