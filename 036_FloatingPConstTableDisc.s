;this program is a discrete constant table 
cpacr		equ		0xE00ED88

			area		prgm, code, readonly
			entry
			export		__main
					
__main
			ldr 		r0,	=cpacr
			ldr			r1, [r0]
			orr			r1, #(0xF<<20)
			str 		r1, [r0]
			
			vldr.f32	s0,	two
			vldr.f32	s1,	pi
			vmul.f32	s1, s1, s0
			
stop		b			stop
			
one			dcd			0x3f800000	;1.000
two			dcd 		0x40000000	;2.0
negzer		dcd			0x80000000	;-0.0
ten			dcd			0x41200000	;10.0
hund		dcd			0x42C80000	;100.0
pi			dcd 		0x4048F5C2 	;pi
e			dcd			0x402DF84C  ;e
			
			align
			end
