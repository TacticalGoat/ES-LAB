	AREA RESET,DATA,READONLY
	EXPORT __Vectors
	
__Vectors
	DCD 0x40010000
	DCD Reset_Handler
	ALIGN
	AREA mycode,CODE,READONLY
	ENTRY
	EXPORT Reset_Handler
	
Reset_Handler
	LDR R0,=SRC1
	LDR R1,=SRC2
	LDR R8,[R0]
	LDR R9,[R1]
	LDR R6,=RES1
	LDR R7,=RES2
	UMULL R3,R4,R8,R9
	STR R3,[R6]
	STR R4,[R7]
STOP 
	B STOP
SRC1 DCD 0xFFFFFFFF
SRC2 DCD 0xFFFFFFFF
	AREA DATASEG,DATA,READWRITE
RES1 DCD 0
RES2 DCD 0
	END
	