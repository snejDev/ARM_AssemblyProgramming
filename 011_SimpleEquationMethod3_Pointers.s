;p=q+r+s
;q=2,r=4,s=5

		area	DataAlloc,data,readonly
;creating a memory area
val		;space	4	;p = 4 bytes	;memory allocated in RAM
		dcd		2	;q	;memory allocate in ROM
		dcd		4	;r	;memory allocate in ROM
		dcd		5	;s	;memory allocate in ROM
		align
		
		area	DataAlloc1,data,readwrite
p		space	4	;allocating 4 bytes of memory in RAM

		area	prgm,code,readonly
		entry
		export __main
		
__main
		ldr	r0,val ;this loads the address of val into r0
		;eg, if val =  0x20000000 : p, 
		;			   0x20000004 : q, 
		;			   0x20000008 : r, 
		;			   0x2000000C : s, 
		ldr		r1,[r0,#0]		;q
		ldr		r2,[r0,#4]		;r
		add		r1,r1,r2		;q+r
		ldr		r2,[r0,#8]		;s
		add		r1,r1,r2		;q+r+s
		ldr		r0,p
		str		r1,[r0]		;store r1 in p
stop	b		stop
		align
		end
