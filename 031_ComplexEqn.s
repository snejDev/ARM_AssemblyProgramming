;this program evaluates the expression (a+8b+7c-27)/4
; a = 25, b = 19, c = 99

		area	dataAlloc, data, readwrite
a		space	4
c 		space 	4
d 		space 	4
e 		space	4
		align
	
		area 	eval, code, readonly
		entry 
		export 	__main
			
__main 	
		ldr		r0, =25
		ldr 	r3, =a
		str 	r0, [r3]
		
		ldr		r1, =19
		ldr 	r3, =c
		str 	r1, [r3]
		
		ldr		r2, =99
		ldr 	r3, =d
		str 	r2, [r3]
		
		rsb		r2, r2, lsl	#3		;r2 = r2*8-r2*1
		lsl 	r1, #3				;r1 = r1*8
		
		add 	r5, r5, r1
		add 	r5, r5, r2
		add		r5, r5, r0
		sub 	r5, r5, #27
		lsr		r5, #2				;divide by 4
		
		ldr 	r6, =e
		str 	r5, [r6]

stop 	b	stop
		align
		end
