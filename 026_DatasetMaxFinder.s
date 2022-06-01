i			rn		r0
max			rn		r1
pointer		rn		r2
temp		rn		r3

		area	dataset,data,readonly
val		dcd		1,2,33,4,5
		align
			
		area	maxFind,code,readonly
		entry
		export	__main

__main
		ldr		pointer,=val
		ldr		max,[pointer],#4	;increment pointer by 4 bytes(32 bits)
		ldr		i,=2			;first value, ie is already stored, therefore this reduces an iteration
		
loop	cmp		i,#5
		bgt		stop
		ldr		temp,[pointer],#4
		cmp		temp,max
		movgt	max,temp
		add		i,i,#1
		b 		loop

stop	b		stop
		align
		end
