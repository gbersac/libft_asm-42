;char		*ft_strdup(const char *);
;arg0 = di, arg1 = si, arg3 = dx

global _ft_strdup

section .text
	extern _ft_strlen
	extern _malloc

_ft_strdup:
	push	rbx
	mov		rbx, rdi
	call	_ft_strlen	;the result of strlen is in ax register
	inc		rax
	mov		rcx, rax
	mov		rdi, rax

	;call malloc
	push	rcx
	call	_malloc
	pop		rcx
	test	rax, rax
	jz		ret_
	mov		rsi, rbx
	mov		rdi, rax
	repnz movsb

ret_:
	pop		rbx
	ret

