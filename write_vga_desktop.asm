; Disassembly of file: write_vga_desktop.o
; Wed Mar 24 20:09:15 2021
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386



CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 36                                 ; 0004 _ 83. EC, 24
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0007 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 000D _ 89. 45, F4
        xor     eax, eax                                ; 0010 _ 31. C0
        sub     esp, 12                                 ; 0012 _ 83. EC, 0C
        lea     eax, [ebp-14H]                          ; 0015 _ 8D. 45, EC
        push    eax                                     ; 0018 _ 50
        call    initBootInfo                            ; 0019 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 001E _ 83. C4, 10
        mov     eax, dword [ebp-14H]                    ; 0021 _ 8B. 45, EC
        mov     dword [ebp-20H], eax                    ; 0024 _ 89. 45, E0
        movzx   eax, word [ebp-10H]                     ; 0027 _ 0F B7. 45, F0
        cwde                                            ; 002B _ 98
        mov     dword [ebp-1CH], eax                    ; 002C _ 89. 45, E4
        movzx   eax, word [ebp-0EH]                     ; 002F _ 0F B7. 45, F2
        cwde                                            ; 0033 _ 98
        mov     dword [ebp-18H], eax                    ; 0034 _ 89. 45, E8
        call    init_palette                            ; 0037 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-18H]                    ; 003C _ 8B. 45, E8
        lea     edx, [eax-1DH]                          ; 003F _ 8D. 50, E3
        mov     eax, dword [ebp-1CH]                    ; 0042 _ 8B. 45, E4
        sub     eax, 1                                  ; 0045 _ 83. E8, 01
        sub     esp, 4                                  ; 0048 _ 83. EC, 04
        push    edx                                     ; 004B _ 52
        push    eax                                     ; 004C _ 50
        push    0                                       ; 004D _ 6A, 00
        push    0                                       ; 004F _ 6A, 00
        push    14                                      ; 0051 _ 6A, 0E
        push    dword [ebp-1CH]                         ; 0053 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0056 _ FF. 75, E0
        call    boxfill8                                ; 0059 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 005E _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 0061 _ 8B. 45, E8
        lea     ecx, [eax-1CH]                          ; 0064 _ 8D. 48, E4
        mov     eax, dword [ebp-1CH]                    ; 0067 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 006A _ 8D. 50, FF
        mov     eax, dword [ebp-18H]                    ; 006D _ 8B. 45, E8
        sub     eax, 28                                 ; 0070 _ 83. E8, 1C
        sub     esp, 4                                  ; 0073 _ 83. EC, 04
        push    ecx                                     ; 0076 _ 51
        push    edx                                     ; 0077 _ 52
        push    eax                                     ; 0078 _ 50
        push    0                                       ; 0079 _ 6A, 00
        push    8                                       ; 007B _ 6A, 08
        push    dword [ebp-1CH]                         ; 007D _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0080 _ FF. 75, E0
        call    boxfill8                                ; 0083 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0088 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 008B _ 8B. 45, E8
        lea     ecx, [eax-1BH]                          ; 008E _ 8D. 48, E5
        mov     eax, dword [ebp-1CH]                    ; 0091 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 0094 _ 8D. 50, FF
        mov     eax, dword [ebp-18H]                    ; 0097 _ 8B. 45, E8
        sub     eax, 27                                 ; 009A _ 83. E8, 1B
        sub     esp, 4                                  ; 009D _ 83. EC, 04
        push    ecx                                     ; 00A0 _ 51
        push    edx                                     ; 00A1 _ 52
        push    eax                                     ; 00A2 _ 50
        push    0                                       ; 00A3 _ 6A, 00
        push    7                                       ; 00A5 _ 6A, 07
        push    dword [ebp-1CH]                         ; 00A7 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 00AA _ FF. 75, E0
        call    boxfill8                                ; 00AD _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00B2 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 00B5 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 00B8 _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 00BB _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 00BE _ 8D. 50, FF
        mov     eax, dword [ebp-18H]                    ; 00C1 _ 8B. 45, E8
        sub     eax, 26                                 ; 00C4 _ 83. E8, 1A
        sub     esp, 4                                  ; 00C7 _ 83. EC, 04
        push    ecx                                     ; 00CA _ 51
        push    edx                                     ; 00CB _ 52
        push    eax                                     ; 00CC _ 50
        push    0                                       ; 00CD _ 6A, 00
        push    8                                       ; 00CF _ 6A, 08
        push    dword [ebp-1CH]                         ; 00D1 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 00D4 _ FF. 75, E0
        call    boxfill8                                ; 00D7 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 00DC _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 00DF _ 8B. 45, E8
        lea     edx, [eax-18H]                          ; 00E2 _ 8D. 50, E8
        mov     eax, dword [ebp-18H]                    ; 00E5 _ 8B. 45, E8
        sub     eax, 24                                 ; 00E8 _ 83. E8, 18
        sub     esp, 4                                  ; 00EB _ 83. EC, 04
        push    edx                                     ; 00EE _ 52
        push    59                                      ; 00EF _ 6A, 3B
        push    eax                                     ; 00F1 _ 50
        push    3                                       ; 00F2 _ 6A, 03
        push    7                                       ; 00F4 _ 6A, 07
        push    dword [ebp-1CH]                         ; 00F6 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 00F9 _ FF. 75, E0
        call    boxfill8                                ; 00FC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0101 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 0104 _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 0107 _ 8D. 50, FC
        mov     eax, dword [ebp-18H]                    ; 010A _ 8B. 45, E8
        sub     eax, 24                                 ; 010D _ 83. E8, 18
        sub     esp, 4                                  ; 0110 _ 83. EC, 04
        push    edx                                     ; 0113 _ 52
        push    2                                       ; 0114 _ 6A, 02
        push    eax                                     ; 0116 _ 50
        push    2                                       ; 0117 _ 6A, 02
        push    7                                       ; 0119 _ 6A, 07
        push    dword [ebp-1CH]                         ; 011B _ FF. 75, E4
        push    dword [ebp-20H]                         ; 011E _ FF. 75, E0
        call    boxfill8                                ; 0121 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0126 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 0129 _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 012C _ 8D. 50, FC
        mov     eax, dword [ebp-18H]                    ; 012F _ 8B. 45, E8
        sub     eax, 4                                  ; 0132 _ 83. E8, 04
        sub     esp, 4                                  ; 0135 _ 83. EC, 04
        push    edx                                     ; 0138 _ 52
        push    59                                      ; 0139 _ 6A, 3B
        push    eax                                     ; 013B _ 50
        push    3                                       ; 013C _ 6A, 03
        push    15                                      ; 013E _ 6A, 0F
        push    dword [ebp-1CH]                         ; 0140 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0143 _ FF. 75, E0
        call    boxfill8                                ; 0146 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 014B _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 014E _ 8B. 45, E8
        lea     edx, [eax-5H]                           ; 0151 _ 8D. 50, FB
        mov     eax, dword [ebp-18H]                    ; 0154 _ 8B. 45, E8
        sub     eax, 23                                 ; 0157 _ 83. E8, 17
        sub     esp, 4                                  ; 015A _ 83. EC, 04
        push    edx                                     ; 015D _ 52
        push    59                                      ; 015E _ 6A, 3B
        push    eax                                     ; 0160 _ 50
        push    59                                      ; 0161 _ 6A, 3B
        push    15                                      ; 0163 _ 6A, 0F
        push    dword [ebp-1CH]                         ; 0165 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0168 _ FF. 75, E0
        call    boxfill8                                ; 016B _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0170 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 0173 _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 0176 _ 8D. 50, FD
        mov     eax, dword [ebp-18H]                    ; 0179 _ 8B. 45, E8
        sub     eax, 3                                  ; 017C _ 83. E8, 03
        sub     esp, 4                                  ; 017F _ 83. EC, 04
        push    edx                                     ; 0182 _ 52
        push    59                                      ; 0183 _ 6A, 3B
        push    eax                                     ; 0185 _ 50
        push    2                                       ; 0186 _ 6A, 02
        push    0                                       ; 0188 _ 6A, 00
        push    dword [ebp-1CH]                         ; 018A _ FF. 75, E4
        push    dword [ebp-20H]                         ; 018D _ FF. 75, E0
        call    boxfill8                                ; 0190 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0195 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 0198 _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 019B _ 8D. 50, FD
        mov     eax, dword [ebp-18H]                    ; 019E _ 8B. 45, E8
        sub     eax, 24                                 ; 01A1 _ 83. E8, 18
        sub     esp, 4                                  ; 01A4 _ 83. EC, 04
        push    edx                                     ; 01A7 _ 52
        push    60                                      ; 01A8 _ 6A, 3C
        push    eax                                     ; 01AA _ 50
        push    60                                      ; 01AB _ 6A, 3C
        push    0                                       ; 01AD _ 6A, 00
        push    dword [ebp-1CH]                         ; 01AF _ FF. 75, E4
        push    dword [ebp-20H]                         ; 01B2 _ FF. 75, E0
        call    boxfill8                                ; 01B5 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01BA _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 01BD _ 8B. 45, E8
        lea     ebx, [eax-18H]                          ; 01C0 _ 8D. 58, E8
        mov     eax, dword [ebp-1CH]                    ; 01C3 _ 8B. 45, E4
        lea     ecx, [eax-4H]                           ; 01C6 _ 8D. 48, FC
        mov     eax, dword [ebp-18H]                    ; 01C9 _ 8B. 45, E8
        lea     edx, [eax-18H]                          ; 01CC _ 8D. 50, E8
        mov     eax, dword [ebp-1CH]                    ; 01CF _ 8B. 45, E4
        sub     eax, 47                                 ; 01D2 _ 83. E8, 2F
        sub     esp, 4                                  ; 01D5 _ 83. EC, 04
        push    ebx                                     ; 01D8 _ 53
        push    ecx                                     ; 01D9 _ 51
        push    edx                                     ; 01DA _ 52
        push    eax                                     ; 01DB _ 50
        push    15                                      ; 01DC _ 6A, 0F
        push    dword [ebp-1CH]                         ; 01DE _ FF. 75, E4
        push    dword [ebp-20H]                         ; 01E1 _ FF. 75, E0
        call    boxfill8                                ; 01E4 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 01E9 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 01EC _ 8B. 45, E8
        lea     ebx, [eax-4H]                           ; 01EF _ 8D. 58, FC
        mov     eax, dword [ebp-1CH]                    ; 01F2 _ 8B. 45, E4
        lea     ecx, [eax-2FH]                          ; 01F5 _ 8D. 48, D1
        mov     eax, dword [ebp-18H]                    ; 01F8 _ 8B. 45, E8
        lea     edx, [eax-17H]                          ; 01FB _ 8D. 50, E9
        mov     eax, dword [ebp-1CH]                    ; 01FE _ 8B. 45, E4
        sub     eax, 47                                 ; 0201 _ 83. E8, 2F
        sub     esp, 4                                  ; 0204 _ 83. EC, 04
        push    ebx                                     ; 0207 _ 53
        push    ecx                                     ; 0208 _ 51
        push    edx                                     ; 0209 _ 52
        push    eax                                     ; 020A _ 50
        push    15                                      ; 020B _ 6A, 0F
        push    dword [ebp-1CH]                         ; 020D _ FF. 75, E4
        push    dword [ebp-20H]                         ; 0210 _ FF. 75, E0
        call    boxfill8                                ; 0213 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0218 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 021B _ 8B. 45, E8
        lea     ebx, [eax-3H]                           ; 021E _ 8D. 58, FD
        mov     eax, dword [ebp-1CH]                    ; 0221 _ 8B. 45, E4
        lea     ecx, [eax-4H]                           ; 0224 _ 8D. 48, FC
        mov     eax, dword [ebp-18H]                    ; 0227 _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 022A _ 8D. 50, FD
        mov     eax, dword [ebp-1CH]                    ; 022D _ 8B. 45, E4
        sub     eax, 47                                 ; 0230 _ 83. E8, 2F
        sub     esp, 4                                  ; 0233 _ 83. EC, 04
        push    ebx                                     ; 0236 _ 53
        push    ecx                                     ; 0237 _ 51
        push    edx                                     ; 0238 _ 52
        push    eax                                     ; 0239 _ 50
        push    7                                       ; 023A _ 6A, 07
        push    dword [ebp-1CH]                         ; 023C _ FF. 75, E4
        push    dword [ebp-20H]                         ; 023F _ FF. 75, E0
        call    boxfill8                                ; 0242 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0247 _ 83. C4, 20
        mov     eax, dword [ebp-18H]                    ; 024A _ 8B. 45, E8
        lea     ebx, [eax-3H]                           ; 024D _ 8D. 58, FD
        mov     eax, dword [ebp-1CH]                    ; 0250 _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 0253 _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 0256 _ 8B. 45, E8
        lea     edx, [eax-18H]                          ; 0259 _ 8D. 50, E8
        mov     eax, dword [ebp-1CH]                    ; 025C _ 8B. 45, E4
        sub     eax, 3                                  ; 025F _ 83. E8, 03
        sub     esp, 4                                  ; 0262 _ 83. EC, 04
        push    ebx                                     ; 0265 _ 53
        push    ecx                                     ; 0266 _ 51
        push    edx                                     ; 0267 _ 52
        push    eax                                     ; 0268 _ 50
        push    7                                       ; 0269 _ 6A, 07
        push    dword [ebp-1CH]                         ; 026B _ FF. 75, E4
        push    dword [ebp-20H]                         ; 026E _ FF. 75, E0
        call    boxfill8                                ; 0271 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0276 _ 83. C4, 20
        sub     esp, 8                                  ; 0279 _ 83. EC, 08
        push    ?_031                                   ; 027C _ 68, 00000000(d)
        push    7                                       ; 0281 _ 6A, 07
        push    8                                       ; 0283 _ 6A, 08
        push    72                                      ; 0285 _ 6A, 48
        push    dword [ebp-1CH]                         ; 0287 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 028A _ FF. 75, E0
        call    showString                              ; 028D _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0292 _ 83. C4, 20
        sub     esp, 8                                  ; 0295 _ 83. EC, 08
        push    14                                      ; 0298 _ 6A, 0E
        push    mcursor                                 ; 029A _ 68, 00000000(d)
        call    init_mouse_cursor                       ; 029F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 02A4 _ 83. C4, 10
        push    12                                      ; 02A7 _ 6A, 0C
        push    mcursor                                 ; 02A9 _ 68, 00000000(d)
        push    80                                      ; 02AE _ 6A, 50
        push    80                                      ; 02B0 _ 6A, 50
        push    19                                      ; 02B2 _ 6A, 13
        push    12                                      ; 02B4 _ 6A, 0C
        push    dword [ebp-1CH]                         ; 02B6 _ FF. 75, E4
        push    dword [ebp-20H]                         ; 02B9 _ FF. 75, E0
        call    putblock                                ; 02BC _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 02C1 _ 83. C4, 20
?_001:  call    io_hlt                                  ; 02C4 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 02C9 _ EB, F9
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 02CB _ 55
        mov     ebp, esp                                ; 02CC _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 02CE _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 02D1 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 02D7 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 02DA _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 02E0 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 02E3 _ 66: C7. 40, 06, 00C8
        nop                                             ; 02E9 _ 90
        pop     ebp                                     ; 02EA _ 5D
        ret                                             ; 02EB _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 02EC _ 55
        mov     ebp, esp                                ; 02ED _ 89. E5
        sub     esp, 24                                 ; 02EF _ 83. EC, 18
        mov     eax, dword [ebp+18H]                    ; 02F2 _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 02F5 _ 88. 45, F4
        jmp     ?_003                                   ; 02F8 _ EB, 37

?_002:  mov     eax, dword [ebp+1CH]                    ; 02FA _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 02FD _ 0F B6. 00
        movzx   eax, al                                 ; 0300 _ 0F B6. C0
        shl     eax, 4                                  ; 0303 _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 0306 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 030C _ 0F BE. 45, F4
        sub     esp, 8                                  ; 0310 _ 83. EC, 08
        push    edx                                     ; 0313 _ 52
        push    eax                                     ; 0314 _ 50
        push    dword [ebp+14H]                         ; 0315 _ FF. 75, 14
        push    dword [ebp+10H]                         ; 0318 _ FF. 75, 10
        push    dword [ebp+0CH]                         ; 031B _ FF. 75, 0C
        push    dword [ebp+8H]                          ; 031E _ FF. 75, 08
        call    showFont8                               ; 0321 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 0326 _ 83. C4, 20
        add     dword [ebp+10H], 8                      ; 0329 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 032D _ 83. 45, 1C, 01
?_003:  mov     eax, dword [ebp+1CH]                    ; 0331 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0334 _ 0F B6. 00
        test    al, al                                  ; 0337 _ 84. C0
        jnz     ?_002                                   ; 0339 _ 75, BF
        nop                                             ; 033B _ 90
        leave                                           ; 033C _ C9
        ret                                             ; 033D _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 033E _ 55
        mov     ebp, esp                                ; 033F _ 89. E5
        sub     esp, 8                                  ; 0341 _ 83. EC, 08
        sub     esp, 4                                  ; 0344 _ 83. EC, 04
        push    table_rgb.1562                          ; 0347 _ 68, 00000000(d)
        push    15                                      ; 034C _ 6A, 0F
        push    0                                       ; 034E _ 6A, 00
        call    set_palette                             ; 0350 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0355 _ 83. C4, 10
        nop                                             ; 0358 _ 90
        leave                                           ; 0359 _ C9
        ret                                             ; 035A _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 035B _ 55
        mov     ebp, esp                                ; 035C _ 89. E5
        sub     esp, 24                                 ; 035E _ 83. EC, 18
        call    io_load_eflags                          ; 0361 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0366 _ 89. 45, F4
        call    io_cli                                  ; 0369 _ E8, FFFFFFFC(rel)
        sub     esp, 8                                  ; 036E _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0371 _ FF. 75, 08
        push    968                                     ; 0374 _ 68, 000003C8
        call    io_out8                                 ; 0379 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 037E _ 83. C4, 10
        mov     eax, dword [ebp+8H]                     ; 0381 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0384 _ 89. 45, F0
        jmp     ?_005                                   ; 0387 _ EB, 65

?_004:  mov     eax, dword [ebp+10H]                    ; 0389 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 038C _ 0F B6. 00
        shr     al, 2                                   ; 038F _ C0. E8, 02
        movzx   eax, al                                 ; 0392 _ 0F B6. C0
        sub     esp, 8                                  ; 0395 _ 83. EC, 08
        push    eax                                     ; 0398 _ 50
        push    969                                     ; 0399 _ 68, 000003C9
        call    io_out8                                 ; 039E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03A3 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 03A6 _ 8B. 45, 10
        add     eax, 1                                  ; 03A9 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 03AC _ 0F B6. 00
        shr     al, 2                                   ; 03AF _ C0. E8, 02
        movzx   eax, al                                 ; 03B2 _ 0F B6. C0
        sub     esp, 8                                  ; 03B5 _ 83. EC, 08
        push    eax                                     ; 03B8 _ 50
        push    969                                     ; 03B9 _ 68, 000003C9
        call    io_out8                                 ; 03BE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03C3 _ 83. C4, 10
        mov     eax, dword [ebp+10H]                    ; 03C6 _ 8B. 45, 10
        add     eax, 2                                  ; 03C9 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 03CC _ 0F B6. 00
        shr     al, 2                                   ; 03CF _ C0. E8, 02
        movzx   eax, al                                 ; 03D2 _ 0F B6. C0
        sub     esp, 8                                  ; 03D5 _ 83. EC, 08
        push    eax                                     ; 03D8 _ 50
        push    969                                     ; 03D9 _ 68, 000003C9
        call    io_out8                                 ; 03DE _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 03E3 _ 83. C4, 10
        add     dword [ebp+10H], 3                      ; 03E6 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 03EA _ 83. 45, F0, 01
?_005:  mov     eax, dword [ebp-10H]                    ; 03EE _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 03F1 _ 3B. 45, 0C
        jle     ?_004                                   ; 03F4 _ 7E, 93
        sub     esp, 12                                 ; 03F6 _ 83. EC, 0C
        push    dword [ebp-0CH]                         ; 03F9 _ FF. 75, F4
        call    io_store_eflags                         ; 03FC _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0401 _ 83. C4, 10
        nop                                             ; 0404 _ 90
        leave                                           ; 0405 _ C9
        ret                                             ; 0406 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0407 _ 55
        mov     ebp, esp                                ; 0408 _ 89. E5
        sub     esp, 20                                 ; 040A _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 040D _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0410 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0413 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0416 _ 89. 45, FC
        jmp     ?_009                                   ; 0419 _ EB, 33

?_006:  mov     eax, dword [ebp+14H]                    ; 041B _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 041E _ 89. 45, F8
        jmp     ?_008                                   ; 0421 _ EB, 1F

?_007:  mov     eax, dword [ebp-4H]                     ; 0423 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0426 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 042A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 042C _ 8B. 45, F8
        add     eax, edx                                ; 042F _ 01. D0
        mov     edx, eax                                ; 0431 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0433 _ 8B. 45, 08
        add     edx, eax                                ; 0436 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0438 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 043C _ 88. 02
        add     dword [ebp-8H], 1                       ; 043E _ 83. 45, F8, 01
?_008:  mov     eax, dword [ebp-8H]                     ; 0442 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0445 _ 3B. 45, 1C
        jle     ?_007                                   ; 0448 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 044A _ 83. 45, FC, 01
?_009:  mov     eax, dword [ebp-4H]                     ; 044E _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0451 _ 3B. 45, 20
        jle     ?_006                                   ; 0454 _ 7E, C5
        nop                                             ; 0456 _ 90
        leave                                           ; 0457 _ C9
        ret                                             ; 0458 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0459 _ 55
        mov     ebp, esp                                ; 045A _ 89. E5
        sub     esp, 20                                 ; 045C _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 045F _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0462 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0465 _ C7. 45, FC, 00000000
        jmp     ?_019                                   ; 046C _ E9, 0000016C

?_010:  mov     edx, dword [ebp-4H]                     ; 0471 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0474 _ 8B. 45, 1C
        add     eax, edx                                ; 0477 _ 01. D0
        movzx   eax, byte [eax]                         ; 0479 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 047C _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 047F _ 80. 7D, FB, 00
        jns     ?_011                                   ; 0483 _ 79, 20
        mov     edx, dword [ebp+14H]                    ; 0485 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0488 _ 8B. 45, FC
        add     eax, edx                                ; 048B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 048D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0491 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0493 _ 8B. 45, 10
        add     eax, edx                                ; 0496 _ 01. D0
        mov     edx, eax                                ; 0498 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 049A _ 8B. 45, 08
        add     edx, eax                                ; 049D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 049F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04A3 _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 04A5 _ 0F BE. 45, FB
        and     eax, 40H                                ; 04A9 _ 83. E0, 40
        test    eax, eax                                ; 04AC _ 85. C0
        jz      ?_012                                   ; 04AE _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04B0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04B3 _ 8B. 45, FC
        add     eax, edx                                ; 04B6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04B8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04BC _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04BE _ 8B. 45, 10
        add     eax, edx                                ; 04C1 _ 01. D0
        lea     edx, [eax+1H]                           ; 04C3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 04C6 _ 8B. 45, 08
        add     edx, eax                                ; 04C9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04CB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04CF _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 04D1 _ 0F BE. 45, FB
        and     eax, 20H                                ; 04D5 _ 83. E0, 20
        test    eax, eax                                ; 04D8 _ 85. C0
        jz      ?_013                                   ; 04DA _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 04DC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 04DF _ 8B. 45, FC
        add     eax, edx                                ; 04E2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 04E4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04E8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 04EA _ 8B. 45, 10
        add     eax, edx                                ; 04ED _ 01. D0
        lea     edx, [eax+2H]                           ; 04EF _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 04F2 _ 8B. 45, 08
        add     edx, eax                                ; 04F5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04F7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04FB _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 04FD _ 0F BE. 45, FB
        and     eax, 10H                                ; 0501 _ 83. E0, 10
        test    eax, eax                                ; 0504 _ 85. C0
        jz      ?_014                                   ; 0506 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0508 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 050B _ 8B. 45, FC
        add     eax, edx                                ; 050E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0510 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0514 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0516 _ 8B. 45, 10
        add     eax, edx                                ; 0519 _ 01. D0
        lea     edx, [eax+3H]                           ; 051B _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 051E _ 8B. 45, 08
        add     edx, eax                                ; 0521 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0523 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0527 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0529 _ 0F BE. 45, FB
        and     eax, 08H                                ; 052D _ 83. E0, 08
        test    eax, eax                                ; 0530 _ 85. C0
        jz      ?_015                                   ; 0532 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0534 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0537 _ 8B. 45, FC
        add     eax, edx                                ; 053A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 053C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0540 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0542 _ 8B. 45, 10
        add     eax, edx                                ; 0545 _ 01. D0
        lea     edx, [eax+4H]                           ; 0547 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 054A _ 8B. 45, 08
        add     edx, eax                                ; 054D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 054F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0553 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 0555 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0559 _ 83. E0, 04
        test    eax, eax                                ; 055C _ 85. C0
        jz      ?_016                                   ; 055E _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 0560 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0563 _ 8B. 45, FC
        add     eax, edx                                ; 0566 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0568 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 056C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 056E _ 8B. 45, 10
        add     eax, edx                                ; 0571 _ 01. D0
        lea     edx, [eax+5H]                           ; 0573 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0576 _ 8B. 45, 08
        add     edx, eax                                ; 0579 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 057B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 057F _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 0581 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0585 _ 83. E0, 02
        test    eax, eax                                ; 0588 _ 85. C0
        jz      ?_017                                   ; 058A _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 058C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 058F _ 8B. 45, FC
        add     eax, edx                                ; 0592 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0594 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0598 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 059A _ 8B. 45, 10
        add     eax, edx                                ; 059D _ 01. D0
        lea     edx, [eax+6H]                           ; 059F _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 05A2 _ 8B. 45, 08
        add     edx, eax                                ; 05A5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05A7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05AB _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 05AD _ 0F BE. 45, FB
        and     eax, 01H                                ; 05B1 _ 83. E0, 01
        test    eax, eax                                ; 05B4 _ 85. C0
        jz      ?_018                                   ; 05B6 _ 74, 21
        mov     edx, dword [ebp+14H]                    ; 05B8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 05BB _ 8B. 45, FC
        add     eax, edx                                ; 05BE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05C0 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05C4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05C6 _ 8B. 45, 10
        add     eax, edx                                ; 05C9 _ 01. D0
        lea     edx, [eax+7H]                           ; 05CB _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 05CE _ 8B. 45, 08
        add     edx, eax                                ; 05D1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05D3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05D7 _ 88. 02
?_018:  add     dword [ebp-4H], 1                       ; 05D9 _ 83. 45, FC, 01
?_019:  cmp     dword [ebp-4H], 15                      ; 05DD _ 83. 7D, FC, 0F
        jle     ?_010                                   ; 05E1 _ 0F 8E, FFFFFE8A
        nop                                             ; 05E7 _ 90
        leave                                           ; 05E8 _ C9
        ret                                             ; 05E9 _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 05EA _ 55
        mov     ebp, esp                                ; 05EB _ 89. E5
        sub     esp, 20                                 ; 05ED _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 05F0 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 05F3 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 05F6 _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 05FD _ E9, 000000CF

?_020:  mov     dword [ebp-8H], 0                       ; 0602 _ C7. 45, F8, 00000000
        jmp     ?_025                                   ; 0609 _ E9, 000000B5

?_021:  mov     edx, dword [ebp-4H]                     ; 060E _ 8B. 55, FC
        mov     eax, edx                                ; 0611 _ 89. D0
        add     eax, eax                                ; 0613 _ 01. C0
        add     eax, edx                                ; 0615 _ 01. D0
        shl     eax, 2                                  ; 0617 _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 061A _ 8B. 55, F8
        add     eax, edx                                ; 061D _ 01. D0
        add     eax, cursor.1607                        ; 061F _ 05, 00000040(d)
        movzx   eax, byte [eax]                         ; 0624 _ 0F B6. 00
        cmp     al, 42                                  ; 0627 _ 3C, 2A
        jnz     ?_022                                   ; 0629 _ 75, 1D
        mov     edx, dword [ebp-4H]                     ; 062B _ 8B. 55, FC
        mov     eax, edx                                ; 062E _ 89. D0
        add     eax, eax                                ; 0630 _ 01. C0
        add     eax, edx                                ; 0632 _ 01. D0
        shl     eax, 2                                  ; 0634 _ C1. E0, 02
        mov     edx, eax                                ; 0637 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0639 _ 8B. 45, F8
        add     eax, edx                                ; 063C _ 01. D0
        mov     edx, eax                                ; 063E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0640 _ 8B. 45, 08
        add     eax, edx                                ; 0643 _ 01. D0
        mov     byte [eax], 0                           ; 0645 _ C6. 00, 00
?_022:  mov     edx, dword [ebp-4H]                     ; 0648 _ 8B. 55, FC
        mov     eax, edx                                ; 064B _ 89. D0
        add     eax, eax                                ; 064D _ 01. C0
        add     eax, edx                                ; 064F _ 01. D0
        shl     eax, 2                                  ; 0651 _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 0654 _ 8B. 55, F8
        add     eax, edx                                ; 0657 _ 01. D0
        add     eax, cursor.1607                        ; 0659 _ 05, 00000040(d)
        movzx   eax, byte [eax]                         ; 065E _ 0F B6. 00
        cmp     al, 79                                  ; 0661 _ 3C, 4F
        jnz     ?_023                                   ; 0663 _ 75, 1D
        mov     edx, dword [ebp-4H]                     ; 0665 _ 8B. 55, FC
        mov     eax, edx                                ; 0668 _ 89. D0
        add     eax, eax                                ; 066A _ 01. C0
        add     eax, edx                                ; 066C _ 01. D0
        shl     eax, 2                                  ; 066E _ C1. E0, 02
        mov     edx, eax                                ; 0671 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0673 _ 8B. 45, F8
        add     eax, edx                                ; 0676 _ 01. D0
        mov     edx, eax                                ; 0678 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 067A _ 8B. 45, 08
        add     eax, edx                                ; 067D _ 01. D0
        mov     byte [eax], 7                           ; 067F _ C6. 00, 07
?_023:  mov     edx, dword [ebp-4H]                     ; 0682 _ 8B. 55, FC
        mov     eax, edx                                ; 0685 _ 89. D0
        add     eax, eax                                ; 0687 _ 01. C0
        add     eax, edx                                ; 0689 _ 01. D0
        shl     eax, 2                                  ; 068B _ C1. E0, 02
        mov     edx, dword [ebp-8H]                     ; 068E _ 8B. 55, F8
        add     eax, edx                                ; 0691 _ 01. D0
        add     eax, cursor.1607                        ; 0693 _ 05, 00000040(d)
        movzx   eax, byte [eax]                         ; 0698 _ 0F B6. 00
        cmp     al, 46                                  ; 069B _ 3C, 2E
        jnz     ?_024                                   ; 069D _ 75, 20
        mov     edx, dword [ebp-4H]                     ; 069F _ 8B. 55, FC
        mov     eax, edx                                ; 06A2 _ 89. D0
        add     eax, eax                                ; 06A4 _ 01. C0
        add     eax, edx                                ; 06A6 _ 01. D0
        shl     eax, 2                                  ; 06A8 _ C1. E0, 02
        mov     edx, eax                                ; 06AB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 06AD _ 8B. 45, F8
        add     eax, edx                                ; 06B0 _ 01. D0
        mov     edx, eax                                ; 06B2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 06B4 _ 8B. 45, 08
        add     edx, eax                                ; 06B7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06B9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06BD _ 88. 02
?_024:  add     dword [ebp-8H], 1                       ; 06BF _ 83. 45, F8, 01
?_025:  cmp     dword [ebp-8H], 11                      ; 06C3 _ 83. 7D, F8, 0B
        jle     ?_021                                   ; 06C7 _ 0F 8E, FFFFFF41
        add     dword [ebp-4H], 1                       ; 06CD _ 83. 45, FC, 01
?_026:  cmp     dword [ebp-4H], 18                      ; 06D1 _ 83. 7D, FC, 12
        jle     ?_020                                   ; 06D5 _ 0F 8E, FFFFFF27
        nop                                             ; 06DB _ 90
        leave                                           ; 06DC _ C9
        ret                                             ; 06DD _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 06DE _ 55
        mov     ebp, esp                                ; 06DF _ 89. E5
        sub     esp, 16                                 ; 06E1 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 06E4 _ C7. 45, FC, 00000000
        jmp     ?_030                                   ; 06EB _ EB, 50

?_027:  mov     dword [ebp-8H], 0                       ; 06ED _ C7. 45, F8, 00000000
        jmp     ?_029                                   ; 06F4 _ EB, 3B

?_028:  mov     edx, dword [ebp+1CH]                    ; 06F6 _ 8B. 55, 1C
        mov     eax, dword [ebp-4H]                     ; 06F9 _ 8B. 45, FC
        add     eax, edx                                ; 06FC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06FE _ 0F AF. 45, 0C
        mov     ecx, dword [ebp+18H]                    ; 0702 _ 8B. 4D, 18
        mov     edx, dword [ebp-8H]                     ; 0705 _ 8B. 55, F8
        add     edx, ecx                                ; 0708 _ 01. CA
        add     eax, edx                                ; 070A _ 01. D0
        mov     edx, eax                                ; 070C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 070E _ 8B. 45, 08
        add     edx, eax                                ; 0711 _ 01. C2
        mov     eax, dword [ebp-4H]                     ; 0713 _ 8B. 45, FC
        imul    eax, dword [ebp+24H]                    ; 0716 _ 0F AF. 45, 24
        mov     ecx, eax                                ; 071A _ 89. C1
        mov     eax, dword [ebp-8H]                     ; 071C _ 8B. 45, F8
        add     eax, ecx                                ; 071F _ 01. C8
        mov     ecx, eax                                ; 0721 _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 0723 _ 8B. 45, 20
        add     eax, ecx                                ; 0726 _ 01. C8
        movzx   eax, byte [eax]                         ; 0728 _ 0F B6. 00
        mov     byte [edx], al                          ; 072B _ 88. 02
        add     dword [ebp-8H], 1                       ; 072D _ 83. 45, F8, 01
?_029:  mov     eax, dword [ebp-8H]                     ; 0731 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0734 _ 3B. 45, 10
        jl      ?_028                                   ; 0737 _ 7C, BD
        add     dword [ebp-4H], 1                       ; 0739 _ 83. 45, FC, 01
?_030:  mov     eax, dword [ebp-4H]                     ; 073D _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 0740 _ 3B. 45, 14
        jl      ?_027                                   ; 0743 _ 7C, A8
        nop                                             ; 0745 _ 90
        leave                                           ; 0746 _ C9
        ret                                             ; 0747 _ C3
; putblock End of function



table_rgb.1562:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0000 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0008 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0010 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0018 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0020 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0028 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0030 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0038 _ ........

cursor.1607:                                            ; byte
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



mcursor:                                                ; byte
        resb    228                                     ; 0000



?_031:                                                  ; byte
        db 57H, 65H, 6CH, 63H, 6FH, 6DH, 20H, 74H       ; 0000 _ Welcom t
        db 6FH, 20H, 44H, 4AH, 4FH, 53H, 00H            ; 0008 _ o DJOS.


