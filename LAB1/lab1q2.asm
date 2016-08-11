	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x40001000
	DCD Reset_Handler
	ALIGN
	AREA mycode,CODE,READONLY
	ENTRY
	EXPORT Reset_Handler

Reset_Handler
	LDR R0 ,= SRC
	LDR R1 ,= SRC + 36
	
	LDR R2 ,[R0]
	LDR R3 ,[R1]
	STR R3,[R0]
	STR R2,[R1]
	ADD R0,4
	SUB R1,4
	
	LDR R2 ,[R0]
	LDR R3 ,[R1]
	STR R3,[R0]
	STR R2,[R1]
	ADD R0,4
	SUB R1,4
	
	LDR R2 ,[R0]
	LDR R3 ,[R1]
	STR R3,[R0]
	STR R2,[R1]
	ADD R0,4
	SUB R1,4
	
	LDR R2 ,[R0]
	LDR R3 ,[R1]
	STR R3,[R0]
	STR R2,[R1]
	ADD R0,4
	SUB R1,4
	
	LDR R2 ,[R0]
	LDR R3 ,[R1]
	STR R3,[R0]
	STR R2,[R1]
	ADD R0,4
	SUB R1,4
	
	LDR R2 ,[R0]
	LDR R3 ,[R1]
	STR R3,[R0]
	STR R2,[R1]
	ADD R0,4
	SUB R1,4
	
	LDR R2 ,[R0]
	LDR R3 ,[R1]
	STR R3,[R0]
	STR R2,[R1]
	ADD R0,4
	SUB R1,4
	
	LDR R2 ,[R0]
	LDR R3 ,[R1]
	STR R3,[R0]
	STR R2,[R1]
	ADD R0,4
	SUB R1,4
	
	LDR R2 ,[R0]
	LDR R3 ,[R1]
	STR R3,[R0]
	STR R2,[R1]
	ADD R0,4
	SUB R1,4
	
	LDR R2 ,[R0]
	LDR R3 ,[R1]
	STR R3,[R0]
	STR R2,[R1]
	ADD R0,4
	SUB R1,4
	

STOP
	B STOP
	
	AREA DATASEG,DATA,READWRITE
SRC DCD 1,2,3,4,5,6,7,8,9,0XA

	END 