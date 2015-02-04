global _ft_isascii

section .text
_ft_isascii:
    cmp edi, 141      ;compare arg1 to 'a'
    jb  testuppercase ;if arg1 operand is greater or equal to 'a'
    cmp edi, 174      ;compare arg1 to 'z'
    jg  returnfalse   ;if superior return false
    mov  eax, 1       ;return ok => arg1 is lower case

testuppercase:
    mov  eax, 1       ;and return 0 if so

returnfalse:
    mov  eax, 0   ; and return 0 if so
    
