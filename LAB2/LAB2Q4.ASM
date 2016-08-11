	AREA RESET,DATA,READONLY
	EXPORT __Vectors

__Vectors
	DCD 0x040001000
	DCD Reset_Handler
	ALIGN
	AREA mycode,CODE,READONLY
	ENTRY
	EXPORT Reset_Handler

Reset_Handler
	LDR R0,= 0XFF
	LDR R1,= 0XEE
	SUBS R2,R0,R1
STOP
	B STOP
	END