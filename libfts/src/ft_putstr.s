;void ft_puts(char const *s);
;arg0 = di, arg1 = si, arg2 = dx

global _ft_puts

section .text
	extern _ft_strlen
_ft_puts:
	cmp		rdi, 0		;test NULL
	je		ret_
	mov		rsi, rdi	;arg1 = buf
	call	_ft_strlen

	mov		rdi, 1		;arg0 = fildes
	mov		rdx, rax	;arg2 = result of strlen
	;ssize_t write(int fildes, const void *buf, size_t nbyte)
	mov     rax, 0x2000004 ; write
	syscall

ret_:
	ret
