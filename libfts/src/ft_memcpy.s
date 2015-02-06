; void *memcpy(void *restrict dst, const void *restrict src, size_t n)
; arg0 = di, arg1 = si, arg3 = dx

global _ft_memcpy

section .text
_ft_memcpy:
	mov rcx, rdx
	mov rax, rdi
	rep movsb
	ret
