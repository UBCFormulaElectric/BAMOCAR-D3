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


