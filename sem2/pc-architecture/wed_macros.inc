; File:         wed_macros.inc
; Autor:        BO$
; Data:         08.02.2024
; Version:      0x0003
; Copyrights:   All rights reserved (c) 2024 Week-End Development
   
;|==[#]==|======[macro name]=======|=========================================[what macro do]=========================================|
;|   0   |        get_char         |      get one ASCII character (after executing, the character is stored in the AL register)      |
;|   1   |    print_char [hex]     |              displays an ASCII character after specifying the character's hex code              |
;|   2   |     get_print_char      | get one ASCII character with echo (after executing, the character is stored in the AL register) |
;|   3   | set_cursor [int], [int] |                        place the cursor on the 'row', 'column' position                         |
;|   4   |   print_str [string]    |                   display a text variable with the name given as an argument                    |
;|   5   |       end_program       |                                        ends the program                                         |
;/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

;===[0x0000]=====================================================
macro get_char{
    pushad
    cinvoke getch
    mov [temp_eax], eax
    popad
    mov eax,[temp_eax]
}
;===[0x0001]=====================================================
macro print_char char_hex{
    pushad
    mov al, char_hex
    cbw
    cwde
    cinvoke putchar, eax
    popad
}
;===[0x0002]=====================================================
macro get_print_char{
    pushad
    cinvoke getch
    mov [temp_eax], eax
    cinvoke putchar, eax
    popad
    mov eax,[temp_eax]
}
;===[0x0003]=====================================================
macro set_cursor row, col{
    pushad
    invoke GetStdHandle, STD_OUTPUT_HANDLE
    mov [hCon],eax
    mov ax,row
    shl eax,16
    mov ax,col
    invoke SetConsoleCursorPosition,[hCon],eax
    popad
}
;===[0x0004]=====================================================
macro print_str string{
    pushad
    cinvoke printf, string
    popad
}
;===[0x0005]=====================================================
macro end_program{
    invoke ExitProcess
}

;===[.data]======================================================
section '.data' data readable writeable
    hCon                  dd        ?
    temp_eax              dd        ?

;===[.idata]=====================================================
section '.idata' import data readable writeable
        library msvcrt,'MSVCRT.DLL',\
                kernel32,'KERNEL32.DLL',\
                user32,'user32.dll',\
                gdi32,'gdi32.dll'
;----------------------------------------------------------------
        import gdi32,\
                SetPixel,'SetPixel'
;----------------------------------------------------------------
        import user32,\
                GetDC,'GetDC',\
                FindWindow,'FindWindowA',\
                MessageBox,'MessageBoxA'
;----------------------------------------------------------------
        import msvcrt,\
                getch,'_getch',\
                putchar,'putchar',\
                puts,'puts',\
                printf,'printf',\
                scanf,'scanf',\
                system,'system',\
                srand,'srand',\
                rand,'rand',\
                _kbhit,'_kbhit',\
                time,'time'
;----------------------------------------------------------------
        import kernel32,\
                Sleep,'Sleep',\
                ExitProcess,'ExitProcess',\
                GetLastError,'GetLastError',\
                FormatMessage,'FormatMessageA',\
                LocalFree,'LocalFree',\
                SetConsoleTitle,'SetConsoleTitleA',\
                SetConsoleCursorInfo,'SetConsoleCursorInfo',\
                SetConsoleCursorPosition,'SetConsoleCursorPosition',\
                SetConsoleWindowInfo,'SetConsoleWindowInfo',\
                GetStdHandle,'GetStdHandle',\
                SetConsoleScreenBufferSize,'SetConsoleScreenBufferSize',\
                GetConsoleScreenBufferSize,'GetConsoleScreenBufferSize',\
                GetConsoleScreenBufferInfo,'GetConsoleScreenBufferInfo',\
                FillConsoleOutputCharacter,'FillConsoleOutputCharacterA',\
                FillConsoleOutputAttribute,'FillConsoleOutputAttribute'
;######################WEEK#END#DEVELOPMENT######################