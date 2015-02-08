;void ft_cat(int fd);
; arg0 = di, arg1 = si, arg3 = dx

;section for uninitialized data
section .bss
	buf:
		resb 255

;section for const
section .data
	bufsize:
		dd 255
	.len: equ $-bufsize

global _ft_cat

section .text
_ft_cat:
	;test invalid fd
	cmp		edi, -1
	jle		ft_return

	mov		r8, rdi
	mov		rsi, buf		;arg1 = buffer

cat_loop:
	;int read(int fd, void *buffer, int nbyte);
	mov		rdi, r8				;arg0 = fd
	mov		rdx, bufsize.len	;arg2 = buffer length
	mov		rax, 0x2000003		;read
	syscall

	;test if end of read
	cmp		rax, 0
	jle		ft_return

cat_write:
	;int write(int fd, const void *buf, size_t nbyte);
	mov		rdi, 1			;arg0 = fd
	mov		rdx, rax		;arg2 = buffer length
	mov		rax, 0x2000004	;write
	syscall

	;test for failure of write
	cmp		rax, -1
	jle		ft_return

	jmp		cat_loop

ft_return:
	ret
