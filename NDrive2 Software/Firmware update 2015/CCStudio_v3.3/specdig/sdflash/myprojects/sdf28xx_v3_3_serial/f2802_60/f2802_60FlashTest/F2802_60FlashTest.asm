	.sect "flash_A"
	.eval 06000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 7ff8h
	.endloop

	.sect "flash_B"
	.eval 04000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 6000h
	.endloop

	.sect "flash_C"
	.eval 02000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 4000h
	.endloop

	.sect "flash_D"
	.eval 00000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 02000h
	.endloop
