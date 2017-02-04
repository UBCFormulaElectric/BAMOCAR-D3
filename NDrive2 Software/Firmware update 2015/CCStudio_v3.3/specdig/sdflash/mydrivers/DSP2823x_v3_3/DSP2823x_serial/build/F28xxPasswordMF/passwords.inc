***********************************************************************
* File: passwords.inc
*
* Description: Contains passwords to unlock the F28xx code security
*   module.  Users should change the values below to match the
*   passwords that they are using.
*
* Devices: TMS320F2812, TMS320F2811, TMS320F2810,
*          TMS320F2808, TMS320F2806, TMS320F2801,
*          TMS320F2809, TMS320F28015, TMS320F28016,
*          TMS320F28044, TMS320F28335, TMS320F28334,
*          TMS320F28332, TMS320F28235, TMS320F28234,
*          TMS320F28232
*
* Author: David M. Alter, Texas Instruments Inc.
*
* History:
*   06/27/05 - original (D. Alter)
*
* (C) Copyright 2005 by Texas Instruments Incorporated
* All rights reserved
*
***********************************************************************

	.int	0xFFFF		;PWL0 (LSW of 128-bit password)
	.int	0xFFFF		;PWL1
	.int	0xFFFF		;PWL2
	.int	0xFFFF		;PWL3
	.int	0xFFFF		;PWL4
	.int	0xFFFF		;PWL5
	.int	0xFFFF		;PWL6
	.int	0xFFFF		;PWL7 (MSW of 128-bit password)
