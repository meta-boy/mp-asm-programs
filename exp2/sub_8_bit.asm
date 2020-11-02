data segment
  num1 dw 14h
  num2 dw 03h
  result dw ?
data ends

code segment
  assume ds:data, cs:code
  start:
    mov ax, data
    mov ds, ax
    mov ax, num1
    mov bx, num2
    sub ax, bx
    mov result, ax
    mov ah, 4ch
    int 21h
code ends

end start
end