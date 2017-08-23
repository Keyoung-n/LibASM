section .text
  %macro return 1
      mov     rax, %1
      ret
  %endmacro
  global _ft_toupper

_ft_toupper:
  call  _checkLower
  cmp   rax, 0
  je    _false
  sub   rdi, 32
  mov   rax, rdi
  ret

_checkLower:
  cmp     rdi, 97
  jge     _elseifLower
  jmp     _false

_elseifLower:
  cmp     rdi, 122
  jle     _true
  jmp     _false

_true:
            return  1
_false:
            return  0
