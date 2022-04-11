;p=q+r+s
;let q=2,r=4,s=5

q		equ		2
r		equ		4
s		equ		5
	
		area	SimpleEquation,code,readonly
		entry
		export __main

__main
		ldr		r0,=q
		ldr		r1,=r
		add		r0,r0,r1
		ldr		r1,=s
		add		r0,r0,r1
stop	b		stop
		align
		end
