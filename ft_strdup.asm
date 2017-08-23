section .text
    %macro return 1
        mov     rax, %1
        ret
    %endmacro
    EXTERN  ft_strlen
    global  ft_strdup


ft_strdup:
            call ft_strlen; call ft_strlen
            inc rax; increment return of ft_strlen
            mov rbx, rdi; backup string pointer into rbx
            mov rdi, rax; move return of ft_strlen into rdi to pass to malloc
            extern malloc
            call malloc wrt ..plt; call malloc
            mov rdi, 0
            cmp rax, 0; make sure memory was allocated before we loop
            jne loop; if memory was allocated then start looping
            jmp _false; if it goes sideways return 0

;rax = pointer to memory from malloc
;rbx = string we got as a parameter
loop:
            cmp rbx, 0; check if end of string
            jmp RetPointer; return if we are done
            mov rdi, [rbx]
            mov [rax], rdi; copy pointer value into memory pointer
            add rax, 1; increment rax pointer
            add rbx, 1; increment rbx pointer
            jmp loop ; loop

RetPointer:
            ;add the null char and return since the pointer is already in rax
            mov byte [rax], 0
            dec rax
            dec rax
            ret

_false:
            return 0
