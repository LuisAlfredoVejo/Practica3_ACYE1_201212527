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

listaJugadores db
listaPunteo dw 
msg1 db 10,13, "|-----Luis Vejo - 201212527 - Practica No.3-----|$"
msg2 db 10,13, "|-------------Juego de Mesa 'Damas'-------------|$"
msg3 db 10,13, "Ingrese nombre para el Jugador 1$"
msg4 db 10,13, "Ingrese nombre para el jugador 2$"

.code
begin proc far

imprimir msg1
imprimir msg2

begin endp
end