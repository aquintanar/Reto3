nasm -g -f elf64 -o CalculoVarianza.o CalculoVarianza.asm

gcc -g -m64   CalculoVarianza.c CalculoVarianza.o -o Pregunta1
