section .data
    msg db 'hello assembly!', 0xA
    len equ $ - msg
    msg2 db 'hello assembly!!', 0xA
    len2 equ $ - msg2
section .text
    global _start
_start:
    mov rax, 1
    mov rdi, 1
    ; print:
    mov rsi, msg
    mov rdx, len
    syscall
    ; print msg2:
    mov rsi, msg2
    mov rdx, len2
    syscall
    ; crash (exit, lol)
    mov rax, 60
    xor rdi, rdi
    syscall
