;Constant table
cpacr	equ		0xE00ED88


		area	prgm, code, readonly
		entry
		export 	__main
			
__main
		;initialising the floating point co-processor
		ldr			r0, =0xE00ED88
		ldr			r1, [r0]
		orr 		r1, r1, #(0xF<<20)
		str			r1, [r0]
		
		adrl		r0,	constant_table
		vldr.f32	s0,[r0]
		vldr.f32	s1,[r0,#4]
		vadd.f32	s1,s0,s1
		
stop 	b			stop
		
constant_table
		dcd		0x3f800000	;1.000
		dcd 	0x40000000	;2.0
		dcd		0x80000000	;-0.0
		dcd		0x41200000	;10.0
		dcd		0x42C80000	;100.0
		dcd 	0x4048F5C2  ;pi
		dcd		0x402DF84C  ;e
		align
		end
