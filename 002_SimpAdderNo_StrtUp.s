;This is a simple project without the startup file

Stack EQU 0x00000100		;Store 256 bytes in variable Stack
          AREA STACK,NOINIT,READWRITE,ALIGN=3

StackMem SPACE Stack
         AREA RESET, DATA,READONLY
         EXPORT __Vectors

__Vectors
			 DCD StackMem +Stack
			 DCD Reset_Handler
			 ALIGN
			 
			 AREA SimplePrj, CODE, READONLY, ALIGN=2
			 ENTRY
			 EXPORT Reset_Handler

Reset_Handler
			 MOV R3,#0x01
			 MOV R4,#0x01
			 ADD R5,R3,R4
STOP 		 B 		STOP
		     END
