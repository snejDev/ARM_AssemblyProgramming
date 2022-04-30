;This program makes use of ittt block to compute the factorial of a number
fact	rn		r1

		area	factorial,code,readonly
		entry
		export	__main
			
__main
		mov		r0,#5
		mov		fact,#1
		
loop	cmp		r0,#0
		ittt	gt
		mulgt	fact,fact,r0
		subgt	r0,r0,#1
		bgt		loop
		
stop	b		stop
		align
		end
