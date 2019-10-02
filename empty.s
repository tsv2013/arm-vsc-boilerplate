.text
.global _start
_start:
    mov r1, #1
    mov r2, #2
    add r0, r1, r2
    b   _start
