	AREA RESET,DATA,READONLY
	EXPORT __Vectors
__Vectors
	DCD 0X40000000
	DCD Reset_Handler
	ALIGN
	AREA mycode,CODE,READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
	LDR R0,= 0X12345678
	;MOV R0,#0x12345678
	MOV R5,R0
	MOV R1,#0123
	MOV R2,#33
	MOV R3,R2
STOP B STOP
	END

;https://amsmit.mahe.manipal.net/cas//login?service=https%3A%2F%2Famsmit.mahe.manipal.net%2Fmyportal%2Fcontrol%2Fmain