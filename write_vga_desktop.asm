; Disassembly of file: write_vga_desktop.o
; Thu Mar 25 17:59:06 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386




CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    esi                                     ; 0003 _ 56
        push    ebx                                     ; 0004 _ 53
        sub     esp, 32                                 ; 0005 _ 83. EC, 20
        sub     esp, 12                                 ; 0008 _ 83. EC, 0C
        push    bootInfo                                ; 000B _ 68, 00000000(d)
        call    initBootInfo                            ; 0010 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0015 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0018 _ A1, 00000000(d)
        mov     dword [ebp-1CH], eax                    ; 001D _ 89. 45, E4
        movzx   eax, word [?_065]                       ; 0020 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0027 _ 98
        mov     dword [xsize], eax                      ; 0028 _ A3, 00000010(d)
        movzx   eax, word [?_066]                       ; 002D _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0034 _ 98
        mov     dword [ysize], eax                      ; 0035 _ A3, 00000014(d)
        mov     dword [ebp-18H], 0                      ; 003A _ C7. 45, E8, 00000000
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
        push    dword [ebp-1CH]                         ; 009D _ FF. 75, E4
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
        push    dword [ebp-1CH]                         ; 00D0 _ FF. 75, E4
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
        push    dword [ebp-1CH]                         ; 0103 _ FF. 75, E4
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
        push    dword [ebp-1CH]                         ; 0136 _ FF. 75, E4
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
        push    dword [ebp-1CH]                         ; 0162 _ FF. 75, E4
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
        push    dword [ebp-1CH]                         ; 018E _ FF. 75, E4
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
        push    dword [ebp-1CH]                         ; 01BA _ FF. 75, E4
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
        push    dword [ebp-1CH]                         ; 01E6 _ FF. 75, E4
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
        push    dword [ebp-1CH]                         ; 0212 _ FF. 75, E4
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
        push    dword [ebp-1CH]                         ; 023E _ FF. 75, E4
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
        push    dword [ebp-1CH]                         ; 0278 _ FF. 75, E4
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
        push    dword [ebp-1CH]                         ; 02B2 _ FF. 75, E4
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
        push    dword [ebp-1CH]                         ; 02EC _ FF. 75, E4
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
        push    dword [ebp-1CH]                         ; 0326 _ FF. 75, E4
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
        push    dword [ebp-1CH]                         ; 038E _ FF. 75, E4
        call    putblock                                ; 0391 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0396 _ 83. C4, 20
        call    get_memory_block_count                  ; 0399 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-14H], eax                    ; 039E _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 03A1 _ 8B. 45, EC
        sub     esp, 12                                 ; 03A4 _ 83. EC, 0C
        push    eax                                     ; 03A7 _ 50
        call    intToHexStr                             ; 03A8 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03AD _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 03B0 _ 89. 45, F0
        mov     eax, dword [xsize]                      ; 03B3 _ A1, 00000010(d)
        sub     esp, 8                                  ; 03B8 _ 83. EC, 08
        push    dword [ebp-10H]                         ; 03BB _ FF. 75, F0
        push    7                                       ; 03BE _ 6A, 07
        push    0                                       ; 03C0 _ 6A, 00
        push    0                                       ; 03C2 _ 6A, 00
        push    eax                                     ; 03C4 _ 50
        push    dword [ebp-1CH]                         ; 03C5 _ FF. 75, E4
        call    showString                              ; 03C8 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 03CD _ 83. C4, 20
        call    io_sti                                  ; 03D0 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 03D5 _ 83. EC, 0C
        push    mdec                                    ; 03D8 _ 68, 000001E4(d)
        call    enable_mouse                            ; 03DD _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03E2 _ 83. C4, 10
?_001:  call    io_cli                                  ; 03E5 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 03EA _ 83. EC, 0C
        push    keyinfo                                 ; 03ED _ 68, 00000018(d)
        call    fifo8_status                            ; 03F2 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03F7 _ 83. C4, 10
        mov     ebx, eax                                ; 03FA _ 89. C3
        sub     esp, 12                                 ; 03FC _ 83. EC, 0C
        push    mouseinfo                               ; 03FF _ 68, 00000030(d)
        call    fifo8_status                            ; 0404 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0409 _ 83. C4, 10
        add     eax, ebx                                ; 040C _ 01. D8
        test    eax, eax                                ; 040E _ 85. C0
        jnz     ?_002                                   ; 0410 _ 75, 07
        call    io_stihlt                               ; 0412 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0417 _ EB, CC

?_002:  sub     esp, 12                                 ; 0419 _ 83. EC, 0C
        push    keyinfo                                 ; 041C _ 68, 00000018(d)
        call    fifo8_status                            ; 0421 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0426 _ 83. C4, 10
        test    eax, eax                                ; 0429 _ 85. C0
        jz      ?_003                                   ; 042B _ 74, 61
        call    io_sti                                  ; 042D _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0432 _ 83. EC, 0C
        push    keyinfo                                 ; 0435 _ 68, 00000018(d)
        call    fifo8_get                               ; 043A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 043F _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 0442 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 0445 _ 8B. 45, E8
        movzx   eax, al                                 ; 0448 _ 0F B6. C0
        sub     esp, 12                                 ; 044B _ 83. EC, 0C
        push    eax                                     ; 044E _ 50
        call    charToHexStr                            ; 044F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0454 _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 0457 _ 89. 45, F4
        mov     edx, dword [showPos.1611]               ; 045A _ 8B. 15, 000001F4(d)
        mov     eax, dword [xsize]                      ; 0460 _ A1, 00000010(d)
        sub     esp, 8                                  ; 0465 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 0468 _ FF. 75, F4
        push    7                                       ; 046B _ 6A, 07
        push    0                                       ; 046D _ 6A, 00
        push    edx                                     ; 046F _ 52
        push    eax                                     ; 0470 _ 50
        push    dword [ebp-1CH]                         ; 0471 _ FF. 75, E4
        call    showString                              ; 0474 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0479 _ 83. C4, 20
        mov     eax, dword [showPos.1611]               ; 047C _ A1, 000001F4(d)
        add     eax, 32                                 ; 0481 _ 83. C0, 20
        mov     dword [showPos.1611], eax               ; 0484 _ A3, 000001F4(d)
        jmp     ?_001                                   ; 0489 _ E9, FFFFFF57

?_003:  sub     esp, 12                                 ; 048E _ 83. EC, 0C
        push    mouseinfo                               ; 0491 _ 68, 00000030(d)
        call    fifo8_status                            ; 0496 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 049B _ 83. C4, 10
        test    eax, eax                                ; 049E _ 85. C0
        je      ?_001                                   ; 04A0 _ 0F 84, FFFFFF3F
        call    show_mouse_info                         ; 04A6 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 04AB _ E9, FFFFFF35
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 04B0 _ 55
        mov     ebp, esp                                ; 04B1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 04B3 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 04B6 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 04BC _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 04BF _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 04C5 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 04C8 _ 66: C7. 40, 06, 00C8
        nop                                             ; 04CE _ 90
        pop     ebp                                     ; 04CF _ 5D
        ret                                             ; 04D0 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 04D1 _ 55
        mov     ebp, esp                                ; 04D2 _ 89. E5
        sub     esp, 24                                 ; 04D4 _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 04D7 _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 04DA _ 88. 45, F4
        jmp     ?_005                                   ; 04DD _ EB, 37

?_004:  mov     eax, dword [ebp+1CH]                    ; 04DF _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 04E2 _ 0F B6. 00
        movzx   eax, al                                 ; 04E5 _ 0F B6. C0
        shl     eax, 4                                  ; 04E8 _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 04EB _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 04F1 _ 0F BE. 45, F4
        sub     esp, 8                                  ; 04F5 _ 83. EC, 08
        push    edx                                     ; 04F8 _ 52
        push    eax                                     ; 04F9 _ 50
        push    dword [ebp+14H]                         ; 04FA _ FF. 75, 14
        push    dword [ebp+10H]                         ; 04FD _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0500 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 0503 _ FF. 75, 08
        call    showFont8                               ; 0506 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 050B _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 050E _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0512 _ 83. 45, 1C, 01
?_005:  mov     eax, dword [ebp+1CH]                    ; 0516 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0519 _ 0F B6. 00
        test    al, al                                  ; 051C _ 84. C0
        jnz     ?_004                                   ; 051E _ 75, BF
        nop                                             ; 0520 _ 90
        leave                                           ; 0521 _ C9
        ret                                             ; 0522 _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 0523 _ 55
        mov     ebp, esp                                ; 0524 _ 89. E5
        sub     esp, 8                                  ; 0526 _ 83. EC, 08
        sub     esp, 4                                  ; 0529 _ 83. EC, 04
        push    table_rgb.1631                          ; 052C _ 68, 00000020(d)
        push    15                                      ; 0531 _ 6A, 0F
        push    0                                       ; 0533 _ 6A, 00
        call    set_palette                             ; 0535 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 053A _ 83. C4, 10
        nop                                             ; 053D _ 90
        leave                                           ; 053E _ C9
        ret                                             ; 053F _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0540 _ 55
        mov     ebp, esp                                ; 0541 _ 89. E5
        sub     esp, 24                                 ; 0543 _ 83. EC, 18
        call    io_load_eflags                          ; 0546 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 054B _ 89. 45, F4
        call    io_cli                                  ; 054E _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0553 _ 8B. 45, 08
        movsx   eax, al                                 ; 0556 _ 0F BE. C0
        sub     esp, 8                                  ; 0559 _ 83. EC, 08
        push    eax                                     ; 055C _ 50
        push    968                                     ; 055D _ 68, 000003C8
        call    io_out8                                 ; 0562 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0567 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 056A _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 056D _ 89. 45, F0
        jmp     ?_007                                   ; 0570 _ EB, 65

?_006:  mov     eax, dword [ebp+10H]                    ; 0572 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0575 _ 0F B6. 00
        shr     al, 2                                   ; 0578 _ C0. E8, 02
        movsx   eax, al                                 ; 057B _ 0F BE. C0
        sub     esp, 8                                  ; 057E _ 83. EC, 08
        push    eax                                     ; 0581 _ 50
        push    969                                     ; 0582 _ 68, 000003C9
        call    io_out8                                 ; 0587 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 058C _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 058F _ 8B. 45, 10
        add     eax, 1                                  ; 0592 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0595 _ 0F B6. 00
        shr     al, 2                                   ; 0598 _ C0. E8, 02
        movsx   eax, al                                 ; 059B _ 0F BE. C0
        sub     esp, 8                                  ; 059E _ 83. EC, 08
        push    eax                                     ; 05A1 _ 50
        push    969                                     ; 05A2 _ 68, 000003C9
        call    io_out8                                 ; 05A7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05AC _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 05AF _ 8B. 45, 10
        add     eax, 2                                  ; 05B2 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 05B5 _ 0F B6. 00
        shr     al, 2                                   ; 05B8 _ C0. E8, 02
        movsx   eax, al                                 ; 05BB _ 0F BE. C0
        sub     esp, 8                                  ; 05BE _ 83. EC, 08
        push    eax                                     ; 05C1 _ 50
        push    969                                     ; 05C2 _ 68, 000003C9
        call    io_out8                                 ; 05C7 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05CC _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 05CF _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 05D3 _ 83. 45, F0, 01
?_007:  mov     eax, dword [ebp-10H]                    ; 05D7 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 05DA _ 3B. 45, 0C
        jle     ?_006                                   ; 05DD _ 7E, 93
        sub     esp, 12                                 ; 05DF _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 05E2 _ FF. 75, F4
        call    io_store_eflags                         ; 05E5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05EA _ 83. C4, 10
        nop                                             ; 05ED _ 90
        leave                                           ; 05EE _ C9
        ret                                             ; 05EF _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 05F0 _ 55
        mov     ebp, esp                                ; 05F1 _ 89. E5
        sub     esp, 20                                 ; 05F3 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 05F6 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 05F9 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 05FC _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 05FF _ 89. 45, FC
        jmp     ?_011                                   ; 0602 _ EB, 33

?_008:  mov     eax, dword [ebp+14H]                    ; 0604 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0607 _ 89. 45, F8
        jmp     ?_010                                   ; 060A _ EB, 1F

?_009:  mov     eax, dword [ebp-4H]                     ; 060C _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 060F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0613 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0615 _ 8B. 45, F8
        add     eax, edx                                ; 0618 _ 01. D0
        mov     edx, eax                                ; 061A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 061C _ 8B. 45, 08
        add     edx, eax                                ; 061F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0621 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0625 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0627 _ 83. 45, F8, 01
?_010:  mov     eax, dword [ebp-8H]                     ; 062B _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 062E _ 3B. 45, 1C
        jle     ?_009                                   ; 0631 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0633 _ 83. 45, FC, 01
?_011:  mov     eax, dword [ebp-4H]                     ; 0637 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 063A _ 3B. 45, 20
        jle     ?_008                                   ; 063D _ 7E, C5
        nop                                             ; 063F _ 90
        leave                                           ; 0640 _ C9
        ret                                             ; 0641 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0642 _ 55
        mov     ebp, esp                                ; 0643 _ 89. E5
        sub     esp, 20                                 ; 0645 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0648 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 064B _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 064E _ C7. 45, FC, 00000000
        jmp     ?_021                                   ; 0655 _ E9, 0000016C

?_012:  mov     edx, dword [ebp-4H]                     ; 065A _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 065D _ 8B. 45, 1C
        add     eax, edx                                ; 0660 _ 01. D0
        movzx   eax, byte [eax]                         ; 0662 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0665 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0668 _ 80. 7D, FB, 00
        jns     ?_013                                   ; 066C _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 066E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0671 _ 8B. 45, FC
        add     eax, edx                                ; 0674 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0676 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 067A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 067C _ 8B. 45, 10
        add     eax, edx                                ; 067F _ 01. D0
        mov     edx, eax                                ; 0681 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0683 _ 8B. 45, 08
        add     edx, eax                                ; 0686 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0688 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 068C _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 068E _ 0F BE. 45, FB
        and     eax, 40H                                ; 0692 _ 83. E0, 40
        test    eax, eax                                ; 0695 _ 85. C0
        jz      ?_014                                   ; 0697 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0699 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 069C _ 8B. 45, FC
        add     eax, edx                                ; 069F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06A1 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06A5 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06A7 _ 8B. 45, 10
        add     eax, edx                                ; 06AA _ 01. D0
        lea     edx, [eax+1H]                           ; 06AC _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 06AF _ 8B. 45, 08
        add     edx, eax                                ; 06B2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06B4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06B8 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 06BA _ 0F BE. 45, FB
        and     eax, 20H                                ; 06BE _ 83. E0, 20
        test    eax, eax                                ; 06C1 _ 85. C0
        jz      ?_015                                   ; 06C3 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 06C5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 06C8 _ 8B. 45, FC
        add     eax, edx                                ; 06CB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06CD _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06D1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06D3 _ 8B. 45, 10
        add     eax, edx                                ; 06D6 _ 01. D0
        lea     edx, [eax+2H]                           ; 06D8 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 06DB _ 8B. 45, 08
        add     edx, eax                                ; 06DE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06E0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06E4 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 06E6 _ 0F BE. 45, FB
        and     eax, 10H                                ; 06EA _ 83. E0, 10
        test    eax, eax                                ; 06ED _ 85. C0
        jz      ?_016                                   ; 06EF _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 06F1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 06F4 _ 8B. 45, FC
        add     eax, edx                                ; 06F7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06F9 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06FD _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06FF _ 8B. 45, 10
        add     eax, edx                                ; 0702 _ 01. D0
        lea     edx, [eax+3H]                           ; 0704 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0707 _ 8B. 45, 08
        add     edx, eax                                ; 070A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 070C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0710 _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 0712 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0716 _ 83. E0, 08
        test    eax, eax                                ; 0719 _ 85. C0
        jz      ?_017                                   ; 071B _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 071D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0720 _ 8B. 45, FC
        add     eax, edx                                ; 0723 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0725 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0729 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 072B _ 8B. 45, 10
        add     eax, edx                                ; 072E _ 01. D0
        lea     edx, [eax+4H]                           ; 0730 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0733 _ 8B. 45, 08
        add     edx, eax                                ; 0736 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0738 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 073C _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 073E _ 0F BE. 45, FB
        and     eax, 04H                                ; 0742 _ 83. E0, 04
        test    eax, eax                                ; 0745 _ 85. C0
        jz      ?_018                                   ; 0747 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0749 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 074C _ 8B. 45, FC
        add     eax, edx                                ; 074F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0751 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0755 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0757 _ 8B. 45, 10
        add     eax, edx                                ; 075A _ 01. D0
        lea     edx, [eax+5H]                           ; 075C _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 075F _ 8B. 45, 08
        add     edx, eax                                ; 0762 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0764 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0768 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 076A _ 0F BE. 45, FB
        and     eax, 02H                                ; 076E _ 83. E0, 02
        test    eax, eax                                ; 0771 _ 85. C0
        jz      ?_019                                   ; 0773 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0775 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0778 _ 8B. 45, FC
        add     eax, edx                                ; 077B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 077D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0781 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0783 _ 8B. 45, 10
        add     eax, edx                                ; 0786 _ 01. D0
        lea     edx, [eax+6H]                           ; 0788 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 078B _ 8B. 45, 08
        add     edx, eax                                ; 078E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0790 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0794 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0796 _ 0F BE. 45, FB
        and     eax, 01H                                ; 079A _ 83. E0, 01
        test    eax, eax                                ; 079D _ 85. C0
        jz      ?_020                                   ; 079F _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 07A1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 07A4 _ 8B. 45, FC
        add     eax, edx                                ; 07A7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 07A9 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 07AD _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 07AF _ 8B. 45, 10
        add     eax, edx                                ; 07B2 _ 01. D0
        lea     edx, [eax+7H]                           ; 07B4 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 07B7 _ 8B. 45, 08
        add     edx, eax                                ; 07BA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 07BC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 07C0 _ 88. 02
?_020:  add     dword [ebp-4H], 1                       ; 07C2 _ 83. 45, FC, 01
?_021:  cmp     dword [ebp-4H], 15                      ; 07C6 _ 83. 7D, FC, 0F
        jle     ?_012                                   ; 07CA _ 0F 8E, FFFFFE8A
        nop                                             ; 07D0 _ 90
        leave                                           ; 07D1 _ C9
        ret                                             ; 07D2 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 07D3 _ 55
        mov     ebp, esp                                ; 07D4 _ 89. E5
        sub     esp, 20                                 ; 07D6 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 07D9 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 07DC _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 07DF _ C7. 45, FC, 00000000
        jmp     ?_028                                   ; 07E6 _ E9, 000000CF

?_022:  mov     dword [ebp-8H], 0                       ; 07EB _ C7. 45, F8, 00000000
        jmp     ?_027                                   ; 07F2 _ E9, 000000B5

?_023:  mov     edx, dword [ebp-4H]                     ; 07F7 _ 8B. 55, FC
        mov     eax, edx                                ; 07FA _ 89. D0
        add     eax, eax                                ; 07FC _ 01. C0
        add     eax, edx                                ; 07FE _ 01. D0
        shl     eax, 2                                  ; 0800 _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 0803 _ 8B. 55, F8
        add     eax, edx                                ; 0806 _ 01. D0
        add     eax, cursor.1676                        ; 0808 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 080D _ 0F B6. 00
        cmp     al, 42                                  ; 0810 _ 3C, 2A
        jnz     ?_024                                   ; 0812 _ 75, 1D
        mov     edx, dword [ebp-4H]                     ; 0814 _ 8B. 55, FC
        mov     eax, edx                                ; 0817 _ 89. D0
        add     eax, eax                                ; 0819 _ 01. C0
        add     eax, edx                                ; 081B _ 01. D0
        shl     eax, 2                                  ; 081D _ C1. E0, 02
        mov     edx, eax                                ; 0820 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0822 _ 8B. 45, F8
        add     eax, edx                                ; 0825 _ 01. D0
        mov     edx, eax                                ; 0827 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0829 _ 8B. 45, 08
        add     eax, edx                                ; 082C _ 01. D0
        mov     byte [eax], 0                           ; 082E _ C6. 00, 00
?_024:  mov     edx, dword [ebp-4H]                     ; 0831 _ 8B. 55, FC
        mov     eax, edx                                ; 0834 _ 89. D0
        add     eax, eax                                ; 0836 _ 01. C0
        add     eax, edx                                ; 0838 _ 01. D0
        shl     eax, 2                                  ; 083A _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 083D _ 8B. 55, F8
        add     eax, edx                                ; 0840 _ 01. D0
        add     eax, cursor.1676                        ; 0842 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0847 _ 0F B6. 00
        cmp     al, 79                                  ; 084A _ 3C, 4F
        jnz     ?_025                                   ; 084C _ 75, 1D
        mov     edx, dword [ebp-4H]                     ; 084E _ 8B. 55, FC
        mov     eax, edx                                ; 0851 _ 89. D0
        add     eax, eax                                ; 0853 _ 01. C0
        add     eax, edx                                ; 0855 _ 01. D0
        shl     eax, 2                                  ; 0857 _ C1. E0, 02
        mov     edx, eax                                ; 085A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 085C _ 8B. 45, F8
        add     eax, edx                                ; 085F _ 01. D0
        mov     edx, eax                                ; 0861 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0863 _ 8B. 45, 08
        add     eax, edx                                ; 0866 _ 01. D0
        mov     byte [eax], 7                           ; 0868 _ C6. 00, 07
?_025:  mov     edx, dword [ebp-4H]                     ; 086B _ 8B. 55, FC
        mov     eax, edx                                ; 086E _ 89. D0
        add     eax, eax                                ; 0870 _ 01. C0
        add     eax, edx                                ; 0872 _ 01. D0
        shl     eax, 2                                  ; 0874 _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 0877 _ 8B. 55, F8
        add     eax, edx                                ; 087A _ 01. D0
        add     eax, cursor.1676                        ; 087C _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0881 _ 0F B6. 00
        cmp     al, 46                                  ; 0884 _ 3C, 2E
        jnz     ?_026                                   ; 0886 _ 75, 20
        mov     edx, dword [ebp-4H]                     ; 0888 _ 8B. 55, FC
        mov     eax, edx                                ; 088B _ 89. D0
        add     eax, eax                                ; 088D _ 01. C0
        add     eax, edx                                ; 088F _ 01. D0
        shl     eax, 2                                  ; 0891 _ C1. E0, 02
        mov     edx, eax                                ; 0894 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0896 _ 8B. 45, F8
        add     eax, edx                                ; 0899 _ 01. D0
        mov     edx, eax                                ; 089B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 089D _ 8B. 45, 08
        add     edx, eax                                ; 08A0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08A2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08A6 _ 88. 02
?_026:  add     dword [ebp-8H], 1                       ; 08A8 _ 83. 45, F8, 01
?_027:  cmp     dword [ebp-8H], 11                      ; 08AC _ 83. 7D, F8, 0B
        jle     ?_023                                   ; 08B0 _ 0F 8E, FFFFFF41
        add     dword [ebp-4H], 1                       ; 08B6 _ 83. 45, FC, 01
?_028:  cmp     dword [ebp-4H], 18                      ; 08BA _ 83. 7D, FC, 12
        jle     ?_022                                   ; 08BE _ 0F 8E, FFFFFF27
        nop                                             ; 08C4 _ 90
        leave                                           ; 08C5 _ C9
        ret                                             ; 08C6 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 08C7 _ 55
        mov     ebp, esp                                ; 08C8 _ 89. E5
        sub     esp, 16                                 ; 08CA _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 08CD _ C7. 45, FC, 00000000
        jmp     ?_032                                   ; 08D4 _ EB, 50

?_029:  mov     dword [ebp-8H], 0                       ; 08D6 _ C7. 45, F8, 00000000
        jmp     ?_031                                   ; 08DD _ EB, 3B

?_030:  mov     edx, dword [ebp+1CH]                    ; 08DF _ 8B. 55, 1C
        mov     eax, dword [ebp-4H]                     ; 08E2 _ 8B. 45, FC
        add     eax, edx                                ; 08E5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08E7 _ 0F AF. 45, 0C
        mov     ecx, dword [ebp+18H]                    ; 08EB _ 8B. 4D, 18
        mov     edx, dword [ebp-8H]                     ; 08EE _ 8B. 55, F8
        add     edx, ecx                                ; 08F1 _ 01. CA
        add     eax, edx                                ; 08F3 _ 01. D0
        mov     edx, eax                                ; 08F5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 08F7 _ 8B. 45, 08
        add     edx, eax                                ; 08FA _ 01. C2
        mov     eax, dword [ebp-4H]                     ; 08FC _ 8B. 45, FC
        imul    eax, dword [ebp+24H]                    ; 08FF _ 0F AF. 45, 24
        mov     ecx, eax                                ; 0903 _ 89. C1
        mov     eax, dword [ebp-8H]                     ; 0905 _ 8B. 45, F8
        add     eax, ecx                                ; 0908 _ 01. C8
        mov     ecx, eax                                ; 090A _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 090C _ 8B. 45, 20
        add     eax, ecx                                ; 090F _ 01. C8
        movzx   eax, byte [eax]                         ; 0911 _ 0F B6. 00
        mov     byte [edx], al                          ; 0914 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0916 _ 83. 45, F8, 01
?_031:  mov     eax, dword [ebp-8H]                     ; 091A _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 091D _ 3B. 45, 10
        jl      ?_030                                   ; 0920 _ 7C, BD
        add     dword [ebp-4H], 1                       ; 0922 _ 83. 45, FC, 01
?_032:  mov     eax, dword [ebp-4H]                     ; 0926 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 0929 _ 3B. 45, 14
        jl      ?_029                                   ; 092C _ 7C, A8
        nop                                             ; 092E _ 90
        leave                                           ; 092F _ C9
        ret                                             ; 0930 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0931 _ 55
        mov     ebp, esp                                ; 0932 _ 89. E5
        sub     esp, 24                                 ; 0934 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0937 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 093C _ 89. 45, EC
        movzx   eax, word [?_065]                       ; 093F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0946 _ 98
        mov     dword [ebp-10H], eax                    ; 0947 _ 89. 45, F0
        movzx   eax, word [?_066]                       ; 094A _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0951 _ 98
        mov     dword [ebp-0CH], eax                    ; 0952 _ 89. 45, F4
        sub     esp, 8                                  ; 0955 _ 83. EC, 08
        push    33                                      ; 0958 _ 6A, 21
        push    32                                      ; 095A _ 6A, 20
        call    io_out8                                 ; 095C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0961 _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 0964 _ C6. 45, EB, 00
        sub     esp, 12                                 ; 0968 _ 83. EC, 0C
        push    96                                      ; 096B _ 6A, 60
        call    io_in8                                  ; 096D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0972 _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 0975 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0978 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 097C _ 83. EC, 08
        push    eax                                     ; 097F _ 50
        push    keyinfo                                 ; 0980 _ 68, 00000018(d)
        call    fifo8_put                               ; 0985 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 098A _ 83. C4, 10
        nop                                             ; 098D _ 90
        leave                                           ; 098E _ C9
        ret                                             ; 098F _ C3
; intHandlerFromC End of function

charToHexVal:; Function begin
        push    ebp                                     ; 0990 _ 55
        mov     ebp, esp                                ; 0991 _ 89. E5
        sub     esp, 4                                  ; 0993 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0996 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0999 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 099C _ 80. 7D, FC, 09
        jle     ?_033                                   ; 09A0 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 09A2 _ 0F B6. 45, FC
        add     eax, 55                                 ; 09A6 _ 83. C0, 37
        jmp     ?_034                                   ; 09A9 _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 09AB _ 0F B6. 45, FC
        add     eax, 48                                 ; 09AF _ 83. C0, 30
?_034:  leave                                           ; 09B2 _ C9
        ret                                             ; 09B3 _ C3
; charToHexVal End of function

charToHexStr:; Function begin
        push    ebp                                     ; 09B4 _ 55
        mov     ebp, esp                                ; 09B5 _ 89. E5
        sub     esp, 20                                 ; 09B7 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 09BA _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 09BD _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 09C0 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 09C7 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 09CB _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 09CE _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 09D1 _ 0F BE. 45, FB
        push    eax                                     ; 09D5 _ 50
        call    charToHexVal                            ; 09D6 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 09DB _ 83. C4, 04
        mov     byte [?_064], al                        ; 09DE _ A2, 00000003(d)
        movzx   eax, byte [ebp-14H]                     ; 09E3 _ 0F B6. 45, EC
        shr     al, 4                                   ; 09E7 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 09EA _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 09ED _ 0F B6. 45, EC
        movsx   eax, al                                 ; 09F1 _ 0F BE. C0
        push    eax                                     ; 09F4 _ 50
        call    charToHexVal                            ; 09F5 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 09FA _ 83. C4, 04
        mov     byte [?_063], al                        ; 09FD _ A2, 00000002(d)
        mov     eax, keyval                             ; 0A02 _ B8, 00000000(d)
        leave                                           ; 0A07 _ C9
        ret                                             ; 0A08 _ C3
; charToHexStr End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0A09 _ 55
        mov     ebp, esp                                ; 0A0A _ 89. E5
        sub     esp, 8                                  ; 0A0C _ 83. EC, 08
?_035:  sub     esp, 12                                 ; 0A0F _ 83. EC, 0C
        push    100                                     ; 0A12 _ 6A, 64
        call    io_in8                                  ; 0A14 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A19 _ 83. C4, 10
        movsx   eax, al                                 ; 0A1C _ 0F BE. C0
        and     eax, 02H                                ; 0A1F _ 83. E0, 02
        test    eax, eax                                ; 0A22 _ 85. C0
        jz      ?_036                                   ; 0A24 _ 74, 02
        jmp     ?_035                                   ; 0A26 _ EB, E7

?_036:  nop                                             ; 0A28 _ 90
        nop                                             ; 0A29 _ 90
        leave                                           ; 0A2A _ C9
        ret                                             ; 0A2B _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0A2C _ 55
        mov     ebp, esp                                ; 0A2D _ 89. E5
        sub     esp, 8                                  ; 0A2F _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0A32 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A37 _ 83. EC, 08
        push    96                                      ; 0A3A _ 6A, 60
        push    100                                     ; 0A3C _ 6A, 64
        call    io_out8                                 ; 0A3E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A43 _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0A46 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A4B _ 83. EC, 08
        push    71                                      ; 0A4E _ 6A, 47
        push    96                                      ; 0A50 _ 6A, 60
        call    io_out8                                 ; 0A52 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A57 _ 83. C4, 10
        nop                                             ; 0A5A _ 90
        leave                                           ; 0A5B _ C9
        ret                                             ; 0A5C _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0A5D _ 55
        mov     ebp, esp                                ; 0A5E _ 89. E5
        sub     esp, 8                                  ; 0A60 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0A63 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A68 _ 83. EC, 08
        push    -44                                     ; 0A6B _ 6A, D4
        push    100                                     ; 0A6D _ 6A, 64
        call    io_out8                                 ; 0A6F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A74 _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0A77 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A7C _ 83. EC, 08
        push    -12                                     ; 0A7F _ 6A, F4
        push    96                                      ; 0A81 _ 6A, 60
        call    io_out8                                 ; 0A83 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A88 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0A8B _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0A8E _ C6. 40, 03, 00
        nop                                             ; 0A92 _ 90
        leave                                           ; 0A93 _ C9
        ret                                             ; 0A94 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0A95 _ 55
        mov     ebp, esp                                ; 0A96 _ 89. E5
        sub     esp, 24                                 ; 0A98 _ 83. EC, 18
        sub     esp, 8                                  ; 0A9B _ 83. EC, 08
        push    32                                      ; 0A9E _ 6A, 20
        push    160                                     ; 0AA0 _ 68, 000000A0
        call    io_out8                                 ; 0AA5 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AAA _ 83. C4, 10
        sub     esp, 8                                  ; 0AAD _ 83. EC, 08
        push    32                                      ; 0AB0 _ 6A, 20
        push    32                                      ; 0AB2 _ 6A, 20
        call    io_out8                                 ; 0AB4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AB9 _ 83. C4, 10
        sub     esp, 12                                 ; 0ABC _ 83. EC, 0C
        push    96                                      ; 0ABF _ 6A, 60
        call    io_in8                                  ; 0AC1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AC6 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0AC9 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0ACC _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0AD0 _ 83. EC, 08
        push    eax                                     ; 0AD3 _ 50
        push    mouseinfo                               ; 0AD4 _ 68, 00000030(d)
        call    fifo8_put                               ; 0AD9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0ADE _ 83. C4, 10
        nop                                             ; 0AE1 _ 90
        leave                                           ; 0AE2 _ C9
        ret                                             ; 0AE3 _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0AE4 _ 55
        mov     ebp, esp                                ; 0AE5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0AE7 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0AEA _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0AED _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0AF0 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0AF3 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0AF6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0AF8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0AFB _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0AFE _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0B01 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0B04 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 0B0B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0B0E _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0B15 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0B18 _ C7. 40, 08, 00000000
        nop                                             ; 0B1F _ 90
        pop     ebp                                     ; 0B20 _ 5D
        ret                                             ; 0B21 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0B22 _ 55
        mov     ebp, esp                                ; 0B23 _ 89. E5
        sub     esp, 4                                  ; 0B25 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0B28 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0B2B _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0B2E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0B31 _ 8B. 40, 10
        test    eax, eax                                ; 0B34 _ 85. C0
        jnz     ?_037                                   ; 0B36 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0B38 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0B3B _ 8B. 40, 14
        or      eax, 01H                                ; 0B3E _ 83. C8, 01
        mov     edx, eax                                ; 0B41 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B43 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0B46 _ 89. 50, 14
        mov     eax, 4294967295                         ; 0B49 _ B8, FFFFFFFF
        jmp     ?_039                                   ; 0B4E _ EB, 50

?_037:  mov     eax, dword [ebp+8H]                     ; 0B50 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0B53 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0B55 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0B58 _ 8B. 40, 04
        add     edx, eax                                ; 0B5B _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0B5D _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0B61 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0B63 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0B66 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0B69 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0B6C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0B6F _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0B72 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0B75 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0B78 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0B7B _ 8B. 40, 0C
        cmp     edx, eax                                ; 0B7E _ 39. C2
        jnz     ?_038                                   ; 0B80 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0B82 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0B85 _ C7. 40, 04, 00000000
?_038:  mov     eax, dword [ebp+8H]                     ; 0B8C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0B8F _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0B92 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0B95 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0B98 _ 89. 50, 10
        mov     eax, 0                                  ; 0B9B _ B8, 00000000
?_039:  leave                                           ; 0BA0 _ C9
        ret                                             ; 0BA1 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0BA2 _ 55
        mov     ebp, esp                                ; 0BA3 _ 89. E5
        sub     esp, 16                                 ; 0BA5 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0BA8 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0BAB _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0BAE _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0BB1 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0BB4 _ 39. C2
        jnz     ?_040                                   ; 0BB6 _ 75, 07
        mov     eax, 4294967295                         ; 0BB8 _ B8, FFFFFFFF
        jmp     ?_042                                   ; 0BBD _ EB, 51

?_040:  mov     eax, dword [ebp+8H]                     ; 0BBF _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0BC2 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0BC4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0BC7 _ 8B. 40, 08
        add     eax, edx                                ; 0BCA _ 01. D0
        movzx   eax, byte [eax]                         ; 0BCC _ 0F B6. 00
        movzx   eax, al                                 ; 0BCF _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0BD2 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0BD5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0BD8 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0BDB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0BDE _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0BE1 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0BE4 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0BE7 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0BEA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0BED _ 8B. 40, 0C
        cmp     edx, eax                                ; 0BF0 _ 39. C2
        jnz     ?_041                                   ; 0BF2 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0BF4 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0BF7 _ C7. 40, 08, 00000000
?_041:  mov     eax, dword [ebp+8H]                     ; 0BFE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0C01 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0C04 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0C07 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0C0A _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0C0D _ 8B. 45, FC
?_042:  leave                                           ; 0C10 _ C9
        ret                                             ; 0C11 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0C12 _ 55
        mov     ebp, esp                                ; 0C13 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0C15 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0C18 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0C1B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0C1E _ 8B. 40, 10
        sub     edx, eax                                ; 0C21 _ 29. C2
        mov     eax, edx                                ; 0C23 _ 89. D0
        pop     ebp                                     ; 0C25 _ 5D
        ret                                             ; 0C26 _ C3
; fifo8_status End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 0C27 _ 55
        mov     ebp, esp                                ; 0C28 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0C2A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0C2D _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 0C30 _ A1, 00000008(d)
        add     eax, edx                                ; 0C35 _ 01. D0
        mov     dword [mx], eax                         ; 0C37 _ A3, 00000008(d)
        mov     eax, dword [ebp+8H]                     ; 0C3C _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0C3F _ 8B. 50, 08
        mov     eax, dword [my]                         ; 0C42 _ A1, 0000000C(d)
        add     eax, edx                                ; 0C47 _ 01. D0
        mov     dword [my], eax                         ; 0C49 _ A3, 0000000C(d)
        mov     eax, dword [mx]                         ; 0C4E _ A1, 00000008(d)
        test    eax, eax                                ; 0C53 _ 85. C0
        jns     ?_043                                   ; 0C55 _ 79, 0A
        mov     dword [mx], 0                           ; 0C57 _ C7. 05, 00000008(d), 00000000
?_043:  mov     eax, dword [my]                         ; 0C61 _ A1, 0000000C(d)
        test    eax, eax                                ; 0C66 _ 85. C0
        jns     ?_044                                   ; 0C68 _ 79, 0A
        mov     dword [my], 0                           ; 0C6A _ C7. 05, 0000000C(d), 00000000
?_044:  mov     eax, dword [xsize]                      ; 0C74 _ A1, 00000010(d)
        lea     edx, [eax-0CH]                          ; 0C79 _ 8D. 50, F4
        mov     eax, dword [mx]                         ; 0C7C _ A1, 00000008(d)
        cmp     edx, eax                                ; 0C81 _ 39. C2
        jge     ?_045                                   ; 0C83 _ 7D, 0D
        mov     eax, dword [xsize]                      ; 0C85 _ A1, 00000010(d)
        sub     eax, 12                                 ; 0C8A _ 83. E8, 0C
        mov     dword [mx], eax                         ; 0C8D _ A3, 00000008(d)
?_045:  mov     eax, dword [ysize]                      ; 0C92 _ A1, 00000014(d)
        lea     edx, [eax-13H]                          ; 0C97 _ 8D. 50, ED
        mov     eax, dword [my]                         ; 0C9A _ A1, 0000000C(d)
        cmp     edx, eax                                ; 0C9F _ 39. C2
        jge     ?_046                                   ; 0CA1 _ 7D, 0D
        mov     eax, dword [ysize]                      ; 0CA3 _ A1, 00000014(d)
        sub     eax, 19                                 ; 0CA8 _ 83. E8, 13
        mov     dword [my], eax                         ; 0CAB _ A3, 0000000C(d)
?_046:  nop                                             ; 0CB0 _ 90
        pop     ebp                                     ; 0CB1 _ 5D
        ret                                             ; 0CB2 _ C3
; computeMousePosition End of function

eraseMouse:; Function begin
        push    ebp                                     ; 0CB3 _ 55
        mov     ebp, esp                                ; 0CB4 _ 89. E5
        push    esi                                     ; 0CB6 _ 56
        push    ebx                                     ; 0CB7 _ 53
        mov     eax, dword [my]                         ; 0CB8 _ A1, 0000000C(d)
        lea     esi, [eax+12H]                          ; 0CBD _ 8D. 70, 12
        mov     eax, dword [mx]                         ; 0CC0 _ A1, 00000008(d)
        lea     ebx, [eax+0BH]                          ; 0CC5 _ 8D. 58, 0B
        mov     ecx, dword [my]                         ; 0CC8 _ 8B. 0D, 0000000C(d)
        mov     edx, dword [mx]                         ; 0CCE _ 8B. 15, 00000008(d)
        mov     eax, dword [xsize]                      ; 0CD4 _ A1, 00000010(d)
        push    esi                                     ; 0CD9 _ 56
        push    ebx                                     ; 0CDA _ 53
        push    ecx                                     ; 0CDB _ 51
        push    edx                                     ; 0CDC _ 52
        push    14                                      ; 0CDD _ 6A, 0E
        push    eax                                     ; 0CDF _ 50
        push    dword [ebp+8H]                          ; 0CE0 _ FF. 75, 08
        call    boxfill8                                ; 0CE3 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0CE8 _ 83. C4, 1C
        nop                                             ; 0CEB _ 90
        lea     esp, [ebp-8H]                           ; 0CEC _ 8D. 65, F8
        pop     ebx                                     ; 0CEF _ 5B
        pop     esi                                     ; 0CF0 _ 5E
        pop     ebp                                     ; 0CF1 _ 5D
        ret                                             ; 0CF2 _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 0CF3 _ 55
        mov     ebp, esp                                ; 0CF4 _ 89. E5
        mov     ecx, dword [my]                         ; 0CF6 _ 8B. 0D, 0000000C(d)
        mov     edx, dword [mx]                         ; 0CFC _ 8B. 15, 00000008(d)
        mov     eax, dword [xsize]                      ; 0D02 _ A1, 00000010(d)
        push    12                                      ; 0D07 _ 6A, 0C
        push    mcursor                                 ; 0D09 _ 68, 00000100(d)
        push    ecx                                     ; 0D0E _ 51
        push    edx                                     ; 0D0F _ 52
        push    19                                      ; 0D10 _ 6A, 13
        push    12                                      ; 0D12 _ 6A, 0C
        push    eax                                     ; 0D14 _ 50
        push    dword [ebp+8H]                          ; 0D15 _ FF. 75, 08
        call    putblock                                ; 0D18 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D1D _ 83. C4, 20
        nop                                             ; 0D20 _ 90
        leave                                           ; 0D21 _ C9
        ret                                             ; 0D22 _ C3
; drawMouse End of function

show_mouse_info:; Function begin
        push    ebp                                     ; 0D23 _ 55
        mov     ebp, esp                                ; 0D24 _ 89. E5
        sub     esp, 24                                 ; 0D26 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0D29 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 0D2E _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0D31 _ C6. 45, F3, 00
        call    io_sti                                  ; 0D35 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0D3A _ 83. EC, 0C
        push    mouseinfo                               ; 0D3D _ 68, 00000030(d)
        call    fifo8_get                               ; 0D42 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D47 _ 83. C4, 10
        mov     byte [ebp-0DH], al                      ; 0D4A _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0D4D _ 0F B6. 45, F3
        sub     esp, 8                                  ; 0D51 _ 83. EC, 08
        push    eax                                     ; 0D54 _ 50
        push    mdec                                    ; 0D55 _ 68, 000001E4(d)
        call    mouse_decode                            ; 0D5A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D5F _ 83. C4, 10
        test    eax, eax                                ; 0D62 _ 85. C0
        jz      ?_047                                   ; 0D64 _ 74, 2C
        sub     esp, 12                                 ; 0D66 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0D69 _ FF. 75, F4
        call    eraseMouse                              ; 0D6C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D71 _ 83. C4, 10
        sub     esp, 12                                 ; 0D74 _ 83. EC, 0C
        push    mdec                                    ; 0D77 _ 68, 000001E4(d)
        call    computeMousePosition                    ; 0D7C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D81 _ 83. C4, 10
        sub     esp, 12                                 ; 0D84 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0D87 _ FF. 75, F4
        call    drawMouse                               ; 0D8A _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D8F _ 83. C4, 10
?_047:  nop                                             ; 0D92 _ 90
        leave                                           ; 0D93 _ C9
        ret                                             ; 0D94 _ C3
; show_mouse_info End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0D95 _ 55
        mov     ebp, esp                                ; 0D96 _ 89. E5
        sub     esp, 4                                  ; 0D98 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0D9B _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0D9E _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0DA1 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0DA4 _ 0F B6. 40, 03
        test    al, al                                  ; 0DA8 _ 84. C0
        jnz     ?_049                                   ; 0DAA _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0DAC _ 80. 7D, FC, FA
        jnz     ?_048                                   ; 0DB0 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0DB2 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0DB5 _ C6. 40, 03, 01
?_048:  mov     eax, 0                                  ; 0DB9 _ B8, 00000000
        jmp     ?_056                                   ; 0DBE _ E9, 0000010F

?_049:  mov     eax, dword [ebp+8H]                     ; 0DC3 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0DC6 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0DCA _ 3C, 01
        jnz     ?_051                                   ; 0DCC _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 0DCE _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 0DD2 _ 25, 000000C8
        cmp     eax, 8                                  ; 0DD7 _ 83. F8, 08
        jnz     ?_050                                   ; 0DDA _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0DDC _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0DDF _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0DE3 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0DE5 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0DE8 _ C6. 40, 03, 02
?_050:  mov     eax, 0                                  ; 0DEC _ B8, 00000000
        jmp     ?_056                                   ; 0DF1 _ E9, 000000DC

?_051:  mov     eax, dword [ebp+8H]                     ; 0DF6 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0DF9 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0DFD _ 3C, 02
        jnz     ?_052                                   ; 0DFF _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0E01 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0E04 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 0E08 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E0B _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0E0E _ C6. 40, 03, 03
        mov     eax, 0                                  ; 0E12 _ B8, 00000000
        jmp     ?_056                                   ; 0E17 _ E9, 000000B6

?_052:  mov     eax, dword [ebp+8H]                     ; 0E1C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0E1F _ 0F B6. 40, 03
        cmp     al, 3                                   ; 0E23 _ 3C, 03
        jne     ?_055                                   ; 0E25 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 0E2B _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0E2E _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 0E32 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0E35 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0E38 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0E3C _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0E3F _ 0F B6. 00
        movzx   eax, al                                 ; 0E42 _ 0F B6. C0
        and     eax, 07H                                ; 0E45 _ 83. E0, 07
        mov     edx, eax                                ; 0E48 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E4A _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0E4D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0E50 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0E53 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 0E57 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0E5A _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0E5D _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E60 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0E63 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 0E67 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0E6A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0E6D _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0E70 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0E73 _ 0F B6. 00
        movzx   eax, al                                 ; 0E76 _ 0F B6. C0
        and     eax, 10H                                ; 0E79 _ 83. E0, 10
        test    eax, eax                                ; 0E7C _ 85. C0
        jz      ?_053                                   ; 0E7E _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0E80 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0E83 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0E86 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0E8B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E8D _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0E90 _ 89. 50, 04
?_053:  mov     eax, dword [ebp+8H]                     ; 0E93 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0E96 _ 0F B6. 00
        movzx   eax, al                                 ; 0E99 _ 0F B6. C0
        and     eax, 20H                                ; 0E9C _ 83. E0, 20
        test    eax, eax                                ; 0E9F _ 85. C0
        jz      ?_054                                   ; 0EA1 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0EA3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0EA6 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 0EA9 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0EAE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0EB0 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0EB3 _ 89. 50, 08
?_054:  mov     eax, dword [ebp+8H]                     ; 0EB6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0EB9 _ 8B. 40, 08
        neg     eax                                     ; 0EBC _ F7. D8
        mov     edx, eax                                ; 0EBE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0EC0 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0EC3 _ 89. 50, 08
        mov     eax, 1                                  ; 0EC6 _ B8, 00000001
        jmp     ?_056                                   ; 0ECB _ EB, 05

?_055:  mov     eax, 4294967295                         ; 0ECD _ B8, FFFFFFFF
?_056:  leave                                           ; 0ED2 _ C9
        ret                                             ; 0ED3 _ C3
; mouse_decode End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0ED4 _ 55
        mov     ebp, esp                                ; 0ED5 _ 89. E5
        sub     esp, 16                                 ; 0ED7 _ 83. EC, 10
        mov     byte [str.1768], 48                     ; 0EDA _ C6. 05, 000001F8(d), 30
        mov     byte [?_067], 88                        ; 0EE1 _ C6. 05, 000001F9(d), 58
        mov     byte [?_068], 0                         ; 0EE8 _ C6. 05, 00000202(d), 00
        mov     dword [ebp-0CH], 2                      ; 0EEF _ C7. 45, F4, 00000002
        jmp     ?_058                                   ; 0EF6 _ EB, 0F

?_057:  mov     eax, dword [ebp-0CH]                    ; 0EF8 _ 8B. 45, F4
        add     eax, str.1768                           ; 0EFB _ 05, 000001F8(d)
        mov     byte [eax], 48                          ; 0F00 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0F03 _ 83. 45, F4, 01
?_058:  cmp     dword [ebp-0CH], 9                      ; 0F07 _ 83. 7D, F4, 09
        jle     ?_057                                   ; 0F0B _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0F0D _ C7. 45, F8, 00000009
        jmp     ?_061                                   ; 0F14 _ EB, 3E

?_059:  mov     eax, dword [ebp+8H]                     ; 0F16 _ 8B. 45, 08
        and     eax, 0FH                                ; 0F19 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0F1C _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0F1F _ 8B. 45, 08
        shr     eax, 4                                  ; 0F22 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0F25 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0F28 _ 83. 7D, FC, 09
        jle     ?_060                                   ; 0F2C _ 7E, 14
        mov     eax, dword [ebp-4H]                     ; 0F2E _ 8B. 45, FC
        add     eax, 55                                 ; 0F31 _ 83. C0, 37
        mov     edx, eax                                ; 0F34 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0F36 _ 8B. 45, F8
        add     eax, str.1768                           ; 0F39 _ 05, 000001F8(d)
        mov     byte [eax], dl                          ; 0F3E _ 88. 10
        jmp     ?_061                                   ; 0F40 _ EB, 12

?_060:  mov     eax, dword [ebp-4H]                     ; 0F42 _ 8B. 45, FC
        add     eax, 48                                 ; 0F45 _ 83. C0, 30
        mov     edx, eax                                ; 0F48 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0F4A _ 8B. 45, F8
        add     eax, str.1768                           ; 0F4D _ 05, 000001F8(d)
        mov     byte [eax], dl                          ; 0F52 _ 88. 10
?_061:  cmp     dword [ebp-8H], 1                       ; 0F54 _ 83. 7D, F8, 01
        jle     ?_062                                   ; 0F58 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0F5A _ 83. 7D, 08, 00
        jnz     ?_059                                   ; 0F5E _ 75, B6
?_062:  mov     eax, str.1768                           ; 0F60 _ B8, 000001F8(d)
        leave                                           ; 0F65 _ C9
        ret                                             ; 0F66 _ C3
; intToHexStr End of function



keyval:                                                 ; byte
        db 30H, 58H                                     ; 0000 _ 0X

?_063:  db 00H                                          ; 0002 _ .

?_064:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0003 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000B _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

table_rgb.1631:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1676:                                            ; byte
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

?_065:  resw    1                                       ; 0004

?_066:  resw    1                                       ; 0006

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

showPos.1611:                                           ; dword
        resd    1                                       ; 01F4

str.1768:                                               ; byte
        resb    1                                       ; 01F8

?_067:  resb    9                                       ; 01F9

?_068:  resb    1                                       ; 0202


