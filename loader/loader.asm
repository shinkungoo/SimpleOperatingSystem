org     10000h

mov     ax,     cs
mov     ds,     ax
mov     es,     ax
mov     ax,     0x00
mov     ss,     ax
mov     sp,     0x7c00

;//Display On Screen: Start Loading...
mov     ax,     1301h
mov     bx,     000fh
mov     dx,     0200h       ;Display in 2nd row
mov     cx,     12
push    ax
mov     ax,     ds
mov     es,     ax
pop     ax
mov     bp,     StartLoaderMessage
int     10h

jmp     $

;//Display Messages
StartLoaderMessage:     db      "Start Loading..."