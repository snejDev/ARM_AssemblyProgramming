		area	prgm,code,readonly
		entry
		export 	__main
			
__main
		ldr		r0,=0xF0000000
		ldr		r1,=0xF0000000
		
		adds	r0,r0,r1		;causes a overflow
		adc		r2,r2,r2		;adds the carrybit to the register eg.: adc	r2,r3,r4 = r2 = r3+r4+carry
stop	b		stop
		align
		end
