;if(char=='!'||char=='?') found++

		area	DataAlloc,data,readwrite
char	space	4	;variable char of 32bits
found	space	4	;integer variable
	
		area	check,code,readonly
		entry
		export __main
			
__main
		ldr 	r0,=char
		ldr		r1,='?'
		str		r1,[r0]
		
		ldr		r1,[r0]
		
		teq		r1,#'!'
		teqne	r1,#'?'
		addeq	r2,#1
		
		ldr		r1,=found
		str		r2,[r1]
stop	b		stop
		end
