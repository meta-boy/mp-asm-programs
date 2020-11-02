.model small
.data
A db 01h,02h,03h,04h,05h
B db 5 DUP(?)
.code
mov ax,@data
mov ds,ax
LEA si,A
LEA di,B
mov cx,5
Back:
LODSB
STOSB
LOOP BACK
mov ah,4ch
int 21h
end