nasm -g -f elf64 -o CalculoLimiteBE.o CalculoLimiteBE.asm

gcc -g -m64   CalculoLimiteBE.c CalculoLimiteBE.o -o Pregunta3
