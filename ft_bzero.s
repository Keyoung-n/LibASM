section .text
  global _ft_bzero

_ft_bzero:
  mov rax, rdi
  mov rcx, rsi
  cmp rcx, 0
  jg  l1
  mov rax, rdi
  ret

l1:
  mov rbx, 0
  mov [rax], bl
  inc rax
  loop l1
  ret
