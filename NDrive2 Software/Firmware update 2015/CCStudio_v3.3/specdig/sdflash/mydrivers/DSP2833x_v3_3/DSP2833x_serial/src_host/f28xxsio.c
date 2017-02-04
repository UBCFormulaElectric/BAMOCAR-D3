/*H***************************************************************************
*
* $Archive:: /TI/product/F28xxSerialFlash/src_host/f28xxsio.c                $
* $Revision:: 2                                                              $
* $Date:: 10/29/03 11:34a                                                    $
* $Author:: Tonyc                                                            $
*
* DESCRIPTION:
*
* GLOBALS
*
* PUBLIC FUNCTIONS:
*
* PRIVATE FUNCTIONS:
*
* USAGE/LIMITATIONS:
*
* NOTES:
*
* (C) Copyright 2000 by Spectrum Digital Incorporated
* All rights reserved
*
*H***************************************************************************/
#define f28xxsio_c

/*---- compilation control switches ----------------------------------------*/


/*****************************************************************************
* INCLUDE FILES
*****************************************************************************/
/*---- system and platform files -------------------------------------------*/
#ifdef _WIN32
    #if (_MSC_VER >= 900 )
       #define	WIN32_LEAN_AND_MEAN
       #define 	INC_OLE2
       #define	NOSERVICE
    #endif

    #include <windows.h>
#endif

#include <stdio.h>

/*---- program files -------------------------------------------------------*/
#include "f28xxsio.h"
/*****************************************************************************
* EXTERNAL REFERENCE
*****************************************************************************/
/*---- data declarations ---------------------------------------------------*/

/*---- function prototypes -------------------------------------------------*/

/*****************************************************************************
* PUBLIC DECLARATIONS
*****************************************************************************/



/*****************************************************************************
* PRIVATE DECLARATIONS
*****************************************************************************/
/*---- context -------------------------------------------------------------*/

/*---- data declarations ---------------------------------------------------*/

static HANDLE PortHandle = NULL;
static int    isInitComState = 0;
static DCB    CommSavedState = {0};
static DCB    CommCurrentState = {0};
static const  DWORD  BaudRateTable[] =  { CBR_115200,
                                          CBR_57600,
                                          CBR_38400,
                                          CBR_19200,
                                          CBR_14400,
                                          CBR_9600,
                                          CBR_4800,
                                          CBR_2400,
                                          CBR_1200 };

/*---- function prototypes -------------------------------------------------*/

/*---- macros --------------------------------------------------------------*/

/*****************************************************************************
* PUBLIC FUNCTION DEFINITIONS
*****************************************************************************/


/*****************************************************************************
* PRIVATE FUNCTION DEFINITIONS
*****************************************************************************/

/*F***************************************************************************
* NAME:
*
* DESCRIPTION:
*
* NOTES:
*
*F***************************************************************************/
void
SioInit()
{
    PortHandle       = NULL;
    isInitComState   = 0;
    memset(&CommSavedState,0,sizeof(CommSavedState));
    memset(&CommCurrentState,0,sizeof(CommCurrentState));
}
/*f***************************************************************************
* NAME:  int SioConnect
*
* DESCRIPTION:  Open/Connect up to a serial port.
*
* NOTES:  We will connect, set default parms and start a receive thread.
*
*F***************************************************************************/
int
SioOpen( char *Name, DWORD Baud )
{

    COMMTIMEOUTS        CommTimeOuts;
    SECURITY_ATTRIBUTES Security;
    DWORD               ReadTimeout;

    Security.nLength              = sizeof( SECURITY_ATTRIBUTES );
    Security.lpSecurityDescriptor = NULL;
    Security.bInheritHandle       = TRUE;

    switch( Baud )
    {
        case CBR_1200:
        case CBR_2400:
        case CBR_4800:
        case CBR_9600:
        case CBR_14400:
        case CBR_19200:
        case CBR_38400:
        case CBR_57600:
        case CBR_115200:
            break;
        default:
            Baud = CBR_38400;
            break;
    }

    PortHandle = CreateFile( Name,
                             GENERIC_READ | GENERIC_WRITE,
                             FILE_SHARE_READ | FILE_SHARE_WRITE,
                             &Security,
                             OPEN_EXISTING,
                             FILE_ATTRIBUTE_NORMAL,
                             (HANDLE) NULL );

    if( PortHandle == INVALID_HANDLE_VALUE )
        return( -1 );

    /* Read the current comm state and save it off to restore on close  ----*/
    if( GetCommState( PortHandle, &CommSavedState ) == 0 )
    {
        return( -1 );
    }

    /* Copy to our com setup -----------------------------------------------*/
    CommCurrentState = CommSavedState;

    // Set baudrate to lower of passed in baud or value set by Windows.
    // User can increase the baud rate via windows control panel or
    // by overriding with autobaud.
    //
    // This is annoying as Windows control panel does not actually
    // set the hardware baudrate.  Will need to read in from sdopts.cfg
    //
    //if( Baud <  CommCurrentState.BaudRate )
    //    CommCurrentState.BaudRate = Baud;

    CommCurrentState.BaudRate        = Baud;
    CommCurrentState.ByteSize        = 8;
    CommCurrentState.StopBits        = ONESTOPBIT;
    CommCurrentState.fParity         = FALSE;
    CommCurrentState.Parity          = NOPARITY;
    CommCurrentState.fBinary         = TRUE;
    CommCurrentState.fDsrSensitivity = FALSE;
    CommCurrentState.fOutxCtsFlow    = FALSE;
    CommCurrentState.fOutxDsrFlow    = FALSE;
    CommCurrentState.fDtrControl     = DTR_CONTROL_DISABLE;
    CommCurrentState.fOutX           = FALSE;
    CommCurrentState.fInX            = FALSE;
    CommCurrentState.fNull           = FALSE;
    CommCurrentState.fRtsControl     = RTS_CONTROL_DISABLE;
    CommCurrentState.fAbortOnError   = TRUE;

    /* Set our com state.---------------------------------------------------*/
    if( SetCommState( PortHandle, &CommCurrentState  ) == 0 )
    {
        return( -1 );
    }

    isInitComState = 1;

    GetCommTimeouts( PortHandle, &CommTimeOuts );

    ReadTimeout = 1000000/CommCurrentState.BaudRate;

    /* Set timeouts based on using receive thread and no timeouts on write--*/
    CommTimeOuts.ReadIntervalTimeout         = MAXDWORD;
    CommTimeOuts.ReadTotalTimeoutMultiplier  = ReadTimeout;
    CommTimeOuts.ReadTotalTimeoutConstant    = 0;
    CommTimeOuts.WriteTotalTimeoutMultiplier = 1000;
    CommTimeOuts.WriteTotalTimeoutConstant   = 0;

    if( SetCommTimeouts( PortHandle, &CommTimeOuts ) == 0 )
        return( -1 );

    return( 0 );
}
/*F***************************************************************************
* NAME:  int  SioClose
*
* DESCRIPTION:  Close an opened serial port.
*
* NOTES:  If we have valid open state then restore this saved state before.
*         the close.
*
*         Need to look at flushing the channel before we do this.
*
*F***************************************************************************/
int
SioClose( void )
{
    if( PortHandle == NULL )
        return( -1 );

    PurgeComm( PortHandle, PURGE_TXCLEAR | PURGE_RXCLEAR );

    if ( isInitComState  )
        SetCommState( PortHandle , &CommSavedState);

    isInitComState = 0;

    CloseHandle( PortHandle );
    PortHandle = NULL;

    return( 0 );
}
/*F****************************************************************************
* NAME:  int SioPurgeComm
*
* DESCRIPTION:
*
* NOTES:
*
*F***************************************************************************/
int
SioPurgeComm( void )
{
    if( PortHandle == NULL )
        return( -1 );

    PurgeComm( PortHandle, PURGE_TXCLEAR | PURGE_RXCLEAR );

	return( 0 );
}

/*F****************************************************************************
* NAME:  int  SioPulseDtr
*
* DESCRIPTION:
*
* NOTES:
*
*F***************************************************************************/
int
SioPulseDtr( void )
{

    if( PortHandle == NULL )
        return( -1 );

    if( EscapeCommFunction( PortHandle, SETDTR ) == 0 )
        return( -1 );

    Sleep( 100 );

    if( EscapeCommFunction( PortHandle, CLRDTR ) == 0 )
        return( -1 );

    Sleep( 100 );

    return( 0 );
}
/*F***************************************************************************
* NAME:  int SioSendMsg
*
* DESCRIPTION:  Write a message over the comm port.
*
* NOTES:   Return current position if error or if we could not write all the
*          bytes.
*
*F***************************************************************************/
int
SioSendMsg( char *pMsg, int Count )
{

    DWORD BytesWritten = 0;
    BOOL  Pass;

    if (( pMsg == NULL ) ||( PortHandle == NULL ))
        return( 0 );

    Pass = WriteFile( PortHandle,
                      pMsg,
                      Count,
                      &BytesWritten,
                      (LPOVERLAPPED)NULL );

    if( !Pass )
        return( 0 ); // Failed
    else
        return( BytesWritten );
}
/*F***************************************************************************
* NAME:  int SioRecvMsg
*
* DESCRIPTION:  Read a message from the serial port.
*
* NOTES:  Message is placed in the pCpi receive buffer.
*
*F***************************************************************************/
int
SioRecvMsg( char *pMsg, int Count )
{

    DWORD BytesRead = 0;
    BOOL  Pass;

    if (( pMsg == NULL ) ||( PortHandle == NULL ))
        return( 0 );

    Pass = ReadFile( PortHandle,
                     pMsg,
                     Count,
                     &BytesRead,
                     (LPOVERLAPPED)NULL );

    if( !Pass )
        return( 0 ); // Failed
    else
        return( BytesRead );
}

/*F***************************************************************************
* NAME:
*
* DESCRIPTION:
*
* NOTES:
*
*F***************************************************************************/
int SioSetNewBaudRate( DWORD Baud )
{
    COMMTIMEOUTS        CommTimeOuts;
    DWORD               ReadTimeout;
    DWORD               CommErrors;
    COMSTAT             CommStatus;

    SioPurgeComm();
    ClearCommError( PortHandle, &CommErrors, &CommStatus );
    while( CommStatus.cbInQue-- )
    {
        char Temp;
        SioRecvMsg( &Temp, 1 );
    }

    CommCurrentState.BaudRate  = Baud;
    /* Set our com state.---------------------------------------------------*/
    if( SetCommState( PortHandle, &CommCurrentState  ) == 0 )
    {
        return( -1 );
    }

    GetCommTimeouts( PortHandle, &CommTimeOuts );

    ReadTimeout = 1000000/CommCurrentState.BaudRate;
    //ReadTimeout = 1000; // Set to 1 second when not using a thread

    /* Set timeouts based on using receive thread and no timeouts on write--*/
    CommTimeOuts.ReadIntervalTimeout         = MAXDWORD;
    CommTimeOuts.ReadTotalTimeoutMultiplier  = ReadTimeout;
    CommTimeOuts.ReadTotalTimeoutConstant    = 0;
    CommTimeOuts.WriteTotalTimeoutMultiplier = 1000;
    CommTimeOuts.WriteTotalTimeoutConstant   = 0;

    if( SetCommTimeouts( PortHandle, &CommTimeOuts ) == 0 )
        return( -1 );

    return(0);
}
DWORD SioGetCurrentBaudRate()
{
   return( CommCurrentState.BaudRate );
}

/*F***************************************************************************
* NAME:
*
* DESCRIPTION:
*
* NOTES:
*
*F***************************************************************************/
int
SioAutoBaud( DWORD Baud )
{
    int   i;
    int   Loop;
    int   DidAutoBaud = 0;
    char  AutoBaudChar = 'A';
    char  LoopBack;
    int   BaudStartIndex = 0;
    int   BaudEndIndex   = sizeof( BaudRateTable )/sizeof( DWORD );

    for(i=0; i<BaudEndIndex; i++ )
    {
        if( BaudRateTable[i] == Baud )
        {
            BaudStartIndex = i;
            break;
        }
    }

   if( SioSetNewBaudRate( BaudRateTable[i] ) )
        return(-1);

    Loop = 20;

    do
    {
        LoopBack = '\0';
        if( SioSendMsg( &AutoBaudChar, 1 ) == 1 )
        {
            SioRecvMsg( &LoopBack, 1 );

            if( ( LoopBack & 0x0ff ) == 'A' )
                DidAutoBaud = 1;
        }

    }
    while( Loop-- && (DidAutoBaud == 0) );

    return( DidAutoBaud == 1 ? 0 : -1 );

}