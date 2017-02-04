/*H***************************************************************************
*
* $Archive:: /TI/product/F28xxSerialFlash/src/f28xxpkt.h                     $
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

#ifndef f28xxpkt_h
#define f28xxpkt_h

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
//#define INCL_CRC_SUPPORT

/*---- data descriptions ---------------------------------------------------*/
#define MSG_PACKET_SIZE    256      // Max bytes in any packet
#define MSG_HEADER_SIZE    8        // Header size bytes (8 bit byte)
                                    // User data is the body
#define MSG_BODY_SIZE      (MSG_PACKET_SIZE - MSG_HEADER_SIZE )

/* --------------------------------------------------------------------------
*  Message header offsets when used.  MSG_HDR_SOH through MSG_HDR_CNTL are
*  always used.  CRC is optional.  Additional header information must follow
*  MSG_HDR_CNTL.
*---------------------------------------------------------------------------*/
#define MSG_HDR_SOH         0       /* Start of header offset.              */ 
#define MSG_HDR_SRC         1       /* Message source id                    */
#define MSG_HDR_DST         2       /* Message destination id               */
#define MSG_HDR_SEQ         3       /* Message sequence number              */
#define MSG_HDR_CNTH        4       /* High byte of the count               */
#define MSG_HDR_CNTL        5       /* Low byte of the count                */
#define MSG_HDR_CRCH        6       /* High byte of the CRC                 */
#define MSG_HDR_CRCL        7       /* Low byte of the CRC                  */

/* --------------------------------------------------------------------------
*  Define special control chars for communications ports.
*  The following codes are always placed in the MSG_HDR_SOH field.
*---------------------------------------------------------------------------*/
#define MSG_SOH   1         // Start of new message     
#define MSG_ACK   6         // Ack the message
#define MSG_NAK  21         // Nak the message

/* --------------------------------------------------------------------------
*  For simple point to point communications the PC is the host and the
*  target is the target.  
*---------------------------------------------------------------------------*/
#define MSG_HOST           0x66     // PC is assumed to be the host
#define MSG_TARGET         0x99     // 


#define PACKET_AVAILABLE   1        // Signal that packet data is available

/*---- global data declarations --------------------------------------------*/

/*---- global function prototypes ------------------------------------------*/

#ifdef GLOBAL
    #undef GLOBAL
#endif

#ifdef f28xxpkt_c 
	#define GLOBAL
#else
	#define GLOBAL extern
#endif

#if !defined( _WIN32 )

    GLOBAL int PKT_Open( const char * FileName );
    GLOBAL int PKT_Close( int Fd );
    GLOBAL int PKT_ProcessInput( int Fd );
    GLOBAL int PKT_ReleaseInput( int Fd  );
    GLOBAL int PKT_FormatInput( int Fd  );
    GLOBAL char * PKT_Get( int Fd );
    GLOBAL int PKT_NumDataRead( int MyFd );

    GLOBAL int PKT_ProcessOutput( int Fd, int Count, char * pMsg );
#else
    GLOBAL void PktInit( void );
    GLOBAL int  PktSendMsg( char *pMsg, int Count );
    GLOBAL int  PktRecvMsg( char *pMsg, int Count );
#endif

#ifdef __cplusplus
}
#endif

#endif /* sd_com_h ---- END OF FILE ----------------------------------------*/

