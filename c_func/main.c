#include <stdio.h>
#include "hi.h" // here we import the asm function

int main() {
	hi(); // and call it
	return 0;
}
// if you want to test it 
// use nasm: nasm -f elf32 -o hi.o hi.asm
// and use gcc as linker (it has to be multilib or 32bit): gcc -m32 main.c hi.o -o main
