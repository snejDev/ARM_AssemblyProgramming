		  area psr_Obit,code,readonly
		  entry
		  export __main
			
__main
      ldr		r0,=-2147483648
      ldr		r1,=-1
      adds	r4,r0,r1
      adds	r4,r0,r0
      adds	r4,r0,r0
      adds	r4,r0,r0
      adds	r4,r0,r0
      adc		r2,r2,#0		;r2=r2+carry
stop	b		stop
		  align
		  end
