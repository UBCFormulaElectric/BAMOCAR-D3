//###########################################################################
//
// FILE:  Example_Flash281x_API.h	
//
// TITLE: F281x Flash API example include file
//
// DESCRIPTION:
//
//###########################################################################
// $TI Release: Flash281x API V2.10 $
// $Release Date: August 4, 2005 $
//###########################################################################


#ifndef EXAMPLE_FLASH2812_API_H
#define EXAMPLE_FLASH2812_API_H



/*---- flash program files -------------------------------------------------*/
#include "Flash281x_API_Library.h"


/*---------------------------------------------------------------------------
   Functions used by this example
*---------------------------------------------------------------------------*/

void Example_ToggleTest(Uint16 Pin);    // Run the ToggleTest
Uint16 Example_CsmUnlock(void);         // Unlock the Code Security Module
void Example_CallFlashAPI(void);        // Kernel function that interfaces to the API
void Example_Error(Uint16 Status);      // If an error, stop here
void Example_Done(void);                // If done, stop here
void Example_MemCopy(Uint16 *SourceAddr, Uint16* SourceEndAddr, Uint16* DestAddr);

/*---------------------------------------------------------------------------
  Data/Program Buffer used for testing the flash API functions
---------------------------------------------------------------------------*/

#define  WORDS_IN_FLASH_BUFFER 0x800               // Programming data buffer, Words
volatile Uint16  Buffer[WORDS_IN_FLASH_BUFFER];

/*---------------------------------------------------------------------------
  Symbols used to copy support functions from Flash to RAM 
  These symbols are assigned by the linker.  Refer to the .cmd file
---------------------------------------------------------------------------*/

extern Uint16 RamfuncsLoadStart;
extern Uint16 RamfuncsLoadEnd;
extern Uint16 RamfuncsRunStart;

/*-----------------------------------------------------------------------------
     Specify the PLLCR (PLL Control Register) value.   

      Uncomment the appropriate line by removing the leading double slash: // 
      Only one statement should be uncommented.

      The user's application must set the PLLCR Register before calling any
      of the Flash API functions.
 
      Example:  CLKIN is a 30MHz crystal.  
                The user wants to have a 150Mhz CPU clock (SYSCLKOUT = 150MHz).  
                In this case, PLLCR must be set to 10 (0x000A)
                Uncomment the line: #define PLLCR_VALUE 10
                Comment out the remaining lines with a double slash: //
-----------------------------------------------------------------------------*/

#define PLLCR_VALUE  0x000A     // SYSCLKOUT = (OSCLK*10)/2
// #define PLLCR_VALUE   0x0009     // SYSCLKOUT = (OSCLK*9)/2
// #define PLLCR_VALUE   0x0008     // SYSCLKOUT = (OSCLK*8)/2
// #define PLLCR_VALUE   0x0007     // SYSCLKOUT = (OSCLK*7)/2
// #define PLLCR_VALUE   0x0006     // SYSCLKOUT = (OSCLK*6)/2
// #define PLLCR_VALUE   0x0005     // SYSCLKOUT = (OSCLK*5)/2
// #define PLLCR_VALUE   0x0004     // SYSCLKOUT = (OSCLK*4)/2
// #define PLLCR_VALUE   0x0003     // SYSCLKOUT = (OSCLK*3)/2
// #define PLLCR_VALUE   0x0002     // SYSCLKOUT = (OSCLK*2)/2
// #define PLLCR_VALUE   0x0001     // SYSCLKOUT = (OSCLK*1)/2
// #define PLLCR_VALUE   0x0000     // SYSCLKOUT = (OSCLK)/2 (PLL Bypassed)



/*---------------------------------------------------------------------------
   These key values are used to unlock the CSM by this example
   They are defined in Example_Flash2812_CsmKeys.asm
--------------------------------------------------------------------------*/
extern Uint16 PRG_key0;        //   CSM Key values
extern Uint16 PRG_key1;
extern Uint16 PRG_key2;
extern Uint16 PRG_key3;
extern Uint16 PRG_key4;
extern Uint16 PRG_key5;
extern Uint16 PRG_key6;
extern Uint16 PRG_key7;  

/*---------------------------------------------------------------------------
   These definitions are used to call the toggle test function
--------------------------------------------------------------------------*/
#define TOGGLE_XF        0x0001
#define TOGGLE_PWM1      0x0002
#define TOGGLE_SCITXDA   0x0003
#define TOGGLE_SCITXDB   0x0004
#define TOGGLE_MDXA      0x0005

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

/*---------------------------------------------------------------------------
   These register definitions are used in this example.  This is done
   to allow for a stand alone example that is not dependant on the
   DSP28 Header files for now.  
   
   This may be changed in the future to use the headerfiles. 
--------------------------------------------------------------------------*/

#define FBANKWAIT    (volatile Uint16*)0x00000A86   /* Flash Waitstate control */
#define FOTPWAIT     (volatile Uint16*)0x00000A87   /* OTP Waitstate control */
#define WDCR         (volatile Uint16*)0x00007029   /* Watchdog control register */
#define PLLCR        (volatile Uint16*)0x00007021   /* PLL Control Register */
#define WDKEY        (volatile Uint16*)0x00007025   /* Watchdog key register */
#define CSMSCR       (volatile Uint16*)0x00000AEF   // CSM status and control register 
#define KEY0         (volatile Uint16*)0x00000AE0   /* low word of the 128-bit key */
#define KEY1         (volatile Uint16*)0x00000AE1   /* next word in 128-bit key */
#define KEY2         (volatile Uint16*)0x00000AE2   /* next word in 128-bit key */ 
#define KEY3         (volatile Uint16*)0x00000AE3   /* next word in 128-bit key */
#define KEY4         (volatile Uint16*)0x00000AE4   /* next word in 128-bit key */
#define KEY5         (volatile Uint16*)0x00000AE5   /* next word in 128-bit key */
#define KEY6         (volatile Uint16*)0x00000AE6   /* next word in 128-bit key */
#define KEY7         (volatile Uint16*)0x00000AE7   /* high word of the 128-bit key */
#define PWL0         (volatile Uint16*)0x003F7FF8   /* Password 0 */
#define PWL1         (volatile Uint16*)0x003F7FF9   /* Password 1 */
#define PWL2         (volatile Uint16*)0x003F7FFA   /* Password 2 */
#define PWL3         (volatile Uint16*)0x003F7FFB   /* Password 3 */
#define PWL4         (volatile Uint16*)0x003F7FFC   /* Password 4 */
#define PWL5         (volatile Uint16*)0x003F7FFD   /* Password 5 */
#define PWL6         (volatile Uint16*)0x003F7FFE   /* Password 6 */
#define PWL7         (volatile Uint16*)0x003F7FFF   /* Password 7 */

//---------------------------------------------------------------------------
// Common CPU Definitions used by this example:
//

#define	 EALLOW	asm(" EALLOW")
#define	 EDIS	asm(" EDIS")
#define  DINT   asm(" setc INTM")


#endif // ---- End of EXAMPLE_FLASH2812_API_H     
