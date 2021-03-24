org 0x7c00 ; put these codes into physical address 7c00H

LOAD_ADDR EQU 0x8000
jmp entry

; just some initial steps, don't need to care
db 0x90 
DB "OSKERNEL"
DW 512
DB 1
DW 1
DB 2
DW 224
DW 2880
DB 0xf0
DW 9
DW 18
DW 2
DD 0
DD 2880
DB 0, 0, 0x29
DD 0xFFFFFFFF
DB "MYFIRSTOS"
DB "FAT12"
RESB 18

entry:
    ; initial all segment registers
    mov ax, 0
    mov ss, ax
    mov ds, ax
    mov es, ax
    mov si, ax

readFloppy:
    mov CH, 1
    mov DH, 0
    mov CL, 2

    mov BX, LOAD_ADDR ; read the data into address: LOAD_ADDR
    mov AH, 0x02 ; 0x02 means this is for reading
    mov AL, 1 ; how many sector to read
    mov DL, 0 ; the 0th floppy driver

    INT 0x13 ; BIOS int, for reading floppy

    JC fin ; if error, then go to fin

    jmp LOAD_ADDR


fin:
    HLT
    jmp fin

msg:
    DB 0x0a, 0x0a; ascii code for \n
    DB "Hello World"
    DB 0x0a
    DB 0