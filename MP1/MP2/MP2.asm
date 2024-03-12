section .data
    line1 db ' ,-,' , 10
    line2 db '/.(', 10    
    line3 db '\ {', 10   
    line4 db ' `-`.', 10

section .text
    global _start

_start:
    ; Print line 1
    mov eax, 4
    mov ebx, 1
    mov ecx, line1
    mov edx, 6 ; length of line1
    int 0x80

    ; Print line 2
    mov eax, 4
    mov ebx, 1
    mov ecx, line2
    mov edx, 5 ; length of line2
    int 0x80

    ; Print line 3
    mov eax, 4
    mov ebx, 1
    mov ecx, line3
    mov edx, 5 ; length of line3
    int 0x80

    ; Print line 4
    mov eax, 4
    mov ebx, 1
    mov ecx, line4
    mov edx, 7 ; length of line4
    int 0x80

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
