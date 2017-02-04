MEMORY
{
PAGE 0 :
   FLASH_H          : origin = 0x300000, length = 0x008000
   FLASH_G	    : origin = 0x308000, length = 0x008000
   FLASH_F	    : origin = 0x310000, length = 0x008000
   FLASH_E	    : origin = 0x318000, length = 0x008000
   FLASH_D          : origin = 0x320000, length = 0x008000
   FLASH_C          : origin = 0x328000, length = 0x008000
   FLASH_B          : origin = 0x330000, length = 0x008000
   FLASH_A          : origin = 0x338000, length = 0x007FF8
   PASSWORDS        : origin = 0x33FFF8, length = 0x000008
}
 
SECTIONS
{
   flash_A          : > FLASH_A,     PAGE = 0
   flash_B          : > FLASH_B,     PAGE = 0
   flash_C          : > FLASH_C,     PAGE = 0
   flash_D          : > FLASH_D,     PAGE = 0
   flash_E          : > FLASH_E,     PAGE = 0
   flash_F          : > FLASH_F,     PAGE = 0
   flash_G          : > FLASH_G,     PAGE = 0
   flash_H          : > FLASH_H,     PAGE = 0
}
