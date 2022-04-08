		area 	SwapReg,code,readonly
		entry
		export 	__main
			
__main
		ldr 	r0,=0xDEADBEEF
		ldr 	r1,=0xBABEFACE
		eor 	r0,r0,r1
		eor 	r1,r0,r1
		eor		r0,r0,r1
stop 	b		stop
		align
		end
