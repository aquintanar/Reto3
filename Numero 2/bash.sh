nasm -g -f elf64 -o CalculoLimite.o CalculoLimite.asm

gcc -g -m64   CalculoLimite.c CalculoLimite.o -o Pregunta2
