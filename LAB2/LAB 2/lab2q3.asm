	AREA RESET,DATA,READONLY
	EXPORT __Vectors

__Vectors
	DCD 0X40001000
	DCD Reset_Handler
	
	ALIGN

	AREA mycode,CODE,READONLY
	ENTRY
	EXPORT Reset_Handler
	
Reset_Handler
    LDR R0,=SRC1
    LDR R1,=SRC1 + 4
    LDR R2,=RES
    MOV R5,#4

    LDR R3,[R0]
    LDR R4,[R1]
    SUB R5,R3,R4
    STR R4,[R2]
STOP
	B STOP
	
SRC1 DCD 0xF0,0xFF
	AREA DATASEG,DATA,READWRITE
DST DCD 0
	
	END