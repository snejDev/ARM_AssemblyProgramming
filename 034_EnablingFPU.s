;this program illustrates the basic application of the FPU		
		
		area	prgm, code, readonly
		entry
		export	__main
		
__main
		;enabling the FPU
		ldr			r0,	=0xE000ED88
		;read the register into r1
		str			r1, [r0]
		;enable by setting the bits 20-23
		orr			r1,	r1, #(0xF << 20)
		;store the enabled bit pattern into location, 0xE000ED88
		str			r1, [r0]
		
		ldr 		r2, =0x42AA4000
		vmov.f32	s0, r2
		vmov.f32	s1, s0
		vadd.f32	s0, s0, s1
		
stop	b			stop
		align
		end
