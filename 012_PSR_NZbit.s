		area	ExpPSR,code,readonly
		entry
		export	__main

__main
		;N bit: The result is negative, that is, the MSB is 1; also C bit gets asserted in this case
		mov		r0,#-5
		mov		r1,#-5
		adds	r0,r0,r1
		
		;Asserting Z bit
		mov		r0,#-5
		mov		r1,#-5
		subs	r0,r0,r1
		
stop 	b		stop
		align
		end
