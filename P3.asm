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

;-----------------------------------Programa---------------------------------------------
.model small
.stack 64 
.data

;listaJugadores db
;listaPunteo dw 
;listaColor db

msg1 db 10,13, "|-----Luis Vejo - 201212527 - Practica No.3-----|$"
msg2 db 10,13, "|-------------Juego de Mesa 'Damas'-------------|$"
msg3 db 10,13, "Ingrese nombre para el Jugador 1: $"
msg4 db 10,13, "Ingrese nombre para el jugador 2: $"
j1 db 100 dup(' ') , '$'
j2 db 100 dup(' ') , '$'

.code
    main proc 

        imprimir msg1
        imprimir msg2

        mov ax, seg @data
        mov ds, ax

        mov ah, 09h
        lea dx, msg3
        int 21h

        mov ah, 3fh
        mov bx, 00
        mov cx, 100
        mov dx, offset[j1]
        int 21h

        mov ax, seg @data
        mov ds, ax

        mov ah, 09h
        lea dx, msg4
        int 21h

        mov ah, 3fh
        mov bx, 00
        mov cx, 100
        mov dx, offset[j2]
        int 21h

        imprimir j1
        
        imprimir j2

        close

    main endp
end