data segment
  num1 db 05h
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
    mul bl
    mov result, ah
    mov ah, 4ch
    int 21h
code ends

end start
end