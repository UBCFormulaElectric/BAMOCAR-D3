	.sect "flash_A"
	.eval 04000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 7ff8h
	.endloop

	.sect "flash_B"
	.eval 00000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 4000h
	.endloop

	.sect "flash_C"
	.eval 0C000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 10000h
	.endloop

	.sect "flash_D"
	.eval 08000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 0C000h
	.endloop
