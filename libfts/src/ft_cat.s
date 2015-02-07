global _ft_cat

section .text
_ft_cat:
	;test for 
	cmp		edi, -1
	jle		ret_

cat_loop:

section .data
	bufsize:
	dd 8192	;8192

buf:
	times 8192 db 0

ret_:
	ret

