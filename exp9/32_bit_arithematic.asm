.model small
data  segment
mult1 dw 2521h
      dw 3206h
mult2 dw 0A26h
      dw 6400H
ans dw 0,0,0,0
data ends

code segment
assume cs:code,ds:data
start:mov ax,data
        mov ds,ax
        mov ax,mult1
        mul mult2
        mov ans,ax
        mov ans+2,dx

        mov ax,mult1+2
        mul mult2
        add ans+2,ax
        adc ans+4,dx
        adc ans+6,0

        mov ax,mult1
        mul mult2+2
        add ans+2,ax
        adc ans+4,dx
        adc ans+6,0

        mov ax,mult1+2
        mul mult2+2
        add ans+4,ax

        mov ax,4C00H
        int 21h

code ends
end start
