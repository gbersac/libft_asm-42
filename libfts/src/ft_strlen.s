global _ft_strlen

section .text
_ft_strlen:
	mov		eax, 0

while:
	cmp		byte [rdi], 0	;test if we reached '\0'
	je		return
	inc		rdi
	inc		eax
	jmp		while

return:
	ret
