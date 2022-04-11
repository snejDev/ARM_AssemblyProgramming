;p=q+r+s
;q=5, r=7, s=8

		area	dataAlloc,data,readonly
;p		space	4			;if you allocate here the data wont manipulate at line 25
q		dcd		2			;Allocate 4 bytes(32bits) space to q and initialise it with 5, returns [q] 
r		dcd		4			;Allocate 4 bytes(32bits) space to r and initialise it with 7, returns [r] 
s		dcd 	5			;Allocate 4 bytes(32bits) space to s and initialise it with 8, returns [s] 
	
		area	dataAlloc_1,data,readwrite
p		space	4			;4 bytes memory allocated to p

		area 	compute,code,readonly
		entry
		export __main

__main
		ldr		r0,q		;Store q into r0
		ldr		r1,r		;Store r into r1
		add		r0,r0,r1
		ldr		r1,s
		add		r0,r0,r1
		
		ldr		r1,=p
		str		r0,[r1]
		 
stop	b		stop
		align
		end
