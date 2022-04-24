;cs and cc
		area	ConditionalCode,code,readonly
		entry
		export __main			
			
__main	
		mov		r2,#5
		mov		r3,#2
		
		;if(r2!=10) r5=r5+10-r3
		cmp		r2,#10
		addne	r5,r5,#10
		subne	r5,r5,r3
		
		mov		r1,#1
		ldr		r3,=1
		ldr		r5,=1
		ldr		r6,=1
		
		;if((r1==r3)&&(r5==r6))	r7 = r7+10
		cmp		r1,r3
		cmpeq	r5,r6
		addeq	r7,r7,#10
		
stop	b		stop
		end
