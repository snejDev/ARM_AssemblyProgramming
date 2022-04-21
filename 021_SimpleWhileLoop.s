;this is simple demonstration of while loop

		area	dataAlloc,data,readwrite
i		space	4		;allocate 4 bytes of space for variable i
		align
			
		area	loop,code,readonly
		entry
		export __main
		
__main	ldr		r0,=i
		mov		r1,#0
		
while	ldr		r1,[r0]
		cmp		r1,#5
		bhs		endL
		add		r1,r1,#1
		str		r1,[r0]
		b		while
endL	
stop	b		stop
		align
		end
