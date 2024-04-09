.global  _main

greeting: .asciz "Hello, World!\n"

.balign 4
_main:
    bl greet
    b exit


.balign 4
greet:
    mov x0, #1
    adr x1, greeting
    mov x2, #14
    mov x16, #4
    svc #0
    ret

.balign 4
exit:
    ; this exits the program
    mov x0, #0
    mov x16, #1
    svc #0
    
