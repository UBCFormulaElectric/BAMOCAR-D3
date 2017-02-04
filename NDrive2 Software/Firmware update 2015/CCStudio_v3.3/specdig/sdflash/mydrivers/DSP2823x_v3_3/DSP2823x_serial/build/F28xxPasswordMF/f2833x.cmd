/**********************************************************************
* File: f2833x.cmd
*
* Description: Linker command file for F2833xPasswordMF project.  Only
*   the CSM unprotected RAM blocks M0 and M1 can used for this project.
*
* Devices: TMS320F28335,  TMS320F28334,  TMS320F28332
*          TMS320F28235,  TMS320F28234,  TMS320F28232
*
* Author: David M. Alter, Texas Instruments Inc.
*
* History:
*   11/29/07 - modified from f2801.cmd for F2833x devices (reserved boot ROM 
*              memory now in M0 instead of M1) (C. Peng)
*   06/27/05 - original (D. Alter)
*
* (C) Copyright 2005 by Texas Instruments Incorporated
* All rights reserved
*
**********************************************************************/

MEMORY
{
PAGE 0:    /* Program Memory */
 /* The first 80 words of M0SARAM (0x000 - 0x04F) are reserved by the
     ROM bootloader.  Do not link any initialized sections here!
  */
 
   M0SARAM     : origin = 0x000050, length = 0x0003B0     /* 1Kw M0 SARAM */

PAGE 1 :   /* Data Memory */
   M1SARAM     : origin = 0x000400, length = 0x000400     /* 1Kw M1 SARAM */
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
