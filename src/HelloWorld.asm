section .data
    msg db 'hello assembly!', 0xA
    len equ $ - msg     
section .text
    global _start
_start:
    mov rax, 1
    mov rdi, 1
    ; print:
    mov rsi, msg
    mov rdx, len
    syscall
    ; crash (exit, lol)
    mov rax, 60
    xor rdi, rdi
    syscall
