all: readk.o
	ld -m elf_i386 readk.o -o readk

readk.o: readk.asm
	nasm -f elf readk.asm

