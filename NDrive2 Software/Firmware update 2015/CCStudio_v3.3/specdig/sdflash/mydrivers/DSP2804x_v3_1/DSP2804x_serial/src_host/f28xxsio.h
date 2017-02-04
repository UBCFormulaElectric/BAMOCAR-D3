/*H***************************************************************************
*
* $Archive:: /TI/product/F28xxSerialFlash/src_host/f28xxsio.h                $
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

#ifndef f28xxsio_h
#define f28xxsio_h

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

/*---- data descriptions ---------------------------------------------------*/

/*---- global data declarations --------------------------------------------*/

/*---- global function prototypes ------------------------------------------*/

#ifdef GLOBAL
    #undef GLOBAL
#endif

#ifdef f28xxsio_c
   #define GLOBAL 
#else
   #define GLOBAL extern
#endif

GLOBAL void  SioInit();
GLOBAL int   SioOpen( char *Name, DWORD Baud );
GLOBAL int   SioClose( void );
GLOBAL int   SioPurgeComm( void );
GLOBAL int   SioPulseDtr( void );
GLOBAL int   SioSendMsg( char *pMsg, int Count );
GLOBAL int   SioRecvMsg( char *pMsg, int Count );
GLOBAL int   SioAutoBaud( DWORD Baud );
GLOBAL DWORD SioGetCurrentBaudRate( void );

#ifdef __cplusplus
}
#endif

#endif /* sd_com_h ---- END OF FILE ----------------------------------------*/

