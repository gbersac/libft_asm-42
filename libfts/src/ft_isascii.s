global _ft_isascii

section .text
_ft_isascii:
    cmp	rdi, 0
    jb	ret_false    ;if inferior to '0' return false
    cmp	rdi, 127
    jg	ret_false    ;if superior to '9' return false
	jmp ret_true

ret_true:
    mov	rax, 1
    ret

ret_false:
    mov	rax, 0
    ret
