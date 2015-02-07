;void ft_puts(char const *s);
;arg0 = di, arg1 = si, arg2 = dx

global _ft_puts

section .text
	extern _ft_strlen
_ft_puts:
	;test null
	cmp		rdi, 0			;test NULL
	je		print_null

	;print the pointer
	mov		rsi, rdi		;arg1 = buf
	call	_ft_strlen

	mov		rdi, 1			;arg0 = fildes
	mov		rdx, rax		;arg2 = result of strlen
	mov     rax, 0x2000004	;put syscall as write
	syscall

	;add '\n'
	mov		rdi, 1			;arg0 = fildes
	mov		rsi, end_line	;arg1 = buf
	mov		rdx, 1			;arg2 = result of strlen
	mov     rax, 0x2000004	;put syscall as write
	syscall
	jmp		ret_


print_null:
	mov     rax, 0x2000004	;put syscall as write
	mov		rdi, 1			;arg0 = fildes
	mov		rsi, msg		;arg1 = buf
	mov		rdx, msg.len	;arg2 = result of strlen
	syscall

ret_:
	ret

section .data
	msg:
		db	`(null)\n`
	.len: equ $ - msg
	end_line: 
		db	`\n`		
