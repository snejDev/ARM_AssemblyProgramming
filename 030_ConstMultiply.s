;this program demonstrates constant multiplication with complexity O(1)
;this doesnt use the multiplication array

		area	constMult, code, readonly
		entry
		export	__main
			
__main
		mov		r0, 5
		mov 	r1, 2
	
		lsl 	r0, #1				;multiply by 2
		lsl 	r1, #2				;multiply by 4
		
		;multiplying by odd numbers, eg, a*3 = a*2 + a*1
		mov		r0, 5
		mov 	r1, 2
		
		;r0*7 = r0*8-r0*1
		rsb		r0, r0, LSL #3		;r0*8 - r0  rsb: reverse subs
stop	b 		stop	
		align
		end
