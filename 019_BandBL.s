;branching with b and ble

		area	BandBL,code,readonly
		entry
		export	__main
			
__main
		;b		testB
		bl		testB
		ldr		r1,=3
		
stop 		b 		stop
		align

testB	ldr 	r0,=4
		mov		pc,lr
		end
