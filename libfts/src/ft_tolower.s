global _ft_tolower

section .text
_ft_tolower:
	mov	rax, rdi
	cmp rdi, 65 
	jl	ret_
	cmp rdi, 90
	jg	ret_
	add	eax, 32
	ret
 
ret_:
	ret
