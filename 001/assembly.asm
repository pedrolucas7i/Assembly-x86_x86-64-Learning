bits 64

section .text           ; Declare the code section
global assembly

assembly:
    mov eax, 0x11223344  ; Move a constant into eax
    mov ax,  0xaabb      ; Move a constant into ax (lower 16 bits of eax)
    ret                  ; Return
