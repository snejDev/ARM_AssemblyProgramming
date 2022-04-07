;This is a simple project

	AREA SimpleProject, CODE, READONLY		;Assembling a new readonly code block
		ENTRY								;THis is the programs entry
		EXPORT __main						;Export __main
			
__main
	MOV R1, #0x1234		;Store hexadecimal value 0x1234 in R1
	MOV R2, #0x1432		;Store hexadecimal value 0x1432 in R2
	ADD R4, R1, R2		;ADD R1 and R4 and store the result R4
STOP B STOP				;STOP 
	END					;END
