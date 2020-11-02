data segment
  num1 db 11h
  num2 db 03h
  result db ?
data ends

code segment
  assume ds:data, cs:code
  start:
    mov ax, data
    mov ds, ax
    mov al, num1
    mov bl, num2
    add al, bl
    mov result, ah
    mov ah, 4ch
    int 21h
code ends

end start
end