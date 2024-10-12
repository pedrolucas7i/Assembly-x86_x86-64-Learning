bits 64

section .text           ; Declare the code section
global assembly

assembly:
    mov rax, 0x11223344aabbccdd
    mov eax, 0x1234
    ret                  ; Return
