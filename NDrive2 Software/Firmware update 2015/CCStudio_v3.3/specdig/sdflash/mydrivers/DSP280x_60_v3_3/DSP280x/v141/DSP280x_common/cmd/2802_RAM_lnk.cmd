/*
// TI File $Revision: /main/2 $
// Checkin $Date: August 2, 2006   16:56:44 $
//###########################################################################
//
// FILE:    2802_RAM_lnk.cmd
//
// TITLE:   Linker Command File For 2802 examples that run out of RAM
//
//          This ONLY includes all SARAM blocks on the 2802 device.
//          This does not include flash or OTP. 
//
//          Keep in mind that L0 is protected by the code
//          security module.
//
//          What this means is in most cases you will want to move to 
//          another memory map file which has more memory defined.  
//
//###########################################################################
// $TI Release: DSP280x, DSP2801x Header Files V1.41 $
// $Release Date: August 7th, 2006 $
//###########################################################################
*/

/* ======================================================
// For Code Composer Studio V2.2 and later
// ---------------------------------------
// In addition to this memory linker command file, 
// add the header linker command file directly to the project. 
// The header linker command file is required to link the
// peripheral structures to the proper locations within 
// the memory map.
//
// The header linker files are found in <base>\DSP281x_Headers\cmd
//   
// For BIOS applications add:      DSP280x_Headers_BIOS.cmd
// For nonBIOS applications add:   DSP280x_Headers_nonBIOS.cmd    
========================================================= */

/* ======================================================
// For Code Composer Studio prior to V2.2
// --------------------------------------
// 1) Use one of the following -l statements to include the 
// header linker command file in the project. The header linker
// file is required to link the peripheral structures to the proper 
// locations within the memory map                                    */

/* Uncomment this line to include file only for non-BIOS applications */
/* -l DSP280x_Headers_nonBIOS.cmd */

/* Uncomment this line to include file only for BIOS applications */
/* -l DSP280x_Headers_BIOS.cmd */

/* 2) In your project add the path to <base>\DSP280x_headers\cmd to the
   library search path under project->build options, linker tab, 
   library search path (-i).
/*========================================================= */

/* Define the memory block start/length for the F2808  
   PAGE 0 will be used to organize program sections
   PAGE 1 will be used to organize data sections

   Notes: 
         Memory blocks on F2802 are uniform (ie same
         physical memory) in both PAGE 0 and PAGE 1.  
         That is the same memory region should not be
         defined for both PAGE 0 and PAGE 1.
         Doing so will result in corruption of program 
         and/or data. 
         
         L0 is mirrored - that is it can be accessed in
         high memory or low memory.
         For simplicity only one instance is used in this
         linker file. 
         
         Contiguous SARAM memory blocks can be combined 
         if required to create a larger memory block. 
*/


MEMORY
{
PAGE 0 :
   /* For this example, L0 is split between PAGE 0 and PAGE 1 */
   /* BEGIN is used for the "boot to SARAM" bootloader mode   */
   
   BEGIN      : origin = 0x000000, length = 0x000002             
   RAMM0      : origin = 0x000002, length = 0x0003FE
   PRAML0     : origin = 0x008000, length = 0x000800    
   RESET      : origin = 0x3FFFC0, length = 0x000002
   BOOTROM    : origin = 0x3FF000, length = 0x000FC0               

         
PAGE 1 : 

   /* For this example, L0 is split between PAGE 0 and PAGE 1 */

   BOOT_RSVD   : origin = 0x000400, length = 0x000080     /* Part of M1, BOOT rom will use this for stack */
   RAMM1       : origin = 0x000480, length = 0x000380     /* on-chip RAM block M1 */
   DRAML0   : origin = 0x008800, length = 0x000800     
}
 
 
SECTIONS
{
   /* Setup for "boot to SARAM" mode: 
      The codestart section (found in DSP28_CodeStartBranch.asm)
      re-directs execution to the start of user code.  */
   codestart        : > BEGIN,     PAGE = 0
   ramfuncs         : > RAMM0      PAGE = 0  
   .text            : > PRAML0,    PAGE = 0
   .cinit           : > RAMM0,     PAGE = 0
   .pinit           : > RAMM0,     PAGE = 0
   .switch          : > RAMM0,     PAGE = 0
   .reset           : > RESET,     PAGE = 0, TYPE = DSECT /* not used, */
   
   .stack           : > RAMM1,     PAGE = 1
   .ebss            : > DRAML0,    PAGE = 1
   .econst          : > DRAML0,    PAGE = 1      
   .esysmem         : > RAMM1,     PAGE = 1

   IQmath           : > PRAML0,    PAGE = 0
   IQmathTables     : > BOOTROM,   type = NOLOAD, PAGE = 0

     
}

/*
//===========================================================================
// End of file.
//===========================================================================
*/