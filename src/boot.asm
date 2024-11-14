[BITS 16]
[ORG 0x7C00]

    MOV SI, hello_msg
    CALL print_string
    JMP $

print_string:
    MOV AH, 0x0E
.repeat: ; .local 
    LODSB
    OR AL, AL
    JZ .done
    INT 0x10
    JMP .repeat
.done: ; .local 
    RET

hello_msg db 'Hello from VSCode!', 0

    TIMES 510-($-$$) db 0
    DW 0xAA55