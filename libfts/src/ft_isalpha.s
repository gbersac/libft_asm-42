global _ft_isalpha

_ft_isalpha:
    cmp rdi, 65
    jl ret_false
    cmp rdi, 90
    jle ret_true
    cmp rdi, 97
    jl ret_false
    cmp rdi, 122
    jle ret_true
    mov rax, 0
    ret

ret_true:
    mov rax, 1
    ret

ret_false:
    mov rax, 0
    ret
