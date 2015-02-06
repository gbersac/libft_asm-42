global _ft_isdigit

section .text
_ft_isdigit:
    cmp	rdi, 48 
    jb	ret_false    ;if inferior to '0' return false
    cmp	rdi, 57
    jg	ret_false    ;if superior to '9' return false
	mov	eax, 1
    ret

ret_true:
    mov	eax, 1
    ret

ret_false:
    mov	eax, 0
    ret
