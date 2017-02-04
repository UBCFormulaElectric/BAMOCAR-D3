	.sect "flash_A"
	.eval 6000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 7ff8h
	.endloop

	.sect "flash_B"
	.eval 4000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 6000h
	.endloop

	.sect "flash_C"
	.eval 0,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 4000h
	.endloop

	.sect "flash_D"
	.eval 0C000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 10000h
	.endloop

	.sect "flash_E"
	.eval 8000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 0C000h
	.endloop
