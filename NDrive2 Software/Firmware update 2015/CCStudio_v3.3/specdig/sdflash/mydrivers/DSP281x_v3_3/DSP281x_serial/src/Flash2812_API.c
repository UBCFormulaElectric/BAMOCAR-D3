/*H*****************************************************************************
*
* $Archive:: /TI/product/F28xxSerialFlash/src/Flash2812_API.c                  $
* $Revision:: 3                                                                $
* $Date:: 11/14/03 10:20a                                                      $
* $Author:: Tonyc                                                              $
*
* HISTORY:
*  Mar 21, 2007: Modified Example_CsmUnlock() to overwrite security passwords
*                in RAM after CSM is unlocked. (D. Alter)
*
* DESCRIPTION: Interface to TI F2812 API.  Ported from the TI example code
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
#define drvf2812sci_c


/*---- Flash API include file -------------------------------------------------*/
#include "DSP281x_Device.h"   
#include "Flash281x_API_Library.h"
#include <stdio.h>

/*---- example include file -------------------------------------------------*/

/*--- Global variables used to interface to the flash routines */

#if FLASH_F2810 
	#define SECTOR_F28XX SECTOR_F2810
#elif FLASH_F2811
	#define SECTOR_F28XX SECTOR_F2811
#elif FLASH_F2812
	#define SECTOR_F28XX SECTOR_F2812
#endif

// These are used to call the toggle test function.

#define GPAMUX       (volatile Uint16*)0x000070C0   /* GPIO A mux control register */
#define GPATOGGLE    (volatile Uint16*)0x000070E3   /* GPIO A toggle register */
#define GPFMUX       (volatile Uint16*)0x000070D4   /* GPIO F mux control register */
#define GPFTOGGLE    (volatile Uint16*)0x000070F7   /* GPIO F toggle register */
#define GPGMUX       (volatile Uint16*)0x000070D8   /* GPIO G mux control register */
#define GPGTOGGLE    (volatile Uint16*)0x000070FB   /* GPIO G toggle register */

#define GPIOA0_PWM1_MASK      0x0001
#define GPIOF12_MDXA_MASK     0x1000
#define GPIOF4_SCITXDA_MASK   0x0010
#define GPIOF14_XF_MASK       0x4000
#define GPIOG4_SCITXDB_MASK   0x0010

FLASH_ST EraseStatus;
FLASH_ST ProgStatus;
FLASH_ST VerifyStatus;

void (*p) (void) = NULL;

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
    volatile Uint16 temp;
	volatile Uint16 *p;
    
    // Load the key registers with the current password
    // These are defined in Example_Flash2812_CsmKeys.asm
    
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
 
	// Overwrite the downloaded passwords in RAM for good measure
	p = (volatile Uint16*)&PRG_key0;	// Must use a pointer since PRG_keyx was declared as 'const'
	*p++ = 0;							// Overwrite PRG_key0
	*p++ = 0;							// Overwrite PRG_key1
	*p++ = 0;							// Overwrite PRG_key2
	*p++ = 0;							// Overwrite PRG_key3
	*p++ = 0;							// Overwrite PRG_key4
	*p++ = 0;							// Overwrite PRG_key5
	*p++ = 0;							// Overwrite PRG_key6
	*p = 0;								// Overwrite PRG_key7

    // If the CSM unlocked, return succes, otherwise return
    // failure.
    if ( (CsmRegs.CSMSCR.all & 0x0001) == 0) return STATUS_SUCCESS;
    else return STATUS_FAIL_CSM_LOCKED;
    
}

/*F***************************************************************************
* NAME:   SetupToggleTest 
*
* DESCRIPTION: Setup the toggle test during flash erase.
*       
* NOTES:  FLASH API BETA 1 has bug which limits use of this function.
*   
*F***************************************************************************/
static void SetupToggleTest()
{
	// The TI Beta1 Flash API has a bug in Flash_ToggleTest() function.
	// It will clobber other bits in the specified I/O register then
	// the one you want to toggle.  So restrict toggle bits to the
	// F reg as it would create problems on the SCIA port.
	//
	//
	// Note fixed in V1.00 API
	
	switch(PRG_option2) {
	  case 0:
	     break;
	  case 1:
	     Flash_ToggleTest(GPFMUX,GPFTOGGLE,GPIOF14_XF_MASK);
	     break;
	  case 2:
	     Flash_ToggleTest(GPAMUX,GPATOGGLE,GPIOA0_PWM1_MASK);
	     break;
	  case 3:
	     // Can't use SCI-A!!
	     // Flash_ToggleTest(GPFMUX,GPFTOGGLE,GPIOF4_SCITXDA_MASK);
	     break;
	  case 4:
	     Flash_ToggleTest(GPGMUX,GPGTOGGLE,GPIOG4_SCITXDB_MASK);
	     break;
	  case 5:
	     Flash_ToggleTest(GPFMUX,GPFTOGGLE,GPIOF12_MDXA_MASK);
	     break;
	  default:
	     break;
	}          
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
	Flash_CPUScaleFactor = SCALE_FACTOR;	// Set the Flash API scale factor
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
	if( PRG_option2 != 0 )
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
