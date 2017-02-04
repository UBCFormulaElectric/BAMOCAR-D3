/*H***************************************************************************
*
* $Archive:: /TI/product/F28xxSerialFlash/src_host/f28xxprg.h                $
* $Revision:: 2                                                              $
* $Date:: 10/29/03 11:34a                                                    $
* $Author:: Tonyc                                                            $
*
* DESCRIPTION:
*
* USAGE/LIMITATIONS:
*
* NOTES:
*   
* (C) Copyright 2000 by Spectrum Digital Incorporated
* All rights reserved
*
*H***************************************************************************/

#ifndef f28xxprg_h
#define f28xxprg_h

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

/*A***************************************************************************
* NAME:     
*
* USAGE:    
*
* NOTES:
*
*A***************************************************************************/

/*---- context -------------------------------------------------------------*/
#define PRG_VERSION                 1
#define PRG_REVISION                1

#define PRG_INTERFACE_TYPE_RS232    1 
#define PRG_INTERFACE_NAME          "GENERIC"   // Must be for SDFlash

#define PRG_FLAG_NONE               0x00000000
#define PRG_FLAG_NO_DATA            0x00000001L // If set the SDFlash will not
                                                // supply program or verify
                                                // data.  Assumes low level driver
                                                // reads the coff file.

// Define number of bits for address unit of known processor types
#define PRG_C24XX_BITS_PER_ADDR_UNIT  16
#define PRG_C28XX_BITS_PER_ADDR_UNIT  16
#define PRG_C54XX_BITS_PER_ADDR_UNIT  16
#define PRG_C55XX_BITS_PER_ADDR_UNIT  8
#define PRG_C6XXX_BITS_PER_ADDR_UNIT  8
#define PRG_ARM_BITS_PER_ADDR_UNIT    8

#define PRG_SUCCESS    0                
#define PRG_FAIL       1   
#define PRG_BUSY       2
#define PRG_MSG        3

/*---- data descriptions ---------------------------------------------------*/
typedef  void(* PRG_MESSAGE_CALLBACK)( DWORD Handle,DWORD OutputTab, char * pMsgString );

typedef struct sd_prg_interface
{
    int             StructSz;           // Size of this structure
    int             Version;            // Interface major version                    
    int             Revision;           // Interface minor revision                  
    int             Type;               // Interface type         
    int             isInitalized;       // True if intf. autoinit 
    char    *       Name;               // Interface name, will contain the
                                        // target family name
    unsigned long   Flags;              // Operation flags  
    int             BitsPerAddrUnit;    // Number of bits per minimum address unit
                                        // 8,16 or 32
    int (*Init )( DWORD *pHandle );
    int (*SetOptions)( DWORD Handle, const char * pArgString );

    int (*Status)( DWORD Handle );

    int (*Open)( DWORD Handle );

    int (*Close)( DWORD Handle );

    int (*SetMessageCallBack)( DWORD Handle, PRG_MESSAGE_CALLBACK pMsgCallBack );

    int (*FlashErase)( DWORD Handle );

    int (*FlashWrite)( DWORD Handle, DWORD Addr, DWORD Page, DWORD NumBytes,
                           char *pData );

    int (*FlashRead)( DWORD Handle, DWORD Addr, DWORD Page, DWORD NumBytes,
                          char *pData );

    int (*FlashVerify)( DWORD Handle, DWORD Addr, DWORD Page, DWORD NumBytes,
                            char *pData );                  

    int (*MemWrite)( DWORD Handle, DWORD Addr, DWORD Page, DWORD NumBytes,
                       char *pData );

    int (*MemRead)( DWORD Handle, DWORD Addr, DWORD Page, DWORD NumBytes,
                    char *pData );
}SD_PRG_INTERFACE;


/*---- global data declarations --------------------------------------------*/

/*---- global function prototypes ------------------------------------------*/

#ifdef GLOBAL
    #undef GLOBAL
#endif

#ifdef f28xxprg_c
   #define GLOBAL __declspec(dllexport)
#else
    #define GLOBAL __declspec(dllimport)
    //#define GLOBAL extern
#endif

GLOBAL int PRG_Init( DWORD *pHandle );

GLOBAL int PRG_SetOptions( DWORD Handle, const char * pArgString );

GLOBAL int PRG_Status( DWORD Handle );

GLOBAL int PRG_Open( DWORD Handle );

GLOBAL int PRG_Close( DWORD Handle );

GLOBAL int PRG_SetMessageCallBack( DWORD Handle, PRG_MESSAGE_CALLBACK pMsgCallBack );

GLOBAL int PRG_FlashErase( DWORD Handle );

GLOBAL int PRG_FlashWrite( DWORD Handle, DWORD Addr, DWORD Page, DWORD NumBytes,
                           char *pData );

GLOBAL int PRG_FlashRead( DWORD Handle, DWORD Addr, DWORD Page, DWORD NumBytes,
                          char *pData );

GLOBAL int PRG_FlashVerify( DWORD Handle, DWORD Addr, DWORD Page, DWORD NumBytes,
                            char *pData );                  

GLOBAL int PRG_MemWrite( DWORD Handle, DWORD Addr, DWORD Page, DWORD NumBytes,
                           char *pData );

GLOBAL int PRG_MemRead( DWORD Handle, DWORD Addr, DWORD Page, DWORD NumBytes,
                          char *pData );

GLOBAL int PRG_GetInterface( const SD_PRG_INTERFACE **pIntf );

#ifdef __cplusplus
}
#endif

#endif /* sd_com_h ---- END OF FILE ----------------------------------------*/

