# helloworldasm
Um simples hello world em nasm assembly win32

para ficar guardado.
Para compilar:
1)Instalar MinGc e NASM
2)nasm -f win32 teste.asm -o teste.o
3)ld -L c:/Windows/System32 -l kernel32 -o teste.exe teste.o
