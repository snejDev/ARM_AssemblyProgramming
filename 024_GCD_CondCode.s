;gcd using euclidean algorithm

		area	dataAlloc,data,readwrite
gcd		space	4
a		space	4
c		space	4
	
		area	main,code,readonly
		entry
		export __main
	
__main
		ldr		r0,=a
		ldr		r2,=c
		ldr		r4,=gcd
		
		ldr 	r1,=10
		str		r1,[r0]
		
		ldr 	r3,=5
		str		r3,[r2]
		
		ldr		r1,[r0]
		ldr		r3,[r2]
		
hcf		cmp		r1,r3
		subgt	r1,r1,r3	;r1=r1-r3 if r1>r3
		sublt	r3,r3,r1	;r3=r3-r1 if r3>r1
		bne		hcf			;recurse if r1!=r3
		
		str		r1,[r4]
		
stop	b		stop
		end
