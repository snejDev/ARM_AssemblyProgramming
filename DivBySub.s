;this program performs division by subtraction 

		area	prgm, code, readonly
		entry 
		export 	__main
			
__main
		ldr 	r0, =10
		ldr 	r1, =5
		mov 	r2, #0
	
loop	cmp		r0, r1
		blt		stop
		subge	r0, r0, r1
		addge	r2, r2, #1
		bge		loop
		
stop	b 		stop
		align
		end
