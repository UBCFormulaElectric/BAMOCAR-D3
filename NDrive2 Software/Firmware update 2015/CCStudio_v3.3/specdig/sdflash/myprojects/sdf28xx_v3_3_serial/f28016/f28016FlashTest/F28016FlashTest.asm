	.sect "flash_A"
	.eval 07000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 07ff8h
	.endloop

	.sect "flash_B"
	.eval 06000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 07000h
	.endloop

	.sect "flash_C"
	.eval 05000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 06000h
	.endloop

	.sect "flash_D"
	.eval 04000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 05000h
	.endloop
