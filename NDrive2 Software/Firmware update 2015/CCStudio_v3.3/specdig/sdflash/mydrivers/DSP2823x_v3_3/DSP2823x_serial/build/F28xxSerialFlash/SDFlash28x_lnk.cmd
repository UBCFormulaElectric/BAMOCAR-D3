/*
F28335 M0 and M1 memories linker command file for Serial SDFlash utility.  This file
will support F28335, F28334, and F28332 devices.
*/

MEMORY
{
PAGE 0 :
   PRAMM1     : origin = 0x000400, length = 0x000200
   RAML0      : origin = 0x3f8000, length = 0x001000
   RESET      : origin = 0x3FFFC0, length = 0x000002     /* part of Boot ROM */
 

PAGE 1 : 
   DRAMM1      : origin = 0x000600, length = 0x000200

/* The first 80 words of RAMM0 (0x000 - 0x04F) are reserved for use by the
   ROM bootloader.  Do not link any initialized sections there.
*/
   RAMM0      : origin = 0x000050, length = 0x0003B0
}

SECTIONS
{

/* Compiler Required Sections */
   .text             : > RAML0,      PAGE = 0
   .cinit            : > PRAMM1,     PAGE = 0
   .const            : > PRAMM1,     PAGE = 0
   .econst           : > PRAMM1,     PAGE = 0      
   .pinit            : > PRAMM1,     PAGE = 0
   .reset            : > RESET,      PAGE = 0, TYPE = DSECT
   .switch           : > PRAMM1,     PAGE = 0

   .bss              : > RAMM0,      PAGE = 1
   .ebss             : > RAMM0,      PAGE = 1
   .cio              : > RAMM0,      PAGE = 1
   .stack            : > DRAMM1,     PAGE = 1
   .sysmem           : > RAMM0,      PAGE = 1
   .esysmem          : > RAMM0,      PAGE = 1

/* User defined sections */
   ramfuncs          : > RAML0,      PAGE = 0

}
