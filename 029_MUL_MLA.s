;this program performs mul and mla operations on registers
;mul and mla generate 32-bit results

		area	data_alloc, data, readwrite
a		space 	4
c 		space	4
d		space 	4
e 		space	4
		align

		area	init, code, readonly
		entry
		export	__main
			
__main
		ldr		r0, =a			;r0 stores the address of the variable a
		ldr		r1,	=2			;store number 2 in register r1
		str		r1,	[r0]

		ldr 	r0, =c
		ldr 	r2, =3	;
		str 	r2, [r0]
		
		mul		r3, r1, r2		;r3 = (r1*r2)
		mla 	r4, r1, r2, r3	;r4 = (r1*r2)+r3

		ldr 	r0, =d
		str 	r3,[r0]
		ldr 	r0, =e
		str 	r4,[r0]

stop	b 		stop
		align
		end
