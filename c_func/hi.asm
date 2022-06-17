global hi ;simple function saying hi in assembly which I use later in C

hi:
        push ebp
        mov ebp, esp
        mov [esp], byte 'H'
        mov [esp+1], byte 'i'
        mov [esp+2], byte '!'
        mov [esp+3], byte 0x0a
        mov eax, 4
        mov ebx, 1
        mov ecx, esp
        mov edx, 4
        int 0x80
        mov esp, ebp
        pop ebp
        mov eax, 1
        mov ebx, 0
        int 0x80
        ret

