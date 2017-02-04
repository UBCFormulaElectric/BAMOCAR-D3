/*H***************************************************************************
*
* $Archive:: /TI/product/F28xxSerialFlash/src/flash.h                        $
* $Revision:: 3                                                              $
* $Date:: 11/14/03 10:20a                                                    $
* $Author:: Tonyc                                                            $
*
* DESCRIPTION:
*
* USAGE/LIMITATIONS:
*
* NOTES:
*
* The serial flash packet has three main parts:
*    A. Comm Header   - 8 Bytes
*    B. Flash Command - 20 Bytes
*    C. Flash Data    - Optional, not to exceed MSG_BODY_SIZE - 
*
*  == Comm Header, see f28xxpkt.c/.h for details
*        Byte-0    Start of header SOH or ACK/NAK in a reply packet.
*        Byte-1    Message source tag MSG_HOST, MSG_TARGET
*        Byte-2    Message destination tag MSG_HOST, MSG_TARGET
*        Byte-3    Incrementing sequence number
*        Byte-4    Message byte count high.  Count includes user+header
*        Byte-5    Message byte coung low.
*        Byte-6    Message CRC high if used or 0
*        Byte-7    Message CRC low if used or 0
*
* == Flash Command
*        Byte-8-9		PRG_command
*        Byte-10-13     PRG_paddr
*        Byte-14-15     PRG_page
*        Byte-16-17     PRG_length
*        Byte-18-19     PRG_option1
*        Byte-20-21     PRG_option2
*        Byte-22-23     PRG_option3
*        Byte-24-25     PRG_option4
*        Byte-26-27     PRG_status
*
* == Flash Data
*        Byte-28-EOP    
*
* The user does not see the Comm Header so all indexes into the byte
* stream should be zero referenced from the first byte of the flash
* command block.  The total size of user data is defined by MSG_BODY_SIZE
* in f28xxpkt.h.  The size of the command block is defined in this
* file as SIZE_COMMAND_BLOCK.  The size of the flash data area is 
* defined in this file as SIZE_FLASH_DATA.
*
* (C) Copyright 2003 by Spectrum Digital Incorporated
* All rights reserved
*H***************************************************************************/

#ifndef flash_h
#define flash_h

/*---- compilation control switches ----------------------------------------*/
#ifdef __cplusplus
extern "C" {
#endif
/*****************************************************************************
* INCLUDE FILES (minimize nesting of header files)
*****************************************************************************/

/*---- system and platform files -------------------------------------------*/

/*---- program files -------------------------------------------------------*/

/*****************************************************************************
* FILE CONTENT
*****************************************************************************/

/*****************************************************************************
* FUNCTIONAL AREA DETAIL
*****************************************************************************/

/*---- context -------------------------------------------------------------*/

/*---- data descriptions ---------------------------------------------------*/
#define FLASH_TYPE_NULL          0      // Don't care
#define FLASH_TYPE_MAIN          1		// Main flash block
#define FLASH_TYPE_PARM          2		// Parmaeter block
#define FLASH_TYPE_BOOT          3   	// Boot block
     
/*- Command codes used by host and f28xx command handler. -----------------*/
#define CMD_LOOPBACK         1          // Simple loop back data in to out
#define CMD_MEM_WRITE		 2          // Read block of memory
#define CMD_MEM_READ		 3          // Write a block of memory
#define CMD_FLASH_ERASE		10          // Erase a block of flash
#define CMD_FLASH_PROGRAM   11          // Program a block of flash  
#define CMD_FLASH_VERIFY    12          // Verify a block of flash 
#define CMD_FLASH_READ      13          // Read flash. May not be same as 
                                        // MEM_READ if using serial device

/* Bytes offests of the FLASH command arguments ---------------------------*/
#define CMDBYTE_PRG_COMMAND  0          // 2 BYTES
#define CMDBYTE_PRG_PADDR    2          // 4 BYTES
#define CMDBYTE_PRG_PAGE     6          // 2 BYTES
#define CMDBYTE_PRG_LENGTH   8          // 2 BYTES
#define CMDBYTE_PRG_OPTION1 10          // 2 BYTES
#define CMDBYTE_PRG_OPTION2 12          // 2 BYTES
#define CMDBYTE_PRG_OPTION3 14          // 2 BYTES
#define CMDBYTE_PRG_OPTION4 16          // 2 BYTES
#define CMDBYTE_PRG_STATUS  18          // 2 BYTES

#define SIZE_COMMAND_BLOCK  20          // Total number bytes in command blk 
#define SIZE_FLASH_DATA     ( MSG_BODY_SIZE - SIZE_COMMAND_BLOCK )

/* Error codes returned in the status value -------------------------------*/
#define PRG_STATUS_SUCCESS     		0
#define PRG_STATUS_BUSY             1
#define PRG_STATUS_FAIL_INIT        2
#define PRG_STATUS_FAIL_ERASE       3
#define PRG_STATUS_FAIL_PROGRAM     4
#define PRG_STATUS_FAIL_VERIFY      5
#define PRG_STATUS_CMD_UNSUPPORTED  6  // the command is not supported
#define PRG_STATUS_CMD_INVALID      7  // The command args were invalid 

/*A***************************************************************************
* NAME:  Buffer Macros   
*
* USAGE: 
*    These Macros should be used to fill elements in to the packet buffer.
*
* NOTES:
*    The data in the buffer is in Big-Endian format.  MSB in low address. 
*    Big-Endian format makes viewing the packet stream much easier. 
*
*A***************************************************************************/

#define Get8( Buf, Data )  \
			  Data  = ( *Buf++ )

#define Put8( Buf, Data ) \
            (*Buf++) = ((char)(Data)) 

#define Get16( Buf, Data )  \
           {Data   =  ((unsigned short)( *Buf++ ) <<     8 ); \
            Data  |=  ((unsigned short)( *Buf++ ) & 0x00ff );}

#define Put16( Buf, Data ) \
           {( *Buf++ ) = ((char)((Data) >> 8)); \
            ( *Buf++ ) = ((char)((Data)     ));}

#define Get32( Buf, Data )  \
           {Data   = (((unsigned long)( *Buf++ ) & 0xff) << 24 );\
            Data  |= (((unsigned long)( *Buf++ ) & 0xff) << 16 );\
            Data  |= (((unsigned long)( *Buf++ ) & 0xff) << 8  );\
            Data  |= (((unsigned long)( *Buf++ ) & 0xff)       );}

#define Put32( Buf, Data ) \
           {( *Buf++ ) = ((char)((Data) >> 24)); \
            ( *Buf++ ) = ((char)((Data) >> 16)); \
            ( *Buf++ ) = ((char)((Data) >>  8)); \
            ( *Buf++ ) = ((char)((Data)      ));}


       
/*---- global function prototypes ------------------------------------------*/
#ifdef __cplusplus
}
#endif

#endif /* iosys_h --------- END OF FILE ------------------------------------*/

