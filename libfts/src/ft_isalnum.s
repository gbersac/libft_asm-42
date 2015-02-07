global _ft_isalnum

section .text
	extern _ft_isdigit
	extern _ft_isalpha

_ft_isalnum:
	call	_ft_isdigit	;call isdigit with arg1=rdi.
						;answer is in rax register
	cmp		rax, 1
	je		ret_true
	call	_ft_isalpha	;call isdigit with arg1=rdi.
						;answer is in rax register
	cmp		rax, 1
	je		ret_true
	jmp		ret_false
	ret

ret_true:
    mov rax, 1
    ret

ret_false:
    mov rax, 0
    ret
