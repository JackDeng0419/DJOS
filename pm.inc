%macro Descriptor 3 
; define a data structure called Descriptor, accepting 3 parameters

    dw  %2  &   0FFFFh
    dw  %1  &   0FFFFh
    db  (%1>>16)    &   0FFh
    dw  ((%2>>8)&0F00h) | (%3 & 0F0FFh)
    db  (%1 >> 24) & 0FFh
%endmacro

DA_32   EQU     4000h   ; telling cpu this is a 32-bit segment
DA_C    EQU     98h     ; this segment can only be executed 
DA_DRW  EQU     92h    ; this segment can be read and written

DA_DRWA EQU     93h     ; can be read and written