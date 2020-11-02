; Assembly language program to transfer data block using string instruction

.MODEL SMALL

DATA SEGMENT
X DB 10H, 20H, 30H, 40H, 50H
Y DB ?
ENDS
 
CODE SEGMENT
ASSUME CS:CODE, DS:DATA

START:
	MOV AX, DATA
	MOV DS, AX
	MOV ES, AX
	LEA SI, X
	LEA DI, Y
        MOV CX, 05H
	CLD
LOC1:
	LODSB
	STOSB
	DEC CX
	JNZ LOC1

	MOV AH, 4CH
        INT 21H
ENDS
END START