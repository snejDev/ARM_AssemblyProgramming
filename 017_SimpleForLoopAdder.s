;a simple for loop adder

		area	DataAlloc,data,readwrite
i		space	4	;a variable i of size 32bits
			
		align
			
		area	for_loop,code,readonly
		entry
		export __main
		
__main		;initialise i to 0
			ldr		r0,=i
			ldr		r1,=0
			str		r1,[r0]
			
			ldr 	r1,[r0]
for			cmp		r1,#5
			bge		_endloop
			add		r1,r1,#1
			b		for

_endloop	str		r1,[r0]	

stop		b		stop
			align
			end
