section .text
global ft_bzero

ft_bzero:
  mov rax, rsi
  mov rcx, rdi
  cmp rax, 0
  jg  top
  ret

top:
  mov rbx, 0
  mov [rcx], bl
  inc  rcx
  dec  rax
  jnz  top
  ret
