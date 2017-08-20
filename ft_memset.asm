section .text
global ft_memset

ft_memset:
  mov rbx, rsi ; seconed parameter
  cmp rdx, 0
  jg  top
  mov rax, rsi
  ret

top:
  mov [rdi], bl
  inc  rdi
  dec  rdx
  jnz  top
  ret
