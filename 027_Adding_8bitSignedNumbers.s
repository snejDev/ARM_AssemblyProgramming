;adding 8 bit signed numbers

;iteration register aliases
i			rn	r3
pointer		rn 	r4
sum			rn 	r0
temp		rn 	r1

;codeblock
			area	adder,code,readonly
			entry
			export __main
				
__main
			ldr		pointer,=signData	;point to signData[0]
			ldr		sum,=0
			
loop		cmp		i,#4
			bgt		stop
			ldrsb	temp,[pointer],#1	;load pointed data BYTE to temp and sign extend	and increment pointer by 1 byte
			add		sum,sum,temp
			add		i,i,#1
			b		loop
			
stop		b		stop
;Signed 8 bit numbers
signData	dcb		+1,+2,-5,+2			;8 bit numbers
			align
			end
