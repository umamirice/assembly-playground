; using: nasm -f elf32 -o hello_world.o hello_world.asm
; and then linked with: ld -m elf_i386 -o hello_world hello_world.o

global _start

section .data ; that's where we're gonna store all the data our program needs
msg db "Hello, World!", 0x0a ;we're creating a double word value with our text and a newline (0x0a)
msg_len equ $-msg ; we get our msg length

section .text ;just for the neatness of the code
_start: 
	mov eax, 4 ; SYS_WRITE (check man 2 write on linux)
	mov ebx, 1 ; using stdout as our file descriptor
	mov ecx, msg ; pointer to msg as our *buf
	mov edx, msg_len ; and the length
	int 0x80 ; kernel interruption (basically kernel is notified about the value of eax register SYS_WRITE in this case)
	
	;and we neatly exit
	mov eax, 1; SYS_EXIT
	mov ebx, 0; exit status
	int 0x80; and the interruption	

