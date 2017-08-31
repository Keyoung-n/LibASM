section .text
    extern _ft_strlen
    global _ft_strcat

_ft_strcat:
  mov r8, rdi
  mov r11, rsi
  mov rdi, rsi
  call _ft_strlen
  mov rcx, rax
  mov rsi, r11
  mov rdi, r8
  mov rax, rdi

  jmp _firstLoop
  ret

_firstLoop:
  cmp     [rdi], byte 0x0
  je      _catenate
  inc     rdi
  jmp     _firstLoop
  ret

_catenate:
  cld
  rep movsb
  mov rbx, 0
  mov [rdi], bl
  ret
