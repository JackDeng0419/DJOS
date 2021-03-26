; Disassembly of file: write_vga_desktop.o
; Thu Mar 25 18:50:38 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386




;ION .text   align=1 execute                         ; ;ion number 1, code

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
        call    get_adr_buffer                          ; 03B3 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 03B8 _ 89. 45, F4
        mov     dword [ebp-20H], 0                      ; 03BB _ C7. 45, E0, 00000000
        call    io_sti                                  ; 03C2 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 03C7 _ 83. EC, 0C
        push    mdec                                    ; 03CA _ 68, 000001E4(d)
        call    enable_mouse                            ; 03CF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03D4 _ 83. C4, 10
?_001:  call    io_cli                                  ; 03D7 _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 03DC _ 83. EC, 0C
        push    keyinfo                                 ; 03DF _ 68, 00000018(d)
        call    fifo8_status                            ; 03E4 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03E9 _ 83. C4, 10
        mov     ebx, eax                                ; 03EC _ 89. C3
        sub     esp, 12                                 ; 03EE _ 83. EC, 0C
        push    mouseinfo                               ; 03F1 _ 68, 00000030(d)
        call    fifo8_status                            ; 03F6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03FB _ 83. C4, 10
        add     eax, ebx                                ; 03FE _ 01. D8
        test    eax, eax                                ; 0400 _ 85. C0
        jnz     ?_002                                   ; 0402 _ 75, 07
        call    io_stihlt                               ; 0404 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0409 _ EB, CC

?_002:  sub     esp, 12                                 ; 040B _ 83. EC, 0C
        push    keyinfo                                 ; 040E _ 68, 00000018(d)
        call    fifo8_status                            ; 0413 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0418 _ 83. C4, 10
        test    eax, eax                                ; 041B _ 85. C0
        jz      ?_003                                   ; 041D _ 74, 69
        call    io_sti                                  ; 041F _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0424 _ 83. EC, 0C
        push    keyinfo                                 ; 0427 _ 68, 00000018(d)
        call    fifo8_get                               ; 042C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0431 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 0434 _ 89. 45, E8
        cmp     dword [ebp-18H], 28                     ; 0437 _ 83. 7D, E8, 1C
        jnz     ?_001                                   ; 043B _ 75, 9A
        mov     ecx, dword [xsize]                      ; 043D _ 8B. 0D, 00000010(d)
        mov     edx, dword [ebp-20H]                    ; 0443 _ 8B. 55, E0
        mov     eax, edx                                ; 0446 _ 89. D0
        shl     eax, 2                                  ; 0448 _ C1. E0, 02
        add     eax, edx                                ; 044B _ 01. D0
        shl     eax, 2                                  ; 044D _ C1. E0, 02
        mov     edx, eax                                ; 0450 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0452 _ 8B. 45, F4
        add     eax, edx                                ; 0455 _ 01. D0
        sub     esp, 12                                 ; 0457 _ 83. EC, 0C
        push    7                                       ; 045A _ 6A, 07
        push    ecx                                     ; 045C _ 51
        push    dword [ebp-20H]                         ; 045D _ FF. 75, E0
        push    dword [ebp-1CH]                         ; 0460 _ FF. 75, E4
        push    eax                                     ; 0463 _ 50
        call    showMemoryInfo                          ; 0464 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0469 _ 83. C4, 20
        add     dword [ebp-20H], 1                      ; 046C _ 83. 45, E0, 01
        mov     eax, dword [ebp-20H]                    ; 0470 _ 8B. 45, E0
        cmp     eax, dword [ebp-14H]                    ; 0473 _ 3B. 45, EC
        jle     ?_001                                   ; 0476 _ 0F 8E, FFFFFF5B
        mov     dword [ebp-20H], 0                      ; 047C _ C7. 45, E0, 00000000
        jmp     ?_001                                   ; 0483 _ E9, FFFFFF4F

?_003:  sub     esp, 12                                 ; 0488 _ 83. EC, 0C
        push    mouseinfo                               ; 048B _ 68, 00000030(d)
        call    fifo8_status                            ; 0490 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0495 _ 83. C4, 10
        test    eax, eax                                ; 0498 _ 85. C0
        je      ?_001                                   ; 049A _ 0F 84, FFFFFF37
        call    show_mouse_info                         ; 04A0 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 04A5 _ E9, FFFFFF2D
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 04AA _ 55
        mov     ebp, esp                                ; 04AB _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 04AD _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 04B0 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 04B6 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 04B9 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 04BF _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 04C2 _ 66: C7. 40, 06, 00C8
        nop                                             ; 04C8 _ 90
        pop     ebp                                     ; 04C9 _ 5D
        ret                                             ; 04CA _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 04CB _ 55
        mov     ebp, esp                                ; 04CC _ 89. E5
        sub     esp, 24                                 ; 04CE _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 04D1 _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 04D4 _ 88. 45, F4
        jmp     ?_005                                   ; 04D7 _ EB, 37

?_004:  mov     eax, dword [ebp+1CH]                    ; 04D9 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 04DC _ 0F B6. 00
        movzx   eax, al                                 ; 04DF _ 0F B6. C0
        shl     eax, 4                                  ; 04E2 _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 04E5 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 04EB _ 0F BE. 45, F4
        sub     esp, 8                                  ; 04EF _ 83. EC, 08
        push    edx                                     ; 04F2 _ 52
        push    eax                                     ; 04F3 _ 50
        push    dword [ebp+14H]                         ; 04F4 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 04F7 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 04FA _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 04FD _ FF. 75, 08
        call    showFont8                               ; 0500 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0505 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0508 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 050C _ 83. 45, 1C, 01
?_005:  mov     eax, dword [ebp+1CH]                    ; 0510 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0513 _ 0F B6. 00
        test    al, al                                  ; 0516 _ 84. C0
        jnz     ?_004                                   ; 0518 _ 75, BF
        nop                                             ; 051A _ 90
        leave                                           ; 051B _ C9
        ret                                             ; 051C _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 051D _ 55
        mov     ebp, esp                                ; 051E _ 89. E5
        sub     esp, 8                                  ; 0520 _ 83. EC, 08
        sub     esp, 4                                  ; 0523 _ 83. EC, 04
        push    table_rgb.1643                          ; 0526 _ 68, 00000020(d)
        push    15                                      ; 052B _ 6A, 0F
        push    0                                       ; 052D _ 6A, 00
        call    set_palette                             ; 052F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0534 _ 83. C4, 10
        nop                                             ; 0537 _ 90
        leave                                           ; 0538 _ C9
        ret                                             ; 0539 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 053A _ 55
        mov     ebp, esp                                ; 053B _ 89. E5
        sub     esp, 24                                 ; 053D _ 83. EC, 18
        call    io_load_eflags                          ; 0540 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0545 _ 89. 45, F4
        call    io_cli                                  ; 0548 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 054D _ 8B. 45, 08
        movsx   eax, al                                 ; 0550 _ 0F BE. C0
        sub     esp, 8                                  ; 0553 _ 83. EC, 08
        push    eax                                     ; 0556 _ 50
        push    968                                     ; 0557 _ 68, 000003C8
        call    io_out8                                 ; 055C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0561 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0564 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0567 _ 89. 45, F0
        jmp     ?_007                                   ; 056A _ EB, 65

?_006:  mov     eax, dword [ebp+10H]                    ; 056C _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 056F _ 0F B6. 00
        shr     al, 2                                   ; 0572 _ C0. E8, 02
        movsx   eax, al                                 ; 0575 _ 0F BE. C0
        sub     esp, 8                                  ; 0578 _ 83. EC, 08
        push    eax                                     ; 057B _ 50
        push    969                                     ; 057C _ 68, 000003C9
        call    io_out8                                 ; 0581 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0586 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 0589 _ 8B. 45, 10
        add     eax, 1                                  ; 058C _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 058F _ 0F B6. 00
        shr     al, 2                                   ; 0592 _ C0. E8, 02
        movsx   eax, al                                 ; 0595 _ 0F BE. C0
        sub     esp, 8                                  ; 0598 _ 83. EC, 08
        push    eax                                     ; 059B _ 50
        push    969                                     ; 059C _ 68, 000003C9
        call    io_out8                                 ; 05A1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05A6 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 05A9 _ 8B. 45, 10
        add     eax, 2                                  ; 05AC _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 05AF _ 0F B6. 00
        shr     al, 2                                   ; 05B2 _ C0. E8, 02
        movsx   eax, al                                 ; 05B5 _ 0F BE. C0
        sub     esp, 8                                  ; 05B8 _ 83. EC, 08
        push    eax                                     ; 05BB _ 50
        push    969                                     ; 05BC _ 68, 000003C9
        call    io_out8                                 ; 05C1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05C6 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 05C9 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 05CD _ 83. 45, F0, 01
?_007:  mov     eax, dword [ebp-10H]                    ; 05D1 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 05D4 _ 3B. 45, 0C
        jle     ?_006                                   ; 05D7 _ 7E, 93
        sub     esp, 12                                 ; 05D9 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 05DC _ FF. 75, F4
        call    io_store_eflags                         ; 05DF _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 05E4 _ 83. C4, 10
        nop                                             ; 05E7 _ 90
        leave                                           ; 05E8 _ C9
        ret                                             ; 05E9 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 05EA _ 55
        mov     ebp, esp                                ; 05EB _ 89. E5
        sub     esp, 20                                 ; 05ED _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 05F0 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 05F3 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 05F6 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 05F9 _ 89. 45, FC
        jmp     ?_011                                   ; 05FC _ EB, 33

?_008:  mov     eax, dword [ebp+14H]                    ; 05FE _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0601 _ 89. 45, F8
        jmp     ?_010                                   ; 0604 _ EB, 1F

?_009:  mov     eax, dword [ebp-4H]                     ; 0606 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0609 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 060D _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 060F _ 8B. 45, F8
        add     eax, edx                                ; 0612 _ 01. D0
        mov     edx, eax                                ; 0614 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0616 _ 8B. 45, 08
        add     edx, eax                                ; 0619 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 061B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 061F _ 88. 02
        add     dword [ebp-8H], 1                       ; 0621 _ 83. 45, F8, 01
?_010:  mov     eax, dword [ebp-8H]                     ; 0625 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0628 _ 3B. 45, 1C
        jle     ?_009                                   ; 062B _ 7E, D9
        add     dword [ebp-4H], 1                       ; 062D _ 83. 45, FC, 01
?_011:  mov     eax, dword [ebp-4H]                     ; 0631 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0634 _ 3B. 45, 20
        jle     ?_008                                   ; 0637 _ 7E, C5
        nop                                             ; 0639 _ 90
        leave                                           ; 063A _ C9
        ret                                             ; 063B _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 063C _ 55
        mov     ebp, esp                                ; 063D _ 89. E5
        sub     esp, 20                                 ; 063F _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0642 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0645 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0648 _ C7. 45, FC, 00000000
        jmp     ?_021                                   ; 064F _ E9, 0000016C

?_012:  mov     edx, dword [ebp-4H]                     ; 0654 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0657 _ 8B. 45, 1C
        add     eax, edx                                ; 065A _ 01. D0
        movzx   eax, byte [eax]                         ; 065C _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 065F _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0662 _ 80. 7D, FB, 00
        jns     ?_013                                   ; 0666 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0668 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 066B _ 8B. 45, FC
        add     eax, edx                                ; 066E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0670 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0674 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0676 _ 8B. 45, 10
        add     eax, edx                                ; 0679 _ 01. D0
        mov     edx, eax                                ; 067B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 067D _ 8B. 45, 08
        add     edx, eax                                ; 0680 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0682 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0686 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 0688 _ 0F BE. 45, FB
        and     eax, 40H                                ; 068C _ 83. E0, 40
        test    eax, eax                                ; 068F _ 85. C0
        jz      ?_014                                   ; 0691 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0693 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0696 _ 8B. 45, FC
        add     eax, edx                                ; 0699 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 069B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 069F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06A1 _ 8B. 45, 10
        add     eax, edx                                ; 06A4 _ 01. D0
        lea     edx, [eax+1H]                           ; 06A6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 06A9 _ 8B. 45, 08
        add     edx, eax                                ; 06AC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06AE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06B2 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 06B4 _ 0F BE. 45, FB
        and     eax, 20H                                ; 06B8 _ 83. E0, 20
        test    eax, eax                                ; 06BB _ 85. C0
        jz      ?_015                                   ; 06BD _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 06BF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 06C2 _ 8B. 45, FC
        add     eax, edx                                ; 06C5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06C7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06CB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06CD _ 8B. 45, 10
        add     eax, edx                                ; 06D0 _ 01. D0
        lea     edx, [eax+2H]                           ; 06D2 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 06D5 _ 8B. 45, 08
        add     edx, eax                                ; 06D8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06DA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06DE _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 06E0 _ 0F BE. 45, FB
        and     eax, 10H                                ; 06E4 _ 83. E0, 10
        test    eax, eax                                ; 06E7 _ 85. C0
        jz      ?_016                                   ; 06E9 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 06EB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 06EE _ 8B. 45, FC
        add     eax, edx                                ; 06F1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06F3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06F7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06F9 _ 8B. 45, 10
        add     eax, edx                                ; 06FC _ 01. D0
        lea     edx, [eax+3H]                           ; 06FE _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0701 _ 8B. 45, 08
        add     edx, eax                                ; 0704 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0706 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 070A _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 070C _ 0F BE. 45, FB
        and     eax, 08H                                ; 0710 _ 83. E0, 08
        test    eax, eax                                ; 0713 _ 85. C0
        jz      ?_017                                   ; 0715 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0717 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 071A _ 8B. 45, FC
        add     eax, edx                                ; 071D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 071F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0723 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0725 _ 8B. 45, 10
        add     eax, edx                                ; 0728 _ 01. D0
        lea     edx, [eax+4H]                           ; 072A _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 072D _ 8B. 45, 08
        add     edx, eax                                ; 0730 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0732 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0736 _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 0738 _ 0F BE. 45, FB
        and     eax, 04H                                ; 073C _ 83. E0, 04
        test    eax, eax                                ; 073F _ 85. C0
        jz      ?_018                                   ; 0741 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0743 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0746 _ 8B. 45, FC
        add     eax, edx                                ; 0749 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 074B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 074F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0751 _ 8B. 45, 10
        add     eax, edx                                ; 0754 _ 01. D0
        lea     edx, [eax+5H]                           ; 0756 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0759 _ 8B. 45, 08
        add     edx, eax                                ; 075C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 075E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0762 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 0764 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0768 _ 83. E0, 02
        test    eax, eax                                ; 076B _ 85. C0
        jz      ?_019                                   ; 076D _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 076F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0772 _ 8B. 45, FC
        add     eax, edx                                ; 0775 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0777 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 077B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 077D _ 8B. 45, 10
        add     eax, edx                                ; 0780 _ 01. D0
        lea     edx, [eax+6H]                           ; 0782 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0785 _ 8B. 45, 08
        add     edx, eax                                ; 0788 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 078A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 078E _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0790 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0794 _ 83. E0, 01
        test    eax, eax                                ; 0797 _ 85. C0
        jz      ?_020                                   ; 0799 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 079B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 079E _ 8B. 45, FC
        add     eax, edx                                ; 07A1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 07A3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 07A7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 07A9 _ 8B. 45, 10
        add     eax, edx                                ; 07AC _ 01. D0
        lea     edx, [eax+7H]                           ; 07AE _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 07B1 _ 8B. 45, 08
        add     edx, eax                                ; 07B4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 07B6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 07BA _ 88. 02
?_020:  add     dword [ebp-4H], 1                       ; 07BC _ 83. 45, FC, 01
?_021:  cmp     dword [ebp-4H], 15                      ; 07C0 _ 83. 7D, FC, 0F
        jle     ?_012                                   ; 07C4 _ 0F 8E, FFFFFE8A
        nop                                             ; 07CA _ 90
        leave                                           ; 07CB _ C9
        ret                                             ; 07CC _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 07CD _ 55
        mov     ebp, esp                                ; 07CE _ 89. E5
        sub     esp, 20                                 ; 07D0 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 07D3 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 07D6 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 07D9 _ C7. 45, FC, 00000000
        jmp     ?_028                                   ; 07E0 _ E9, 000000CF

?_022:  mov     dword [ebp-8H], 0                       ; 07E5 _ C7. 45, F8, 00000000
        jmp     ?_027                                   ; 07EC _ E9, 000000B5

?_023:  mov     edx, dword [ebp-4H]                     ; 07F1 _ 8B. 55, FC
        mov     eax, edx                                ; 07F4 _ 89. D0
        add     eax, eax                                ; 07F6 _ 01. C0
        add     eax, edx                                ; 07F8 _ 01. D0
        shl     eax, 2                                  ; 07FA _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 07FD _ 8B. 55, F8
        add     eax, edx                                ; 0800 _ 01. D0
        add     eax, cursor.1688                        ; 0802 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0807 _ 0F B6. 00
        cmp     al, 42                                  ; 080A _ 3C, 2A
        jnz     ?_024                                   ; 080C _ 75, 1D
        mov     edx, dword [ebp-4H]                     ; 080E _ 8B. 55, FC
        mov     eax, edx                                ; 0811 _ 89. D0
        add     eax, eax                                ; 0813 _ 01. C0
        add     eax, edx                                ; 0815 _ 01. D0
        shl     eax, 2                                  ; 0817 _ C1. E0, 02
        mov     edx, eax                                ; 081A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 081C _ 8B. 45, F8
        add     eax, edx                                ; 081F _ 01. D0
        mov     edx, eax                                ; 0821 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0823 _ 8B. 45, 08
        add     eax, edx                                ; 0826 _ 01. D0
        mov     byte [eax], 0                           ; 0828 _ C6. 00, 00
?_024:  mov     edx, dword [ebp-4H]                     ; 082B _ 8B. 55, FC
        mov     eax, edx                                ; 082E _ 89. D0
        add     eax, eax                                ; 0830 _ 01. C0
        add     eax, edx                                ; 0832 _ 01. D0
        shl     eax, 2                                  ; 0834 _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 0837 _ 8B. 55, F8
        add     eax, edx                                ; 083A _ 01. D0
        add     eax, cursor.1688                        ; 083C _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0841 _ 0F B6. 00
        cmp     al, 79                                  ; 0844 _ 3C, 4F
        jnz     ?_025                                   ; 0846 _ 75, 1D
        mov     edx, dword [ebp-4H]                     ; 0848 _ 8B. 55, FC
        mov     eax, edx                                ; 084B _ 89. D0
        add     eax, eax                                ; 084D _ 01. C0
        add     eax, edx                                ; 084F _ 01. D0
        shl     eax, 2                                  ; 0851 _ C1. E0, 02
        mov     edx, eax                                ; 0854 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0856 _ 8B. 45, F8
        add     eax, edx                                ; 0859 _ 01. D0
        mov     edx, eax                                ; 085B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 085D _ 8B. 45, 08
        add     eax, edx                                ; 0860 _ 01. D0
        mov     byte [eax], 7                           ; 0862 _ C6. 00, 07
?_025:  mov     edx, dword [ebp-4H]                     ; 0865 _ 8B. 55, FC
        mov     eax, edx                                ; 0868 _ 89. D0
        add     eax, eax                                ; 086A _ 01. C0
        add     eax, edx                                ; 086C _ 01. D0
        shl     eax, 2                                  ; 086E _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 0871 _ 8B. 55, F8
        add     eax, edx                                ; 0874 _ 01. D0
        add     eax, cursor.1688                        ; 0876 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 087B _ 0F B6. 00
        cmp     al, 46                                  ; 087E _ 3C, 2E
        jnz     ?_026                                   ; 0880 _ 75, 20
        mov     edx, dword [ebp-4H]                     ; 0882 _ 8B. 55, FC
        mov     eax, edx                                ; 0885 _ 89. D0
        add     eax, eax                                ; 0887 _ 01. C0
        add     eax, edx                                ; 0889 _ 01. D0
        shl     eax, 2                                  ; 088B _ C1. E0, 02
        mov     edx, eax                                ; 088E _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0890 _ 8B. 45, F8
        add     eax, edx                                ; 0893 _ 01. D0
        mov     edx, eax                                ; 0895 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0897 _ 8B. 45, 08
        add     edx, eax                                ; 089A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 089C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08A0 _ 88. 02
?_026:  add     dword [ebp-8H], 1                       ; 08A2 _ 83. 45, F8, 01
?_027:  cmp     dword [ebp-8H], 11                      ; 08A6 _ 83. 7D, F8, 0B
        jle     ?_023                                   ; 08AA _ 0F 8E, FFFFFF41
        add     dword [ebp-4H], 1                       ; 08B0 _ 83. 45, FC, 01
?_028:  cmp     dword [ebp-4H], 18                      ; 08B4 _ 83. 7D, FC, 12
        jle     ?_022                                   ; 08B8 _ 0F 8E, FFFFFF27
        nop                                             ; 08BE _ 90
        leave                                           ; 08BF _ C9
        ret                                             ; 08C0 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 08C1 _ 55
        mov     ebp, esp                                ; 08C2 _ 89. E5
        sub     esp, 16                                 ; 08C4 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 08C7 _ C7. 45, FC, 00000000
        jmp     ?_032                                   ; 08CE _ EB, 50

?_029:  mov     dword [ebp-8H], 0                       ; 08D0 _ C7. 45, F8, 00000000
        jmp     ?_031                                   ; 08D7 _ EB, 3B

?_030:  mov     edx, dword [ebp+1CH]                    ; 08D9 _ 8B. 55, 1C
        mov     eax, dword [ebp-4H]                     ; 08DC _ 8B. 45, FC
        add     eax, edx                                ; 08DF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08E1 _ 0F AF. 45, 0C
        mov     ecx, dword [ebp+18H]                    ; 08E5 _ 8B. 4D, 18
        mov     edx, dword [ebp-8H]                     ; 08E8 _ 8B. 55, F8
        add     edx, ecx                                ; 08EB _ 01. CA
        add     eax, edx                                ; 08ED _ 01. D0
        mov     edx, eax                                ; 08EF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 08F1 _ 8B. 45, 08
        add     edx, eax                                ; 08F4 _ 01. C2
        mov     eax, dword [ebp-4H]                     ; 08F6 _ 8B. 45, FC
        imul    eax, dword [ebp+24H]                    ; 08F9 _ 0F AF. 45, 24
        mov     ecx, eax                                ; 08FD _ 89. C1
        mov     eax, dword [ebp-8H]                     ; 08FF _ 8B. 45, F8
        add     eax, ecx                                ; 0902 _ 01. C8
        mov     ecx, eax                                ; 0904 _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 0906 _ 8B. 45, 20
        add     eax, ecx                                ; 0909 _ 01. C8
        movzx   eax, byte [eax]                         ; 090B _ 0F B6. 00
        mov     byte [edx], al                          ; 090E _ 88. 02
        add     dword [ebp-8H], 1                       ; 0910 _ 83. 45, F8, 01
?_031:  mov     eax, dword [ebp-8H]                     ; 0914 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0917 _ 3B. 45, 10
        jl      ?_030                                   ; 091A _ 7C, BD
        add     dword [ebp-4H], 1                       ; 091C _ 83. 45, FC, 01
?_032:  mov     eax, dword [ebp-4H]                     ; 0920 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 0923 _ 3B. 45, 14
        jl      ?_029                                   ; 0926 _ 7C, A8
        nop                                             ; 0928 _ 90
        leave                                           ; 0929 _ C9
        ret                                             ; 092A _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 092B _ 55
        mov     ebp, esp                                ; 092C _ 89. E5
        sub     esp, 24                                 ; 092E _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0931 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0936 _ 89. 45, EC
        movzx   eax, word [?_065]                       ; 0939 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0940 _ 98
        mov     dword [ebp-10H], eax                    ; 0941 _ 89. 45, F0
        movzx   eax, word [?_066]                       ; 0944 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 094B _ 98
        mov     dword [ebp-0CH], eax                    ; 094C _ 89. 45, F4
        sub     esp, 8                                  ; 094F _ 83. EC, 08
        push    33                                      ; 0952 _ 6A, 21
        push    32                                      ; 0954 _ 6A, 20
        call    io_out8                                 ; 0956 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 095B _ 83. C4, 10
        mov     byte [ebp-15H], 0                       ; 095E _ C6. 45, EB, 00
        sub     esp, 12                                 ; 0962 _ 83. EC, 0C
        push    96                                      ; 0965 _ 6A, 60
        call    io_in8                                  ; 0967 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 096C _ 83. C4, 10
        mov     byte [ebp-15H], al                      ; 096F _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0972 _ 0F B6. 45, EB
        sub     esp, 8                                  ; 0976 _ 83. EC, 08
        push    eax                                     ; 0979 _ 50
        push    keyinfo                                 ; 097A _ 68, 00000018(d)
        call    fifo8_put                               ; 097F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0984 _ 83. C4, 10
        nop                                             ; 0987 _ 90
        leave                                           ; 0988 _ C9
        ret                                             ; 0989 _ C3
; intHandlerFromC End of function

charToHexVal:; Function begin
        push    ebp                                     ; 098A _ 55
        mov     ebp, esp                                ; 098B _ 89. E5
        sub     esp, 4                                  ; 098D _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0990 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0993 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0996 _ 80. 7D, FC, 09
        jle     ?_033                                   ; 099A _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 099C _ 0F B6. 45, FC
        add     eax, 55                                 ; 09A0 _ 83. C0, 37
        jmp     ?_034                                   ; 09A3 _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 09A5 _ 0F B6. 45, FC
        add     eax, 48                                 ; 09A9 _ 83. C0, 30
?_034:  leave                                           ; 09AC _ C9
        ret                                             ; 09AD _ C3
; charToHexVal End of function

charToHexStr:; Function begin
        push    ebp                                     ; 09AE _ 55
        mov     ebp, esp                                ; 09AF _ 89. E5
        sub     esp, 20                                 ; 09B1 _ 83. EC, 14
        mov     eax, dword [ebp+8H]                     ; 09B4 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 09B7 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 09BA _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 09C1 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 09C5 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 09C8 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 09CB _ 0F BE. 45, FB
        push    eax                                     ; 09CF _ 50
        call    charToHexVal                            ; 09D0 _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 09D5 _ 83. C4, 04
        mov     byte [?_064], al                        ; 09D8 _ A2, 00000003(d)
        movzx   eax, byte [ebp-14H]                     ; 09DD _ 0F B6. 45, EC
        shr     al, 4                                   ; 09E1 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 09E4 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 09E7 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 09EB _ 0F BE. C0
        push    eax                                     ; 09EE _ 50
        call    charToHexVal                            ; 09EF _ E8, FFFFFFFC(rel)
        add     esp, 4                                  ; 09F4 _ 83. C4, 04
        mov     byte [?_063], al                        ; 09F7 _ A2, 00000002(d)
        mov     eax, keyval                             ; 09FC _ B8, 00000000(d)
        leave                                           ; 0A01 _ C9
        ret                                             ; 0A02 _ C3
; charToHexStr End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0A03 _ 55
        mov     ebp, esp                                ; 0A04 _ 89. E5
        sub     esp, 8                                  ; 0A06 _ 83. EC, 08
?_035:  sub     esp, 12                                 ; 0A09 _ 83. EC, 0C
        push    100                                     ; 0A0C _ 6A, 64
        call    io_in8                                  ; 0A0E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A13 _ 83. C4, 10
        movsx   eax, al                                 ; 0A16 _ 0F BE. C0
        and     eax, 02H                                ; 0A19 _ 83. E0, 02
        test    eax, eax                                ; 0A1C _ 85. C0
        jz      ?_036                                   ; 0A1E _ 74, 02
        jmp     ?_035                                   ; 0A20 _ EB, E7

?_036:  nop                                             ; 0A22 _ 90
        nop                                             ; 0A23 _ 90
        leave                                           ; 0A24 _ C9
        ret                                             ; 0A25 _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0A26 _ 55
        mov     ebp, esp                                ; 0A27 _ 89. E5
        sub     esp, 8                                  ; 0A29 _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0A2C _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A31 _ 83. EC, 08
        push    96                                      ; 0A34 _ 6A, 60
        push    100                                     ; 0A36 _ 6A, 64
        call    io_out8                                 ; 0A38 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A3D _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0A40 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A45 _ 83. EC, 08
        push    71                                      ; 0A48 _ 6A, 47
        push    96                                      ; 0A4A _ 6A, 60
        call    io_out8                                 ; 0A4C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A51 _ 83. C4, 10
        nop                                             ; 0A54 _ 90
        leave                                           ; 0A55 _ C9
        ret                                             ; 0A56 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0A57 _ 55
        mov     ebp, esp                                ; 0A58 _ 89. E5
        sub     esp, 8                                  ; 0A5A _ 83. EC, 08
        call    wait_KBC_sendready                      ; 0A5D _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A62 _ 83. EC, 08
        push    -44                                     ; 0A65 _ 6A, D4
        push    100                                     ; 0A67 _ 6A, 64
        call    io_out8                                 ; 0A69 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A6E _ 83. C4, 10
        call    wait_KBC_sendready                      ; 0A71 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 0A76 _ 83. EC, 08
        push    -12                                     ; 0A79 _ 6A, F4
        push    96                                      ; 0A7B _ 6A, 60
        call    io_out8                                 ; 0A7D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0A82 _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0A85 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0A88 _ C6. 40, 03, 00
        nop                                             ; 0A8C _ 90
        leave                                           ; 0A8D _ C9
        ret                                             ; 0A8E _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0A8F _ 55
        mov     ebp, esp                                ; 0A90 _ 89. E5
        sub     esp, 24                                 ; 0A92 _ 83. EC, 18
        sub     esp, 8                                  ; 0A95 _ 83. EC, 08
        push    32                                      ; 0A98 _ 6A, 20
        push    160                                     ; 0A9A _ 68, 000000A0
        call    io_out8                                 ; 0A9F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AA4 _ 83. C4, 10
        sub     esp, 8                                  ; 0AA7 _ 83. EC, 08
        push    32                                      ; 0AAA _ 6A, 20
        push    32                                      ; 0AAC _ 6A, 20
        call    io_out8                                 ; 0AAE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AB3 _ 83. C4, 10
        sub     esp, 12                                 ; 0AB6 _ 83. EC, 0C
        push    96                                      ; 0AB9 _ 6A, 60
        call    io_in8                                  ; 0ABB _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AC0 _ 83. C4, 10
        mov     byte [ebp-9H], al                       ; 0AC3 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0AC6 _ 0F B6. 45, F7
        sub     esp, 8                                  ; 0ACA _ 83. EC, 08
        push    eax                                     ; 0ACD _ 50
        push    mouseinfo                               ; 0ACE _ 68, 00000030(d)
        call    fifo8_put                               ; 0AD3 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0AD8 _ 83. C4, 10
        nop                                             ; 0ADB _ 90
        leave                                           ; 0ADC _ C9
        ret                                             ; 0ADD _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0ADE _ 55
        mov     ebp, esp                                ; 0ADF _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0AE1 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0AE4 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0AE7 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0AEA _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0AED _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0AF0 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0AF2 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0AF5 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0AF8 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0AFB _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0AFE _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 0B05 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0B08 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0B0F _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0B12 _ C7. 40, 08, 00000000
        nop                                             ; 0B19 _ 90
        pop     ebp                                     ; 0B1A _ 5D
        ret                                             ; 0B1B _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0B1C _ 55
        mov     ebp, esp                                ; 0B1D _ 89. E5
        sub     esp, 4                                  ; 0B1F _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0B22 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0B25 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0B28 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0B2B _ 8B. 40, 10
        test    eax, eax                                ; 0B2E _ 85. C0
        jnz     ?_037                                   ; 0B30 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0B32 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0B35 _ 8B. 40, 14
        or      eax, 01H                                ; 0B38 _ 83. C8, 01
        mov     edx, eax                                ; 0B3B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B3D _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0B40 _ 89. 50, 14
        mov     eax, 4294967295                         ; 0B43 _ B8, FFFFFFFF
        jmp     ?_039                                   ; 0B48 _ EB, 50

?_037:  mov     eax, dword [ebp+8H]                     ; 0B4A _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0B4D _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0B4F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0B52 _ 8B. 40, 04
        add     edx, eax                                ; 0B55 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0B57 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0B5B _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0B5D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0B60 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0B63 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0B66 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0B69 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0B6C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0B6F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0B72 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0B75 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0B78 _ 39. C2
        jnz     ?_038                                   ; 0B7A _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0B7C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0B7F _ C7. 40, 04, 00000000
?_038:  mov     eax, dword [ebp+8H]                     ; 0B86 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0B89 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0B8C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0B8F _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0B92 _ 89. 50, 10
        mov     eax, 0                                  ; 0B95 _ B8, 00000000
?_039:  leave                                           ; 0B9A _ C9
        ret                                             ; 0B9B _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0B9C _ 55
        mov     ebp, esp                                ; 0B9D _ 89. E5
        sub     esp, 16                                 ; 0B9F _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0BA2 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0BA5 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0BA8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0BAB _ 8B. 40, 0C
        cmp     edx, eax                                ; 0BAE _ 39. C2
        jnz     ?_040                                   ; 0BB0 _ 75, 07
        mov     eax, 4294967295                         ; 0BB2 _ B8, FFFFFFFF
        jmp     ?_042                                   ; 0BB7 _ EB, 51

?_040:  mov     eax, dword [ebp+8H]                     ; 0BB9 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0BBC _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0BBE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0BC1 _ 8B. 40, 08
        add     eax, edx                                ; 0BC4 _ 01. D0
        movzx   eax, byte [eax]                         ; 0BC6 _ 0F B6. 00
        movzx   eax, al                                 ; 0BC9 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0BCC _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0BCF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0BD2 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0BD5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0BD8 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0BDB _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0BDE _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0BE1 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0BE4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0BE7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0BEA _ 39. C2
        jnz     ?_041                                   ; 0BEC _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0BEE _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0BF1 _ C7. 40, 08, 00000000
?_041:  mov     eax, dword [ebp+8H]                     ; 0BF8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0BFB _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0BFE _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0C01 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0C04 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0C07 _ 8B. 45, FC
?_042:  leave                                           ; 0C0A _ C9
        ret                                             ; 0C0B _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0C0C _ 55
        mov     ebp, esp                                ; 0C0D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0C0F _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0C12 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0C15 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0C18 _ 8B. 40, 10
        sub     edx, eax                                ; 0C1B _ 29. C2
        mov     eax, edx                                ; 0C1D _ 89. D0
        pop     ebp                                     ; 0C1F _ 5D
        ret                                             ; 0C20 _ C3
; fifo8_status End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 0C21 _ 55
        mov     ebp, esp                                ; 0C22 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0C24 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0C27 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 0C2A _ A1, 00000008(d)
        add     eax, edx                                ; 0C2F _ 01. D0
        mov     dword [mx], eax                         ; 0C31 _ A3, 00000008(d)
        mov     eax, dword [ebp+8H]                     ; 0C36 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0C39 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 0C3C _ A1, 0000000C(d)
        add     eax, edx                                ; 0C41 _ 01. D0
        mov     dword [my], eax                         ; 0C43 _ A3, 0000000C(d)
        mov     eax, dword [mx]                         ; 0C48 _ A1, 00000008(d)
        test    eax, eax                                ; 0C4D _ 85. C0
        jns     ?_043                                   ; 0C4F _ 79, 0A
        mov     dword [mx], 0                           ; 0C51 _ C7. 05, 00000008(d), 00000000
?_043:  mov     eax, dword [my]                         ; 0C5B _ A1, 0000000C(d)
        test    eax, eax                                ; 0C60 _ 85. C0
        jns     ?_044                                   ; 0C62 _ 79, 0A
        mov     dword [my], 0                           ; 0C64 _ C7. 05, 0000000C(d), 00000000
?_044:  mov     eax, dword [xsize]                      ; 0C6E _ A1, 00000010(d)
        lea     edx, [eax-0CH]                          ; 0C73 _ 8D. 50, F4
        mov     eax, dword [mx]                         ; 0C76 _ A1, 00000008(d)
        cmp     edx, eax                                ; 0C7B _ 39. C2
        jge     ?_045                                   ; 0C7D _ 7D, 0D
        mov     eax, dword [xsize]                      ; 0C7F _ A1, 00000010(d)
        sub     eax, 12                                 ; 0C84 _ 83. E8, 0C
        mov     dword [mx], eax                         ; 0C87 _ A3, 00000008(d)
?_045:  mov     eax, dword [ysize]                      ; 0C8C _ A1, 00000014(d)
        lea     edx, [eax-13H]                          ; 0C91 _ 8D. 50, ED
        mov     eax, dword [my]                         ; 0C94 _ A1, 0000000C(d)
        cmp     edx, eax                                ; 0C99 _ 39. C2
        jge     ?_046                                   ; 0C9B _ 7D, 0D
        mov     eax, dword [ysize]                      ; 0C9D _ A1, 00000014(d)
        sub     eax, 19                                 ; 0CA2 _ 83. E8, 13
        mov     dword [my], eax                         ; 0CA5 _ A3, 0000000C(d)
?_046:  nop                                             ; 0CAA _ 90
        pop     ebp                                     ; 0CAB _ 5D
        ret                                             ; 0CAC _ C3
; computeMousePosition End of function

eraseMouse:; Function begin
        push    ebp                                     ; 0CAD _ 55
        mov     ebp, esp                                ; 0CAE _ 89. E5
        push    esi                                     ; 0CB0 _ 56
        push    ebx                                     ; 0CB1 _ 53
        mov     eax, dword [my]                         ; 0CB2 _ A1, 0000000C(d)
        lea     esi, [eax+12H]                          ; 0CB7 _ 8D. 70, 12
        mov     eax, dword [mx]                         ; 0CBA _ A1, 00000008(d)
        lea     ebx, [eax+0BH]                          ; 0CBF _ 8D. 58, 0B
        mov     ecx, dword [my]                         ; 0CC2 _ 8B. 0D, 0000000C(d)
        mov     edx, dword [mx]                         ; 0CC8 _ 8B. 15, 00000008(d)
        mov     eax, dword [xsize]                      ; 0CCE _ A1, 00000010(d)
        push    esi                                     ; 0CD3 _ 56
        push    ebx                                     ; 0CD4 _ 53
        push    ecx                                     ; 0CD5 _ 51
        push    edx                                     ; 0CD6 _ 52
        push    14                                      ; 0CD7 _ 6A, 0E
        push    eax                                     ; 0CD9 _ 50
        push    dword [ebp+8H]                          ; 0CDA _ FF. 75, 08
        call    boxfill8                                ; 0CDD _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0CE2 _ 83. C4, 1C
        nop                                             ; 0CE5 _ 90
        lea     esp, [ebp-8H]                           ; 0CE6 _ 8D. 65, F8
        pop     ebx                                     ; 0CE9 _ 5B
        pop     esi                                     ; 0CEA _ 5E
        pop     ebp                                     ; 0CEB _ 5D
        ret                                             ; 0CEC _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 0CED _ 55
        mov     ebp, esp                                ; 0CEE _ 89. E5
        mov     ecx, dword [my]                         ; 0CF0 _ 8B. 0D, 0000000C(d)
        mov     edx, dword [mx]                         ; 0CF6 _ 8B. 15, 00000008(d)
        mov     eax, dword [xsize]                      ; 0CFC _ A1, 00000010(d)
        push    12                                      ; 0D01 _ 6A, 0C
        push    mcursor                                 ; 0D03 _ 68, 00000100(d)
        push    ecx                                     ; 0D08 _ 51
        push    edx                                     ; 0D09 _ 52
        push    19                                      ; 0D0A _ 6A, 13
        push    12                                      ; 0D0C _ 6A, 0C
        push    eax                                     ; 0D0E _ 50
        push    dword [ebp+8H]                          ; 0D0F _ FF. 75, 08
        call    putblock                                ; 0D12 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0D17 _ 83. C4, 20
        nop                                             ; 0D1A _ 90
        leave                                           ; 0D1B _ C9
        ret                                             ; 0D1C _ C3
; drawMouse End of function

show_mouse_info:; Function begin
        push    ebp                                     ; 0D1D _ 55
        mov     ebp, esp                                ; 0D1E _ 89. E5
        sub     esp, 24                                 ; 0D20 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 0D23 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 0D28 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0D2B _ C6. 45, F3, 00
        call    io_sti                                  ; 0D2F _ E8, FFFFFFFC(rel)
        sub     esp, 12                                 ; 0D34 _ 83. EC, 0C
        push    mouseinfo                               ; 0D37 _ 68, 00000030(d)
        call    fifo8_get                               ; 0D3C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D41 _ 83. C4, 10
        mov     byte [ebp-0DH], al                      ; 0D44 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0D47 _ 0F B6. 45, F3
        sub     esp, 8                                  ; 0D4B _ 83. EC, 08
        push    eax                                     ; 0D4E _ 50
        push    mdec                                    ; 0D4F _ 68, 000001E4(d)
        call    mouse_decode                            ; 0D54 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D59 _ 83. C4, 10
        test    eax, eax                                ; 0D5C _ 85. C0
        jz      ?_047                                   ; 0D5E _ 74, 2C
        sub     esp, 12                                 ; 0D60 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0D63 _ FF. 75, F4
        call    eraseMouse                              ; 0D66 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D6B _ 83. C4, 10
        sub     esp, 12                                 ; 0D6E _ 83. EC, 0C
        push    mdec                                    ; 0D71 _ 68, 000001E4(d)
        call    computeMousePosition                    ; 0D76 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D7B _ 83. C4, 10
        sub     esp, 12                                 ; 0D7E _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 0D81 _ FF. 75, F4
        call    drawMouse                               ; 0D84 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0D89 _ 83. C4, 10
?_047:  nop                                             ; 0D8C _ 90
        leave                                           ; 0D8D _ C9
        ret                                             ; 0D8E _ C3
; show_mouse_info End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0D8F _ 55
        mov     ebp, esp                                ; 0D90 _ 89. E5
        sub     esp, 4                                  ; 0D92 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0D95 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0D98 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0D9B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0D9E _ 0F B6. 40, 03
        test    al, al                                  ; 0DA2 _ 84. C0
        jnz     ?_049                                   ; 0DA4 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0DA6 _ 80. 7D, FC, FA
        jnz     ?_048                                   ; 0DAA _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0DAC _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0DAF _ C6. 40, 03, 01
?_048:  mov     eax, 0                                  ; 0DB3 _ B8, 00000000
        jmp     ?_056                                   ; 0DB8 _ E9, 0000010F

?_049:  mov     eax, dword [ebp+8H]                     ; 0DBD _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0DC0 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0DC4 _ 3C, 01
        jnz     ?_051                                   ; 0DC6 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 0DC8 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 0DCC _ 25, 000000C8
        cmp     eax, 8                                  ; 0DD1 _ 83. F8, 08
        jnz     ?_050                                   ; 0DD4 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0DD6 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0DD9 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0DDD _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0DDF _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0DE2 _ C6. 40, 03, 02
?_050:  mov     eax, 0                                  ; 0DE6 _ B8, 00000000
        jmp     ?_056                                   ; 0DEB _ E9, 000000DC

?_051:  mov     eax, dword [ebp+8H]                     ; 0DF0 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0DF3 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0DF7 _ 3C, 02
        jnz     ?_052                                   ; 0DF9 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0DFB _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0DFE _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 0E02 _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E05 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0E08 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 0E0C _ B8, 00000000
        jmp     ?_056                                   ; 0E11 _ E9, 000000B6

?_052:  mov     eax, dword [ebp+8H]                     ; 0E16 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0E19 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 0E1D _ 3C, 03
        jne     ?_055                                   ; 0E1F _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 0E25 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0E28 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 0E2C _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0E2F _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0E32 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0E36 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0E39 _ 0F B6. 00
        movzx   eax, al                                 ; 0E3C _ 0F B6. C0
        and     eax, 07H                                ; 0E3F _ 83. E0, 07
        mov     edx, eax                                ; 0E42 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E44 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0E47 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0E4A _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0E4D _ 0F B6. 40, 01
        movzx   edx, al                                 ; 0E51 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0E54 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0E57 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E5A _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0E5D _ 0F B6. 40, 02
        movzx   edx, al                                 ; 0E61 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0E64 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0E67 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0E6A _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0E6D _ 0F B6. 00
        movzx   eax, al                                 ; 0E70 _ 0F B6. C0
        and     eax, 10H                                ; 0E73 _ 83. E0, 10
        test    eax, eax                                ; 0E76 _ 85. C0
        jz      ?_053                                   ; 0E78 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0E7A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0E7D _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0E80 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0E85 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E87 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0E8A _ 89. 50, 04
?_053:  mov     eax, dword [ebp+8H]                     ; 0E8D _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0E90 _ 0F B6. 00
        movzx   eax, al                                 ; 0E93 _ 0F B6. C0
        and     eax, 20H                                ; 0E96 _ 83. E0, 20
        test    eax, eax                                ; 0E99 _ 85. C0
        jz      ?_054                                   ; 0E9B _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0E9D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0EA0 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 0EA3 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0EA8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0EAA _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0EAD _ 89. 50, 08
?_054:  mov     eax, dword [ebp+8H]                     ; 0EB0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0EB3 _ 8B. 40, 08
        neg     eax                                     ; 0EB6 _ F7. D8
        mov     edx, eax                                ; 0EB8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0EBA _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0EBD _ 89. 50, 08
        mov     eax, 1                                  ; 0EC0 _ B8, 00000001
        jmp     ?_056                                   ; 0EC5 _ EB, 05

?_055:  mov     eax, 4294967295                         ; 0EC7 _ B8, FFFFFFFF
?_056:  leave                                           ; 0ECC _ C9
        ret                                             ; 0ECD _ C3
; mouse_decode End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0ECE _ 55
        mov     ebp, esp                                ; 0ECF _ 89. E5
        sub     esp, 16                                 ; 0ED1 _ 83. EC, 10
        mov     byte [str.1780], 48                     ; 0ED4 _ C6. 05, 000001F4(d), 30
        mov     byte [?_067], 88                        ; 0EDB _ C6. 05, 000001F5(d), 58
        mov     byte [?_068], 0                         ; 0EE2 _ C6. 05, 000001FE(d), 00
        mov     dword [ebp-0CH], 2                      ; 0EE9 _ C7. 45, F4, 00000002
        jmp     ?_058                                   ; 0EF0 _ EB, 0F

?_057:  mov     eax, dword [ebp-0CH]                    ; 0EF2 _ 8B. 45, F4
        add     eax, str.1780                           ; 0EF5 _ 05, 000001F4(d)
        mov     byte [eax], 48                          ; 0EFA _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0EFD _ 83. 45, F4, 01
?_058:  cmp     dword [ebp-0CH], 9                      ; 0F01 _ 83. 7D, F4, 09
        jle     ?_057                                   ; 0F05 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0F07 _ C7. 45, F8, 00000009
        jmp     ?_061                                   ; 0F0E _ EB, 3E

?_059:  mov     eax, dword [ebp+8H]                     ; 0F10 _ 8B. 45, 08
        and     eax, 0FH                                ; 0F13 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0F16 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0F19 _ 8B. 45, 08
        shr     eax, 4                                  ; 0F1C _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0F1F _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0F22 _ 83. 7D, FC, 09
        jle     ?_060                                   ; 0F26 _ 7E, 14
        mov     eax, dword [ebp-4H]                     ; 0F28 _ 8B. 45, FC
        add     eax, 55                                 ; 0F2B _ 83. C0, 37
        mov     edx, eax                                ; 0F2E _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0F30 _ 8B. 45, F8
        add     eax, str.1780                           ; 0F33 _ 05, 000001F4(d)
        mov     byte [eax], dl                          ; 0F38 _ 88. 10
        jmp     ?_061                                   ; 0F3A _ EB, 12

?_060:  mov     eax, dword [ebp-4H]                     ; 0F3C _ 8B. 45, FC
        add     eax, 48                                 ; 0F3F _ 83. C0, 30
        mov     edx, eax                                ; 0F42 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0F44 _ 8B. 45, F8
        add     eax, str.1780                           ; 0F47 _ 05, 000001F4(d)
        mov     byte [eax], dl                          ; 0F4C _ 88. 10
?_061:  cmp     dword [ebp-8H], 1                       ; 0F4E _ 83. 7D, F8, 01
        jle     ?_062                                   ; 0F52 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0F54 _ 83. 7D, 08, 00
        jnz     ?_059                                   ; 0F58 _ 75, B6
?_062:  mov     eax, str.1780                           ; 0F5A _ B8, 000001F4(d)
        leave                                           ; 0F5F _ C9
        ret                                             ; 0F60 _ C3
; intToHexStr End of function

showMemoryInfo:; Function begin
        push    ebp                                     ; 0F61 _ 55
        mov     ebp, esp                                ; 0F62 _ 89. E5
        sub     esp, 56                                 ; 0F64 _ 83. EC, 38
        mov     dword [ebp-30H], 0                      ; 0F67 _ C7. 45, D0, 00000000
        mov     dword [ebp-2CH], 0                      ; 0F6E _ C7. 45, D4, 00000000
        mov     dword [ebp-28H], 104                    ; 0F75 _ C7. 45, D8, 00000068
        mov     dword [ebp-24H], 80                     ; 0F7C _ C7. 45, DC, 00000050
        push    100                                     ; 0F83 _ 6A, 64
        push    dword [ebp+14H]                         ; 0F85 _ FF. 75, 14
        push    0                                       ; 0F88 _ 6A, 00
        push    0                                       ; 0F8A _ 6A, 00
        push    14                                      ; 0F8C _ 6A, 0E
        push    dword [ebp+14H]                         ; 0F8E _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 0F91 _ FF. 75, 0C
        call    boxfill8                                ; 0F94 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0F99 _ 83. C4, 1C
        mov     eax, dword [ebp+18H]                    ; 0F9C _ 8B. 45, 18
        movsx   eax, al                                 ; 0F9F _ 0F BE. C0
        sub     esp, 8                                  ; 0FA2 _ 83. EC, 08
        push    ?_069                                   ; 0FA5 _ 68, 00000000(d)
        push    eax                                     ; 0FAA _ 50
        push    dword [ebp-2CH]                         ; 0FAB _ FF. 75, D4
        push    dword [ebp-30H]                         ; 0FAE _ FF. 75, D0
        push    dword [ebp+14H]                         ; 0FB1 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 0FB4 _ FF. 75, 0C
        call    showString                              ; 0FB7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FBC _ 83. C4, 20
        mov     eax, dword [ebp+10H]                    ; 0FBF _ 8B. 45, 10
        sub     esp, 12                                 ; 0FC2 _ 83. EC, 0C
        push    eax                                     ; 0FC5 _ 50
        call    intToHexStr                             ; 0FC6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0FCB _ 83. C4, 10
        mov     dword [ebp-20H], eax                    ; 0FCE _ 89. 45, E0
        mov     eax, dword [ebp+18H]                    ; 0FD1 _ 8B. 45, 18
        movsx   eax, al                                 ; 0FD4 _ 0F BE. C0
        sub     esp, 8                                  ; 0FD7 _ 83. EC, 08
        push    dword [ebp-20H]                         ; 0FDA _ FF. 75, E0
        push    eax                                     ; 0FDD _ 50
        push    dword [ebp-2CH]                         ; 0FDE _ FF. 75, D4
        push    dword [ebp-28H]                         ; 0FE1 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 0FE4 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 0FE7 _ FF. 75, 0C
        call    showString                              ; 0FEA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0FEF _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 0FF2 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 0FF6 _ 8B. 45, 18
        movsx   eax, al                                 ; 0FF9 _ 0F BE. C0
        sub     esp, 8                                  ; 0FFC _ 83. EC, 08
        push    ?_070                                   ; 0FFF _ 68, 0000000A(d)
        push    eax                                     ; 1004 _ 50
        push    dword [ebp-2CH]                         ; 1005 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1008 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 100B _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 100E _ FF. 75, 0C
        call    showString                              ; 1011 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1016 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 1019 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 101C _ 8B. 00
        sub     esp, 12                                 ; 101E _ 83. EC, 0C
        push    eax                                     ; 1021 _ 50
        call    intToHexStr                             ; 1022 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1027 _ 83. C4, 10
        mov     dword [ebp-1CH], eax                    ; 102A _ 89. 45, E4
        mov     eax, dword [ebp+18H]                    ; 102D _ 8B. 45, 18
        movsx   eax, al                                 ; 1030 _ 0F BE. C0
        sub     esp, 8                                  ; 1033 _ 83. EC, 08
        push    dword [ebp-1CH]                         ; 1036 _ FF. 75, E4
        push    eax                                     ; 1039 _ 50
        push    dword [ebp-2CH]                         ; 103A _ FF. 75, D4
        push    dword [ebp-28H]                         ; 103D _ FF. 75, D8
        push    dword [ebp+14H]                         ; 1040 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1043 _ FF. 75, 0C
        call    showString                              ; 1046 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 104B _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 104E _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 1052 _ 8B. 45, 18
        movsx   eax, al                                 ; 1055 _ 0F BE. C0
        sub     esp, 8                                  ; 1058 _ 83. EC, 08
        push    ?_071                                   ; 105B _ 68, 00000016(d)
        push    eax                                     ; 1060 _ 50
        push    dword [ebp-2CH]                         ; 1061 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 1064 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 1067 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 106A _ FF. 75, 0C
        call    showString                              ; 106D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1072 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 1075 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1078 _ 8B. 40, 04
        sub     esp, 12                                 ; 107B _ 83. EC, 0C
        push    eax                                     ; 107E _ 50
        call    intToHexStr                             ; 107F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 1084 _ 83. C4, 10
        mov     dword [ebp-18H], eax                    ; 1087 _ 89. 45, E8
        mov     eax, dword [ebp+18H]                    ; 108A _ 8B. 45, 18
        movsx   eax, al                                 ; 108D _ 0F BE. C0
        sub     esp, 8                                  ; 1090 _ 83. EC, 08
        push    dword [ebp-18H]                         ; 1093 _ FF. 75, E8
        push    eax                                     ; 1096 _ 50
        push    dword [ebp-2CH]                         ; 1097 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 109A _ FF. 75, D8
        push    dword [ebp+14H]                         ; 109D _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 10A0 _ FF. 75, 0C
        call    showString                              ; 10A3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10A8 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 10AB _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 10AF _ 8B. 45, 18
        movsx   eax, al                                 ; 10B2 _ 0F BE. C0
        sub     esp, 8                                  ; 10B5 _ 83. EC, 08
        push    ?_072                                   ; 10B8 _ 68, 00000022(d)
        push    eax                                     ; 10BD _ 50
        push    dword [ebp-2CH]                         ; 10BE _ FF. 75, D4
        push    dword [ebp-30H]                         ; 10C1 _ FF. 75, D0
        push    dword [ebp+14H]                         ; 10C4 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 10C7 _ FF. 75, 0C
        call    showString                              ; 10CA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 10CF _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 10D2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 10D5 _ 8B. 40, 08
        sub     esp, 12                                 ; 10D8 _ 83. EC, 0C
        push    eax                                     ; 10DB _ 50
        call    intToHexStr                             ; 10DC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 10E1 _ 83. C4, 10
        mov     dword [ebp-14H], eax                    ; 10E4 _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 10E7 _ 8B. 45, 18
        movsx   eax, al                                 ; 10EA _ 0F BE. C0
        sub     esp, 8                                  ; 10ED _ 83. EC, 08
        push    dword [ebp-14H]                         ; 10F0 _ FF. 75, EC
        push    eax                                     ; 10F3 _ 50
        push    dword [ebp-2CH]                         ; 10F4 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 10F7 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 10FA _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 10FD _ FF. 75, 0C
        call    showString                              ; 1100 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1105 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1108 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 110C _ 8B. 45, 18
        movsx   eax, al                                 ; 110F _ 0F BE. C0
        sub     esp, 8                                  ; 1112 _ 83. EC, 08
        push    ?_073                                   ; 1115 _ 68, 0000002E(d)
        push    eax                                     ; 111A _ 50
        push    dword [ebp-2CH]                         ; 111B _ FF. 75, D4
        push    dword [ebp-30H]                         ; 111E _ FF. 75, D0
        push    dword [ebp+14H]                         ; 1121 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1124 _ FF. 75, 0C
        call    showString                              ; 1127 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 112C _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 112F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1132 _ 8B. 40, 0C
        sub     esp, 12                                 ; 1135 _ 83. EC, 0C
        push    eax                                     ; 1138 _ 50
        call    intToHexStr                             ; 1139 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 113E _ 83. C4, 10
        mov     dword [ebp-10H], eax                    ; 1141 _ 89. 45, F0
        mov     eax, dword [ebp+18H]                    ; 1144 _ 8B. 45, 18
        movsx   eax, al                                 ; 1147 _ 0F BE. C0
        sub     esp, 8                                  ; 114A _ 83. EC, 08
        push    dword [ebp-10H]                         ; 114D _ FF. 75, F0
        push    eax                                     ; 1150 _ 50
        push    dword [ebp-2CH]                         ; 1151 _ FF. 75, D4
        push    dword [ebp-28H]                         ; 1154 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 1157 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 115A _ FF. 75, 0C
        call    showString                              ; 115D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1162 _ 83. C4, 20
        add     dword [ebp-2CH], 16                     ; 1165 _ 83. 45, D4, 10
        mov     eax, dword [ebp+18H]                    ; 1169 _ 8B. 45, 18
        movsx   eax, al                                 ; 116C _ 0F BE. C0
        sub     esp, 8                                  ; 116F _ 83. EC, 08
        push    ?_074                                   ; 1172 _ 68, 0000003B(d)
        push    eax                                     ; 1177 _ 50
        push    dword [ebp-2CH]                         ; 1178 _ FF. 75, D4
        push    dword [ebp-30H]                         ; 117B _ FF. 75, D0
        push    dword [ebp+14H]                         ; 117E _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 1181 _ FF. 75, 0C
        call    showString                              ; 1184 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 1189 _ 83. C4, 20
        mov     eax, dword [ebp+8H]                     ; 118C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 118F _ 8B. 40, 10
        sub     esp, 12                                 ; 1192 _ 83. EC, 0C
        push    eax                                     ; 1195 _ 50
        call    intToHexStr                             ; 1196 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 119B _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 119E _ 89. 45, F4
        mov     eax, dword [ebp+18H]                    ; 11A1 _ 8B. 45, 18
        movsx   eax, al                                 ; 11A4 _ 0F BE. C0
        sub     esp, 8                                  ; 11A7 _ 83. EC, 08
        push    dword [ebp-0CH]                         ; 11AA _ FF. 75, F4
        push    eax                                     ; 11AD _ 50
        push    dword [ebp-2CH]                         ; 11AE _ FF. 75, D4
        push    dword [ebp-28H]                         ; 11B1 _ FF. 75, D8
        push    dword [ebp+14H]                         ; 11B4 _ FF. 75, 14
        push    dword [ebp+0CH]                         ; 11B7 _ FF. 75, 0C
        call    showString                              ; 11BA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 11BF _ 83. C4, 20
        nop                                             ; 11C2 _ 90
        leave                                           ; 11C3 _ C9
        ret                                             ; 11C4 _ C3
; showMemoryInfo End of function


;ION .data   align=32 noexecute                      ; ;ion number 2, data

keyval:                                                 ; byte
        db 30H, 58H                                     ; 0000 _ 0X

?_063:  db 00H                                          ; 0002 _ .

?_064:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0003 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000B _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

table_rgb.1643:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1688:                                            ; byte
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


;ION .bss    align=32 noexecute                      ; ;ion number 3, bss

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

str.1780:                                               ; byte
        resb    1                                       ; 01F4

?_067:  resb    9                                       ; 01F5

?_068:  resb    1                                       ; 01FE


;ION .rodata align=1 noexecute                       ; ;ion number 4, const

?_069:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0000 _ page is:
        db 20H, 00H                                     ; 0008 _  .

?_070:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 000A _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0012 _ L: .

?_071:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0016 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 001E _ H: .

?_072:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0022 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 002A _ w: .

?_073:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 002E _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0036 _ gh: .

?_074:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 003B _ type: .


