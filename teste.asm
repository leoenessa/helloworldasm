extern _GetStdHandle@4
extern _ExitProcess@4
extern _WriteFile@20
global inicio

section .data
mensagem db "Hello world",0
tamanho_mensagem EQU 12
section .text

inicio:
    mov ebp, esp
    sub esp,4

    ;pegando um handle de saida;
    push -11
    call _GetStdHandle@4
    mov ebx,eax

    ; WriteFile( hstdOut, message, length(message), &bytes, 0);
    push 0
    lea eax,[ebp-4]
    push eax
    push tamanho_mensagem
    push mensagem
    push ebx
    call _WriteFile@20

    push 0
    call _ExitProcess@4