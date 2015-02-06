;void *memset(void *b, int c, size_t len);
; arg0 = di, arg1 = si, arg3 = dx

global _ft_memset

section .text
_ft_memset:
	push	rdi
	mov		rax, rsi
	mov		rcx, rdx
	rep		stosb		;http://www.cs.ubbcluj.ro/~dadi/ac/doc/ng1d5fc.html
	pop		rax
	ret
