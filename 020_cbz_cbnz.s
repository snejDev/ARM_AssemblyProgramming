;a program to illustrate the usage of cbz and cbnz
		
		area	cbn_nz,code,readonly
		entry
		export 	__main

__main
		ldr		r0,=0
		;cmp		r0,#1
		;beq		changeR1
		cbz		r0,changeR1
		cbnz	r0,changeR1	
		align
		
changeR1	ldr		r1,=5
stop		b		stop
			align
			end
