data segment
  num1 dw 15h
  num2 dw 05h
  result dw ?
data ends

code segment
  assume ds:data, cs:code
  start:
    mov ax, data
    mov ds, ax
    mov ax, num1
    mov bx, num2
    mul bx
    mov result, ax
    mov ax, 4ch
    int 21h
code ends

end start
end