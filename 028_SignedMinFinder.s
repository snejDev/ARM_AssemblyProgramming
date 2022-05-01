;a program to find the least signed half word number
pointer		rn	r4
i			rn	r3
min			rn	r0
temp		rn  r2
		
		area	find, code, readonly
		entry
		export	__main
			
__main
			ldr		pointer,=signData
			ldr		i,=4
			ldrsh	min,[pointer],#2		;increment pointer to next half-word, 2 bytes = 16 bits
		
loop		cmp		i,#0
			beq 	stop
			ldrsh 	temp,[pointer],#2		;load half-word and sign extend it
			cmp		min,temp
			movgt	min,temp
			sub		i,i,#1
			b		loop

stop		b		stop
;signed data 
signData	dcw		+12,-1,-99,1,4
			align
			end
