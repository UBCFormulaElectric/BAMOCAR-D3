/*H***************************************************************************
*
* $Archive:: /TI/product/F28xxSerialFlash/src/drv2812sci.h                   $
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
* (C) Copyright 1997 by Spectrum Digital Incorporated
* All rights reserved
*
*H***************************************************************************/

#ifndef drv2812sci_h
#define drv2812sci_h

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
#define SCI_NUM_PORTS       2       /* Supports both SCIA and SCIB          */

/*---------------------------------------------------------------------------
* The device driver name is "SCI".  SCIA is assigned name COM1, SCIB is 
* assigned name COM2.
*---------------------------------------------------------------------------*/
#define SCI_DEV_NAME        "SCI"


/*--Device I/O control -----------------------------------------------------*/
#define SCI_FIONREAD        1       /* get num chars available to read      */
#define SCI_FIOFLUSH        2       /* flush any chars in buffers           */
#define SCI_FIOOPTIONS      3       /* set options (FIOSETOPTIONS)          */
#define SCI_FIOBAUDRATE     4       /* set serial baud rate                 */
#define SCI_FIONWRITE		5       /* get num chars still to be written    */
#define SCI_FIOISATTY       6       /* is a tty                             */
#define SCI_FIORFLUSH       7       /* flush any chars in read buffers      */
#define SCI_FIOWFLUSH       8       /* flush any chars in write buffers     */
#define SCI_FIOFSTATFSGET   9       /* get file system status info          */
#define SCI_FIOCLRCOM      12       /* clear the communications error       */
#define SCI_FIOAUTOBAUD    13       /* Autobaud                             */

#if !defined( _WIN32 )
    #define ODD_PARITY          0
    #define EVEN_PARITY         1
    #define NO_PARITY           0

    #define TWO_STOP_BITS       1
    #define ONE_STOP_BIT        0

    #define BAUD_115200    11520	    
    #define BAUD_57600      5760
    #define BAUD_38400      3840
    #define BAUD_19200      1920
    #define BAUD_9600        960
    #define BAUD_4800        480
    #define BAUD_2400        240
    #define BAUD_1200        120    
#endif
    
/* Define SCI buffer with 1 pad byte ---------------------------------------*/    
#define SCI_BUFFER_SIZE(x)  (x+1) 

/* Define method to turn on/off global interrupts to interrupt protect      */
/* critical code section.                                                   */
#define SCI_INT_DISABLE      DINT  /* global enable                         */
#define SCI_INT_ENABLE       EINT  /* global disable                        */


/* Define method to post SCI events                                         */
#if defined( SCI_SOURCE_FILE )
	extern volatile Uint16 gPostedEvents;
#endif

#define SCI_POST_EVENT( x )   (gPostedEvents |= (x))
#define SCI_UNPOST_EVENT( x ) (gPostedEvents &= (~(x)))

#define SCI_EVT_ERROR       0x0001 /* General SCI xmit/recv error event     */
#define SCIA_EVT_DATA       0x0002 /* SCI data available event channel A    */
#define SCIB_EVT_DATA       0x0004 /* SCI data available event channel B    */

#define SCI_ERR_SUCCESS          0 /* Function completed successfully       */
#define SCI_ERR_FAIL            -1 /* Function failed                       */
#define SCI_ERR_WRITE_TIMEOUT   -2 /* Xmit write timed out                  */
#define SCI_ERR_READ            -3 /* Recv error                            */

#if !defined( TRUE )
	#define TRUE 1
#endif

#if !defined( FALSE )
	#define FALSE 0
#endif


/*---- data descriptions ---------------------------------------------------*/
typedef struct sci_init
{  
    int        DevFd;               /* returndev level file descriptor    */
    Uint16     BaudRate;            /* BAUD_XXX                            */
    Uint16     StopBits;            /* TWO_STOP_BITS or ONE_STOP_BIT       */
    Uint16     ByteSize;            /* 1 to 8                              */
    int        fParity;             /* TRUE or FALSE                       */
    Uint16     Parity;              /* ODD_PARITY, EVEN_PARITY, NO_PARITY  */
    int        fLoopBack;           /* TRUE or FALSE                       */
    
    Uint16     XmitFifoLvl;         /* 0-15                                */
    Uint16     XmitDelay;           /* 0-255 baud clks between xfers       */
    Uint16     RecvFifoLvl;         /* 0-15                                */
    
    Uint16     MaxCharTimeout;      /* Max amount to wait on a char for read*/
    
    /* Data buffers are defined as type char which may NOT be 8 bit data    */
    /* In this case data is defined to be in low 8 bits of the char type    */
    /* with upper bits of data set to 0.                                    */
    /* If a buffer pointer is defined as NULL or buffer size is defined as  */
    /* 0 then the channel is not buffered.  Thus all data is read/written   */
    /* to the SCI controller.                                               */
    
    unsigned char  * pRecvBuf;            /* Pointer to receive buffer       */
    Uint16           SizeBytesRecvBuf;    /* sizeof(RecBuf)                  */
    
    unsigned char  * pXmitBuf;            /* Pointer to xmit buffer          */
    Uint16           SizeBytesXmitBuf;    /* sizeof(XmitBuf)                 */
     
}SCI_INIT_OPTIONS;

/*---- global data declarations --------------------------------------------*/

/*---- global function prototypes ------------------------------------------*/
/*****************************************************************************
* Per TI I/O model all functions return:
*  0  - Success
*  -1 - Fail
*
*****************************************************************************/

int   SCI_DrvInit( const char * Name, SCI_INIT_OPTIONS * pInitOpts );
int   SCI_Open(const char * Path, unsigned Flags, int Fd );
int   SCI_Close( int Fd );
int   SCI_Read( int Fd, char * pBuf, unsigned nBytes );
int   SCI_Write( int Fd, const char * pBuf, unsigned nBytes );
int   SCI_Ioctl( int  Fd, int  ReqCode, long Arg );

#ifdef __cplusplus
}
#endif

#endif /*   ---- END OF FILE ------------------------------------*/

