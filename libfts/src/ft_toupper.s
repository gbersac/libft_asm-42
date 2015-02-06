global _ft_toupper

section .text
_ft_toupper:
	mov	rax, rdi
	cmp rdi, 97 
	jl	ret_
	cmp rdi, 122
	jg	ret_
	sub	eax, 32
	ret
 
ret_:
	ret 
