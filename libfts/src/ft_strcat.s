;char *strcat(char *restrict s1, const char *restrict s2);
;arg0 = di, arg1 = si, arg3 = dx

global _ft_strcat

section .text
_ft_strcat:
	push	rbx
	push	rcx
	mov		rbx, rdi
	mov		rcx, rsi

	;reach the end of s1
reach_end:
	cmp		byte [rbx], 0
	je		copy
	inc		rbx
	jmp		reach_end
	
	;copy s2 in s1
copy:
	cmp		byte [rcx], 0
	je		ret_
	mov		rax, [rcx]
	mov		[rbx], al
	inc		rcx
	inc		rbx
	jmp		copy

ret_:
	mov		byte [rbx], 0 
	mov		rax, rdi
	pop		rcx
	pop		rbx
	ret

