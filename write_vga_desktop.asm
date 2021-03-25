; Disassembly of file: write_vga_desktop.o
; Wed Mar 24 20:55:11 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386




CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 20                                 ; 0004 _ 83. EC, 14
        sub     esp, 12                                 ; 0007 _ 83. EC, 0C
        push    bootInfo                                ; 000A _ 68, 00000000(d)
        call    initBootInfo                            ; 000F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0014 _ 83. C4, 10
        mov     eax, dword [bootInfo]                   ; 0017 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 001C _ 89. 45, EC
        movzx   eax, word [?_032]                       ; 001F _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0026 _ 98
        mov     dword [ebp-10H], eax                    ; 0027 _ 89. 45, F0
        movzx   eax, word [?_033]                       ; 002A _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0031 _ 98
        mov     dword [ebp-0CH], eax                    ; 0032 _ 89. 45, F4
        call    init_palette                            ; 0035 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 003A _ 8B. 45, F4
        lea     edx, [eax-1DH]                          ; 003D _ 8D. 50, E3
        mov     eax, dword [ebp-10H]                    ; 0040 _ 8B. 45, F0
        sub     eax, 1                                  ; 0043 _ 83. E8, 01
        sub     esp, 4                                  ; 0046 _ 83. EC, 04
        push    edx                                     ; 0049 _ 52
        push    eax                                     ; 004A _ 50
        push    0                                       ; 004B _ 6A, 00
        push    0                                       ; 004D _ 6A, 00
        push    14                                      ; 004F _ 6A, 0E
        push    dword [ebp-10H]                         ; 0051 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0054 _ FF. 75, EC
        call    boxfill8                                ; 0057 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 005C _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 005F _ 8B. 45, F4
        lea     ecx, [eax-1CH]                          ; 0062 _ 8D. 48, E4
        mov     eax, dword [ebp-10H]                    ; 0065 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 0068 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 006B _ 8B. 45, F4
        sub     eax, 28                                 ; 006E _ 83. E8, 1C
        sub     esp, 4                                  ; 0071 _ 83. EC, 04
        push    ecx                                     ; 0074 _ 51
        push    edx                                     ; 0075 _ 52
        push    eax                                     ; 0076 _ 50
        push    0                                       ; 0077 _ 6A, 00
        push    8                                       ; 0079 _ 6A, 08
        push    dword [ebp-10H]                         ; 007B _ FF. 75, F0
        push    dword [ebp-14H]                         ; 007E _ FF. 75, EC
        call    boxfill8                                ; 0081 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0086 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0089 _ 8B. 45, F4
        lea     ecx, [eax-1BH]                          ; 008C _ 8D. 48, E5
        mov     eax, dword [ebp-10H]                    ; 008F _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 0092 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 0095 _ 8B. 45, F4
        sub     eax, 27                                 ; 0098 _ 83. E8, 1B
        sub     esp, 4                                  ; 009B _ 83. EC, 04
        push    ecx                                     ; 009E _ 51
        push    edx                                     ; 009F _ 52
        push    eax                                     ; 00A0 _ 50
        push    0                                       ; 00A1 _ 6A, 00
        push    7                                       ; 00A3 _ 6A, 07
        push    dword [ebp-10H]                         ; 00A5 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 00A8 _ FF. 75, EC
        call    boxfill8                                ; 00AB _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00B0 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 00B3 _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 00B6 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 00B9 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 00BC _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 00BF _ 8B. 45, F4
        sub     eax, 26                                 ; 00C2 _ 83. E8, 1A
        sub     esp, 4                                  ; 00C5 _ 83. EC, 04
        push    ecx                                     ; 00C8 _ 51
        push    edx                                     ; 00C9 _ 52
        push    eax                                     ; 00CA _ 50
        push    0                                       ; 00CB _ 6A, 00
        push    8                                       ; 00CD _ 6A, 08
        push    dword [ebp-10H]                         ; 00CF _ FF. 75, F0
        push    dword [ebp-14H]                         ; 00D2 _ FF. 75, EC
        call    boxfill8                                ; 00D5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00DA _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 00DD _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 00E0 _ 8D. 50, E8
        mov     eax, dword [ebp-0CH]                    ; 00E3 _ 8B. 45, F4
        sub     eax, 24                                 ; 00E6 _ 83. E8, 18
        sub     esp, 4                                  ; 00E9 _ 83. EC, 04
        push    edx                                     ; 00EC _ 52
        push    59                                      ; 00ED _ 6A, 3B
        push    eax                                     ; 00EF _ 50
        push    3                                       ; 00F0 _ 6A, 03
        push    7                                       ; 00F2 _ 6A, 07
        push    dword [ebp-10H]                         ; 00F4 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 00F7 _ FF. 75, EC
        call    boxfill8                                ; 00FA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00FF _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0102 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 0105 _ 8D. 50, FC
        mov     eax, dword [ebp-0CH]                    ; 0108 _ 8B. 45, F4
        sub     eax, 24                                 ; 010B _ 83. E8, 18
        sub     esp, 4                                  ; 010E _ 83. EC, 04
        push    edx                                     ; 0111 _ 52
        push    2                                       ; 0112 _ 6A, 02
        push    eax                                     ; 0114 _ 50
        push    2                                       ; 0115 _ 6A, 02
        push    7                                       ; 0117 _ 6A, 07
        push    dword [ebp-10H]                         ; 0119 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 011C _ FF. 75, EC
        call    boxfill8                                ; 011F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0124 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0127 _ 8B. 45, F4
        lea     edx, [eax-4H]                           ; 012A _ 8D. 50, FC
        mov     eax, dword [ebp-0CH]                    ; 012D _ 8B. 45, F4
        sub     eax, 4                                  ; 0130 _ 83. E8, 04
        sub     esp, 4                                  ; 0133 _ 83. EC, 04
        push    edx                                     ; 0136 _ 52
        push    59                                      ; 0137 _ 6A, 3B
        push    eax                                     ; 0139 _ 50
        push    3                                       ; 013A _ 6A, 03
        push    15                                      ; 013C _ 6A, 0F
        push    dword [ebp-10H]                         ; 013E _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0141 _ FF. 75, EC
        call    boxfill8                                ; 0144 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0149 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 014C _ 8B. 45, F4
        lea     edx, [eax-5H]                           ; 014F _ 8D. 50, FB
        mov     eax, dword [ebp-0CH]                    ; 0152 _ 8B. 45, F4
        sub     eax, 23                                 ; 0155 _ 83. E8, 17
        sub     esp, 4                                  ; 0158 _ 83. EC, 04
        push    edx                                     ; 015B _ 52
        push    59                                      ; 015C _ 6A, 3B
        push    eax                                     ; 015E _ 50
        push    59                                      ; 015F _ 6A, 3B
        push    15                                      ; 0161 _ 6A, 0F
        push    dword [ebp-10H]                         ; 0163 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0166 _ FF. 75, EC
        call    boxfill8                                ; 0169 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 016E _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0171 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 0174 _ 8D. 50, FD
        mov     eax, dword [ebp-0CH]                    ; 0177 _ 8B. 45, F4
        sub     eax, 3                                  ; 017A _ 83. E8, 03
        sub     esp, 4                                  ; 017D _ 83. EC, 04
        push    edx                                     ; 0180 _ 52
        push    59                                      ; 0181 _ 6A, 3B
        push    eax                                     ; 0183 _ 50
        push    2                                       ; 0184 _ 6A, 02
        push    0                                       ; 0186 _ 6A, 00
        push    dword [ebp-10H]                         ; 0188 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 018B _ FF. 75, EC
        call    boxfill8                                ; 018E _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0193 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0196 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 0199 _ 8D. 50, FD
        mov     eax, dword [ebp-0CH]                    ; 019C _ 8B. 45, F4
        sub     eax, 24                                 ; 019F _ 83. E8, 18
        sub     esp, 4                                  ; 01A2 _ 83. EC, 04
        push    edx                                     ; 01A5 _ 52
        push    60                                      ; 01A6 _ 6A, 3C
        push    eax                                     ; 01A8 _ 50
        push    60                                      ; 01A9 _ 6A, 3C
        push    0                                       ; 01AB _ 6A, 00
        push    dword [ebp-10H]                         ; 01AD _ FF. 75, F0
        push    dword [ebp-14H]                         ; 01B0 _ FF. 75, EC
        call    boxfill8                                ; 01B3 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01B8 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 01BB _ 8B. 45, F4
        lea     ebx, [eax-18H]                          ; 01BE _ 8D. 58, E8
        mov     eax, dword [ebp-10H]                    ; 01C1 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 01C4 _ 8D. 48, FC
        mov     eax, dword [ebp-0CH]                    ; 01C7 _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 01CA _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 01CD _ 8B. 45, F0
        sub     eax, 47                                 ; 01D0 _ 83. E8, 2F
        sub     esp, 4                                  ; 01D3 _ 83. EC, 04
        push    ebx                                     ; 01D6 _ 53
        push    ecx                                     ; 01D7 _ 51
        push    edx                                     ; 01D8 _ 52
        push    eax                                     ; 01D9 _ 50
        push    15                                      ; 01DA _ 6A, 0F
        push    dword [ebp-10H]                         ; 01DC _ FF. 75, F0
        push    dword [ebp-14H]                         ; 01DF _ FF. 75, EC
        call    boxfill8                                ; 01E2 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01E7 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 01EA _ 8B. 45, F4
        lea     ebx, [eax-4H]                           ; 01ED _ 8D. 58, FC
        mov     eax, dword [ebp-10H]                    ; 01F0 _ 8B. 45, F0
        lea     ecx, [eax-2FH]                          ; 01F3 _ 8D. 48, D1
        mov     eax, dword [ebp-0CH]                    ; 01F6 _ 8B. 45, F4
        lea     edx, [eax-17H]                          ; 01F9 _ 8D. 50, E9
        mov     eax, dword [ebp-10H]                    ; 01FC _ 8B. 45, F0
        sub     eax, 47                                 ; 01FF _ 83. E8, 2F
        sub     esp, 4                                  ; 0202 _ 83. EC, 04
        push    ebx                                     ; 0205 _ 53
        push    ecx                                     ; 0206 _ 51
        push    edx                                     ; 0207 _ 52
        push    eax                                     ; 0208 _ 50
        push    15                                      ; 0209 _ 6A, 0F
        push    dword [ebp-10H]                         ; 020B _ FF. 75, F0
        push    dword [ebp-14H]                         ; 020E _ FF. 75, EC
        call    boxfill8                                ; 0211 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0216 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0219 _ 8B. 45, F4
        lea     ebx, [eax-3H]                           ; 021C _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 021F _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 0222 _ 8D. 48, FC
        mov     eax, dword [ebp-0CH]                    ; 0225 _ 8B. 45, F4
        lea     edx, [eax-3H]                           ; 0228 _ 8D. 50, FD
        mov     eax, dword [ebp-10H]                    ; 022B _ 8B. 45, F0
        sub     eax, 47                                 ; 022E _ 83. E8, 2F
        sub     esp, 4                                  ; 0231 _ 83. EC, 04
        push    ebx                                     ; 0234 _ 53
        push    ecx                                     ; 0235 _ 51
        push    edx                                     ; 0236 _ 52
        push    eax                                     ; 0237 _ 50
        push    7                                       ; 0238 _ 6A, 07
        push    dword [ebp-10H]                         ; 023A _ FF. 75, F0
        push    dword [ebp-14H]                         ; 023D _ FF. 75, EC
        call    boxfill8                                ; 0240 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0245 _ 83. C4, 20
        mov     eax, dword [ebp-0CH]                    ; 0248 _ 8B. 45, F4
        lea     ebx, [eax-3H]                           ; 024B _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 024E _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 0251 _ 8D. 48, FD
        mov     eax, dword [ebp-0CH]                    ; 0254 _ 8B. 45, F4
        lea     edx, [eax-18H]                          ; 0257 _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 025A _ 8B. 45, F0
        sub     eax, 3                                  ; 025D _ 83. E8, 03
        sub     esp, 4                                  ; 0260 _ 83. EC, 04
        push    ebx                                     ; 0263 _ 53
        push    ecx                                     ; 0264 _ 51
        push    edx                                     ; 0265 _ 52
        push    eax                                     ; 0266 _ 50
        push    7                                       ; 0267 _ 6A, 07
        push    dword [ebp-10H]                         ; 0269 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 026C _ FF. 75, EC
        call    boxfill8                                ; 026F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0274 _ 83. C4, 20
        sub     esp, 8                                  ; 0277 _ 83. EC, 08
        push    ?_034                                   ; 027A _ 68, 00000000(d)
        push    7                                       ; 027F _ 6A, 07
        push    8                                       ; 0281 _ 6A, 08
        push    72                                      ; 0283 _ 6A, 48
        push    dword [ebp-10H]                         ; 0285 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0288 _ FF. 75, EC
        call    showString                              ; 028B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0290 _ 83. C4, 20
        sub     esp, 8                                  ; 0293 _ 83. EC, 08
        push    14                                      ; 0296 _ 6A, 0E
        push    mcursor                                 ; 0298 _ 68, 00000020(d)
        call    init_mouse_cursor                       ; 029D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02A2 _ 83. C4, 10
        push    12                                      ; 02A5 _ 6A, 0C
        push    mcursor                                 ; 02A7 _ 68, 00000020(d)
        push    80                                      ; 02AC _ 6A, 50
        push    80                                      ; 02AE _ 6A, 50
        push    19                                      ; 02B0 _ 6A, 13
        push    12                                      ; 02B2 _ 6A, 0C
        push    dword [ebp-10H]                         ; 02B4 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 02B7 _ FF. 75, EC
        call    putblock                                ; 02BA _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02BF _ 83. C4, 20
?_001:  call    io_hlt                                  ; 02C2 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 02C7 _ EB, F9
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 02C9 _ 55
        mov     ebp, esp                                ; 02CA _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 02CC _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 02CF _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 02D5 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 02D8 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 02DE _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 02E1 _ 66: C7. 40, 06, 00C8
        nop                                             ; 02E7 _ 90
        pop     ebp                                     ; 02E8 _ 5D
        ret                                             ; 02E9 _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 02EA _ 55
        mov     ebp, esp                                ; 02EB _ 89. E5
        sub     esp, 24                                 ; 02ED _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 02F0 _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 02F3 _ 88. 45, F4
        jmp     ?_003                                   ; 02F6 _ EB, 37

?_002:  mov     eax, dword [ebp+1CH]                    ; 02F8 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 02FB _ 0F B6. 00
        movzx   eax, al                                 ; 02FE _ 0F B6. C0
        shl     eax, 4                                  ; 0301 _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 0304 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 030A _ 0F BE. 45, F4
        sub     esp, 8                                  ; 030E _ 83. EC, 08
        push    edx                                     ; 0311 _ 52
        push    eax                                     ; 0312 _ 50
        push    dword [ebp+14H]                         ; 0313 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0316 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 0319 _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 031C _ FF. 75, 08
        call    showFont8                               ; 031F _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0324 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0327 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 032B _ 83. 45, 1C, 01
?_003:  mov     eax, dword [ebp+1CH]                    ; 032F _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0332 _ 0F B6. 00
        test    al, al                                  ; 0335 _ 84. C0
        jnz     ?_002                                   ; 0337 _ 75, BF
        nop                                             ; 0339 _ 90
        leave                                           ; 033A _ C9
        ret                                             ; 033B _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 033C _ 55
        mov     ebp, esp                                ; 033D _ 89. E5
        sub     esp, 8                                  ; 033F _ 83. EC, 08
        sub     esp, 4                                  ; 0342 _ 83. EC, 04
        push    table_rgb.1564                          ; 0345 _ 68, 00000000(d)
        push    15                                      ; 034A _ 6A, 0F
        push    0                                       ; 034C _ 6A, 00
        call    set_palette                             ; 034E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0353 _ 83. C4, 10
        nop                                             ; 0356 _ 90
        leave                                           ; 0357 _ C9
        ret                                             ; 0358 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0359 _ 55
        mov     ebp, esp                                ; 035A _ 89. E5
        sub     esp, 24                                 ; 035C _ 83. EC, 18
        call    io_load_eflags                          ; 035F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0364 _ 89. 45, F4
        call    io_cli                                  ; 0367 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 036C _ 83. EC, 08
        push    dword [ebp+8H]                          ; 036F _ FF. 75, 08
        push    968                                     ; 0372 _ 68, 000003C8
        call    io_out8                                 ; 0377 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 037C _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 037F _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0382 _ 89. 45, F0
        jmp     ?_005                                   ; 0385 _ EB, 65

?_004:  mov     eax, dword [ebp+10H]                    ; 0387 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 038A _ 0F B6. 00
        shr     al, 2                                   ; 038D _ C0. E8, 02
        movzx   eax, al                                 ; 0390 _ 0F B6. C0
        sub     esp, 8                                  ; 0393 _ 83. EC, 08
        push    eax                                     ; 0396 _ 50
        push    969                                     ; 0397 _ 68, 000003C9
        call    io_out8                                 ; 039C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03A1 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 03A4 _ 8B. 45, 10
        add     eax, 1                                  ; 03A7 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 03AA _ 0F B6. 00
        shr     al, 2                                   ; 03AD _ C0. E8, 02
        movzx   eax, al                                 ; 03B0 _ 0F B6. C0
        sub     esp, 8                                  ; 03B3 _ 83. EC, 08
        push    eax                                     ; 03B6 _ 50
        push    969                                     ; 03B7 _ 68, 000003C9
        call    io_out8                                 ; 03BC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03C1 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 03C4 _ 8B. 45, 10
        add     eax, 2                                  ; 03C7 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 03CA _ 0F B6. 00
        shr     al, 2                                   ; 03CD _ C0. E8, 02
        movzx   eax, al                                 ; 03D0 _ 0F B6. C0
        sub     esp, 8                                  ; 03D3 _ 83. EC, 08
        push    eax                                     ; 03D6 _ 50
        push    969                                     ; 03D7 _ 68, 000003C9
        call    io_out8                                 ; 03DC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03E1 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 03E4 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 03E8 _ 83. 45, F0, 01
?_005:  mov     eax, dword [ebp-10H]                    ; 03EC _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 03EF _ 3B. 45, 0C
        jle     ?_004                                   ; 03F2 _ 7E, 93
        sub     esp, 12                                 ; 03F4 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 03F7 _ FF. 75, F4
        call    io_store_eflags                         ; 03FA _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03FF _ 83. C4, 10
        nop                                             ; 0402 _ 90
        leave                                           ; 0403 _ C9
        ret                                             ; 0404 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0405 _ 55
        mov     ebp, esp                                ; 0406 _ 89. E5
        sub     esp, 20                                 ; 0408 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 040B _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 040E _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0411 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0414 _ 89. 45, FC
        jmp     ?_009                                   ; 0417 _ EB, 33

?_006:  mov     eax, dword [ebp+14H]                    ; 0419 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 041C _ 89. 45, F8
        jmp     ?_008                                   ; 041F _ EB, 1F

?_007:  mov     eax, dword [ebp-4H]                     ; 0421 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0424 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0428 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 042A _ 8B. 45, F8
        add     eax, edx                                ; 042D _ 01. D0
        mov     edx, eax                                ; 042F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0431 _ 8B. 45, 08
        add     edx, eax                                ; 0434 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0436 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 043A _ 88. 02
        add     dword [ebp-8H], 1                       ; 043C _ 83. 45, F8, 01
?_008:  mov     eax, dword [ebp-8H]                     ; 0440 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0443 _ 3B. 45, 1C
        jle     ?_007                                   ; 0446 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0448 _ 83. 45, FC, 01
?_009:  mov     eax, dword [ebp-4H]                     ; 044C _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 044F _ 3B. 45, 20
        jle     ?_006                                   ; 0452 _ 7E, C5
        nop                                             ; 0454 _ 90
        leave                                           ; 0455 _ C9
        ret                                             ; 0456 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0457 _ 55
        mov     ebp, esp                                ; 0458 _ 89. E5
        sub     esp, 20                                 ; 045A _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 045D _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0460 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0463 _ C7. 45, FC, 00000000
        jmp     ?_019                                   ; 046A _ E9, 0000016C

?_010:  mov     edx, dword [ebp-4H]                     ; 046F _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0472 _ 8B. 45, 1C
        add     eax, edx                                ; 0475 _ 01. D0
        movzx   eax, byte [eax]                         ; 0477 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 047A _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 047D _ 80. 7D, FB, 00
        jns     ?_011                                   ; 0481 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0483 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0486 _ 8B. 45, FC
        add     eax, edx                                ; 0489 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 048B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 048F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0491 _ 8B. 45, 10
        add     eax, edx                                ; 0494 _ 01. D0
        mov     edx, eax                                ; 0496 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0498 _ 8B. 45, 08
        add     edx, eax                                ; 049B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 049D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04A1 _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 04A3 _ 0F BE. 45, FB
        and     eax, 40H                                ; 04A7 _ 83. E0, 40
        test    eax, eax                                ; 04AA _ 85. C0
        jz      ?_012                                   ; 04AC _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04AE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04B1 _ 8B. 45, FC
        add     eax, edx                                ; 04B4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04B6 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04BA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04BC _ 8B. 45, 10
        add     eax, edx                                ; 04BF _ 01. D0
        lea     edx, [eax+1H]                           ; 04C1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 04C4 _ 8B. 45, 08
        add     edx, eax                                ; 04C7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04C9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04CD _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 04CF _ 0F BE. 45, FB
        and     eax, 20H                                ; 04D3 _ 83. E0, 20
        test    eax, eax                                ; 04D6 _ 85. C0
        jz      ?_013                                   ; 04D8 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04DA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04DD _ 8B. 45, FC
        add     eax, edx                                ; 04E0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04E2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04E6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04E8 _ 8B. 45, 10
        add     eax, edx                                ; 04EB _ 01. D0
        lea     edx, [eax+2H]                           ; 04ED _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 04F0 _ 8B. 45, 08
        add     edx, eax                                ; 04F3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04F5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04F9 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 04FB _ 0F BE. 45, FB
        and     eax, 10H                                ; 04FF _ 83. E0, 10
        test    eax, eax                                ; 0502 _ 85. C0
        jz      ?_014                                   ; 0504 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0506 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0509 _ 8B. 45, FC
        add     eax, edx                                ; 050C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 050E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0512 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0514 _ 8B. 45, 10
        add     eax, edx                                ; 0517 _ 01. D0
        lea     edx, [eax+3H]                           ; 0519 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 051C _ 8B. 45, 08
        add     edx, eax                                ; 051F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0521 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0525 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0527 _ 0F BE. 45, FB
        and     eax, 08H                                ; 052B _ 83. E0, 08
        test    eax, eax                                ; 052E _ 85. C0
        jz      ?_015                                   ; 0530 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0532 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0535 _ 8B. 45, FC
        add     eax, edx                                ; 0538 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 053A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 053E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0540 _ 8B. 45, 10
        add     eax, edx                                ; 0543 _ 01. D0
        lea     edx, [eax+4H]                           ; 0545 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0548 _ 8B. 45, 08
        add     edx, eax                                ; 054B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 054D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0551 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 0553 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0557 _ 83. E0, 04
        test    eax, eax                                ; 055A _ 85. C0
        jz      ?_016                                   ; 055C _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 055E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0561 _ 8B. 45, FC
        add     eax, edx                                ; 0564 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0566 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 056A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 056C _ 8B. 45, 10
        add     eax, edx                                ; 056F _ 01. D0
        lea     edx, [eax+5H]                           ; 0571 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0574 _ 8B. 45, 08
        add     edx, eax                                ; 0577 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0579 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 057D _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 057F _ 0F BE. 45, FB
        and     eax, 02H                                ; 0583 _ 83. E0, 02
        test    eax, eax                                ; 0586 _ 85. C0
        jz      ?_017                                   ; 0588 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 058A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 058D _ 8B. 45, FC
        add     eax, edx                                ; 0590 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0592 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0596 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0598 _ 8B. 45, 10
        add     eax, edx                                ; 059B _ 01. D0
        lea     edx, [eax+6H]                           ; 059D _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 05A0 _ 8B. 45, 08
        add     edx, eax                                ; 05A3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05A5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05A9 _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 05AB _ 0F BE. 45, FB
        and     eax, 01H                                ; 05AF _ 83. E0, 01
        test    eax, eax                                ; 05B2 _ 85. C0
        jz      ?_018                                   ; 05B4 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05B6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05B9 _ 8B. 45, FC
        add     eax, edx                                ; 05BC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05BE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05C2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05C4 _ 8B. 45, 10
        add     eax, edx                                ; 05C7 _ 01. D0
        lea     edx, [eax+7H]                           ; 05C9 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 05CC _ 8B. 45, 08
        add     edx, eax                                ; 05CF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05D1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05D5 _ 88. 02
?_018:  add     dword [ebp-4H], 1                       ; 05D7 _ 83. 45, FC, 01
?_019:  cmp     dword [ebp-4H], 15                      ; 05DB _ 83. 7D, FC, 0F
        jle     ?_010                                   ; 05DF _ 0F 8E, FFFFFE8A
        nop                                             ; 05E5 _ 90
        leave                                           ; 05E6 _ C9
        ret                                             ; 05E7 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 05E8 _ 55
        mov     ebp, esp                                ; 05E9 _ 89. E5
        sub     esp, 20                                 ; 05EB _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 05EE _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 05F1 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 05F4 _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 05FB _ E9, 000000CF

?_020:  mov     dword [ebp-8H], 0                       ; 0600 _ C7. 45, F8, 00000000
        jmp     ?_025                                   ; 0607 _ E9, 000000B5

?_021:  mov     edx, dword [ebp-4H]                     ; 060C _ 8B. 55, FC
        mov     eax, edx                                ; 060F _ 89. D0
        add     eax, eax                                ; 0611 _ 01. C0
        add     eax, edx                                ; 0613 _ 01. D0
        shl     eax, 2                                  ; 0615 _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 0618 _ 8B. 55, F8
        add     eax, edx                                ; 061B _ 01. D0
        add     eax, cursor.1609                        ; 061D _ 05, 00000040(d)
        movzx   eax, byte [eax]                         ; 0622 _ 0F B6. 00
        cmp     al, 42                                  ; 0625 _ 3C, 2A
        jnz     ?_022                                   ; 0627 _ 75, 1D
        mov     edx, dword [ebp-4H]                     ; 0629 _ 8B. 55, FC
        mov     eax, edx                                ; 062C _ 89. D0
        add     eax, eax                                ; 062E _ 01. C0
        add     eax, edx                                ; 0630 _ 01. D0
        shl     eax, 2                                  ; 0632 _ C1. E0, 02
        mov     edx, eax                                ; 0635 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0637 _ 8B. 45, F8
        add     eax, edx                                ; 063A _ 01. D0
        mov     edx, eax                                ; 063C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 063E _ 8B. 45, 08
        add     eax, edx                                ; 0641 _ 01. D0
        mov     byte [eax], 0                           ; 0643 _ C6. 00, 00
?_022:  mov     edx, dword [ebp-4H]                     ; 0646 _ 8B. 55, FC
        mov     eax, edx                                ; 0649 _ 89. D0
        add     eax, eax                                ; 064B _ 01. C0
        add     eax, edx                                ; 064D _ 01. D0
        shl     eax, 2                                  ; 064F _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 0652 _ 8B. 55, F8
        add     eax, edx                                ; 0655 _ 01. D0
        add     eax, cursor.1609                        ; 0657 _ 05, 00000040(d)
        movzx   eax, byte [eax]                         ; 065C _ 0F B6. 00
        cmp     al, 79                                  ; 065F _ 3C, 4F
        jnz     ?_023                                   ; 0661 _ 75, 1D
        mov     edx, dword [ebp-4H]                     ; 0663 _ 8B. 55, FC
        mov     eax, edx                                ; 0666 _ 89. D0
        add     eax, eax                                ; 0668 _ 01. C0
        add     eax, edx                                ; 066A _ 01. D0
        shl     eax, 2                                  ; 066C _ C1. E0, 02
        mov     edx, eax                                ; 066F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0671 _ 8B. 45, F8
        add     eax, edx                                ; 0674 _ 01. D0
        mov     edx, eax                                ; 0676 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0678 _ 8B. 45, 08
        add     eax, edx                                ; 067B _ 01. D0
        mov     byte [eax], 7                           ; 067D _ C6. 00, 07
?_023:  mov     edx, dword [ebp-4H]                     ; 0680 _ 8B. 55, FC
        mov     eax, edx                                ; 0683 _ 89. D0
        add     eax, eax                                ; 0685 _ 01. C0
        add     eax, edx                                ; 0687 _ 01. D0
        shl     eax, 2                                  ; 0689 _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 068C _ 8B. 55, F8
        add     eax, edx                                ; 068F _ 01. D0
        add     eax, cursor.1609                        ; 0691 _ 05, 00000040(d)
        movzx   eax, byte [eax]                         ; 0696 _ 0F B6. 00
        cmp     al, 46                                  ; 0699 _ 3C, 2E
        jnz     ?_024                                   ; 069B _ 75, 20
        mov     edx, dword [ebp-4H]                     ; 069D _ 8B. 55, FC
        mov     eax, edx                                ; 06A0 _ 89. D0
        add     eax, eax                                ; 06A2 _ 01. C0
        add     eax, edx                                ; 06A4 _ 01. D0
        shl     eax, 2                                  ; 06A6 _ C1. E0, 02
        mov     edx, eax                                ; 06A9 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 06AB _ 8B. 45, F8
        add     eax, edx                                ; 06AE _ 01. D0
        mov     edx, eax                                ; 06B0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 06B2 _ 8B. 45, 08
        add     edx, eax                                ; 06B5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06B7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06BB _ 88. 02
?_024:  add     dword [ebp-8H], 1                       ; 06BD _ 83. 45, F8, 01
?_025:  cmp     dword [ebp-8H], 11                      ; 06C1 _ 83. 7D, F8, 0B
        jle     ?_021                                   ; 06C5 _ 0F 8E, FFFFFF41
        add     dword [ebp-4H], 1                       ; 06CB _ 83. 45, FC, 01
?_026:  cmp     dword [ebp-4H], 18                      ; 06CF _ 83. 7D, FC, 12
        jle     ?_020                                   ; 06D3 _ 0F 8E, FFFFFF27
        nop                                             ; 06D9 _ 90
        leave                                           ; 06DA _ C9
        ret                                             ; 06DB _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 06DC _ 55
        mov     ebp, esp                                ; 06DD _ 89. E5
        sub     esp, 16                                 ; 06DF _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 06E2 _ C7. 45, FC, 00000000
        jmp     ?_030                                   ; 06E9 _ EB, 50

?_027:  mov     dword [ebp-8H], 0                       ; 06EB _ C7. 45, F8, 00000000
        jmp     ?_029                                   ; 06F2 _ EB, 3B

?_028:  mov     edx, dword [ebp+1CH]                    ; 06F4 _ 8B. 55, 1C
        mov     eax, dword [ebp-4H]                     ; 06F7 _ 8B. 45, FC
        add     eax, edx                                ; 06FA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06FC _ 0F AF. 45, 0C
        mov     ecx, dword [ebp+18H]                    ; 0700 _ 8B. 4D, 18
        mov     edx, dword [ebp-8H]                     ; 0703 _ 8B. 55, F8
        add     edx, ecx                                ; 0706 _ 01. CA
        add     eax, edx                                ; 0708 _ 01. D0
        mov     edx, eax                                ; 070A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 070C _ 8B. 45, 08
        add     edx, eax                                ; 070F _ 01. C2
        mov     eax, dword [ebp-4H]                     ; 0711 _ 8B. 45, FC
        imul    eax, dword [ebp+24H]                    ; 0714 _ 0F AF. 45, 24
        mov     ecx, eax                                ; 0718 _ 89. C1
        mov     eax, dword [ebp-8H]                     ; 071A _ 8B. 45, F8
        add     eax, ecx                                ; 071D _ 01. C8
        mov     ecx, eax                                ; 071F _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 0721 _ 8B. 45, 20
        add     eax, ecx                                ; 0724 _ 01. C8
        movzx   eax, byte [eax]                         ; 0726 _ 0F B6. 00
        mov     byte [edx], al                          ; 0729 _ 88. 02
        add     dword [ebp-8H], 1                       ; 072B _ 83. 45, F8, 01
?_029:  mov     eax, dword [ebp-8H]                     ; 072F _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0732 _ 3B. 45, 10
        jl      ?_028                                   ; 0735 _ 7C, BD
        add     dword [ebp-4H], 1                       ; 0737 _ 83. 45, FC, 01
?_030:  mov     eax, dword [ebp-4H]                     ; 073B _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 073E _ 3B. 45, 14
        jl      ?_027                                   ; 0741 _ 7C, A8
        nop                                             ; 0743 _ 90
        leave                                           ; 0744 _ C9
        ret                                             ; 0745 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0746 _ 55
        mov     ebp, esp                                ; 0747 _ 89. E5
        sub     esp, 24                                 ; 0749 _ 83. EC, 18
        mov     eax, dword [bootInfo]                   ; 074C _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0751 _ 89. 45, EC
        movzx   eax, word [?_032]                       ; 0754 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 075B _ 98
        mov     dword [ebp-10H], eax                    ; 075C _ 89. 45, F0
        movzx   eax, word [?_033]                       ; 075F _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0766 _ 98
        mov     dword [ebp-0CH], eax                    ; 0767 _ 89. 45, F4
        push    15                                      ; 076A _ 6A, 0F
        push    255                                     ; 076C _ 68, 000000FF
        push    0                                       ; 0771 _ 6A, 00
        push    0                                       ; 0773 _ 6A, 00
        push    0                                       ; 0775 _ 6A, 00
        push    dword [ebp-10H]                         ; 0777 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 077A _ FF. 75, EC
        call    boxfill8                                ; 077D _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0782 _ 83. C4, 1C
        sub     esp, 8                                  ; 0785 _ 83. EC, 08
        push    ?_035                                   ; 0788 _ 68, 00000013(d)
        push    7                                       ; 078D _ 6A, 07
        push    0                                       ; 078F _ 6A, 00
        push    0                                       ; 0791 _ 6A, 00
        push    dword [ebp-10H]                         ; 0793 _ FF. 75, F0
        push    dword [ebp-14H]                         ; 0796 _ FF. 75, EC
        call    showString                              ; 0799 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 079E _ 83. C4, 20
?_031:  call    io_hlt                                  ; 07A1 _ E8, FFFFFFFC(rel)
        jmp     ?_031                                   ; 07A6 _ EB, F9
; intHandlerFromC End of function


table_rgb.1564:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0000 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0008 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0010 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0018 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0020 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0028 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0030 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0038 _ ........

cursor.1609:                                            ; byte
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0040 _ *.......
        db 2EH, 2EH, 2EH, 2EH, 2AH, 2AH, 2EH, 2EH       ; 0048 _ ....**..
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0050 _ ........
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0058 _ *O*.....
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0060 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0068 _ ........
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0070 _ *OOO*...
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH       ; 0078 _ ....*OOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0080 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0088 _ *OOOOO*.
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH       ; 0090 _ ....*OOO
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0098 _ OOO*....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00A0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH       ; 00A8 _ *...*OOO
        db 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 00B0 _ OOOOO*..
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00B8 _ *OOOOOOO
        db 4FH, 4FH, 2AH, 2EH, 2AH, 4FH, 4FH, 4FH       ; 00C0 _ OO*.*OOO
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH       ; 00C8 _ OOOOOOO*
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH       ; 00D0 _ *OOOOOO*
        db 2AH, 2AH, 2AH, 2AH, 2AH, 4FH, 4FH, 4FH       ; 00D8 _ *****OOO
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 00E0 _ *OO*....
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2AH, 4FH, 4FH       ; 00E8 _ *OO*.*OO
        db 2AH, 2EH, 2EH, 2EH, 2AH, 4FH, 2AH, 2EH       ; 00F0 _ *...*O*.
        db 2EH, 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 00F8 _ .*OO*...
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2AH, 4FH       ; 0100 _ **....*O
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0108 _ O*......
        db 2EH, 2EH, 2AH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 0110 _ ..*OO*..
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2AH       ; 0118 _ .......*
        db 2AH, 2EH, 2EH, 2EH                           ; 0120 _ *...



bootInfo:                                               ; qword
        resb    4                                       ; 0000

?_032:  resw    1                                       ; 0004

?_033:  resw    13                                      ; 0006

mcursor:                                                ; byte
        resb    228                                     ; 0020


?_034:                                                  ; byte
        db 54H, 72H, 79H, 20H, 74H, 6FH, 20H, 70H       ; 0000 _ Try to p
        db 72H, 65H, 73H, 73H, 20H, 61H, 20H, 6BH       ; 0008 _ ress a k
        db 65H, 79H, 00H                                ; 0010 _ ey.

?_035:                                                  ; byte
        db 57H, 65H, 6CH, 63H, 6FH, 6DH, 65H, 20H       ; 0013 _ Welcome 
        db 74H, 6FH, 20H, 44H, 4AH, 4FH, 53H, 00H       ; 001B _ to DJOS.


