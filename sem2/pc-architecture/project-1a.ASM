; File:         project-1a.asm
; Autor:        BO$
; Date:         06.04.2022
; Version:      0x0002
; Copyrights:   All rights reserved (c) 2024 Week-End Development
;================================================================
; TASK:
; Napisac program w asemblerze 80x86 realizujacy wielokrotna
; operacje wprowadzania danych w kodzie binarnym (U2) dla liczb
; o slowie 16-bitowym.
;
; Nacisniecie klawisza:
; <Enter>     - wykonuje przeliczanie z BIN(U2) na OCT, HEX, DEC
; <Backspace> - kasuje znak
; <Esc>       - zamyka program
;######################WEEK#END#DEVELOPMENT######################
format PE Console 4.0
entry start
include 'win32ax.inc'
include 'wed_macros.inc'
;================================================================
section '.text' code readable executable
start:
        invoke SetConsoleTitle, <'WEEK-END DEVELOPMENT'>
        set_cursor 1,2
        print_str 'WEEK-END DEVELOPMENT'
        set_cursor 2,2
        print_str 'PRESENT: '
        print_str topic
;================================================================
; "nadpisywanie" bialymi znakami miejsca wpisania
;----------------------------------------------------------------
_cls:
        set_cursor 4,31
        print_str pointer
        set_cursor 5,5
        print_str txt0
        print_str '                 '
        set_cursor 5,16
;================================================================
; wprowadzanie znakow (ograniczone do 0 lub 1)
;----------------------------------------------------------------
_cin:
        mov eax,0                ;zerowanie rej.
        mov ebx,0
        mov ecx,16               ;licznik -> 16 /do petli
        mov edx,0
c0:
        push ecx
c1:
        get_char
        cmp al,0x1b              ;ESC
        je exit
        cmp al,0x0d              ;ENTER
        je enter_
        cmp al,0x08              ;BACKSPACE
        je bck

        cmp al,0x30              ;0 W ASCII
        je c2
        cmp al,0x31              ;1 W ASCII
        je c2
        jmp c1

bck:
        pop ecx                  ;obsluga BCK
        shr bx,1
        cmp cx,16
        je c0
        jmp next

do_c0:                           ;wydluzenie loop
        jmp c0
next:
        and bx,0xfffe
        inc cx
last:
        push ecx
        print_char 0x08
        print_char 0x20           ;SPACJA
        print_char 0x08
        jmp c1

c2:
        print_char al
        sub al,0x30             ;zamiana znaku ASCII na liczbe
        or bl,al
        cmp ecx,1
        je c4
        shl bx,1
        loop do_c0
enter_:
        shr bx,1
        jmp in_zm
c4:
        get_char
        cmp al,0x08
        je last
in_zm:
        mov [zm1],bx
;================================================================
; wyswietlenie w systemie binarnym
;----------------------------------------------------------------
_bin:
        set_cursor 7,5
        print_str txt1

        mov ax,[zm1]
        mov ecx,16
b0:
        push ecx
        rcl ax,1
        jc b1
        mov dx,0x30     ;'0'
        jmp b2
b1:
        mov dx,0x31     ;'1'
b2:
        print_char dl
        pop ecx
        loop b0

;================================================================
; wyswietlenie w systemie oktalnym
;----------------------------------------------------------------
_oct:                      ;OCT
        set_cursor 8,11
        print_str txt2
                             ;#
        mov ax,[zm1]         ;1
        shr ax,15
        add ax,0x30
        print_char al

        mov ax,[zm1]         ;2
        shl ax,1
        shr ax,13
        add ax,0x30
        print_char al

        mov ax,[zm1]         ;3
        shl ax,4
        shr ax,13
        add ax,0x30
        print_char al

        mov ax,[zm1]         ;4
        shl ax,7
        shr ax,13
        add ax,0x30
        print_char al

        mov ax,[zm1]         ;5
        shl ax,10
        shr ax,13
        add ax,0x30
        print_char al

        mov ax,[zm1]         ;6
        and ax,7
        add ax,0x30
        print_char al
;================================================================
; wyswietlenie w systemie szesnastkowym
;----------------------------------------------------------------
_hex:                      ;HEX
        set_cursor 9,11
        print_str txt3
                             ;#
        mov ax,[zm1]         ;1
        shr ax,12
        cmp al,10
        jb h0
        add ax,0x37             ;lub DEC 55 -> zakres [a-f]
        jmp h1
h0:
        add ax,0x30             ;lub DEC 48 -> zakres [0-9]
h1:
        print_char al

        mov ax,[zm1]         ;2
        shl ax,4
        shr ax,12
        cmp al,10
        jb h3
        add ax,0x37
        jmp h4
h3:
        add ax,0x30
h4:
        print_char al


        mov ax,[zm1]         ;3
        shl ax,8
        shr ax,12
        cmp al,10
        jb h5
        add ax,0x37
        jmp h6
h5:
        add ax,0x30
h6:
        print_char al

        mov ax,[zm1]         ;4
        and ax,15
        cmp al,10
        jb h7
        add ax,0x37
        jmp h8
h7:
        add ax,0x30
h8:
        print_char al
;================================================================
; wyswietlenie w systemie dziesietnym ze znakiem
;----------------------------------------------------------------
_dec:
        set_cursor 10,11
        print_str txt4

        mov ax,[zm1]

        mov dx,ax               ;znak-modol/system U2
        shr dx,15
        cmp dx,1
        je minus
        and ax,0x7fff
        print_char 0x2b         ;'+'
        jmp go_next
minus:
        not ax
        and ax,0x7fff
        add ax,1
        print_char 0x2d         ;'-'

go_next:
                                ;X0000 -> dziesiatki tysiecy
        mov dx,0
        mov bx,10000            ;dzielenie ax przez bx=10000
        div bx
        add al,0x30
        print_char al
                                ;0X000 -> jednosci tysiecy
        mov ax,dx
        mov dx,0
        mov bx,1000             ;dzielenie ax przez bx=1000
        div bx
        add al,0x30
        print_char al
                                ;00X00 -> setki
        mov ax,dx
        mov dx,0
        mov bx,100              ;dzielenie ax przez bx=100
        div bx
        add al,0x30
        print_char al
                                ;000X0 -> dziesiatki
        mov ax,dx
        mov dx,0
        mov bx,10               ;dzielenie ax przez bx=10
        div bx
        add al,0x30
        print_char al
                                ;0000X -> jednosci
        add dl,0x30
        print_char dl
;================================================================
; ponowienie programu
;----------------------------------------------------------------
        jmp start
;================================================================
exit:
        end_program
;================================================================
section '.data' data readable writeable
        topic   db 'BIN U2 to OCT/HEX/DEC',     NULL
        pointer db '_',                         NULL
        txt0    db 'Wpisz BIN: ',               NULL
        txt1    db 'Wynik BIN: ',               NULL
        txt2    db 'OCT: ',                     NULL
        txt3    db 'HEX: ',                     NULL
        txt4    db 'DEC: ',                     NULL
        zm1     dw 0xffff       ;177777o 1111111111111111b 655355
;######################WEEK#END#DEVELOPMENT######################