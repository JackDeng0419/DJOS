; Disassembly of file: write_vga_desktop.o
; Thu Mar 25 05:28:00 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386




CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    esi                                     ; 0003 _ 56
        push    ebx                                     ; 0004 _ 53
        sub     esp, 16                                 ; 0005 _ 83. EC, 10
        sub     esp, 12                                 ; 0008 _ 83. EC, 0C
        push    bootInfo                                ; 000B _ 68, 00000000(d)
        call    initBootInfo                            ; 0010 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0015 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0018 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 001D _ 89. 45, EC
        movzx   eax, word [?_059]                       ; 0020 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0027 _ 98
        mov     dword [xsize], eax                      ; 0028 _ A3, 00000010(d)
        movzx   eax, word [?_060]                       ; 002D _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0034 _ 98
        mov     dword [ysize], eax                      ; 0035 _ A3, 00000014(d)
        mov     dword [ebp-10H], 0                      ; 003A _ C7. 45, F0, 00000000
        sub     esp, 4                                  ; 0041 _ 83. EC, 04
        push    keybuf                                  ; 0044 _ 68, 00000060(d)
        push    32                                      ; 0049 _ 6A, 20
        push    keyinfo                                 ; 004B _ 68, 00000018(d)
        call    fifo8_init                              ; 0050 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0055 _ 83. C4, 10
        sub     esp, 4                                  ; 0058 _ 83. EC, 04
        push    mousebuf                                ; 005B _ 68, 00000080(d)
        push    128                                     ; 0060 _ 68, 00000080
        push    mouseinfo                               ; 0065 _ 68, 00000030(d)
        call    fifo8_init                              ; 006A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 006F _ 83. C4, 10
        call    init_palette                            ; 0072 _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 0077 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ysize]                      ; 007C _ A1, 00000014(d)
        lea     ecx, [eax-1DH]                          ; 0081 _ 8D. 48, E3
        mov     eax, dword [xsize]                      ; 0084 _ A1, 00000010(d)
        lea     edx, [eax-1H]                           ; 0089 _ 8D. 50, FF
        mov     eax, dword [xsize]                      ; 008C _ A1, 00000010(d)
        sub     esp, 4                                  ; 0091 _ 83. EC, 04
        push    ecx                                     ; 0094 _ 51
        push    edx                                     ; 0095 _ 52
        push    0                                       ; 0096 _ 6A, 00
        push    0                                       ; 0098 _ 6A, 00
        push    14                                      ; 009A _ 6A, 0E
        push    eax                                     ; 009C _ 50
        push    dword [ebp-14H]                         ; 009D _ FF. 75, EC
        call    boxfill8                                ; 00A0 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00A5 _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 00A8 _ A1, 00000014(d)
        lea     ebx, [eax-1CH]                          ; 00AD _ 8D. 58, E4
        mov     eax, dword [xsize]                      ; 00B0 _ A1, 00000010(d)
        lea     ecx, [eax-1H]                           ; 00B5 _ 8D. 48, FF
        mov     eax, dword [ysize]                      ; 00B8 _ A1, 00000014(d)
        lea     edx, [eax-1CH]                          ; 00BD _ 8D. 50, E4
        mov     eax, dword [xsize]                      ; 00C0 _ A1, 00000010(d)
        sub     esp, 4                                  ; 00C5 _ 83. EC, 04
        push    ebx                                     ; 00C8 _ 53
        push    ecx                                     ; 00C9 _ 51
        push    edx                                     ; 00CA _ 52
        push    0                                       ; 00CB _ 6A, 00
        push    8                                       ; 00CD _ 6A, 08
        push    eax                                     ; 00CF _ 50
        push    dword [ebp-14H]                         ; 00D0 _ FF. 75, EC
        call    boxfill8                                ; 00D3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00D8 _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 00DB _ A1, 00000014(d)
        lea     ebx, [eax-1BH]                          ; 00E0 _ 8D. 58, E5
        mov     eax, dword [xsize]                      ; 00E3 _ A1, 00000010(d)
        lea     ecx, [eax-1H]                           ; 00E8 _ 8D. 48, FF
        mov     eax, dword [ysize]                      ; 00EB _ A1, 00000014(d)
        lea     edx, [eax-1BH]                          ; 00F0 _ 8D. 50, E5
        mov     eax, dword [xsize]                      ; 00F3 _ A1, 00000010(d)
        sub     esp, 4                                  ; 00F8 _ 83. EC, 04
        push    ebx                                     ; 00FB _ 53
        push    ecx                                     ; 00FC _ 51
        push    edx                                     ; 00FD _ 52
        push    0                                       ; 00FE _ 6A, 00
        push    7                                       ; 0100 _ 6A, 07
        push    eax                                     ; 0102 _ 50
        push    dword [ebp-14H]                         ; 0103 _ FF. 75, EC
        call    boxfill8                                ; 0106 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 010B _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 010E _ A1, 00000014(d)
        lea     ebx, [eax-1H]                           ; 0113 _ 8D. 58, FF
        mov     eax, dword [xsize]                      ; 0116 _ A1, 00000010(d)
        lea     ecx, [eax-1H]                           ; 011B _ 8D. 48, FF
        mov     eax, dword [ysize]                      ; 011E _ A1, 00000014(d)
        lea     edx, [eax-1AH]                          ; 0123 _ 8D. 50, E6
        mov     eax, dword [xsize]                      ; 0126 _ A1, 00000010(d)
        sub     esp, 4                                  ; 012B _ 83. EC, 04
        push    ebx                                     ; 012E _ 53
        push    ecx                                     ; 012F _ 51
        push    edx                                     ; 0130 _ 52
        push    0                                       ; 0131 _ 6A, 00
        push    8                                       ; 0133 _ 6A, 08
        push    eax                                     ; 0135 _ 50
        push    dword [ebp-14H]                         ; 0136 _ FF. 75, EC
        call    boxfill8                                ; 0139 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 013E _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 0141 _ A1, 00000014(d)
        lea     ecx, [eax-18H]                          ; 0146 _ 8D. 48, E8
        mov     eax, dword [ysize]                      ; 0149 _ A1, 00000014(d)
        lea     edx, [eax-18H]                          ; 014E _ 8D. 50, E8
        mov     eax, dword [xsize]                      ; 0151 _ A1, 00000010(d)
        sub     esp, 4                                  ; 0156 _ 83. EC, 04
        push    ecx                                     ; 0159 _ 51
        push    59                                      ; 015A _ 6A, 3B
        push    edx                                     ; 015C _ 52
        push    3                                       ; 015D _ 6A, 03
        push    7                                       ; 015F _ 6A, 07
        push    eax                                     ; 0161 _ 50
        push    dword [ebp-14H]                         ; 0162 _ FF. 75, EC
        call    boxfill8                                ; 0165 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 016A _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 016D _ A1, 00000014(d)
        lea     ecx, [eax-4H]                           ; 0172 _ 8D. 48, FC
        mov     eax, dword [ysize]                      ; 0175 _ A1, 00000014(d)
        lea     edx, [eax-18H]                          ; 017A _ 8D. 50, E8
        mov     eax, dword [xsize]                      ; 017D _ A1, 00000010(d)
        sub     esp, 4                                  ; 0182 _ 83. EC, 04
        push    ecx                                     ; 0185 _ 51
        push    2                                       ; 0186 _ 6A, 02
        push    edx                                     ; 0188 _ 52
        push    2                                       ; 0189 _ 6A, 02
        push    7                                       ; 018B _ 6A, 07
        push    eax                                     ; 018D _ 50
        push    dword [ebp-14H]                         ; 018E _ FF. 75, EC
        call    boxfill8                                ; 0191 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0196 _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 0199 _ A1, 00000014(d)
        lea     ecx, [eax-4H]                           ; 019E _ 8D. 48, FC
        mov     eax, dword [ysize]                      ; 01A1 _ A1, 00000014(d)
        lea     edx, [eax-4H]                           ; 01A6 _ 8D. 50, FC
        mov     eax, dword [xsize]                      ; 01A9 _ A1, 00000010(d)
        sub     esp, 4                                  ; 01AE _ 83. EC, 04
        push    ecx                                     ; 01B1 _ 51
        push    59                                      ; 01B2 _ 6A, 3B
        push    edx                                     ; 01B4 _ 52
        push    3                                       ; 01B5 _ 6A, 03
        push    15                                      ; 01B7 _ 6A, 0F
        push    eax                                     ; 01B9 _ 50
        push    dword [ebp-14H]                         ; 01BA _ FF. 75, EC
        call    boxfill8                                ; 01BD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01C2 _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 01C5 _ A1, 00000014(d)
        lea     ecx, [eax-5H]                           ; 01CA _ 8D. 48, FB
        mov     eax, dword [ysize]                      ; 01CD _ A1, 00000014(d)
        lea     edx, [eax-17H]                          ; 01D2 _ 8D. 50, E9
        mov     eax, dword [xsize]                      ; 01D5 _ A1, 00000010(d)
        sub     esp, 4                                  ; 01DA _ 83. EC, 04
        push    ecx                                     ; 01DD _ 51
        push    59                                      ; 01DE _ 6A, 3B
        push    edx                                     ; 01E0 _ 52
        push    59                                      ; 01E1 _ 6A, 3B
        push    15                                      ; 01E3 _ 6A, 0F
        push    eax                                     ; 01E5 _ 50
        push    dword [ebp-14H]                         ; 01E6 _ FF. 75, EC
        call    boxfill8                                ; 01E9 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01EE _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 01F1 _ A1, 00000014(d)
        lea     ecx, [eax-3H]                           ; 01F6 _ 8D. 48, FD
        mov     eax, dword [ysize]                      ; 01F9 _ A1, 00000014(d)
        lea     edx, [eax-3H]                           ; 01FE _ 8D. 50, FD
        mov     eax, dword [xsize]                      ; 0201 _ A1, 00000010(d)
        sub     esp, 4                                  ; 0206 _ 83. EC, 04
        push    ecx                                     ; 0209 _ 51
        push    59                                      ; 020A _ 6A, 3B
        push    edx                                     ; 020C _ 52
        push    2                                       ; 020D _ 6A, 02
        push    0                                       ; 020F _ 6A, 00
        push    eax                                     ; 0211 _ 50
        push    dword [ebp-14H]                         ; 0212 _ FF. 75, EC
        call    boxfill8                                ; 0215 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 021A _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 021D _ A1, 00000014(d)
        lea     ecx, [eax-3H]                           ; 0222 _ 8D. 48, FD
        mov     eax, dword [ysize]                      ; 0225 _ A1, 00000014(d)
        lea     edx, [eax-18H]                          ; 022A _ 8D. 50, E8
        mov     eax, dword [xsize]                      ; 022D _ A1, 00000010(d)
        sub     esp, 4                                  ; 0232 _ 83. EC, 04
        push    ecx                                     ; 0235 _ 51
        push    60                                      ; 0236 _ 6A, 3C
        push    edx                                     ; 0238 _ 52
        push    60                                      ; 0239 _ 6A, 3C
        push    0                                       ; 023B _ 6A, 00
        push    eax                                     ; 023D _ 50
        push    dword [ebp-14H]                         ; 023E _ FF. 75, EC
        call    boxfill8                                ; 0241 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0246 _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 0249 _ A1, 00000014(d)
        lea     esi, [eax-18H]                          ; 024E _ 8D. 70, E8
        mov     eax, dword [xsize]                      ; 0251 _ A1, 00000010(d)
        lea     ebx, [eax-4H]                           ; 0256 _ 8D. 58, FC
        mov     eax, dword [ysize]                      ; 0259 _ A1, 00000014(d)
        lea     ecx, [eax-18H]                          ; 025E _ 8D. 48, E8
        mov     eax, dword [xsize]                      ; 0261 _ A1, 00000010(d)
        lea     edx, [eax-2FH]                          ; 0266 _ 8D. 50, D1
        mov     eax, dword [xsize]                      ; 0269 _ A1, 00000010(d)
        sub     esp, 4                                  ; 026E _ 83. EC, 04
        push    esi                                     ; 0271 _ 56
        push    ebx                                     ; 0272 _ 53
        push    ecx                                     ; 0273 _ 51
        push    edx                                     ; 0274 _ 52
        push    15                                      ; 0275 _ 6A, 0F
        push    eax                                     ; 0277 _ 50
        push    dword [ebp-14H]                         ; 0278 _ FF. 75, EC
        call    boxfill8                                ; 027B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0280 _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 0283 _ A1, 00000014(d)
        lea     esi, [eax-4H]                           ; 0288 _ 8D. 70, FC
        mov     eax, dword [xsize]                      ; 028B _ A1, 00000010(d)
        lea     ebx, [eax-2FH]                          ; 0290 _ 8D. 58, D1
        mov     eax, dword [ysize]                      ; 0293 _ A1, 00000014(d)
        lea     ecx, [eax-17H]                          ; 0298 _ 8D. 48, E9
        mov     eax, dword [xsize]                      ; 029B _ A1, 00000010(d)
        lea     edx, [eax-2FH]                          ; 02A0 _ 8D. 50, D1
        mov     eax, dword [xsize]                      ; 02A3 _ A1, 00000010(d)
        sub     esp, 4                                  ; 02A8 _ 83. EC, 04
        push    esi                                     ; 02AB _ 56
        push    ebx                                     ; 02AC _ 53
        push    ecx                                     ; 02AD _ 51
        push    edx                                     ; 02AE _ 52
        push    15                                      ; 02AF _ 6A, 0F
        push    eax                                     ; 02B1 _ 50
        push    dword [ebp-14H]                         ; 02B2 _ FF. 75, EC
        call    boxfill8                                ; 02B5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02BA _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 02BD _ A1, 00000014(d)
        lea     esi, [eax-3H]                           ; 02C2 _ 8D. 70, FD
        mov     eax, dword [xsize]                      ; 02C5 _ A1, 00000010(d)
        lea     ebx, [eax-4H]                           ; 02CA _ 8D. 58, FC
        mov     eax, dword [ysize]                      ; 02CD _ A1, 00000014(d)
        lea     ecx, [eax-3H]                           ; 02D2 _ 8D. 48, FD
        mov     eax, dword [xsize]                      ; 02D5 _ A1, 00000010(d)
        lea     edx, [eax-2FH]                          ; 02DA _ 8D. 50, D1
        mov     eax, dword [xsize]                      ; 02DD _ A1, 00000010(d)
        sub     esp, 4                                  ; 02E2 _ 83. EC, 04
        push    esi                                     ; 02E5 _ 56
        push    ebx                                     ; 02E6 _ 53
        push    ecx                                     ; 02E7 _ 51
        push    edx                                     ; 02E8 _ 52
        push    7                                       ; 02E9 _ 6A, 07
        push    eax                                     ; 02EB _ 50
        push    dword [ebp-14H]                         ; 02EC _ FF. 75, EC
        call    boxfill8                                ; 02EF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02F4 _ 83. C4, 20
        mov     eax, dword [ysize]                      ; 02F7 _ A1, 00000014(d)
        lea     esi, [eax-3H]                           ; 02FC _ 8D. 70, FD
        mov     eax, dword [xsize]                      ; 02FF _ A1, 00000010(d)
        lea     ebx, [eax-3H]                           ; 0304 _ 8D. 58, FD
        mov     eax, dword [ysize]                      ; 0307 _ A1, 00000014(d)
        lea     ecx, [eax-18H]                          ; 030C _ 8D. 48, E8
        mov     eax, dword [xsize]                      ; 030F _ A1, 00000010(d)
        lea     edx, [eax-3H]                           ; 0314 _ 8D. 50, FD
        mov     eax, dword [xsize]                      ; 0317 _ A1, 00000010(d)
        sub     esp, 4                                  ; 031C _ 83. EC, 04
        push    esi                                     ; 031F _ 56
        push    ebx                                     ; 0320 _ 53
        push    ecx                                     ; 0321 _ 51
        push    edx                                     ; 0322 _ 52
        push    7                                       ; 0323 _ 6A, 07
        push    eax                                     ; 0325 _ 50
        push    dword [ebp-14H]                         ; 0326 _ FF. 75, EC
        call    boxfill8                                ; 0329 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 032E _ 83. C4, 20
        mov     eax, dword [xsize]                      ; 0331 _ A1, 00000010(d)
        sub     eax, 12                                 ; 0336 _ 83. E8, 0C
        mov     edx, eax                                ; 0339 _ 89. C2
        shr     edx, 31                                 ; 033B _ C1. EA, 1F
        add     eax, edx                                ; 033E _ 01. D0
        sar     eax, 1                                  ; 0340 _ D1. F8
        mov     dword [mx], eax                         ; 0342 _ A3, 00000008(d)
        mov     eax, dword [ysize]                      ; 0347 _ A1, 00000014(d)
        sub     eax, 47                                 ; 034C _ 83. E8, 2F
        mov     edx, eax                                ; 034F _ 89. C2
        shr     edx, 31                                 ; 0351 _ C1. EA, 1F
        add     eax, edx                                ; 0354 _ 01. D0
        sar     eax, 1                                  ; 0356 _ D1. F8
        mov     dword [my], eax                         ; 0358 _ A3, 0000000C(d)
        sub     esp, 8                                  ; 035D _ 83. EC, 08
        push    14                                      ; 0360 _ 6A, 0E
        push    mcursor                                 ; 0362 _ 68, 00000100(d)
        call    init_mouse_cursor                       ; 0367 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 036C _ 83. C4, 10
        mov     ecx, dword [my]                         ; 036F _ 8B. 0D, 0000000C(d)
        mov     edx, dword [mx]                         ; 0375 _ 8B. 15, 00000008(d)
        mov     eax, dword [xsize]                      ; 037B _ A1, 00000010(d)
        push    12                                      ; 0380 _ 6A, 0C
        push    mcursor                                 ; 0382 _ 68, 00000100(d)
        push    ecx                                     ; 0387 _ 51
        push    edx                                     ; 0388 _ 52
        push    19                                      ; 0389 _ 6A, 13
        push    12                                      ; 038B _ 6A, 0C
        push    eax                                     ; 038D _ 50
        push    dword [ebp-14H]                         ; 038E _ FF. 75, EC
        call    putblock                                ; 0391 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0396 _ 83. C4, 20
        call    io_sti                                  ; 0399 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 039E _ 83. EC, 0C
        push    mdec                                    ; 03A1 _ 68, 000001E4(d)
        call    enable_mouse                            ; 03A6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03AB _ 83. C4, 10
?_001:  call    io_cli                                  ; 03AE _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 03B3 _ 83. EC, 0C
        push    keyinfo                                 ; 03B6 _ 68, 00000018(d)
        call    fifo8_status                            ; 03BB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03C0 _ 83. C4, 10
        mov     ebx, eax                                ; 03C3 _ 89. C3
        sub     esp, 12                                 ; 03C5 _ 83. EC, 0C
        push    mouseinfo                               ; 03C8 _ 68, 00000030(d)
        call    fifo8_status                            ; 03CD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03D2 _ 83. C4, 10
        add     eax, ebx                                ; 03D5 _ 01. D8
        test    eax, eax                                ; 03D7 _ 85. C0
        jnz     ?_002                                   ; 03D9 _ 75, 07
        call    io_stihlt                               ; 03DB _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 03E0 _ EB, CC

?_002:  sub     esp, 12                                 ; 03E2 _ 83. EC, 0C
        push    keyinfo                                 ; 03E5 _ 68, 00000018(d)
        call    fifo8_status                            ; 03EA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03EF _ 83. C4, 10
        test    eax, eax                                ; 03F2 _ 85. C0
        jz      ?_003                                   ; 03F4 _ 74, 61
        call    io_sti                                  ; 03F6 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 03FB _ 83. EC, 0C
        push    keyinfo                                 ; 03FE _ 68, 00000018(d)
        call    fifo8_get                               ; 0403 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0408 _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 040B _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 040E _ 8B. 45, F0
        movzx   eax, al                                 ; 0411 _ 0F B6. C0
        sub     esp, 12                                 ; 0414 _ 83. EC, 0C
        push    eax                                     ; 0417 _ 50
        call    charToHexStr                            ; 0418 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 041D _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0420 _ 89. 45, F4
        mov     edx, dword [showPos.1606]               ; 0423 _ 8B. 15, 000001F4(d)
        mov     eax, dword [xsize]                      ; 0429 _ A1, 00000010(d)
        sub     esp, 8                                  ; 042E _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0431 _ FF. 75, F4
        push    7                                       ; 0434 _ 6A, 07
        push    0                                       ; 0436 _ 6A, 00
        push    edx                                     ; 0438 _ 52
        push    eax                                     ; 0439 _ 50
        push    dword [ebp-14H]                         ; 043A _ FF. 75, EC
        call    showString                              ; 043D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0442 _ 83. C4, 20
        mov     eax, dword [showPos.1606]               ; 0445 _ A1, 000001F4(d)
        add     eax, 32                                 ; 044A _ 83. C0, 20
        mov     dword [showPos.1606], eax               ; 044D _ A3, 000001F4(d)
        jmp     ?_001                                   ; 0452 _ E9, FFFFFF57

?_003:  sub     esp, 12                                 ; 0457 _ 83. EC, 0C
        push    mouseinfo                               ; 045A _ 68, 00000030(d)
        call    fifo8_status                            ; 045F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0464 _ 83. C4, 10
        test    eax, eax                                ; 0467 _ 85. C0
        je      ?_001                                   ; 0469 _ 0F 84, FFFFFF3F
        call    show_mouse_info                         ; 046F _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0474 _ E9, FFFFFF35
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0479 _ 55
        mov     ebp, esp                                ; 047A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 047C _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 047F _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0485 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0488 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 048E _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0491 _ 66: C7. 40, 06, 00C8
        nop                                             ; 0497 _ 90
        pop     ebp                                     ; 0498 _ 5D
        ret                                             ; 0499 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 049A _ 55
        mov     ebp, esp                                ; 049B _ 89. E5
        sub     esp, 24                                 ; 049D _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 04A0 _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 04A3 _ 88. 45, F4
        jmp     ?_005                                   ; 04A6 _ EB, 37

?_004:  mov     eax, dword [ebp+1CH]                    ; 04A8 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 04AB _ 0F B6. 00
        movzx   eax, al                                 ; 04AE _ 0F B6. C0
        shl     eax, 4                                  ; 04B1 _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 04B4 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 04BA _ 0F BE. 45, F4
        sub     esp, 8                                  ; 04BE _ 83. EC, 08
        push    edx                                     ; 04C1 _ 52
        push    eax                                     ; 04C2 _ 50
        push    dword [ebp+14H]                         ; 04C3 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 04C6 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 04C9 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04CC _ FF. 75, 08
        call    showFont8                               ; 04CF _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 04D4 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 04D7 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 04DB _ 83. 45, 1C, 01
?_005:  mov     eax, dword [ebp+1CH]                    ; 04DF _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 04E2 _ 0F B6. 00
        test    al, al                                  ; 04E5 _ 84. C0
        jnz     ?_004                                   ; 04E7 _ 75, BF
        nop                                             ; 04E9 _ 90
        leave                                           ; 04EA _ C9
        ret                                             ; 04EB _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 04EC _ 55
        mov     ebp, esp                                ; 04ED _ 89. E5
        sub     esp, 8                                  ; 04EF _ 83. EC, 08
        sub     esp, 4                                  ; 04F2 _ 83. EC, 04
        push    table_rgb.1625                          ; 04F5 _ 68, 00000020(d)
        push    15                                      ; 04FA _ 6A, 0F
        push    0                                       ; 04FC _ 6A, 00
        call    set_palette                             ; 04FE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0503 _ 83. C4, 10
        nop                                             ; 0506 _ 90
        leave                                           ; 0507 _ C9
        ret                                             ; 0508 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0509 _ 55
        mov     ebp, esp                                ; 050A _ 89. E5
        sub     esp, 24                                 ; 050C _ 83. EC, 18
        call    io_load_eflags                          ; 050F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0514 _ 89. 45, F4
        call    io_cli                                  ; 0517 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 051C _ 8B. 45, 08
        movsx   eax, al                                 ; 051F _ 0F BE. C0
        sub     esp, 8                                  ; 0522 _ 83. EC, 08
        push    eax                                     ; 0525 _ 50
        push    968                                     ; 0526 _ 68, 000003C8
        call    io_out8                                 ; 052B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0530 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0533 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0536 _ 89. 45, F0
        jmp     ?_007                                   ; 0539 _ EB, 65

?_006:  mov     eax, dword [ebp+10H]                    ; 053B _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 053E _ 0F B6. 00
        shr     al, 2                                   ; 0541 _ C0. E8, 02
        movsx   eax, al                                 ; 0544 _ 0F BE. C0
        sub     esp, 8                                  ; 0547 _ 83. EC, 08
        push    eax                                     ; 054A _ 50
        push    969                                     ; 054B _ 68, 000003C9
        call    io_out8                                 ; 0550 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0555 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0558 _ 8B. 45, 10
        add     eax, 1                                  ; 055B _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 055E _ 0F B6. 00
        shr     al, 2                                   ; 0561 _ C0. E8, 02
        movsx   eax, al                                 ; 0564 _ 0F BE. C0
        sub     esp, 8                                  ; 0567 _ 83. EC, 08
        push    eax                                     ; 056A _ 50
        push    969                                     ; 056B _ 68, 000003C9
        call    io_out8                                 ; 0570 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0575 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0578 _ 8B. 45, 10
        add     eax, 2                                  ; 057B _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 057E _ 0F B6. 00
        shr     al, 2                                   ; 0581 _ C0. E8, 02
        movsx   eax, al                                 ; 0584 _ 0F BE. C0
        sub     esp, 8                                  ; 0587 _ 83. EC, 08
        push    eax                                     ; 058A _ 50
        push    969                                     ; 058B _ 68, 000003C9
        call    io_out8                                 ; 0590 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0595 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 0598 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 059C _ 83. 45, F0, 01
?_007:  mov     eax, dword [ebp-10H]                    ; 05A0 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 05A3 _ 3B. 45, 0C
        jle     ?_006                                   ; 05A6 _ 7E, 93
        sub     esp, 12                                 ; 05A8 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 05AB _ FF. 75, F4
        call    io_store_eflags                         ; 05AE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05B3 _ 83. C4, 10
        nop                                             ; 05B6 _ 90
        leave                                           ; 05B7 _ C9
        ret                                             ; 05B8 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 05B9 _ 55
        mov     ebp, esp                                ; 05BA _ 89. E5
        sub     esp, 20                                 ; 05BC _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 05BF _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 05C2 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 05C5 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 05C8 _ 89. 45, FC
        jmp     ?_011                                   ; 05CB _ EB, 33

?_008:  mov     eax, dword [ebp+14H]                    ; 05CD _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 05D0 _ 89. 45, F8
        jmp     ?_010                                   ; 05D3 _ EB, 1F

?_009:  mov     eax, dword [ebp-4H]                     ; 05D5 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 05D8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05DC _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 05DE _ 8B. 45, F8
        add     eax, edx                                ; 05E1 _ 01. D0
        mov     edx, eax                                ; 05E3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 05E5 _ 8B. 45, 08
        add     edx, eax                                ; 05E8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05EA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05EE _ 88. 02
        add     dword [ebp-8H], 1                       ; 05F0 _ 83. 45, F8, 01
?_010:  mov     eax, dword [ebp-8H]                     ; 05F4 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 05F7 _ 3B. 45, 1C
        jle     ?_009                                   ; 05FA _ 7E, D9
        add     dword [ebp-4H], 1                       ; 05FC _ 83. 45, FC, 01
?_011:  mov     eax, dword [ebp-4H]                     ; 0600 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0603 _ 3B. 45, 20
        jle     ?_008                                   ; 0606 _ 7E, C5
        nop                                             ; 0608 _ 90
        leave                                           ; 0609 _ C9
        ret                                             ; 060A _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 060B _ 55
        mov     ebp, esp                                ; 060C _ 89. E5
        sub     esp, 20                                 ; 060E _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0611 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0614 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0617 _ C7. 45, FC, 00000000
        jmp     ?_021                                   ; 061E _ E9, 0000016C

?_012:  mov     edx, dword [ebp-4H]                     ; 0623 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0626 _ 8B. 45, 1C
        add     eax, edx                                ; 0629 _ 01. D0
        movzx   eax, byte [eax]                         ; 062B _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 062E _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0631 _ 80. 7D, FB, 00
        jns     ?_013                                   ; 0635 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0637 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 063A _ 8B. 45, FC
        add     eax, edx                                ; 063D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 063F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0643 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0645 _ 8B. 45, 10
        add     eax, edx                                ; 0648 _ 01. D0
        mov     edx, eax                                ; 064A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 064C _ 8B. 45, 08
        add     edx, eax                                ; 064F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0651 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0655 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 0657 _ 0F BE. 45, FB
        and     eax, 40H                                ; 065B _ 83. E0, 40
        test    eax, eax                                ; 065E _ 85. C0
        jz      ?_014                                   ; 0660 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0662 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0665 _ 8B. 45, FC
        add     eax, edx                                ; 0668 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 066A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 066E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0670 _ 8B. 45, 10
        add     eax, edx                                ; 0673 _ 01. D0
        lea     edx, [eax+1H]                           ; 0675 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0678 _ 8B. 45, 08
        add     edx, eax                                ; 067B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 067D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0681 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0683 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0687 _ 83. E0, 20
        test    eax, eax                                ; 068A _ 85. C0
        jz      ?_015                                   ; 068C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 068E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0691 _ 8B. 45, FC
        add     eax, edx                                ; 0694 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0696 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 069A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 069C _ 8B. 45, 10
        add     eax, edx                                ; 069F _ 01. D0
        lea     edx, [eax+2H]                           ; 06A1 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 06A4 _ 8B. 45, 08
        add     edx, eax                                ; 06A7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06A9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06AD _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 06AF _ 0F BE. 45, FB
        and     eax, 10H                                ; 06B3 _ 83. E0, 10
        test    eax, eax                                ; 06B6 _ 85. C0
        jz      ?_016                                   ; 06B8 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 06BA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 06BD _ 8B. 45, FC
        add     eax, edx                                ; 06C0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06C2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06C6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06C8 _ 8B. 45, 10
        add     eax, edx                                ; 06CB _ 01. D0
        lea     edx, [eax+3H]                           ; 06CD _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 06D0 _ 8B. 45, 08
        add     edx, eax                                ; 06D3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06D5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06D9 _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 06DB _ 0F BE. 45, FB
        and     eax, 08H                                ; 06DF _ 83. E0, 08
        test    eax, eax                                ; 06E2 _ 85. C0
        jz      ?_017                                   ; 06E4 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 06E6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 06E9 _ 8B. 45, FC
        add     eax, edx                                ; 06EC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06EE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06F2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06F4 _ 8B. 45, 10
        add     eax, edx                                ; 06F7 _ 01. D0
        lea     edx, [eax+4H]                           ; 06F9 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 06FC _ 8B. 45, 08
        add     edx, eax                                ; 06FF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0701 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0705 _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 0707 _ 0F BE. 45, FB
        and     eax, 04H                                ; 070B _ 83. E0, 04
        test    eax, eax                                ; 070E _ 85. C0
        jz      ?_018                                   ; 0710 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0712 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0715 _ 8B. 45, FC
        add     eax, edx                                ; 0718 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 071A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 071E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0720 _ 8B. 45, 10
        add     eax, edx                                ; 0723 _ 01. D0
        lea     edx, [eax+5H]                           ; 0725 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0728 _ 8B. 45, 08
        add     edx, eax                                ; 072B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 072D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0731 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 0733 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0737 _ 83. E0, 02
        test    eax, eax                                ; 073A _ 85. C0
        jz      ?_019                                   ; 073C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 073E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0741 _ 8B. 45, FC
        add     eax, edx                                ; 0744 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0746 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 074A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 074C _ 8B. 45, 10
        add     eax, edx                                ; 074F _ 01. D0
        lea     edx, [eax+6H]                           ; 0751 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0754 _ 8B. 45, 08
        add     edx, eax                                ; 0757 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0759 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 075D _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 075F _ 0F BE. 45, FB
        and     eax, 01H                                ; 0763 _ 83. E0, 01
        test    eax, eax                                ; 0766 _ 85. C0
        jz      ?_020                                   ; 0768 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 076A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 076D _ 8B. 45, FC
        add     eax, edx                                ; 0770 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0772 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0776 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0778 _ 8B. 45, 10
        add     eax, edx                                ; 077B _ 01. D0
        lea     edx, [eax+7H]                           ; 077D _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0780 _ 8B. 45, 08
        add     edx, eax                                ; 0783 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0785 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0789 _ 88. 02
?_020:  add     dword [ebp-4H], 1                       ; 078B _ 83. 45, FC, 01
?_021:  cmp     dword [ebp-4H], 15                      ; 078F _ 83. 7D, FC, 0F
        jle     ?_012                                   ; 0793 _ 0F 8E, FFFFFE8A
        nop                                             ; 0799 _ 90
        leave                                           ; 079A _ C9
        ret                                             ; 079B _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 079C _ 55
        mov     ebp, esp                                ; 079D _ 89. E5
        sub     esp, 20                                 ; 079F _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 07A2 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 07A5 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 07A8 _ C7. 45, FC, 00000000
        jmp     ?_028                                   ; 07AF _ E9, 000000CF

?_022:  mov     dword [ebp-8H], 0                       ; 07B4 _ C7. 45, F8, 00000000
        jmp     ?_027                                   ; 07BB _ E9, 000000B5

?_023:  mov     edx, dword [ebp-4H]                     ; 07C0 _ 8B. 55, FC
        mov     eax, edx                                ; 07C3 _ 89. D0
        add     eax, eax                                ; 07C5 _ 01. C0
        add     eax, edx                                ; 07C7 _ 01. D0
        shl     eax, 2                                  ; 07C9 _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 07CC _ 8B. 55, F8
        add     eax, edx                                ; 07CF _ 01. D0
        add     eax, cursor.1670                        ; 07D1 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 07D6 _ 0F B6. 00
        cmp     al, 42                                  ; 07D9 _ 3C, 2A
        jnz     ?_024                                   ; 07DB _ 75, 1D
        mov     edx, dword [ebp-4H]                     ; 07DD _ 8B. 55, FC
        mov     eax, edx                                ; 07E0 _ 89. D0
        add     eax, eax                                ; 07E2 _ 01. C0
        add     eax, edx                                ; 07E4 _ 01. D0
        shl     eax, 2                                  ; 07E6 _ C1. E0, 02
        mov     edx, eax                                ; 07E9 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 07EB _ 8B. 45, F8
        add     eax, edx                                ; 07EE _ 01. D0
        mov     edx, eax                                ; 07F0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07F2 _ 8B. 45, 08
        add     eax, edx                                ; 07F5 _ 01. D0
        mov     byte [eax], 0                           ; 07F7 _ C6. 00, 00
?_024:  mov     edx, dword [ebp-4H]                     ; 07FA _ 8B. 55, FC
        mov     eax, edx                                ; 07FD _ 89. D0
        add     eax, eax                                ; 07FF _ 01. C0
        add     eax, edx                                ; 0801 _ 01. D0
        shl     eax, 2                                  ; 0803 _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 0806 _ 8B. 55, F8
        add     eax, edx                                ; 0809 _ 01. D0
        add     eax, cursor.1670                        ; 080B _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0810 _ 0F B6. 00
        cmp     al, 79                                  ; 0813 _ 3C, 4F
        jnz     ?_025                                   ; 0815 _ 75, 1D
        mov     edx, dword [ebp-4H]                     ; 0817 _ 8B. 55, FC
        mov     eax, edx                                ; 081A _ 89. D0
        add     eax, eax                                ; 081C _ 01. C0
        add     eax, edx                                ; 081E _ 01. D0
        shl     eax, 2                                  ; 0820 _ C1. E0, 02
        mov     edx, eax                                ; 0823 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0825 _ 8B. 45, F8
        add     eax, edx                                ; 0828 _ 01. D0
        mov     edx, eax                                ; 082A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 082C _ 8B. 45, 08
        add     eax, edx                                ; 082F _ 01. D0
        mov     byte [eax], 7                           ; 0831 _ C6. 00, 07
?_025:  mov     edx, dword [ebp-4H]                     ; 0834 _ 8B. 55, FC
        mov     eax, edx                                ; 0837 _ 89. D0
        add     eax, eax                                ; 0839 _ 01. C0
        add     eax, edx                                ; 083B _ 01. D0
        shl     eax, 2                                  ; 083D _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 0840 _ 8B. 55, F8
        add     eax, edx                                ; 0843 _ 01. D0
        add     eax, cursor.1670                        ; 0845 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 084A _ 0F B6. 00
        cmp     al, 46                                  ; 084D _ 3C, 2E
        jnz     ?_026                                   ; 084F _ 75, 20
        mov     edx, dword [ebp-4H]                     ; 0851 _ 8B. 55, FC
        mov     eax, edx                                ; 0854 _ 89. D0
        add     eax, eax                                ; 0856 _ 01. C0
        add     eax, edx                                ; 0858 _ 01. D0
        shl     eax, 2                                  ; 085A _ C1. E0, 02
        mov     edx, eax                                ; 085D _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 085F _ 8B. 45, F8
        add     eax, edx                                ; 0862 _ 01. D0
        mov     edx, eax                                ; 0864 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0866 _ 8B. 45, 08
        add     edx, eax                                ; 0869 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 086B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 086F _ 88. 02
?_026:  add     dword [ebp-8H], 1                       ; 0871 _ 83. 45, F8, 01
?_027:  cmp     dword [ebp-8H], 11                      ; 0875 _ 83. 7D, F8, 0B
        jle     ?_023                                   ; 0879 _ 0F 8E, FFFFFF41
        add     dword [ebp-4H], 1                       ; 087F _ 83. 45, FC, 01
?_028:  cmp     dword [ebp-4H], 18                      ; 0883 _ 83. 7D, FC, 12
        jle     ?_022                                   ; 0887 _ 0F 8E, FFFFFF27
        nop                                             ; 088D _ 90
        leave                                           ; 088E _ C9
        ret                                             ; 088F _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0890 _ 55
        mov     ebp, esp                                ; 0891 _ 89. E5
        sub     esp, 16                                 ; 0893 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0896 _ C7. 45, FC, 00000000
        jmp     ?_032                                   ; 089D _ EB, 50

?_029:  mov     dword [ebp-8H], 0                       ; 089F _ C7. 45, F8, 00000000
        jmp     ?_031                                   ; 08A6 _ EB, 3B

?_030:  mov     edx, dword [ebp+1CH]                    ; 08A8 _ 8B. 55, 1C
        mov     eax, dword [ebp-4H]                     ; 08AB _ 8B. 45, FC
        add     eax, edx                                ; 08AE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08B0 _ 0F AF. 45, 0C
        mov     ecx, dword [ebp+18H]                    ; 08B4 _ 8B. 4D, 18
        mov     edx, dword [ebp-8H]                     ; 08B7 _ 8B. 55, F8
        add     edx, ecx                                ; 08BA _ 01. CA
        add     eax, edx                                ; 08BC _ 01. D0
        mov     edx, eax                                ; 08BE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 08C0 _ 8B. 45, 08
        add     edx, eax                                ; 08C3 _ 01. C2
        mov     eax, dword [ebp-4H]                     ; 08C5 _ 8B. 45, FC
        imul    eax, dword [ebp+24H]                    ; 08C8 _ 0F AF. 45, 24
        mov     ecx, eax                                ; 08CC _ 89. C1
        mov     eax, dword [ebp-8H]                     ; 08CE _ 8B. 45, F8
        add     eax, ecx                                ; 08D1 _ 01. C8
        mov     ecx, eax                                ; 08D3 _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 08D5 _ 8B. 45, 20
        add     eax, ecx                                ; 08D8 _ 01. C8
        movzx   eax, byte [eax]                         ; 08DA _ 0F B6. 00
        mov     byte [edx], al                          ; 08DD _ 88. 02
        add     dword [ebp-8H], 1                       ; 08DF _ 83. 45, F8, 01
?_031:  mov     eax, dword [ebp-8H]                     ; 08E3 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 08E6 _ 3B. 45, 10
        jl      ?_030                                   ; 08E9 _ 7C, BD
        add     dword [ebp-4H], 1                       ; 08EB _ 83. 45, FC, 01
?_032:  mov     eax, dword [ebp-4H]                     ; 08EF _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 08F2 _ 3B. 45, 14
        jl      ?_029                                   ; 08F5 _ 7C, A8
        nop                                             ; 08F7 _ 90
        leave                                           ; 08F8 _ C9
        ret                                             ; 08F9 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 08FA _ 55
        mov     ebp, esp                                ; 08FB _ 89. E5
        sub     esp, 24                                 ; 08FD _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0900 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0905 _ 89. 45, EC
        movzx   eax, word [?_059]                       ; 0908 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 090F _ 98
        mov     dword [ebp-10H], eax                    ; 0910 _ 89. 45, F0
        movzx   eax, word [?_060]                       ; 0913 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 091A _ 98
        mov     dword [ebp-0CH], eax                    ; 091B _ 89. 45, F4
        sub     esp, 8                                  ; 091E _ 83. EC, 08
        push    33                                      ; 0921 _ 6A, 21
        push    32                                      ; 0923 _ 6A, 20
        call    io_out8                                 ; 0925 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 092A _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 092D _ C6. 45, EB, 00
        sub     esp, 12                                 ; 0931 _ 83. EC, 0C
        push    96                                      ; 0934 _ 6A, 60
        call    io_in8                                  ; 0936 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 093B _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 093E _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0941 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0945 _ 83. EC, 08
        push    eax                                     ; 0948 _ 50
        push    keyinfo                                 ; 0949 _ 68, 00000018(d)
        call    fifo8_put                               ; 094E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0953 _ 83. C4, 10
        nop                                             ; 0956 _ 90
        leave                                           ; 0957 _ C9
        ret                                             ; 0958 _ C3
; intHandlerFromC End of function

charToHexVal:; Function begin
        push    ebp                                     ; 0959 _ 55
        mov     ebp, esp                                ; 095A _ 89. E5
        sub     esp, 4                                  ; 095C _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 095F _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0962 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0965 _ 80. 7D, FC, 09
        jle     ?_033                                   ; 0969 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 096B _ 0F B6. 45, FC
        add     eax, 55                                 ; 096F _ 83. C0, 37
        jmp     ?_034                                   ; 0972 _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 0974 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0978 _ 83. C0, 30
?_034:  leave                                           ; 097B _ C9
        ret                                             ; 097C _ C3
; charToHexVal End of function

charToHexStr:; Function begin
        push    ebp                                     ; 097D _ 55
        mov     ebp, esp                                ; 097E _ 89. E5
        sub     esp, 20                                 ; 0980 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 0983 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0986 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0989 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0990 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0994 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0997 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 099A _ 0F BE. 45, FB
        push    eax                                     ; 099E _ 50
        call    charToHexVal                            ; 099F _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 09A4 _ 83. C4, 04
        mov     byte [?_058], al                        ; 09A7 _ A2, 00000003(d)
        movzx   eax, byte [ebp-14H]                     ; 09AC _ 0F B6. 45, EC
        shr     al, 4                                   ; 09B0 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 09B3 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 09B6 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 09BA _ 0F BE. C0
        push    eax                                     ; 09BD _ 50
        call    charToHexVal                            ; 09BE _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 09C3 _ 83. C4, 04
        mov     byte [?_057], al                        ; 09C6 _ A2, 00000002(d)
        mov     eax, keyval                             ; 09CB _ B8, 00000000(d)
        leave                                           ; 09D0 _ C9
        ret                                             ; 09D1 _ C3
; charToHexStr End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 09D2 _ 55
        mov     ebp, esp                                ; 09D3 _ 89. E5
        sub     esp, 8                                  ; 09D5 _ 83. EC, 08
?_035:  sub     esp, 12                                 ; 09D8 _ 83. EC, 0C
        push    100                                     ; 09DB _ 6A, 64
        call    io_in8                                  ; 09DD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 09E2 _ 83. C4, 10
        movsx   eax, al                                 ; 09E5 _ 0F BE. C0
        and     eax, 02H                                ; 09E8 _ 83. E0, 02
        test    eax, eax                                ; 09EB _ 85. C0
        jz      ?_036                                   ; 09ED _ 74, 02
        jmp     ?_035                                   ; 09EF _ EB, E7

?_036:  nop                                             ; 09F1 _ 90
        nop                                             ; 09F2 _ 90
        leave                                           ; 09F3 _ C9
        ret                                             ; 09F4 _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 09F5 _ 55
        mov     ebp, esp                                ; 09F6 _ 89. E5
        sub     esp, 8                                  ; 09F8 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 09FB _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A00 _ 83. EC, 08
        push    96                                      ; 0A03 _ 6A, 60
        push    100                                     ; 0A05 _ 6A, 64
        call    io_out8                                 ; 0A07 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A0C _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0A0F _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A14 _ 83. EC, 08
        push    71                                      ; 0A17 _ 6A, 47
        push    96                                      ; 0A19 _ 6A, 60
        call    io_out8                                 ; 0A1B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A20 _ 83. C4, 10
        nop                                             ; 0A23 _ 90
        leave                                           ; 0A24 _ C9
        ret                                             ; 0A25 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0A26 _ 55
        mov     ebp, esp                                ; 0A27 _ 89. E5
        sub     esp, 8                                  ; 0A29 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0A2C _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A31 _ 83. EC, 08
        push    -44                                     ; 0A34 _ 6A, D4
        push    100                                     ; 0A36 _ 6A, 64
        call    io_out8                                 ; 0A38 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A3D _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0A40 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A45 _ 83. EC, 08
        push    -12                                     ; 0A48 _ 6A, F4
        push    96                                      ; 0A4A _ 6A, 60
        call    io_out8                                 ; 0A4C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A51 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0A54 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0A57 _ C6. 40, 03, 00
        nop                                             ; 0A5B _ 90
        leave                                           ; 0A5C _ C9
        ret                                             ; 0A5D _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0A5E _ 55
        mov     ebp, esp                                ; 0A5F _ 89. E5
        sub     esp, 24                                 ; 0A61 _ 83. EC, 18
        sub     esp, 8                                  ; 0A64 _ 83. EC, 08
        push    32                                      ; 0A67 _ 6A, 20
        push    160                                     ; 0A69 _ 68, 000000A0
        call    io_out8                                 ; 0A6E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A73 _ 83. C4, 10
        sub     esp, 8                                  ; 0A76 _ 83. EC, 08
        push    32                                      ; 0A79 _ 6A, 20
        push    32                                      ; 0A7B _ 6A, 20
        call    io_out8                                 ; 0A7D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A82 _ 83. C4, 10
        sub     esp, 12                                 ; 0A85 _ 83. EC, 0C
        push    96                                      ; 0A88 _ 6A, 60
        call    io_in8                                  ; 0A8A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A8F _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0A92 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0A95 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0A99 _ 83. EC, 08
        push    eax                                     ; 0A9C _ 50
        push    mouseinfo                               ; 0A9D _ 68, 00000030(d)
        call    fifo8_put                               ; 0AA2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AA7 _ 83. C4, 10
        nop                                             ; 0AAA _ 90
        leave                                           ; 0AAB _ C9
        ret                                             ; 0AAC _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0AAD _ 55
        mov     ebp, esp                                ; 0AAE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0AB0 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0AB3 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0AB6 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0AB9 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0ABC _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0ABF _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0AC1 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0AC4 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0AC7 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0ACA _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0ACD _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 0AD4 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0AD7 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0ADE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0AE1 _ C7. 40, 08, 00000000
        nop                                             ; 0AE8 _ 90
        pop     ebp                                     ; 0AE9 _ 5D
        ret                                             ; 0AEA _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0AEB _ 55
        mov     ebp, esp                                ; 0AEC _ 89. E5
        sub     esp, 4                                  ; 0AEE _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0AF1 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0AF4 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0AF7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0AFA _ 8B. 40, 10
        test    eax, eax                                ; 0AFD _ 85. C0
        jnz     ?_037                                   ; 0AFF _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0B01 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0B04 _ 8B. 40, 14
        or      eax, 01H                                ; 0B07 _ 83. C8, 01
        mov     edx, eax                                ; 0B0A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B0C _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0B0F _ 89. 50, 14
        mov     eax, 4294967295                         ; 0B12 _ B8, FFFFFFFF
        jmp     ?_039                                   ; 0B17 _ EB, 50

?_037:  mov     eax, dword [ebp+8H]                     ; 0B19 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0B1C _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0B1E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0B21 _ 8B. 40, 04
        add     edx, eax                                ; 0B24 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0B26 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0B2A _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0B2C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0B2F _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0B32 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0B35 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0B38 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0B3B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0B3E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0B41 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0B44 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0B47 _ 39. C2
        jnz     ?_038                                   ; 0B49 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0B4B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0B4E _ C7. 40, 04, 00000000
?_038:  mov     eax, dword [ebp+8H]                     ; 0B55 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0B58 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0B5B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0B5E _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0B61 _ 89. 50, 10
        mov     eax, 0                                  ; 0B64 _ B8, 00000000
?_039:  leave                                           ; 0B69 _ C9
        ret                                             ; 0B6A _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0B6B _ 55
        mov     ebp, esp                                ; 0B6C _ 89. E5
        sub     esp, 16                                 ; 0B6E _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0B71 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0B74 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0B77 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0B7A _ 8B. 40, 0C
        cmp     edx, eax                                ; 0B7D _ 39. C2
        jnz     ?_040                                   ; 0B7F _ 75, 07
        mov     eax, 4294967295                         ; 0B81 _ B8, FFFFFFFF
        jmp     ?_042                                   ; 0B86 _ EB, 51

?_040:  mov     eax, dword [ebp+8H]                     ; 0B88 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0B8B _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0B8D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0B90 _ 8B. 40, 08
        add     eax, edx                                ; 0B93 _ 01. D0
        movzx   eax, byte [eax]                         ; 0B95 _ 0F B6. 00
        movzx   eax, al                                 ; 0B98 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0B9B _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0B9E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0BA1 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0BA4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0BA7 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0BAA _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0BAD _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0BB0 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0BB3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0BB6 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0BB9 _ 39. C2
        jnz     ?_041                                   ; 0BBB _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0BBD _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0BC0 _ C7. 40, 08, 00000000
?_041:  mov     eax, dword [ebp+8H]                     ; 0BC7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0BCA _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0BCD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0BD0 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0BD3 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0BD6 _ 8B. 45, FC
?_042:  leave                                           ; 0BD9 _ C9
        ret                                             ; 0BDA _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0BDB _ 55
        mov     ebp, esp                                ; 0BDC _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0BDE _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0BE1 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0BE4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0BE7 _ 8B. 40, 10
        sub     edx, eax                                ; 0BEA _ 29. C2
        mov     eax, edx                                ; 0BEC _ 89. D0
        pop     ebp                                     ; 0BEE _ 5D
        ret                                             ; 0BEF _ C3
; fifo8_status End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 0BF0 _ 55
        mov     ebp, esp                                ; 0BF1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0BF3 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0BF6 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 0BF9 _ A1, 00000008(d)
        add     eax, edx                                ; 0BFE _ 01. D0
        mov     dword [mx], eax                         ; 0C00 _ A3, 00000008(d)
        mov     eax, dword [ebp+8H]                     ; 0C05 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0C08 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 0C0B _ A1, 0000000C(d)
        add     eax, edx                                ; 0C10 _ 01. D0
        mov     dword [my], eax                         ; 0C12 _ A3, 0000000C(d)
        mov     eax, dword [mx]                         ; 0C17 _ A1, 00000008(d)
        test    eax, eax                                ; 0C1C _ 85. C0
        jns     ?_043                                   ; 0C1E _ 79, 0A
        mov     dword [mx], 0                           ; 0C20 _ C7. 05, 00000008(d), 00000000
?_043:  mov     eax, dword [my]                         ; 0C2A _ A1, 0000000C(d)
        test    eax, eax                                ; 0C2F _ 85. C0
        jns     ?_044                                   ; 0C31 _ 79, 0A
        mov     dword [my], 0                           ; 0C33 _ C7. 05, 0000000C(d), 00000000
?_044:  mov     eax, dword [xsize]                      ; 0C3D _ A1, 00000010(d)
        lea     edx, [eax-0CH]                          ; 0C42 _ 8D. 50, F4
        mov     eax, dword [mx]                         ; 0C45 _ A1, 00000008(d)
        cmp     edx, eax                                ; 0C4A _ 39. C2
        jge     ?_045                                   ; 0C4C _ 7D, 0D
        mov     eax, dword [xsize]                      ; 0C4E _ A1, 00000010(d)
        sub     eax, 12                                 ; 0C53 _ 83. E8, 0C
        mov     dword [mx], eax                         ; 0C56 _ A3, 00000008(d)
?_045:  mov     eax, dword [ysize]                      ; 0C5B _ A1, 00000014(d)
        lea     edx, [eax-13H]                          ; 0C60 _ 8D. 50, ED
        mov     eax, dword [my]                         ; 0C63 _ A1, 0000000C(d)
        cmp     edx, eax                                ; 0C68 _ 39. C2
        jge     ?_046                                   ; 0C6A _ 7D, 0D
        mov     eax, dword [ysize]                      ; 0C6C _ A1, 00000014(d)
        sub     eax, 19                                 ; 0C71 _ 83. E8, 13
        mov     dword [my], eax                         ; 0C74 _ A3, 0000000C(d)
?_046:  nop                                             ; 0C79 _ 90
        pop     ebp                                     ; 0C7A _ 5D
        ret                                             ; 0C7B _ C3
; computeMousePosition End of function

eraseMouse:; Function begin
        push    ebp                                     ; 0C7C _ 55
        mov     ebp, esp                                ; 0C7D _ 89. E5
        push    esi                                     ; 0C7F _ 56
        push    ebx                                     ; 0C80 _ 53
        mov     eax, dword [my]                         ; 0C81 _ A1, 0000000C(d)
        lea     esi, [eax+12H]                          ; 0C86 _ 8D. 70, 12
        mov     eax, dword [mx]                         ; 0C89 _ A1, 00000008(d)
        lea     ebx, [eax+0BH]                          ; 0C8E _ 8D. 58, 0B
        mov     ecx, dword [my]                         ; 0C91 _ 8B. 0D, 0000000C(d)
        mov     edx, dword [mx]                         ; 0C97 _ 8B. 15, 00000008(d)
        mov     eax, dword [xsize]                      ; 0C9D _ A1, 00000010(d)
        push    esi                                     ; 0CA2 _ 56
        push    ebx                                     ; 0CA3 _ 53
        push    ecx                                     ; 0CA4 _ 51
        push    edx                                     ; 0CA5 _ 52
        push    14                                      ; 0CA6 _ 6A, 0E
        push    eax                                     ; 0CA8 _ 50
        push    dword [ebp+8H]                          ; 0CA9 _ FF. 75, 08
        call    boxfill8                                ; 0CAC _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0CB1 _ 83. C4, 1C
        nop                                             ; 0CB4 _ 90
        lea     esp, [ebp-8H]                           ; 0CB5 _ 8D. 65, F8
        pop     ebx                                     ; 0CB8 _ 5B
        pop     esi                                     ; 0CB9 _ 5E
        pop     ebp                                     ; 0CBA _ 5D
        ret                                             ; 0CBB _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 0CBC _ 55
        mov     ebp, esp                                ; 0CBD _ 89. E5
        mov     ecx, dword [my]                         ; 0CBF _ 8B. 0D, 0000000C(d)
        mov     edx, dword [mx]                         ; 0CC5 _ 8B. 15, 00000008(d)
        mov     eax, dword [xsize]                      ; 0CCB _ A1, 00000010(d)
        push    12                                      ; 0CD0 _ 6A, 0C
        push    mcursor                                 ; 0CD2 _ 68, 00000100(d)
        push    ecx                                     ; 0CD7 _ 51
        push    edx                                     ; 0CD8 _ 52
        push    19                                      ; 0CD9 _ 6A, 13
        push    12                                      ; 0CDB _ 6A, 0C
        push    eax                                     ; 0CDD _ 50
        push    dword [ebp+8H]                          ; 0CDE _ FF. 75, 08
        call    putblock                                ; 0CE1 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0CE6 _ 83. C4, 20
        nop                                             ; 0CE9 _ 90
        leave                                           ; 0CEA _ C9
        ret                                             ; 0CEB _ C3
; drawMouse End of function

show_mouse_info:; Function begin
        push    ebp                                     ; 0CEC _ 55
        mov     ebp, esp                                ; 0CED _ 89. E5
        sub     esp, 24                                 ; 0CEF _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0CF2 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 0CF7 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0CFA _ C6. 45, F3, 00
        call    io_sti                                  ; 0CFE _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0D03 _ 83. EC, 0C
        push    mouseinfo                               ; 0D06 _ 68, 00000030(d)
        call    fifo8_get                               ; 0D0B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D10 _ 83. C4, 10
        mov     byte [ebp-0DH], al                      ; 0D13 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0D16 _ 0F B6. 45, F3
        sub     esp, 8                                  ; 0D1A _ 83. EC, 08
        push    eax                                     ; 0D1D _ 50
        push    mdec                                    ; 0D1E _ 68, 000001E4(d)
        call    mouse_decode                            ; 0D23 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D28 _ 83. C4, 10
        test    eax, eax                                ; 0D2B _ 85. C0
        jz      ?_047                                   ; 0D2D _ 74, 2C
        sub     esp, 12                                 ; 0D2F _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0D32 _ FF. 75, F4
        call    eraseMouse                              ; 0D35 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D3A _ 83. C4, 10
        sub     esp, 12                                 ; 0D3D _ 83. EC, 0C
        push    mdec                                    ; 0D40 _ 68, 000001E4(d)
        call    computeMousePosition                    ; 0D45 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D4A _ 83. C4, 10
        sub     esp, 12                                 ; 0D4D _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0D50 _ FF. 75, F4
        call    drawMouse                               ; 0D53 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D58 _ 83. C4, 10
?_047:  nop                                             ; 0D5B _ 90
        leave                                           ; 0D5C _ C9
        ret                                             ; 0D5D _ C3
; show_mouse_info End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0D5E _ 55
        mov     ebp, esp                                ; 0D5F _ 89. E5
        sub     esp, 4                                  ; 0D61 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0D64 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0D67 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0D6A _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0D6D _ 0F B6. 40, 03
        test    al, al                                  ; 0D71 _ 84. C0
        jnz     ?_049                                   ; 0D73 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0D75 _ 80. 7D, FC, FA
        jnz     ?_048                                   ; 0D79 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0D7B _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0D7E _ C6. 40, 03, 01
?_048:  mov     eax, 0                                  ; 0D82 _ B8, 00000000
        jmp     ?_056                                   ; 0D87 _ E9, 0000010F

?_049:  mov     eax, dword [ebp+8H]                     ; 0D8C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0D8F _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0D93 _ 3C, 01
        jnz     ?_051                                   ; 0D95 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 0D97 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 0D9B _ 25, 000000C8
        cmp     eax, 8                                  ; 0DA0 _ 83. F8, 08
        jnz     ?_050                                   ; 0DA3 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0DA5 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0DA8 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0DAC _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0DAE _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0DB1 _ C6. 40, 03, 02
?_050:  mov     eax, 0                                  ; 0DB5 _ B8, 00000000
        jmp     ?_056                                   ; 0DBA _ E9, 000000DC

?_051:  mov     eax, dword [ebp+8H]                     ; 0DBF _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0DC2 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0DC6 _ 3C, 02
        jnz     ?_052                                   ; 0DC8 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0DCA _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0DCD _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 0DD1 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0DD4 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0DD7 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 0DDB _ B8, 00000000
        jmp     ?_056                                   ; 0DE0 _ E9, 000000B6

?_052:  mov     eax, dword [ebp+8H]                     ; 0DE5 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0DE8 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 0DEC _ 3C, 03
        jne     ?_055                                   ; 0DEE _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 0DF4 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0DF7 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 0DFB _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0DFE _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0E01 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0E05 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0E08 _ 0F B6. 00
        movzx   eax, al                                 ; 0E0B _ 0F B6. C0
        and     eax, 07H                                ; 0E0E _ 83. E0, 07
        mov     edx, eax                                ; 0E11 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E13 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0E16 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0E19 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0E1C _ 0F B6. 40, 01
        movzx   edx, al                                 ; 0E20 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0E23 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0E26 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E29 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0E2C _ 0F B6. 40, 02
        movzx   edx, al                                 ; 0E30 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0E33 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0E36 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0E39 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0E3C _ 0F B6. 00
        movzx   eax, al                                 ; 0E3F _ 0F B6. C0
        and     eax, 10H                                ; 0E42 _ 83. E0, 10
        test    eax, eax                                ; 0E45 _ 85. C0
        jz      ?_053                                   ; 0E47 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0E49 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0E4C _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0E4F _ 0D, FFFFFF00
        mov     edx, eax                                ; 0E54 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E56 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0E59 _ 89. 50, 04
?_053:  mov     eax, dword [ebp+8H]                     ; 0E5C _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0E5F _ 0F B6. 00
        movzx   eax, al                                 ; 0E62 _ 0F B6. C0
        and     eax, 20H                                ; 0E65 _ 83. E0, 20
        test    eax, eax                                ; 0E68 _ 85. C0
        jz      ?_054                                   ; 0E6A _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0E6C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0E6F _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 0E72 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0E77 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E79 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0E7C _ 89. 50, 08
?_054:  mov     eax, dword [ebp+8H]                     ; 0E7F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0E82 _ 8B. 40, 08
        neg     eax                                     ; 0E85 _ F7. D8
        mov     edx, eax                                ; 0E87 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E89 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0E8C _ 89. 50, 08
        mov     eax, 1                                  ; 0E8F _ B8, 00000001
        jmp     ?_056                                   ; 0E94 _ EB, 05

?_055:  mov     eax, 4294967295                         ; 0E96 _ B8, FFFFFFFF
?_056:  leave                                           ; 0E9B _ C9
        ret                                             ; 0E9C _ C3
; mouse_decode End of function




keyval:                                                 ; byte
        db 30H, 58H                                     ; 0000 _ 0X

?_057:  db 00H                                          ; 0002 _ .

?_058:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0003 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000B _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

table_rgb.1625:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1670:                                            ; byte
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

?_059:  resw    1                                       ; 0004

?_060:  resw    1                                       ; 0006

mx:     resd    1                                       ; 0008

my:     resd    1                                       ; 000C

xsize:  resd    1                                       ; 0010

ysize:  resd    1                                       ; 0014

keyinfo:                                                ; byte
        resb    24                                      ; 0018

mouseinfo:                                              ; byte
        resb    48                                      ; 0030

keybuf:                                                 ; yword
        resb    32                                      ; 0060

mousebuf:                                               ; byte
        resb    128                                     ; 0080

mcursor:                                                ; byte
        resb    228                                     ; 0100

mdec:                                                   ; oword
        resb    16                                      ; 01E4

showPos.1606:                                           ; dword
        resd    1                                       ; 01F4


