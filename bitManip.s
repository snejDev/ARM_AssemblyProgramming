;this program demonstrates the use of bit manipulation instructions

		area	prgm, code, readonly
		entry
		export	__main

__main
		ldr		r0, =0xDEADBEEF
		ldr 	r1, =0xDEADFEED
	
		bfi 	r0, r1, #0,#16
		bfc 	r1, #16, #16
		
		ldr 	r0, =0x80000000
		rbit 	r0, r0		

		;sbfx and ubfx
		ldr		r0, =0x01
		sbfx 	r1, r0, #0, #4
		ubfx 	r2, r0, #0, #4		
		
		ldr		r0, =0x0F
		sbfx 	r1, r0, #0, #4
		ubfx 	r2, r0, #0, #4		
		
stop 	b 		stop
		align
		end
