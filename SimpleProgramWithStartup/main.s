;Simple assembly without startup

	area simpleproject, code, readonly ;defines a memory area for (code in the flash memory)
	entry
	export __main

__main
		mov r5, #0x1234
		mov r4, #0x1234
		add r4,r5
stop 	b	stop
		end