		area	movWT,code,readonly
		entry
		export __main

__main
		movw r0,#0xBEEF
		movt r0,#0xDEAD
stop	b	stop
		align
		end
