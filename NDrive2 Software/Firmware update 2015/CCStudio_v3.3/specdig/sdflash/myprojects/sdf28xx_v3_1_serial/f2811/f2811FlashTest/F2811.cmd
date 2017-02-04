MEMORY
{
PAGE 0 :
   FLASH_J      : origin = 0x3D8000, length = 0x002000
   FLASH_I      : origin = 0x3DA000, length = 0x002000
   FLASH_H      : origin = 0x3DC000, length = 0x004000
   FLASH_G      : origin = 0x3E0000, length = 0x004000
   FLASH_F      : origin = 0x3E4000, length = 0x004000
   FLASH_E      : origin = 0x3E8000, length = 0x004000
   FLASH_D      : origin = 0x3EC000, length = 0x004000
   FLASH_C      : origin = 0x3F0000, length = 0x004000
   FLASH_B      : origin = 0x3F4000, length = 0x002000
   FLASH_A      : origin = 0x3F6000, length = 0x001FF8
   PASSWORDS    : origin = 0x3F7FF8, length = 0x000008
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
   flash_I          : > FLASH_I,     PAGE = 0
   flash_J          : > FLASH_J,     PAGE = 0
}

