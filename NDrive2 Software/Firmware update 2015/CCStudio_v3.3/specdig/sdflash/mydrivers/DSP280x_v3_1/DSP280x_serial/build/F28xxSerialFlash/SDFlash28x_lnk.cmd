/*
F2801 linker command file for Serial SDFlash utility.  This file
will support F2801, F2806, and F2808 devices, since the '06 and '08
device RAM and peripheral memory maps are a superset of F2801.
*/

MEMORY
{
PAGE 0 :
   PRAMM0     : origin = 0x000000, length = 0x000200
   RAML0      : origin = 0x3f8000, length = 0x001000
   RESET      : origin = 0x3FFFC0, length = 0x000002     /* part of Boot ROM */
 

PAGE 1 : 
   DRAMM0      : origin = 0x000200, length = 0x000200

/* The first 80 words of RAMM1 (0x400 - 0x44F) are reserved for use by the
   ROM bootloader.  Do not link any initialized sections there.
*/
   RAMM1      : origin = 0x000400, length = 0x000400
}

SECTIONS
{

/* Compiler Required Sections */
   .text             : > RAML0,      PAGE = 0
   .cinit            : > PRAMM0,     PAGE = 0
   .const            : > PRAMM0,     PAGE = 0
   .econst           : > PRAMM0,     PAGE = 0      
   .pinit            : > PRAMM0,     PAGE = 0
   .reset            : > RESET,      PAGE = 0, TYPE = DSECT
   .switch           : > PRAMM0,     PAGE = 0

   .bss              : > RAMM1,      PAGE = 1
   .ebss             : > RAMM1,      PAGE = 1
   .cio              : > RAMM1,      PAGE = 1
   .stack            : > DRAMM0,     PAGE = 1
   .sysmem           : > RAMM1,      PAGE = 1
   .esysmem          : > RAMM1,      PAGE = 1

/* User defined sections */
   ramfuncs          : > RAML0,      PAGE = 0

}
