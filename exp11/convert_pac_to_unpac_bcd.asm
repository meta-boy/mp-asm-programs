DATA SEGMENT
	UNPACKEDBCD1 DB 05H
	UNPACKEDBCD2 DB 02H
	ASCII1       DB ?
	ASCII2       DB ?
	PACKEDBCD    DB ?
DATA ENDS
CODE SEGMENT
	      ASSUME DS:DATA CS:CODE
	START:
	      MOV    AX,DATA
	      MOV    DS,AX
	      MOV    AL,UNPACKEDBCD1
	      MOV    BL,UNPACKEDBCD2
	      MOV    AH,AL
	      MOV    BH,BL
	      ADD    AH,30H
	      ADD    BH,30H
	      MOV    ASCII1,AH
	      MOV    ASCII2,BH
	      MOV    CL,04H
	      ROL    AL,CL
	      OR     AL,BL
	      MOV    BH,AL
	      MOV    PACKEDBCD,BH
	      MOV    DL,ASCII1
	      MOV    AH,2
	      INT    21H
	      MOV    DL,ASCII2
	      MOV    AH,2
	      INT    21H
	      MOV    AH,4CH
	      INT    21H
CODE ENDS
END START