section .text
    global _ft_strlen

_ft_strlen:
            push    rbp
            mov     rbp, rsp
            sub     rcx, rcx        ; initialize rcx to 0
            not     rcx             ; do an abs - 1 giving us -1
            mov     rbx, [rbp + 8]  ; put the arg into rbx
            sub     al, al          ; initiliaze al to 0
            cld                     ; clear directional bit: allows incrementing of pointer
    repne scasb                     ; scan the string while not equal to AL: REPNZ works too
            not     rcx             ; invert bits again: RCX = strlen + 1
            pop     rbp
            lea     rax, [rcx - 1]  ; dec RCX again and load the effective address into RAX
            ret
