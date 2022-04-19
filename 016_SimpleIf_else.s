;if a==1, write c=2, else write c=1

		area	dataAlloc,data,readwrite
a		space 	4	;4 bytes
c		space 	4	;4 bytes
	
		area	if_else,code,readonly
		entry
		export	__main
		
__main
		;store 1/0 in variable a
		ldr		r0,=a
		mov		r1,#0
		str		r1,[r0]
		
		;creating a pointer to variable c's memory location
		ldr		r1,=c
		
		ldr		r0,[r0]
		cmp		r0,#1
		bne		_else	;branch if a!=1
		mov 	r2,#2
		str		r2,[r1]
		b		_endif
	
_else	mov 	r2,#2
		str		r2,[r1]
		
_endif
		align
	
stop	b		stop
		end
