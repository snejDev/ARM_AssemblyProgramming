;This program allocates memory to three global variables

		area	data_alloc, data, readwrite
a		space	4
c		space	4
d		space	4

		area	init, code, readonly
		entry
		export __main

__main
		ldr		R0,=a		;R0 points to a's location in the memory
		mov		R1,#8		;Move 8 to register R1
		str		R1,[R0]		;Store R1's value in R0's pointed location
		
		ldr		R0,=c
		mov		R1,#10
		str		R1,[R0]
		
		ldr		R0,=d
		mov 	R1,#5
		str		R1,[R0]
		
stop 	b		stop
		end