;--------------------------------------MACROS------------------------------------------
imprimir macro buffer ;imprime cadena
    mov ax, @data
    mov ds, ax
    mov ah, 09h
    mov dx, offset buffer
    int 21h
endm

close macro
    mov ah, 4ch
    xor al, al
    int 21h
endm