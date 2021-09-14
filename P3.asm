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

.code
begin proc far

begin endp
end