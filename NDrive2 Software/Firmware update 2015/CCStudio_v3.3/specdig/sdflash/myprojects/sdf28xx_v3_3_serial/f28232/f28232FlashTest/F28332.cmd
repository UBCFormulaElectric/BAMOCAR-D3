MEMORY
{
PAGE 0 :
   FLASH_B          : origin = 0x330000, length = 0x008000
   FLASH_A          : origin = 0x338000, length = 0x007FF8
   PASSWORDS        : origin = 0x33FFF8, length = 0x000008
}
 
SECTIONS
{
   flash_A          : > FLASH_A,     PAGE = 0
   flash_B          : > FLASH_B,     PAGE = 0
}
