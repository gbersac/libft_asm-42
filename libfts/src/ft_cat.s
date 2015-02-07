section .text
global _ft_cat
_ft_cat:
cmp edi, -1
jle ft_return
mov rsi, buf
cat_loop:
mov rax, 0x2000003 ;read
mov rdx, bufsize
syscall
cmp eax, 0
jle ft_return
mov edx, eax
mov rax, 0x2000004 ;write
push rdi
mov rdi, 1
syscall
pop rdi
cmp eax, -1
je ft_return
cmp rdi, 0
je cat_loop
cmp rax, 8192
je cat_loop
ft_return:
ret
section .data
bufsize:
dd 8192	;8192
buf:
times 8192 db 0
