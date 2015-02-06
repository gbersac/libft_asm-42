global _bzero
section .text

_bzero:
push    rbp             ; create stack frame
mov     rbp, rsp

cmp     edi, 0          ; Check if base is negative
mov     eax, 0          ; and return 0 if so
jl      end

mov     eax, edi        ; grab the "base" argument
mov     edx, esi        ; grab the "exponent" argument

multiply:
imul    eax, edi        ; eax * base
sub     esi, 1          ; exponent - 1

cmp     esi, 1          ; Loop if exponent > 1
jg      multiply

end:
pop     rbp             ; restore the base pointer
ret                     ; return from procedure
