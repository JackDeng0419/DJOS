; Disassembly of file: write_vga_desktop.o
; Wed Mar 24 22:48:07 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386





CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 36                                 ; 0004 _ 83. EC, 24
        sub     esp, 12                                 ; 0007 _ 83. EC, 0C
        push    bootInfo                                ; 000A _ 68, 00000000(d)
        call    initBootInfo                            ; 000F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0014 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0017 _ A1, 00000000(d)
        mov     dword [ebp-1CH], eax                    ; 001C _ 89. 45, E4
        movzx   eax, word [?_037]                       ; 001F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0026 _ 98
        mov     dword [ebp-18H], eax                    ; 0027 _ 89. 45, E8
        movzx   eax, word [?_038]                       ; 002A _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0031 _ 98
        mov     dword [ebp-14H], eax                    ; 0032 _ 89. 45, EC
        mov     dword [ebp-10H], 0                      ; 0035 _ C7. 45, F0, 00000000
        call    init_palette                            ; 003C _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0041 _ 8B. 45, EC
        lea     edx, [eax-1DH]                          ; 0044 _ 8D. 50, E3
        mov     eax, dword [ebp-18H]                    ; 0047 _ 8B. 45, E8
        sub     eax, 1                                  ; 004A _ 83. E8, 01
        sub     esp, 4                                  ; 004D _ 83. EC, 04
        push    edx                                     ; 0050 _ 52
        push    eax                                     ; 0051 _ 50
        push    0                                       ; 0052 _ 6A, 00
        push    0                                       ; 0054 _ 6A, 00
        push    14                                      ; 0056 _ 6A, 0E
        push    dword [ebp-18H]                         ; 0058 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 005B _ FF. 75, E4
        call    boxfill8                                ; 005E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0063 _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 0066 _ 8B. 45, EC
        lea     ecx, [eax-1CH]                          ; 0069 _ 8D. 48, E4
        mov     eax, dword [ebp-18H]                    ; 006C _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 006F _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 0072 _ 8B. 45, EC
        sub     eax, 28                                 ; 0075 _ 83. E8, 1C
        sub     esp, 4                                  ; 0078 _ 83. EC, 04
        push    ecx                                     ; 007B _ 51
        push    edx                                     ; 007C _ 52
        push    eax                                     ; 007D _ 50
        push    0                                       ; 007E _ 6A, 00
        push    8                                       ; 0080 _ 6A, 08
        push    dword [ebp-18H]                         ; 0082 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0085 _ FF. 75, E4
        call    boxfill8                                ; 0088 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 008D _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 0090 _ 8B. 45, EC
        lea     ecx, [eax-1BH]                          ; 0093 _ 8D. 48, E5
        mov     eax, dword [ebp-18H]                    ; 0096 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 0099 _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 009C _ 8B. 45, EC
        sub     eax, 27                                 ; 009F _ 83. E8, 1B
        sub     esp, 4                                  ; 00A2 _ 83. EC, 04
        push    ecx                                     ; 00A5 _ 51
        push    edx                                     ; 00A6 _ 52
        push    eax                                     ; 00A7 _ 50
        push    0                                       ; 00A8 _ 6A, 00
        push    7                                       ; 00AA _ 6A, 07
        push    dword [ebp-18H]                         ; 00AC _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 00AF _ FF. 75, E4
        call    boxfill8                                ; 00B2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00B7 _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 00BA _ 8B. 45, EC
        lea     ecx, [eax-1H]                           ; 00BD _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 00C0 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 00C3 _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 00C6 _ 8B. 45, EC
        sub     eax, 26                                 ; 00C9 _ 83. E8, 1A
        sub     esp, 4                                  ; 00CC _ 83. EC, 04
        push    ecx                                     ; 00CF _ 51
        push    edx                                     ; 00D0 _ 52
        push    eax                                     ; 00D1 _ 50
        push    0                                       ; 00D2 _ 6A, 00
        push    8                                       ; 00D4 _ 6A, 08
        push    dword [ebp-18H]                         ; 00D6 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 00D9 _ FF. 75, E4
        call    boxfill8                                ; 00DC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00E1 _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 00E4 _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 00E7 _ 8D. 50, E8
        mov     eax, dword [ebp-14H]                    ; 00EA _ 8B. 45, EC
        sub     eax, 24                                 ; 00ED _ 83. E8, 18
        sub     esp, 4                                  ; 00F0 _ 83. EC, 04
        push    edx                                     ; 00F3 _ 52
        push    59                                      ; 00F4 _ 6A, 3B
        push    eax                                     ; 00F6 _ 50
        push    3                                       ; 00F7 _ 6A, 03
        push    7                                       ; 00F9 _ 6A, 07
        push    dword [ebp-18H]                         ; 00FB _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 00FE _ FF. 75, E4
        call    boxfill8                                ; 0101 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0106 _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 0109 _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 010C _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 010F _ 8B. 45, EC
        sub     eax, 24                                 ; 0112 _ 83. E8, 18
        sub     esp, 4                                  ; 0115 _ 83. EC, 04
        push    edx                                     ; 0118 _ 52
        push    2                                       ; 0119 _ 6A, 02
        push    eax                                     ; 011B _ 50
        push    2                                       ; 011C _ 6A, 02
        push    7                                       ; 011E _ 6A, 07
        push    dword [ebp-18H]                         ; 0120 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0123 _ FF. 75, E4
        call    boxfill8                                ; 0126 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 012B _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 012E _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 0131 _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 0134 _ 8B. 45, EC
        sub     eax, 4                                  ; 0137 _ 83. E8, 04
        sub     esp, 4                                  ; 013A _ 83. EC, 04
        push    edx                                     ; 013D _ 52
        push    59                                      ; 013E _ 6A, 3B
        push    eax                                     ; 0140 _ 50
        push    3                                       ; 0141 _ 6A, 03
        push    15                                      ; 0143 _ 6A, 0F
        push    dword [ebp-18H]                         ; 0145 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0148 _ FF. 75, E4
        call    boxfill8                                ; 014B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0150 _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 0153 _ 8B. 45, EC
        lea     edx, [eax-5H]                           ; 0156 _ 8D. 50, FB
        mov     eax, dword [ebp-14H]                    ; 0159 _ 8B. 45, EC
        sub     eax, 23                                 ; 015C _ 83. E8, 17
        sub     esp, 4                                  ; 015F _ 83. EC, 04
        push    edx                                     ; 0162 _ 52
        push    59                                      ; 0163 _ 6A, 3B
        push    eax                                     ; 0165 _ 50
        push    59                                      ; 0166 _ 6A, 3B
        push    15                                      ; 0168 _ 6A, 0F
        push    dword [ebp-18H]                         ; 016A _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 016D _ FF. 75, E4
        call    boxfill8                                ; 0170 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0175 _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 0178 _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 017B _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 017E _ 8B. 45, EC
        sub     eax, 3                                  ; 0181 _ 83. E8, 03
        sub     esp, 4                                  ; 0184 _ 83. EC, 04
        push    edx                                     ; 0187 _ 52
        push    59                                      ; 0188 _ 6A, 3B
        push    eax                                     ; 018A _ 50
        push    2                                       ; 018B _ 6A, 02
        push    0                                       ; 018D _ 6A, 00
        push    dword [ebp-18H]                         ; 018F _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0192 _ FF. 75, E4
        call    boxfill8                                ; 0195 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 019A _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 019D _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 01A0 _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 01A3 _ 8B. 45, EC
        sub     eax, 24                                 ; 01A6 _ 83. E8, 18
        sub     esp, 4                                  ; 01A9 _ 83. EC, 04
        push    edx                                     ; 01AC _ 52
        push    60                                      ; 01AD _ 6A, 3C
        push    eax                                     ; 01AF _ 50
        push    60                                      ; 01B0 _ 6A, 3C
        push    0                                       ; 01B2 _ 6A, 00
        push    dword [ebp-18H]                         ; 01B4 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 01B7 _ FF. 75, E4
        call    boxfill8                                ; 01BA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01BF _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 01C2 _ 8B. 45, EC
        lea     ebx, [eax-18H]                          ; 01C5 _ 8D. 58, E8
        mov     eax, dword [ebp-18H]                    ; 01C8 _ 8B. 45, E8
        lea     ecx, [eax-4H]                           ; 01CB _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 01CE _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 01D1 _ 8D. 50, E8
        mov     eax, dword [ebp-18H]                    ; 01D4 _ 8B. 45, E8
        sub     eax, 47                                 ; 01D7 _ 83. E8, 2F
        sub     esp, 4                                  ; 01DA _ 83. EC, 04
        push    ebx                                     ; 01DD _ 53
        push    ecx                                     ; 01DE _ 51
        push    edx                                     ; 01DF _ 52
        push    eax                                     ; 01E0 _ 50
        push    15                                      ; 01E1 _ 6A, 0F
        push    dword [ebp-18H]                         ; 01E3 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 01E6 _ FF. 75, E4
        call    boxfill8                                ; 01E9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01EE _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 01F1 _ 8B. 45, EC
        lea     ebx, [eax-4H]                           ; 01F4 _ 8D. 58, FC
        mov     eax, dword [ebp-18H]                    ; 01F7 _ 8B. 45, E8
        lea     ecx, [eax-2FH]                          ; 01FA _ 8D. 48, D1
        mov     eax, dword [ebp-14H]                    ; 01FD _ 8B. 45, EC
        lea     edx, [eax-17H]                          ; 0200 _ 8D. 50, E9
        mov     eax, dword [ebp-18H]                    ; 0203 _ 8B. 45, E8
        sub     eax, 47                                 ; 0206 _ 83. E8, 2F
        sub     esp, 4                                  ; 0209 _ 83. EC, 04
        push    ebx                                     ; 020C _ 53
        push    ecx                                     ; 020D _ 51
        push    edx                                     ; 020E _ 52
        push    eax                                     ; 020F _ 50
        push    15                                      ; 0210 _ 6A, 0F
        push    dword [ebp-18H]                         ; 0212 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0215 _ FF. 75, E4
        call    boxfill8                                ; 0218 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 021D _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 0220 _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 0223 _ 8D. 58, FD
        mov     eax, dword [ebp-18H]                    ; 0226 _ 8B. 45, E8
        lea     ecx, [eax-4H]                           ; 0229 _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 022C _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 022F _ 8D. 50, FD
        mov     eax, dword [ebp-18H]                    ; 0232 _ 8B. 45, E8
        sub     eax, 47                                 ; 0235 _ 83. E8, 2F
        sub     esp, 4                                  ; 0238 _ 83. EC, 04
        push    ebx                                     ; 023B _ 53
        push    ecx                                     ; 023C _ 51
        push    edx                                     ; 023D _ 52
        push    eax                                     ; 023E _ 50
        push    7                                       ; 023F _ 6A, 07
        push    dword [ebp-18H]                         ; 0241 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0244 _ FF. 75, E4
        call    boxfill8                                ; 0247 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 024C _ 83. C4, 20
        mov     eax, dword [ebp-14H]                    ; 024F _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 0252 _ 8D. 58, FD
        mov     eax, dword [ebp-18H]                    ; 0255 _ 8B. 45, E8
        lea     ecx, [eax-3H]                           ; 0258 _ 8D. 48, FD
        mov     eax, dword [ebp-14H]                    ; 025B _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 025E _ 8D. 50, E8
        mov     eax, dword [ebp-18H]                    ; 0261 _ 8B. 45, E8
        sub     eax, 3                                  ; 0264 _ 83. E8, 03
        sub     esp, 4                                  ; 0267 _ 83. EC, 04
        push    ebx                                     ; 026A _ 53
        push    ecx                                     ; 026B _ 51
        push    edx                                     ; 026C _ 52
        push    eax                                     ; 026D _ 50
        push    7                                       ; 026E _ 6A, 07
        push    dword [ebp-18H]                         ; 0270 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 0273 _ FF. 75, E4
        call    boxfill8                                ; 0276 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 027B _ 83. C4, 20
        sub     esp, 8                                  ; 027E _ 83. EC, 08
        push    ?_042                                   ; 0281 _ 68, 00000000(d)
        push    7                                       ; 0286 _ 6A, 07
        push    8                                       ; 0288 _ 6A, 08
        push    72                                      ; 028A _ 6A, 48
        push    dword [ebp-18H]                         ; 028C _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 028F _ FF. 75, E4
        call    showString                              ; 0292 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0297 _ 83. C4, 20
        sub     esp, 8                                  ; 029A _ 83. EC, 08
        push    14                                      ; 029D _ 6A, 0E
        push    mcursor                                 ; 029F _ 68, 00000060(d)
        call    init_mouse_cursor                       ; 02A4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02A9 _ 83. C4, 10
        push    12                                      ; 02AC _ 6A, 0C
        push    mcursor                                 ; 02AE _ 68, 00000060(d)
        push    80                                      ; 02B3 _ 6A, 50
        push    80                                      ; 02B5 _ 6A, 50
        push    19                                      ; 02B7 _ 6A, 13
        push    12                                      ; 02B9 _ 6A, 0C
        push    dword [ebp-18H]                         ; 02BB _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 02BE _ FF. 75, E4
        call    putblock                                ; 02C1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02C6 _ 83. C4, 20
?_001:  call    io_cli                                  ; 02C9 _ E8, FFFFFFFC(rel)
        mov     eax, dword [?_041]                      ; 02CE _ A1, 00000048(d)
        test    eax, eax                                ; 02D3 _ 85. C0
        jnz     ?_002                                   ; 02D5 _ 75, 07
        call    io_stihlt                               ; 02D7 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 02DC _ EB, EB

?_002:  mov     eax, dword [?_039]                      ; 02DE _ A1, 00000040(d)
        movzx   eax, byte [keybuf+eax]                  ; 02E3 _ 0F B6. 80, 00000020(d)
        movzx   eax, al                                 ; 02EA _ 0F B6. C0
        mov     dword [ebp-10H], eax                    ; 02ED _ 89. 45, F0
        mov     eax, dword [?_039]                      ; 02F0 _ A1, 00000040(d)
        lea     edx, [eax+1H]                           ; 02F5 _ 8D. 50, 01
        mov     eax, edx                                ; 02F8 _ 89. D0
        sar     eax, 31                                 ; 02FA _ C1. F8, 1F
        shr     eax, 27                                 ; 02FD _ C1. E8, 1B
        add     edx, eax                                ; 0300 _ 01. C2
        and     edx, 1FH                                ; 0302 _ 83. E2, 1F
        sub     edx, eax                                ; 0305 _ 29. C2
        mov     eax, edx                                ; 0307 _ 89. D0
        mov     dword [?_039], eax                      ; 0309 _ A3, 00000040(d)
        call    io_sti                                  ; 030E _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 0313 _ 8B. 45, F0
        movzx   eax, al                                 ; 0316 _ 0F B6. C0
        sub     esp, 12                                 ; 0319 _ 83. EC, 0C
        push    eax                                     ; 031C _ 50
        call    charToHexStr                            ; 031D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0322 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0325 _ 89. 45, F4
        mov     eax, dword [showPos.1565]               ; 0328 _ A1, 00000144(d)
        sub     esp, 8                                  ; 032D _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0330 _ FF. 75, F4
        push    7                                       ; 0333 _ 6A, 07
        push    0                                       ; 0335 _ 6A, 00
        push    eax                                     ; 0337 _ 50
        push    dword [ebp-18H]                         ; 0338 _ FF. 75, E8
        push    dword [ebp-1CH]                         ; 033B _ FF. 75, E4
        call    showString                              ; 033E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0343 _ 83. C4, 20
        mov     eax, dword [showPos.1565]               ; 0346 _ A1, 00000144(d)
        add     eax, 32                                 ; 034B _ 83. C0, 20
        mov     dword [showPos.1565], eax               ; 034E _ A3, 00000144(d)
        mov     eax, dword [?_041]                      ; 0353 _ A1, 00000048(d)
        sub     eax, 1                                  ; 0358 _ 83. E8, 01
        mov     dword [?_041], eax                      ; 035B _ A3, 00000048(d)
        jmp     ?_001                                   ; 0360 _ E9, FFFFFF64
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0365 _ 55
        mov     ebp, esp                                ; 0366 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0368 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 036B _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0371 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0374 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 037A _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 037D _ 66: C7. 40, 06, 00C8
        nop                                             ; 0383 _ 90
        pop     ebp                                     ; 0384 _ 5D
        ret                                             ; 0385 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0386 _ 55
        mov     ebp, esp                                ; 0387 _ 89. E5
        sub     esp, 24                                 ; 0389 _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 038C _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 038F _ 88. 45, F4
        jmp     ?_004                                   ; 0392 _ EB, 37

?_003:  mov     eax, dword [ebp+1CH]                    ; 0394 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0397 _ 0F B6. 00
        movzx   eax, al                                 ; 039A _ 0F B6. C0
        shl     eax, 4                                  ; 039D _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 03A0 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 03A6 _ 0F BE. 45, F4
        sub     esp, 8                                  ; 03AA _ 83. EC, 08
        push    edx                                     ; 03AD _ 52
        push    eax                                     ; 03AE _ 50
        push    dword [ebp+14H]                         ; 03AF _ FF. 75, 14
        push    dword [ebp+10H]                         ; 03B2 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 03B5 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 03B8 _ FF. 75, 08
        call    showFont8                               ; 03BB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03C0 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 03C3 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 03C7 _ 83. 45, 1C, 01
?_004:  mov     eax, dword [ebp+1CH]                    ; 03CB _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 03CE _ 0F B6. 00
        test    al, al                                  ; 03D1 _ 84. C0
        jnz     ?_003                                   ; 03D3 _ 75, BF
        nop                                             ; 03D5 _ 90
        leave                                           ; 03D6 _ C9
        ret                                             ; 03D7 _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 03D8 _ 55
        mov     ebp, esp                                ; 03D9 _ 89. E5
        sub     esp, 8                                  ; 03DB _ 83. EC, 08
        sub     esp, 4                                  ; 03DE _ 83. EC, 04
        push    table_rgb.1584                          ; 03E1 _ 68, 00000020(d)
        push    15                                      ; 03E6 _ 6A, 0F
        push    0                                       ; 03E8 _ 6A, 00
        call    set_palette                             ; 03EA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03EF _ 83. C4, 10
        nop                                             ; 03F2 _ 90
        leave                                           ; 03F3 _ C9
        ret                                             ; 03F4 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 03F5 _ 55
        mov     ebp, esp                                ; 03F6 _ 89. E5
        sub     esp, 24                                 ; 03F8 _ 83. EC, 18
        call    io_load_eflags                          ; 03FB _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0400 _ 89. 45, F4
        call    io_cli                                  ; 0403 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0408 _ 8B. 45, 08
        movsx   eax, al                                 ; 040B _ 0F BE. C0
        sub     esp, 8                                  ; 040E _ 83. EC, 08
        push    eax                                     ; 0411 _ 50
        push    968                                     ; 0412 _ 68, 000003C8
        call    io_out8                                 ; 0417 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 041C _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 041F _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0422 _ 89. 45, F0
        jmp     ?_006                                   ; 0425 _ EB, 65

?_005:  mov     eax, dword [ebp+10H]                    ; 0427 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 042A _ 0F B6. 00
        shr     al, 2                                   ; 042D _ C0. E8, 02
        movsx   eax, al                                 ; 0430 _ 0F BE. C0
        sub     esp, 8                                  ; 0433 _ 83. EC, 08
        push    eax                                     ; 0436 _ 50
        push    969                                     ; 0437 _ 68, 000003C9
        call    io_out8                                 ; 043C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0441 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0444 _ 8B. 45, 10
        add     eax, 1                                  ; 0447 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 044A _ 0F B6. 00
        shr     al, 2                                   ; 044D _ C0. E8, 02
        movsx   eax, al                                 ; 0450 _ 0F BE. C0
        sub     esp, 8                                  ; 0453 _ 83. EC, 08
        push    eax                                     ; 0456 _ 50
        push    969                                     ; 0457 _ 68, 000003C9
        call    io_out8                                 ; 045C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0461 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0464 _ 8B. 45, 10
        add     eax, 2                                  ; 0467 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 046A _ 0F B6. 00
        shr     al, 2                                   ; 046D _ C0. E8, 02
        movsx   eax, al                                 ; 0470 _ 0F BE. C0
        sub     esp, 8                                  ; 0473 _ 83. EC, 08
        push    eax                                     ; 0476 _ 50
        push    969                                     ; 0477 _ 68, 000003C9
        call    io_out8                                 ; 047C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0481 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0484 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0488 _ 83. 45, F0, 01
?_006:  mov     eax, dword [ebp-10H]                    ; 048C _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 048F _ 3B. 45, 0C
        jle     ?_005                                   ; 0492 _ 7E, 93
        sub     esp, 12                                 ; 0494 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0497 _ FF. 75, F4
        call    io_store_eflags                         ; 049A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 049F _ 83. C4, 10
        nop                                             ; 04A2 _ 90
        leave                                           ; 04A3 _ C9
        ret                                             ; 04A4 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 04A5 _ 55
        mov     ebp, esp                                ; 04A6 _ 89. E5
        sub     esp, 20                                 ; 04A8 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 04AB _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 04AE _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 04B1 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 04B4 _ 89. 45, FC
        jmp     ?_010                                   ; 04B7 _ EB, 33

?_007:  mov     eax, dword [ebp+14H]                    ; 04B9 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 04BC _ 89. 45, F8
        jmp     ?_009                                   ; 04BF _ EB, 1F

?_008:  mov     eax, dword [ebp-4H]                     ; 04C1 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 04C4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04C8 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 04CA _ 8B. 45, F8
        add     eax, edx                                ; 04CD _ 01. D0
        mov     edx, eax                                ; 04CF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 04D1 _ 8B. 45, 08
        add     edx, eax                                ; 04D4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04D6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04DA _ 88. 02
        add     dword [ebp-8H], 1                       ; 04DC _ 83. 45, F8, 01
?_009:  mov     eax, dword [ebp-8H]                     ; 04E0 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 04E3 _ 3B. 45, 1C
        jle     ?_008                                   ; 04E6 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 04E8 _ 83. 45, FC, 01
?_010:  mov     eax, dword [ebp-4H]                     ; 04EC _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 04EF _ 3B. 45, 20
        jle     ?_007                                   ; 04F2 _ 7E, C5
        nop                                             ; 04F4 _ 90
        leave                                           ; 04F5 _ C9
        ret                                             ; 04F6 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 04F7 _ 55
        mov     ebp, esp                                ; 04F8 _ 89. E5
        sub     esp, 20                                 ; 04FA _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 04FD _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0500 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0503 _ C7. 45, FC, 00000000
        jmp     ?_020                                   ; 050A _ E9, 0000016C

?_011:  mov     edx, dword [ebp-4H]                     ; 050F _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0512 _ 8B. 45, 1C
        add     eax, edx                                ; 0515 _ 01. D0
        movzx   eax, byte [eax]                         ; 0517 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 051A _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 051D _ 80. 7D, FB, 00
        jns     ?_012                                   ; 0521 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0523 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0526 _ 8B. 45, FC
        add     eax, edx                                ; 0529 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 052B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 052F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0531 _ 8B. 45, 10
        add     eax, edx                                ; 0534 _ 01. D0
        mov     edx, eax                                ; 0536 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0538 _ 8B. 45, 08
        add     edx, eax                                ; 053B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 053D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0541 _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 0543 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0547 _ 83. E0, 40
        test    eax, eax                                ; 054A _ 85. C0
        jz      ?_013                                   ; 054C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 054E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0551 _ 8B. 45, FC
        add     eax, edx                                ; 0554 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0556 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 055A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 055C _ 8B. 45, 10
        add     eax, edx                                ; 055F _ 01. D0
        lea     edx, [eax+1H]                           ; 0561 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0564 _ 8B. 45, 08
        add     edx, eax                                ; 0567 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0569 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 056D _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 056F _ 0F BE. 45, FB
        and     eax, 20H                                ; 0573 _ 83. E0, 20
        test    eax, eax                                ; 0576 _ 85. C0
        jz      ?_014                                   ; 0578 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 057A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 057D _ 8B. 45, FC
        add     eax, edx                                ; 0580 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0582 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0586 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0588 _ 8B. 45, 10
        add     eax, edx                                ; 058B _ 01. D0
        lea     edx, [eax+2H]                           ; 058D _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0590 _ 8B. 45, 08
        add     edx, eax                                ; 0593 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0595 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0599 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 059B _ 0F BE. 45, FB
        and     eax, 10H                                ; 059F _ 83. E0, 10
        test    eax, eax                                ; 05A2 _ 85. C0
        jz      ?_015                                   ; 05A4 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05A6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05A9 _ 8B. 45, FC
        add     eax, edx                                ; 05AC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05AE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05B2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05B4 _ 8B. 45, 10
        add     eax, edx                                ; 05B7 _ 01. D0
        lea     edx, [eax+3H]                           ; 05B9 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 05BC _ 8B. 45, 08
        add     edx, eax                                ; 05BF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05C1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05C5 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 05C7 _ 0F BE. 45, FB
        and     eax, 08H                                ; 05CB _ 83. E0, 08
        test    eax, eax                                ; 05CE _ 85. C0
        jz      ?_016                                   ; 05D0 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05D2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05D5 _ 8B. 45, FC
        add     eax, edx                                ; 05D8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05DA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05DE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05E0 _ 8B. 45, 10
        add     eax, edx                                ; 05E3 _ 01. D0
        lea     edx, [eax+4H]                           ; 05E5 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 05E8 _ 8B. 45, 08
        add     edx, eax                                ; 05EB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05ED _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05F1 _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 05F3 _ 0F BE. 45, FB
        and     eax, 04H                                ; 05F7 _ 83. E0, 04
        test    eax, eax                                ; 05FA _ 85. C0
        jz      ?_017                                   ; 05FC _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05FE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0601 _ 8B. 45, FC
        add     eax, edx                                ; 0604 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0606 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 060A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 060C _ 8B. 45, 10
        add     eax, edx                                ; 060F _ 01. D0
        lea     edx, [eax+5H]                           ; 0611 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0614 _ 8B. 45, 08
        add     edx, eax                                ; 0617 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0619 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 061D _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 061F _ 0F BE. 45, FB
        and     eax, 02H                                ; 0623 _ 83. E0, 02
        test    eax, eax                                ; 0626 _ 85. C0
        jz      ?_018                                   ; 0628 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 062A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 062D _ 8B. 45, FC
        add     eax, edx                                ; 0630 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0632 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0636 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0638 _ 8B. 45, 10
        add     eax, edx                                ; 063B _ 01. D0
        lea     edx, [eax+6H]                           ; 063D _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0640 _ 8B. 45, 08
        add     edx, eax                                ; 0643 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0645 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0649 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 064B _ 0F BE. 45, FB
        and     eax, 01H                                ; 064F _ 83. E0, 01
        test    eax, eax                                ; 0652 _ 85. C0
        jz      ?_019                                   ; 0654 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0656 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0659 _ 8B. 45, FC
        add     eax, edx                                ; 065C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 065E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0662 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0664 _ 8B. 45, 10
        add     eax, edx                                ; 0667 _ 01. D0
        lea     edx, [eax+7H]                           ; 0669 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 066C _ 8B. 45, 08
        add     edx, eax                                ; 066F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0671 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0675 _ 88. 02
?_019:  add     dword [ebp-4H], 1                       ; 0677 _ 83. 45, FC, 01
?_020:  cmp     dword [ebp-4H], 15                      ; 067B _ 83. 7D, FC, 0F
        jle     ?_011                                   ; 067F _ 0F 8E, FFFFFE8A
        nop                                             ; 0685 _ 90
        leave                                           ; 0686 _ C9
        ret                                             ; 0687 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 0688 _ 55
        mov     ebp, esp                                ; 0689 _ 89. E5
        sub     esp, 20                                 ; 068B _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 068E _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0691 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0694 _ C7. 45, FC, 00000000
        jmp     ?_027                                   ; 069B _ E9, 000000CF

?_021:  mov     dword [ebp-8H], 0                       ; 06A0 _ C7. 45, F8, 00000000
        jmp     ?_026                                   ; 06A7 _ E9, 000000B5

?_022:  mov     edx, dword [ebp-4H]                     ; 06AC _ 8B. 55, FC
        mov     eax, edx                                ; 06AF _ 89. D0
        add     eax, eax                                ; 06B1 _ 01. C0
        add     eax, edx                                ; 06B3 _ 01. D0
        shl     eax, 2                                  ; 06B5 _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 06B8 _ 8B. 55, F8
        add     eax, edx                                ; 06BB _ 01. D0
        add     eax, cursor.1629                        ; 06BD _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 06C2 _ 0F B6. 00
        cmp     al, 42                                  ; 06C5 _ 3C, 2A
        jnz     ?_023                                   ; 06C7 _ 75, 1D
        mov     edx, dword [ebp-4H]                     ; 06C9 _ 8B. 55, FC
        mov     eax, edx                                ; 06CC _ 89. D0
        add     eax, eax                                ; 06CE _ 01. C0
        add     eax, edx                                ; 06D0 _ 01. D0
        shl     eax, 2                                  ; 06D2 _ C1. E0, 02
        mov     edx, eax                                ; 06D5 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 06D7 _ 8B. 45, F8
        add     eax, edx                                ; 06DA _ 01. D0
        mov     edx, eax                                ; 06DC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 06DE _ 8B. 45, 08
        add     eax, edx                                ; 06E1 _ 01. D0
        mov     byte [eax], 0                           ; 06E3 _ C6. 00, 00
?_023:  mov     edx, dword [ebp-4H]                     ; 06E6 _ 8B. 55, FC
        mov     eax, edx                                ; 06E9 _ 89. D0
        add     eax, eax                                ; 06EB _ 01. C0
        add     eax, edx                                ; 06ED _ 01. D0
        shl     eax, 2                                  ; 06EF _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 06F2 _ 8B. 55, F8
        add     eax, edx                                ; 06F5 _ 01. D0
        add     eax, cursor.1629                        ; 06F7 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 06FC _ 0F B6. 00
        cmp     al, 79                                  ; 06FF _ 3C, 4F
        jnz     ?_024                                   ; 0701 _ 75, 1D
        mov     edx, dword [ebp-4H]                     ; 0703 _ 8B. 55, FC
        mov     eax, edx                                ; 0706 _ 89. D0
        add     eax, eax                                ; 0708 _ 01. C0
        add     eax, edx                                ; 070A _ 01. D0
        shl     eax, 2                                  ; 070C _ C1. E0, 02
        mov     edx, eax                                ; 070F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0711 _ 8B. 45, F8
        add     eax, edx                                ; 0714 _ 01. D0
        mov     edx, eax                                ; 0716 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0718 _ 8B. 45, 08
        add     eax, edx                                ; 071B _ 01. D0
        mov     byte [eax], 7                           ; 071D _ C6. 00, 07
?_024:  mov     edx, dword [ebp-4H]                     ; 0720 _ 8B. 55, FC
        mov     eax, edx                                ; 0723 _ 89. D0
        add     eax, eax                                ; 0725 _ 01. C0
        add     eax, edx                                ; 0727 _ 01. D0
        shl     eax, 2                                  ; 0729 _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 072C _ 8B. 55, F8
        add     eax, edx                                ; 072F _ 01. D0
        add     eax, cursor.1629                        ; 0731 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0736 _ 0F B6. 00
        cmp     al, 46                                  ; 0739 _ 3C, 2E
        jnz     ?_025                                   ; 073B _ 75, 20
        mov     edx, dword [ebp-4H]                     ; 073D _ 8B. 55, FC
        mov     eax, edx                                ; 0740 _ 89. D0
        add     eax, eax                                ; 0742 _ 01. C0
        add     eax, edx                                ; 0744 _ 01. D0
        shl     eax, 2                                  ; 0746 _ C1. E0, 02
        mov     edx, eax                                ; 0749 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 074B _ 8B. 45, F8
        add     eax, edx                                ; 074E _ 01. D0
        mov     edx, eax                                ; 0750 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0752 _ 8B. 45, 08
        add     edx, eax                                ; 0755 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0757 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 075B _ 88. 02
?_025:  add     dword [ebp-8H], 1                       ; 075D _ 83. 45, F8, 01
?_026:  cmp     dword [ebp-8H], 11                      ; 0761 _ 83. 7D, F8, 0B
        jle     ?_022                                   ; 0765 _ 0F 8E, FFFFFF41
        add     dword [ebp-4H], 1                       ; 076B _ 83. 45, FC, 01
?_027:  cmp     dword [ebp-4H], 18                      ; 076F _ 83. 7D, FC, 12
        jle     ?_021                                   ; 0773 _ 0F 8E, FFFFFF27
        nop                                             ; 0779 _ 90
        leave                                           ; 077A _ C9
        ret                                             ; 077B _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 077C _ 55
        mov     ebp, esp                                ; 077D _ 89. E5
        sub     esp, 16                                 ; 077F _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0782 _ C7. 45, FC, 00000000
        jmp     ?_031                                   ; 0789 _ EB, 50

?_028:  mov     dword [ebp-8H], 0                       ; 078B _ C7. 45, F8, 00000000
        jmp     ?_030                                   ; 0792 _ EB, 3B

?_029:  mov     edx, dword [ebp+1CH]                    ; 0794 _ 8B. 55, 1C
        mov     eax, dword [ebp-4H]                     ; 0797 _ 8B. 45, FC
        add     eax, edx                                ; 079A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 079C _ 0F AF. 45, 0C
        mov     ecx, dword [ebp+18H]                    ; 07A0 _ 8B. 4D, 18
        mov     edx, dword [ebp-8H]                     ; 07A3 _ 8B. 55, F8
        add     edx, ecx                                ; 07A6 _ 01. CA
        add     eax, edx                                ; 07A8 _ 01. D0
        mov     edx, eax                                ; 07AA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07AC _ 8B. 45, 08
        add     edx, eax                                ; 07AF _ 01. C2
        mov     eax, dword [ebp-4H]                     ; 07B1 _ 8B. 45, FC
        imul    eax, dword [ebp+24H]                    ; 07B4 _ 0F AF. 45, 24
        mov     ecx, eax                                ; 07B8 _ 89. C1
        mov     eax, dword [ebp-8H]                     ; 07BA _ 8B. 45, F8
        add     eax, ecx                                ; 07BD _ 01. C8
        mov     ecx, eax                                ; 07BF _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 07C1 _ 8B. 45, 20
        add     eax, ecx                                ; 07C4 _ 01. C8
        movzx   eax, byte [eax]                         ; 07C6 _ 0F B6. 00
        mov     byte [edx], al                          ; 07C9 _ 88. 02
        add     dword [ebp-8H], 1                       ; 07CB _ 83. 45, F8, 01
?_030:  mov     eax, dword [ebp-8H]                     ; 07CF _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 07D2 _ 3B. 45, 10
        jl      ?_029                                   ; 07D5 _ 7C, BD
        add     dword [ebp-4H], 1                       ; 07D7 _ 83. 45, FC, 01
?_031:  mov     eax, dword [ebp-4H]                     ; 07DB _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 07DE _ 3B. 45, 14
        jl      ?_028                                   ; 07E1 _ 7C, A8
        nop                                             ; 07E3 _ 90
        leave                                           ; 07E4 _ C9
        ret                                             ; 07E5 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 07E6 _ 55
        mov     ebp, esp                                ; 07E7 _ 89. E5
        sub     esp, 24                                 ; 07E9 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 07EC _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 07F1 _ 89. 45, EC
        movzx   eax, word [?_037]                       ; 07F4 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 07FB _ 98
        mov     dword [ebp-10H], eax                    ; 07FC _ 89. 45, F0
        movzx   eax, word [?_038]                       ; 07FF _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0806 _ 98
        mov     dword [ebp-0CH], eax                    ; 0807 _ 89. 45, F4
        sub     esp, 8                                  ; 080A _ 83. EC, 08
        push    33                                      ; 080D _ 6A, 21
        push    32                                      ; 080F _ 6A, 20
        call    io_out8                                 ; 0811 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0816 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 0819 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 081D _ 83. EC, 0C
        push    96                                      ; 0820 _ 6A, 60
        call    io_in8                                  ; 0822 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0827 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 082A _ 88. 45, EB
        mov     eax, dword [?_041]                      ; 082D _ A1, 00000048(d)
        cmp     eax, 31                                 ; 0832 _ 83. F8, 1F
        jg      ?_032                                   ; 0835 _ 7F, 3A
        mov     eax, dword [?_040]                      ; 0837 _ A1, 00000044(d)
        movzx   edx, byte [ebp-15H]                     ; 083C _ 0F B6. 55, EB
        mov     byte [keybuf+eax], dl                   ; 0840 _ 88. 90, 00000020(d)
        mov     eax, dword [?_041]                      ; 0846 _ A1, 00000048(d)
        add     eax, 1                                  ; 084B _ 83. C0, 01
        mov     dword [?_041], eax                      ; 084E _ A3, 00000048(d)
        mov     eax, dword [?_040]                      ; 0853 _ A1, 00000044(d)
        lea     edx, [eax+1H]                           ; 0858 _ 8D. 50, 01
        mov     eax, edx                                ; 085B _ 89. D0
        sar     eax, 31                                 ; 085D _ C1. F8, 1F
        shr     eax, 27                                 ; 0860 _ C1. E8, 1B
        add     edx, eax                                ; 0863 _ 01. C2
        and     edx, 1FH                                ; 0865 _ 83. E2, 1F
        sub     edx, eax                                ; 0868 _ 29. C2
        mov     eax, edx                                ; 086A _ 89. D0
        mov     dword [?_040], eax                      ; 086C _ A3, 00000044(d)
?_032:  nop                                             ; 0871 _ 90
        leave                                           ; 0872 _ C9
        ret                                             ; 0873 _ C3
; intHandlerFromC End of function

charToHexVal:; Function begin
        push    ebp                                     ; 0874 _ 55
        mov     ebp, esp                                ; 0875 _ 89. E5
        sub     esp, 4                                  ; 0877 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 087A _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 087D _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0880 _ 80. 7D, FC, 09
        jle     ?_033                                   ; 0884 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0886 _ 0F B6. 45, FC
        add     eax, 55                                 ; 088A _ 83. C0, 37
        jmp     ?_034                                   ; 088D _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 088F _ 0F B6. 45, FC
        add     eax, 48                                 ; 0893 _ 83. C0, 30
?_034:  leave                                           ; 0896 _ C9
        ret                                             ; 0897 _ C3
; charToHexVal End of function

charToHexStr:; Function begin
        push    ebp                                     ; 0898 _ 55
        mov     ebp, esp                                ; 0899 _ 89. E5
        sub     esp, 20                                 ; 089B _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 089E _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 08A1 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 08A4 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 08AB _ 0F B6. 45, EC
        and     eax, 0FH                                ; 08AF _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 08B2 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 08B5 _ 0F BE. 45, FB
        push    eax                                     ; 08B9 _ 50
        call    charToHexVal                            ; 08BA _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 08BF _ 83. C4, 04
        mov     byte [?_036], al                        ; 08C2 _ A2, 00000003(d)
        movzx   eax, byte [ebp-14H]                     ; 08C7 _ 0F B6. 45, EC
        shr     al, 4                                   ; 08CB _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 08CE _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 08D1 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 08D5 _ 0F BE. C0
        push    eax                                     ; 08D8 _ 50
        call    charToHexVal                            ; 08D9 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 08DE _ 83. C4, 04
        mov     byte [?_035], al                        ; 08E1 _ A2, 00000002(d)
        mov     eax, keyval                             ; 08E6 _ B8, 00000000(d)
        leave                                           ; 08EB _ C9
        ret                                             ; 08EC _ C3
; charToHexStr End of function


keyval:                                                 ; byte
        db 30H, 58H                                     ; 0000 _ 0X

?_035:  db 00H                                          ; 0002 _ .

?_036:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0003 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000B _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

table_rgb.1584:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1629:                                            ; byte
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0060 _ *.......
        db 2EH, 2EH, 2EH, 2EH, 2AH, 2AH, 2EH, 2EH       ; 0068 _ ....**..
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0070 _ ........
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0078 _ *O*.....
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0080 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0088 _ ........
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0090 _ *OOO*...
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH       ; 0098 _ ....*OOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00A0 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 00A8 _ *OOOOO*.
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH       ; 00B0 _ ....*OOO
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 00B8 _ OOO*....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00C0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH       ; 00C8 _ *...*OOO
        db 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 00D0 _ OOOOO*..
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00D8 _ *OOOOOOO
        db 4FH, 4FH, 2AH, 2EH, 2AH, 4FH, 4FH, 4FH       ; 00E0 _ OO*.*OOO
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH       ; 00E8 _ OOOOOOO*
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH       ; 00F0 _ *OOOOOO*
        db 2AH, 2AH, 2AH, 2AH, 2AH, 4FH, 4FH, 4FH       ; 00F8 _ *****OOO
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0100 _ *OO*....
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2AH, 4FH, 4FH       ; 0108 _ *OO*.*OO
        db 2AH, 2EH, 2EH, 2EH, 2AH, 4FH, 2AH, 2EH       ; 0110 _ *...*O*.
        db 2EH, 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0118 _ .*OO*...
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2AH, 4FH       ; 0120 _ **....*O
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0128 _ O*......
        db 2EH, 2EH, 2AH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 0130 _ ..*OO*..
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2AH       ; 0138 _ .......*
        db 2AH, 2EH, 2EH, 2EH                           ; 0140 _ *...



bootInfo:                                               ; qword
        resb    4                                       ; 0000

?_037:  resw    1                                       ; 0004

?_038:  resw    13                                      ; 0006

keybuf:                                                 ; byte
        resb    32                                      ; 0020

?_039:  resd    1                                       ; 0040

?_040:  resd    1                                       ; 0044

?_041:  resd    6                                       ; 0048

mcursor:                                                ; byte
        resb    228                                     ; 0060

showPos.1565:                                           ; dword
        resd    1                                       ; 0144



?_042:                                                  ; byte
        db 54H, 72H, 79H, 20H, 74H, 6FH, 20H, 70H       ; 0000 _ Try to p
        db 72H, 65H, 73H, 73H, 20H, 61H, 20H, 6BH       ; 0008 _ ress a k
        db 65H, 79H, 00H                                ; 0010 _ ey.


