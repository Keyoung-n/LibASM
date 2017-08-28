section .text
  %macro return 1
      mov     rax, %1
      ret
  %endmacro
  global _ft_tolower

_ft_tolower:
  call  _checkUpper
  cmp   rax, 0
  je    _false
  add   rdi, 32
  mov   rax, rdi
  ret

_checkUpper:
  cmp     rdi, 65
  jge     _elseifUpper
  jmp     _false

_elseifUpper:
  cmp     rdi, 90
  jle     _true
  jmp     _false

_true:
            return  1
_false:
            return  0
