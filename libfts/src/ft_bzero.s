; void bzero(void *s, size_t n);
; arg0 = di, arg1 = si, arg3 = dx

global _ft_bzero
section .text

_ft_bzero:
	push	rdi
	mov		rax, 0 
	mov		rcx, rsi
	rep		stosb		;http://www.cs.ubbcluj.ro/~dadi/ac/doc/ng1d5fc.html
	pop		rax
	ret
