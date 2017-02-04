/*
//###########################################################################
//
// FILE:	Example_Flash2812_API.cmd
//
// TITLE:	Linker Command File For F2812 Flash API Example
//
//###########################################################################
// $TI Release: Flash281x API V2.10 $
// $Release Date: August 4, 2005 $
//###########################################################################
*/

/* Define the memory block start/length for the F2812  
   PAGE 0 will be used to organize program sections
   PAGE 1 will be used to organize data sections

   Notes: 
         Memory blocks on F281x are uniform (ie same
         physical memory) in both PAGE 0 and PAGE 1.  
         That is the same memory region should not be
         defined for both PAGE 0 and PAGE 1.
         Doing so will result in corruption of program 
         and/or data. 
*/

MEMORY
{
PAGE 0:    /* Program Memory */
           /* Memory (RAM/FLASH/OTP) blocks can be moved to PAGE1 for data allocation */

   ZONE0       : origin = 0x002000, length = 0x002000     /* XINTF zone 0 */
   ZONE1       : origin = 0x004000, length = 0x002000     /* XINTF zone 1 */
   RAML0       : origin = 0x008000, length = 0x001000     /* on-chip RAM block L0 */
   RAML1       : origin = 0x009000, length = 0x001000     /* on-chip RAM block L1 */
   ZONE2       : origin = 0x080000, length = 0x080000     /* XINTF zone 2 */
   ZONE6       : origin = 0x100000, length = 0x080000     /* XINTF zone 6 */
   OTP         : origin = 0x3D7800, length = 0x000800     /* on-chip OTP */
   FLASHJ      : origin = 0x3D8000, length = 0x002000     /* on-chip FLASH */
   FLASHI      : origin = 0x3DA000, length = 0x002000     /* on-chip FLASH */
   FLASHH      : origin = 0x3DC000, length = 0x004000     /* on-chip FLASH */
   FLASHG      : origin = 0x3E0000, length = 0x004000     /* on-chip FLASH */
   FLASHF      : origin = 0x3E4000, length = 0x004000     /* on-chip FLASH */
   FLASHE      : origin = 0x3E8000, length = 0x004000     /* on-chip FLASH */
   FLASHD      : origin = 0x3EC000, length = 0x004000     /* on-chip FLASH */
   FLASHC      : origin = 0x3F0000, length = 0x004000     /* on-chip FLASH */
   FLASHB      : origin = 0x3F4000, length = 0x002000     /* on-chip FLASH */
   FLASHA      : origin = 0x3F6000, length = 0x001F80     /* on-chip FLASH */
   CSM_RSVD    : origin = 0x3F7F80, length = 0x000076     /* Part of FLASHA.  Program with all 0x0000 when CSM is in use. */
   BEGIN       : origin = 0x3F7FF6, length = 0x000002     /* Part of FLASHA.  Used for "boot to Flash" bootloader mode. */
   CSM_PWL     : origin = 0x3F7FF8, length = 0x000008     /* Part of FLASHA.  CSM password locations in FLASHA */
/* ZONE7       : origin = 0x3FC000, length = 0x003FC0     /* XINTF zone 7 available if MP/MCn=1 */ 
   ROM         : origin = 0x3FF000, length = 0x000FC0     /* Boot ROM available if MP/MCn=0 */
   RESET       : origin = 0x3FFFC0, length = 0x000002     /* part of boot ROM (MP/MCn=0) or XINTF zone 7 (MP/MCn=1) */
   VECTORS     : origin = 0x3FFFC2, length = 0x00003E     /* part of boot ROM (MP/MCn=0) or XINTF zone 7 (MP/MCn=1) */

PAGE 1 :   /* Data Memory */
           /* Memory (RAM/FLASH/OTP) blocks can be moved to PAGE0 for program allocation */
           /* Registers remain on PAGE1                                                  */

   RAMM0       : origin = 0x000000, length = 0x000400     /* on-chip RAM block M0 */
   RAMM1       : origin = 0x000400, length = 0x000400     /* on-chip RAM block M1 */
   RAMH0       : origin = 0x3F8000, length = 0x002000     /* on-chip RAM block H0 */
}

/* Allocate sections to memory blocks.
   Note:
         codestart user defined section in DSP28_CodeStartBranch.asm used to redirect code 
                   execution when booting to flash
         ramfuncs  user defined section to store functions that will be copied from Flash into RAM
*/ 
 
SECTIONS
{

   
   /* The Flash API functions can be grouped together as shown below.
      The defined symbols _Flash28_API_LoadStart, _Flash28_API_LoadEnd
      and _Flash28_API_RunStart are used to copy the API functions out
      of flash memory and into SARAM */
      
   Flash28_API:
   {
        -lFlash2812_API_V210.lib(.econst) 
        -lFlash2812_API_V210.lib(.text)
   }                   LOAD = FLASHD, 
                       RUN = RAML0, 
                       LOAD_START(_Flash28_API_LoadStart),
                       LOAD_END(_Flash28_API_LoadEnd),
                       RUN_START(_Flash28_API_RunStart),
                       PAGE = 0
 
   /* Allocate program areas: */
   .cinit              : > FLASHA      PAGE = 0
   .pinit              : > FLASHA,     PAGE = 0
   .text               : > FLASHA      PAGE = 0
   
   /* User Defined Sections   */
   codestart           : > BEGIN       PAGE = 0
   ramfuncs            : LOAD = FLASHD, 
                         RUN = RAML0, 
                         LOAD_START(_RamfuncsLoadStart),
                         LOAD_END(_RamfuncsLoadEnd),
                         RUN_START(_RamfuncsRunStart),
                         PAGE = 0

   csmpasswds          : > CSM_PWL     PAGE = 0
   csm_rsvd            : > CSM_RSVD    PAGE = 0
   /* Allocate uninitalized data sections: */
   .stack              : > RAMM0       PAGE = 1
   .ebss               : > RAMH0       PAGE = 1
   .esysmem            : > RAMH0       PAGE = 1

   /* Initalized sections go in Flash */
   /* Needs to be on page 0 for SDFlash to program it */
   .econst             : > FLASHA      PAGE = 0      
   .switch             : > FLASHA      PAGE = 0      

   /* Allocate IQ math areas: */
   IQmath              : > FLASHC      PAGE = 0                  /* Math Code */
   IQmathTables        : > ROM         PAGE = 0, TYPE = NOLOAD   /* Math Tables In ROM */

   /* .reset is a standard section used by the compiler.  It contains the */ 
   /* the address of the start of _c_int00 for C Code.   /*
   /* When using the boot ROM this section and the CPU vector */
   /* table is not needed.  Thus the default type is set here to  */
   /* DSECT  */ 
   .reset              : > RESET,      PAGE = 0, TYPE = DSECT
   vectors             : > VECTORS     PAGE = 0, TYPE = DSECT

}