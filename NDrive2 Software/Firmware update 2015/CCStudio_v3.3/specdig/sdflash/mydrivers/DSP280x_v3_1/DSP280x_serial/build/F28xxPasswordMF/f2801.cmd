/**********************************************************************
* File: f2801.cmd
*
* Description: Linker command file for F28xxPasswordMF project.  Only
*   the CSM unprotected RAM blocks M0 and M1 can used for this project.
*
* Devices: TMS320F2812, TMS320F2811, TMS320F2810,
*          TMS320F2808, TMS320F2806, TMS320F2801
*
* Author: David M. Alter, Texas Instruments Inc.
*
* History:
*   06/27/05 - original (D. Alter)
*
* (C) Copyright 2005 by Texas Instruments Incorporated
* All rights reserved
*
**********************************************************************/

MEMORY
{
PAGE 0:    /* Program Memory */
   M0SARAM     : origin = 0x000000, length = 0x000400     /* 1Kw M0 SARAM */

PAGE 1 :   /* Data Memory */
  /* The first 80 words of M1SARAM (0x400 - 0x44F) are reserved by the
     ROM bootloader.  Do not link any initialized sections here!
  */
   M1SARAM     : origin = 0x000450, length = 0x0003B0     /* 1Kw M1 SARAM */
}

 
SECTIONS
{
  /* Program memory (PAGE 0) sections */
   .text             : > M0SARAM,        PAGE = 0

  /* Data Memory (PAGE 1) sections */
   .data             : > M1SARAM,        PAGE = 1
   .bss              : > M1SARAM,        PAGE = 1
}

/******************* end of file ************************/
