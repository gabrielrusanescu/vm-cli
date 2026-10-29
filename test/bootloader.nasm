[BITS 16]
[ORG 0x7C00]

start:
MOV AH, 0x0E
MOV AL, 'A'
INT 0x10
JMP start

TIMES 510 - ($ - $$) db 0
DW 0xAA55
