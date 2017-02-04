***********************************************************************
* File: main.asm
*
* Description: Performs the CSM password matchflow to unlock the CSM.
*   Upon completion, it returns to the reset vector to execute the
*   ROM bootloader again.  This program was designed to be used by
*   the SDFlash utility before it loads in the main flash programming
*   code.
*
* Devices: TMS320F2812
*          TMS320F2811
*          TMS320F2810
*          TMS320F28044
*          TMS320F28016
*          TMS320F28015
*          TMS320F2809
*          TMS320F2808
*          TMS320F2806
*          TMS320F2802
*          TMS320F2801
*
* Author: David M. Alter, Texas Instruments Inc.
*
* History:
*   03/16/07 - Modified to overwrite security passwords in RAM after
*              CSM is unlocked. (D. Alter)
*   06/27/05 - original (D. Alter)
*
* (C) Copyright 2005 by Texas Instruments Incorporated
* All rights reserved
*
***********************************************************************

			.def start

;*** Include the password file
			.data
passwords:
			.copy	"passwords.inc"

;*** Peripheral Register Address Definitions

;** Watchdog Register (16-bit access only, EALLOW protected) 
WDCR         .set     0x007029   ;Watchdog Control Register

;** Code Security Module Registers (16/32-bit access, EALLOW protected) 
KEY0         .set     0x000AE0   ; low word of the 128-bit key 
KEY1         .set     0x000AE1   ; next word in 128-bit key 
KEY2         .set     0x000AE2   ; next word in 128-bit key  
KEY3         .set     0x000AE3   ; next word in 128-bit key 
KEY4         .set     0x000AE4   ; next word in 128-bit key 
KEY5         .set     0x000AE5   ; next word in 128-bit key 
KEY6         .set     0x000AE6   ; next word in 128-bit key 
KEY7         .set     0x000AE7   ; high word of the 128-bit key 
CSMSCR       .set     0x000AEF   ; CSM status and control register 

;** Code Security Password Locations 
PWL0         .set     0x3F7FF8   ; Password 0 
PWL1         .set     0x3F7FF9   ; Password 1 
PWL2         .set     0x3F7FFA   ; Password 2 
PWL3         .set     0x3F7FFB   ; Password 3 
PWL4         .set     0x3F7FFC   ; Password 4 
PWL5         .set     0x3F7FFD   ; Password 5 
PWL6         .set     0x3F7FFE   ; Password 6 
PWL7         .set     0x3F7FFF   ; Password 7 

;** Serial Communications Interface A (SCI-A) Registers (16-bit access only, not EALLOW protected) 
SCIFFCTA     .set     0x00705C   ; SCIA FIFO control reg 

***********************************************************************
		.text
start:

;*** Initialization
	C28OBJ							;Select C28x object mode
	C28ADDR							;Select C27x/C28x addressing
	SETC	INTM					;Disable global interrupts
	EALLOW							;Enable EALLOW protected register access

;*** Disable the watchdog timer
	MOVL	XAR0, #WDCR				;XAR0 points to WDCR
	MOV		*XAR0, #0068h			;Set WDDIS bit in WDCR to disable WD

;*** Execute the CSM Password Match Flow

	;Do the dummy reads
	MOVL	XAR0, #PWL0				;XAR0 points to PWL0
	MOV		AL, *XAR0++				;Read password 0
	MOV		AL, *XAR0++				;Read password 1
	MOV		AL, *XAR0++				;Read password 2
	MOV		AL, *XAR0++				;Read password 3
	MOV		AL, *XAR0++				;Read password 4
	MOV		AL, *XAR0++				;Read password 5
	MOV		AL, *XAR0++				;Read password 6
	MOV		AL, *XAR0				;Read password 7

	;Write the passwords
	MOVL	XAR0, #passwords		;XAR1 points to Password 0
	MOV		*(0:KEY0), *XAR0++		;Write password 0
	MOV		*(0:KEY1), *XAR0++		;Write password 1
	MOV		*(0:KEY2), *XAR0++		;Write password 2
	MOV		*(0:KEY3), *XAR0++		;Write password 3
	MOV		*(0:KEY4), *XAR0++		;Write password 4
	MOV		*(0:KEY5), *XAR0++		;Write password 5
	MOV		*(0:KEY6), *XAR0++		;Write password 6
	MOV		*(0:KEY7), *XAR0++		;Write password 7

	;Overwrite the passwords in RAM
	MOVL	XAR0, #passwords		;XAR1 points to Password 0
	MOVB	AL, #0					;AL = 0
	RPT #7							;#7 means do 8 times
	|| MOV	*XAR0++, AL				;Overwrite the passwords in RAM

;*** Clear the ABD bit (autobaud detect) in SCIA register.  This
;    is because the Bootloader on some F28x devices does not 
;    clear this bit before using the SCI.  On devices that do clear
;    the bit, we'll harmlessly clear the bit again here anyway.
	MOVL	XAR0, #SCIFFCTA
	OR		*XAR0, #(1<<14)			;Write a 1 to clear ABD bit (bit 14)

;*** Finish up and Start the BootRom over again
	EDIS							;Disable EALLOW protected register access
	TRAP #0							;Trap to the reset vector to restart ROM bootloader


***********************************************************************
	.end                    ; end of file CodeStartBranch.asm