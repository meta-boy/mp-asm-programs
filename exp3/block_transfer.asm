; Assembly language program to transfer data block without using string instruction

.MODEL SMALL

DATA SEGMENT
X DB 10H, 20H, 30H, 40H, 50H
Y DB ?
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE, DS:DATA
START:
	MOV AX, DATA
	MOV DS, AX
	LEA SI, X
	LEA DI, Y
	MOV CX, 05H
LOC1:
	MOV AL, [SI]
	MOV [DI], AL
	INC SI
	INC DI
	DEC CX
	JNZ LOC1

	MOV AH, 4CH
	INT 21H
CODE ENDS
END START