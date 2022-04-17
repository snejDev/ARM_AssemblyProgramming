;demonstrating shifts and rotations		
		area	SandR,code,readonly
		entry
		export	__main
			
__main
      ldr 	r0,=-1		;logical shifting a negative number
      ;ldr	r2,r0		;for arithmetic shifting of a negative number
      ldr 	r1,=1


      ;lsr	r0,#1		;lsr r0>>1
      asr	r0,#1
      lsl	r1,r1,#1	;r1<<1 = 1*(2^1)
      lsl 	r3,r1,r1	;r3 = r1<<r1
      ror 	r0,r1,#2	;rotate r0 by rotation factor 1

      asr	r1,#1		
stop  b	        stop
      align
		  end
