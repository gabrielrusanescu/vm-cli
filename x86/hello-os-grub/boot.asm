global start

section .text
bits 32    ; By default, GRUB sets us to 32-bit mode.
start:

    ; Print `Bye, world!` on the screen by placing ASCII
    ; characters in the VGA screen buffer that starts at 0xb8000
    mov word [0xb8000], 0x0242 ; B
    mov word [0xb8002], 0x0279 ; y
    mov word [0xb8004], 0x0265 ; e

    mov word [0xb8006], 0x022c ; ,
    mov word [0xb8008], 0x0220 ;

    mov word [0xb800a], 0x0257 ; W
    mov word [0xb800c], 0x026f ; o
    mov word [0xb800e], 0x0272 ; r
    mov word [0xb8010], 0x026c ; l
    mov word [0xb8012], 0x0264 ; d
    mov word [0xb8014], 0x0221 ; !

    hlt ; Halt the processor.
