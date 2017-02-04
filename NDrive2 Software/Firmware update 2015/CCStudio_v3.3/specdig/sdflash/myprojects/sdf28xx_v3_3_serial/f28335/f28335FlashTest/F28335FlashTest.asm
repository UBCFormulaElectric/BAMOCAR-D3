	.sect "flash_A"
	.eval 08000h,x
	.loop 8000h
		.int x
		.eval x+1, x
		.break x = 0fff8h
	.endloop

	.sect "flash_B"
	.eval 00000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 8000h
	.endloop

	.sect "flash_C"
	.eval 08000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 10000h
	.endloop

	.sect "flash_D"
	.eval 00000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 08000h
	.endloop

    .sect "flash_E"
	.eval 08000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 10000h
	.endloop

	.sect "flash_F"
	.eval 00000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 8000h
	.endloop

	.sect "flash_G"
	.eval 08000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 10000h
	.endloop

	.sect "flash_H"
	.eval 00000h,x
	.loop 10000h
		.int x
		.eval x+1, x
		.break x = 08000h
	.endloop

