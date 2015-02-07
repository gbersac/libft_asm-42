global _ft_isprint

section .text
_ft_isprint:
	cmp		rdi, 32 
	jb		ret_false
	cmp		rdi, 126
	jg		ret_false
    mov		rax, 1
	ret

ret_true:
    mov		rax, 1
    ret

ret_false:
    mov		rax, 0
    ret
