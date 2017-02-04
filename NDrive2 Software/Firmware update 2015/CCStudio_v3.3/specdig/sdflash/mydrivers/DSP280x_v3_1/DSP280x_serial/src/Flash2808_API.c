/*H*****************************************************************************
*
* $Archive:: /TI/product/F28xxSerialFlash/src/Flash2812_API.c                  $
* $Revision:: 3                                                                $
* $Date:: 11/14/03 10:20a                                                      $
* $Author:: Tonyc                                                              $
*
* HISTORY:
*  June 27, 2005: Ported to F280x from original Flash2812_API.c.  Commented
*                 out password match flow in function Example_CSMUnlock().
*                 This is now handled by the password match flow download.
*                 (D. ALTER)
*
* DESCRIPTION: Interface to TI F2808 API.  Ported from the TI example code
*              so support SDFlash.
*
* GLOBALS 
*
* PUBLIC FUNCTIONS:
*                              
* PRIVATE FUNCTIONS:
*
* USAGE/LIMITATIONS:
*
* NOTES: 
*   
* (C) Copyright 1998-2003 by Spectrum Digital Incorporated
* All rights reserved
*
*H***************************************************************************/
#define drvf2808sci_c


/*---- Flash API include file -------------------------------------------------*/
#include "DSP280x_Device.h"   
#include "Flash280x_API_Library.h"
#include <stdio.h>

/*---- example include file -------------------------------------------------*/

/*--- Global variables used to interface to the flash routines */

#if FLASH_F2801
	#define SECTOR_F28XX SECTOR_F2801
#elif FLASH_F2802
	#define SECTOR_F28XX SECTOR_F2802
#elif FLASH_F2806
	#define SECTOR_F28XX SECTOR_F2806
#elif FLASH_F2808
	#define SECTOR_F28XX SECTOR_F2808
#elif FLASH_F2809
	#define SECTOR_F28XX SECTOR_F2809
#endif

FLASH_ST EraseStatus;
FLASH_ST ProgStatus;
FLASH_ST VerifyStatus;

// For erased flash the password locations will all be 0xFFFF       
const  Uint16   PRG_key0  = 0xFFFF; // PSWD bits 15-0
const  Uint16   PRG_key1  = 0xFFFF; // PSWD bits 31-16
const  Uint16   PRG_key2  = 0xFFFF; // PSWD bits 47-32
const  Uint16   PRG_key3  = 0xFFFF; // PSWD bits 63-48
const  Uint16   PRG_key4  = 0xFFFF; // PSWD bits 79-64   
const  Uint16   PRG_key5  = 0xFFFF; // PSWD bits 95-80   
const  Uint16   PRG_key6  = 0xFFFF; // PSWD bits 111-96   
const  Uint16   PRG_key7  = 0xFFFF; // PSWD bits 127-112   

extern Uint16   PRG_command;        // Always required
extern Uint32   PRG_paddr;          // Standard options
extern Uint16   PRG_page;
extern Uint16   PRG_length;
extern Uint16   PRG_option1;

extern Uint16   PRG_option2;        // Extended options
extern Uint16   PRG_option3;
extern Uint16   PRG_option4;

extern Uint16   PRG_status;	     // Status that will be sent back
extern Uint16 * PRG_buf;

/*F***************************************************************************
* NAME:  Example_CsmUnlock()  
*
* DESCRIPTION: Unlock CSM.
*       
* NOTES:
*   
*F***************************************************************************/
Uint16 Example_CsmUnlock()
{

// For F280x devices, the password match flow is performed by the DSP code
// in the project F28xxPasswordMF.out.  This gets loaded by the serial
// SDFlash before the F280xSerialFlash.out file.  F280x users should
// modify and rebuild the F28xxPasswordMF project to include their
// proper passwords.
/*
    volatile Uint16 temp;
    
    // Load the key registers with the current password
    EALLOW;
    CsmRegs.KEY0 = PRG_key0;
    CsmRegs.KEY1 = PRG_key1;
    CsmRegs.KEY2 = PRG_key2;
    CsmRegs.KEY3 = PRG_key3;
    CsmRegs.KEY4 = PRG_key4;
    CsmRegs.KEY5 = PRG_key5;
    CsmRegs.KEY6 = PRG_key6;
    CsmRegs.KEY7 = PRG_key7;
    EDIS;

    // Perform a dummy read of the password locations
    // if they match the key values, the CSM will unlock 
    temp = CsmPwl.PSWD0;
    temp = CsmPwl.PSWD1;
    temp = CsmPwl.PSWD2;
    temp = CsmPwl.PSWD3;
    temp = CsmPwl.PSWD4;
    temp = CsmPwl.PSWD5;
    temp = CsmPwl.PSWD6;
    temp = CsmPwl.PSWD7;

*/
 
    // If the CSM unlocked, return success, otherwise return
    // failure.
    if ( (CsmRegs.CSMSCR.all & 0x0001) == 0) return STATUS_SUCCESS;
    else return STATUS_FAIL_CSM_LOCKED;
    
}

/*F***************************************************************************
* NAME:   SetupToggleTest 
*
* DESCRIPTION: Setup the toggle test during flash erase.
*       
* NOTES: none
*   
*F***************************************************************************/
static void SetupToggleTest(void)
{

Uint32 mask1, mask2;

	asm(" EALLOW");

	if(PRG_option2 < 16)										// Selected pin is in GPAMUX1
	{
		mask1 = 3L << (PRG_option2 << 1);						// pin mux mask
		mask2 = 1L << PRG_option2;								// pin data mask
		GpioCtrlRegs.GPAMUX1.all &= ~mask1;						// Configure the pin mux for GPIO
		GpioCtrlRegs.GPADIR.all |= mask2;						// Configure the pin as an output
		Flash_ToggleTest(&GpioDataRegs.GPATOGGLE.all, mask2);	// Run the toggle test
	}
	else if(PRG_option2 < 32)									// Selected pin is in GPAMUX2
	{
		mask1 = 3L << ((PRG_option2 - 16) << 1);					// pin mux mask
		mask2 = 1L << PRG_option2;								// pin data mask
		GpioCtrlRegs.GPAMUX2.all &= ~mask1;						// Configure the pin mux for GPIO
		GpioCtrlRegs.GPADIR.all |= mask2;						// Configure the pin as an output
		Flash_ToggleTest(&GpioDataRegs.GPATOGGLE.all, mask2);	// Run the toggle test
	}
	else														// Selected pin is in GPBMUX1
	{
		mask1 = 3L << ((PRG_option2 - 32) << 1);					// pin mux mask
		mask2 = 1L << (PRG_option2 - 32);						// pin data mask
		GpioCtrlRegs.GPBMUX1.all &= ~mask1;						// Configure the pin mux for GPIO
		GpioCtrlRegs.GPBDIR.all |= mask2;						// Configure the pin as an output
		Flash_ToggleTest(&GpioDataRegs.GPBTOGGLE.all, mask2);	// Run the toggle test
	}

	asm(" EDIS");

}

/*F***************************************************************************
* NAME:   FLASH28_Init() 
*
* DESCRIPTION: Init the flash API.
*       
* NOTES:  
*   
*F***************************************************************************/
Uint16 FLASH28_Init( void )
{
	Uint16 Status;
	Status = Example_CsmUnlock();
	if(Status != STATUS_SUCCESS) 
	{
	   return( Status );
	}
	Flash_CPUScaleFactor = SCALE_FACTOR;
	Flash_CallbackPtr = NULL;				// Init the callback pointer (NULL = no callback)
	return( Status );
}

/*F***************************************************************************
* NAME:   FLASH28_Erase() 
*
* DESCRIPTION: Erase 1 to N sectors of flash
*       
* NOTES:  PRG_option1 = Flash sector mask if used. 
*         PRG_option2 = Pin to toggle during flash erase
*   
*F***************************************************************************/
Uint16 FLASH28_Erase( void )
{
	Uint16 Status = STATUS_SUCCESS;
	Uint16 Sectors = SECTOR_F28XX;
	
	// Sectors to erase are in PRG_options1.  If PRG_options1 is
	// 0 then erase all the sectors.
	if( PRG_option1 != 0 )
		Sectors &= PRG_option1;
	
	// The toggle test flags are in PRG_option2.
	if( PRG_option2 <= 34 )
		SetupToggleTest();
	
	Status = Flash_Erase(Sectors,&EraseStatus);
	
	return( Status );
}

/*F***************************************************************************
* NAME:   FLASH28_Program() 
*
* DESCRIPTION: Program a block of flash
*       
* NOTES:  
*   
*F***************************************************************************/
Uint16 FLASH28_Program( void )
{
	Uint16 Status;
	Uint16 *Flash_ptr = (Uint16*)PRG_paddr;
	Uint32 Length     = (Uint32)PRG_length;         // Number of 16-bit values to be programmed
	Uint16 *Buffer    = (Uint16*)PRG_buf;
	
	Status = Flash_Program( Flash_ptr,Buffer,Length,&ProgStatus);
	
	return( Status );
}

/*F***************************************************************************
* NAME:   FLASH28_Verify() 
*
* DESCRIPTION: Verify a block of flash with simple checksum
*       
* NOTES:  
*   
*F***************************************************************************/
Uint16 FLASH28_Verify(void )
{
	
	Uint16 CheckSum16;
	Uint16 *Flash_ptr = (Uint16*)PRG_paddr;
	Uint32 Length     = (Uint32)PRG_length;         // Number of 16-bit values to be programmed

	
	CheckSum16 = 0;
	while( Length-- )
		CheckSum16 += *Flash_ptr++;
	
	return ( CheckSum16 == PRG_option4 ) ? STATUS_SUCCESS :	STATUS_FAIL_VERIFY;
	
}
