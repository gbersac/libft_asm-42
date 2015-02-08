;size_t ft_strlen(const char *);
; arg0 = di, arg1 = si, arg3 = dx

global _ft_strlen

section .text
_ft_strlen:
;	mov		rax, 0
;
;while:
;	cmp		byte [rdi], 0	;test if we reached '\0'
;	je		return
;	inc		rdi
;	inc		rax
;	jmp		while
;
;return:
;	ret

	push	rdi
	sub		ecx, ecx
	not		ecx
	sub		al, al
	cld
	repne	scasb
	not		ecx
	pop		rdi
	lea		eax, [ecx-1]
	ret
