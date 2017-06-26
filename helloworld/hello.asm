section .data
msg db "Hello, world"
len equ $-msg ; символу len присваевается длина строки
section .text
global _start ; точка входа в программу
_start:
mov eax, 4 ; системный вызов № 4 — sys_write
mov ebx, 1 ; поток № 1 — stdout
mov ecx, msg ; указатель на выводимую строку
mov edx, len ; длина строки
int 80h ; вызов ядра
mov eax, 1 ; системный вызов № 1 — sys_exit
xor ebx, ebx ; выход с кодом 0
int 80h ; вызов ядра