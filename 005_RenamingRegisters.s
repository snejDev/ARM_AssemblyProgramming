val1	rn	r0
val2	rn	r1
sum		rn 	r2

		area	renameRegisters,code,readonly
		entry
		export 	__main
	
__main
		mov		val1,#1
		mov		val2,#2
		add		sum,val1,val2
stop	b		stop
		align
		end
