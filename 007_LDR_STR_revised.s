		area	memTrial,code,readonly
		entry
		export	__main
	
__main
		ldr		r0,=0x20000000		;r0 has the location of a, 0x20000000
		ldr		r1,=0x12345678		;32 bit data, hence use ldr over mov
		str		r1,[r0]				;this should occupy the space ranging from address 0x20000000 to 0x20000003(4 bytes=32 bits)
		;ldrh and strb
		ldrh	r2,[r0]
		ldrb	r3,[r0],#4
		;strh and strb
		;ldr		r0,=0x20000004	
		strh	r1,[r0],#2			;since we're storing a half-word, only memory 0x20000004 and 0x20000005 will be occupied
		;hence we can further use 0x20000006 for storing a byte from 0x12345678, ie, 78
		;ldr		r0,=0x20000006	
		strb	r1,[r0],#-6
		;ldrsh and ldrsb
		ldr 	r0,=0x20000000
		ldrsh	r5,[r0]
		ldrsb	r6,[r0]
		
stop	b		stop
		align
		end
