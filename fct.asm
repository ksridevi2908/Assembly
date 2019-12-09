

extern printf
extern scanf
section .data
        fmt: db "%d", 0
        out: db "factorial of the given number is %d",10,0
section .text
        global main
        main:
        push ebp
        mov ebp,esp
        sub esp, 0x10
        lea eax,[ebp-0x8]
        push eax
        push fmt
        call scanf

        mov edx,dword[ebp-0x8]
        push edx
        mov eax,1
        mov ebx,1


        LOOP:
              mul ebx
              mov edx,dword[ebp-0x8]
              inc ebx
              cmp ebx, edx
              jle LOOP
              push eax
              push out
              call printf

leave
ret

