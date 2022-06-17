# assembly-playground
I'm just storing here my bizarre and ultracomplicated assembly x86 files
everything here is compiled using nasm

nasm -f elf32 -o filename.o filename.asm

and then linked 

ld -m elf_i386 -o filename filename.o
