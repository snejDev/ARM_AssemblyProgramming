;allocating 4 bytes of space for the variables
		area	data_alloc,data,readwrite
a		space	4
c		space	4 
d		space 	4
	
		area	adder,code,readonly
		entry
		export __main
	
__main
;storing 5 in variable a
		ldr 	r1,=a		;r1 has the location of a
		mov		r2,#5
		str		r2,[r1]
			
;storing 5 in variable a
		ldr 	r3,=c		;r1 has the location of a
		mov		r4,#5
		str		r4,[r3]
		
;storing a and c's value in r2 and r4
		ldr		r2,[r1]		;r1 has a's location and [r1] will access the data at that location
		ldr		r4,[r3]		;r3 has c's location and [r3] will access the data at that location

;adding r2 and r4 and storing it in r2, r2+r4 corresponds to a+c
		add		r2,r2,r4
;now that we have the sum, we can start re-using the registers that contained a and c's addresses
;to store the sum in c's location
		ldr		r1,=d		;r1 has c's location
		str		r2,[r1]		;storing r2(sum), in d's location which can be accessed through [r1]
			
stop	b		stop
		align
		end
