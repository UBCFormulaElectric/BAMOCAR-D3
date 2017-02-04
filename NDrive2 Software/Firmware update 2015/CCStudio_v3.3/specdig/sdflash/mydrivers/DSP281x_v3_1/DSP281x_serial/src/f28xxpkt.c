/*H***************************************************************************
*
* $Archive:: /TI/product/F28xxSerialFlash/src/f28xxpkt.c                     $
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
* (C) Copyright 2003 by Spectrum Digital Incorporated
* All rights reserved
*
*H***************************************************************************/
#define f28xxpkt_c

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
    #include <stdio.h>
	#include "f28xxsio.h"
	#include "f28xxpkt.h"
	
#else
    #include <stdio.h>
    #include <string.h>
    #include "DSP281x_Device.h"        
    #include "drv2812sci.h"
    #include "f28xxpkt.h"
    #include "file.h"

#endif

/*---- program files -------------------------------------------------------*/

/*****************************************************************************
* EXTERNAL REFERENCE    
*****************************************************************************/
/*---- data declarations ---------------------------------------------------*/
char  PktBuf[MSG_PACKET_SIZE+4];

int   CurrentDataCount     = 0;
int   ExpectedDataCount    = 0;
int   InputSequenceNumber  = -1;
int   OutputSequenceNumber = -1;
int   ReceivedAck          = 0;

long  NumInputPackets      = 0;
long  NumOutputPackets     = 0;
long  NumRejectedPackets   = 0;
long  NumOutputAcks        = 0;

/*---- function prototypes -------------------------------------------------*/

/*****************************************************************************
* PUBLIC DECLARATIONS 
*****************************************************************************/

/*****************************************************************************
* PRIVATE DECLARATIONS  
*****************************************************************************/
/*---- context -------------------------------------------------------------*/

/*---- data declarations ---------------------------------------------------*/



#if defined( INCL_CRC_SUPPORT )

static const unsigned short CRCtab[256] =
{
	0x0000,	0xc0c1,	0xc181,	0x0140,	0xc301,	0x03c0,	0x0280,	0xc241,
	0xc601,	0x06c0,	0x0780,	0xc741,	0x0500,	0xc5c1,	0xc481,	0x0440,
	0xcc01,	0x0cc0,	0x0d80,	0xcd41,	0x0f00,	0xcfc1,	0xce81,	0x0e40,
	0x0a00,	0xcac1,	0xcb81,	0x0b40,	0xc901,	0x09c0,	0x0880,	0xc841,
	0xd801,	0x18c0,	0x1980,	0xd941,	0x1b00,	0xdbc1,	0xda81,	0x1a40,
	0x1e00,	0xdec1,	0xdf81,	0x1f40,	0xdd01,	0x1dc0,	0x1c80,	0xdc41,
	0x1400,	0xd4c1,	0xd581,	0x1540,	0xd701,	0x17c0,	0x1680,	0xd641,
	0xd201,	0x12c0,	0x1380,	0xd341,	0x1100,	0xd1c1,	0xd081,	0x1040,
	0xf001,	0x30c0,	0x3180,	0xf141,	0x3300,	0xf3c1,	0xf281,	0x3240,
	0x3600,	0xf6c1,	0xf781,	0x3740,	0xf501,	0x35c0,	0x3480,	0xf441,
	0x3c00,	0xfcc1,	0xfd81,	0x3d40,	0xff01,	0x3fc0,	0x3e80,	0xfe41,
	0xfa01,	0x3ac0,	0x3b80,	0xfb41,	0x3900,	0xf9c1,	0xf881,	0x3840,
	0x2800,	0xe8c1,	0xe981,	0x2940,	0xeb01,	0x2bc0,	0x2a80,	0xea41,
	0xee01,	0x2ec0,	0x2f80,	0xef41,	0x2d00,	0xedc1,	0xec81,	0x2c40,
	0xe401,	0x24c0,	0x2580,	0xe541,	0x2700,	0xe7c1,	0xe681,	0x2640,
	0x2200,	0xe2c1,	0xe381,	0x2340,	0xe101,	0x21c0,	0x2080,	0xe041,
	0xa001,	0x60c0,	0x6180,	0xa141,	0x6300,	0xa3c1,	0xa281,	0x6240,
	0x6600,	0xa6c1,	0xa781,	0x6740,	0xa501,	0x65c0,	0x6480,	0xa441,
	0x6c00,	0xacc1,	0xad81,	0x6d40,	0xaf01,	0x6fc0,	0x6e80,	0xae41,
	0xaa01,	0x6ac0,	0x6b80,	0xab41,	0x6900,	0xa9c1,	0xa881,	0x6840,
	0x7800,	0xb8c1,	0xb981,	0x7940,	0xbb01,	0x7bc0,	0x7a80,	0xba41,
	0xbe01,	0x7ec0,	0x7f80,	0xbf41,	0x7d00,	0xbdc1,	0xbc81,	0x7c40,
	0xb401,	0x74c0,	0x7580,	0xb541,	0x7700,	0xb7c1,	0xb681,	0x7640,
	0x7200,	0xb2c1,	0xb381,	0x7340,	0xb101,	0x71c0,	0x7080,	0xb041,
	0x5000,	0x90c1,	0x9181,	0x5140,	0x9301,	0x53c0,	0x5280,	0x9241,
	0x9601,	0x56c0,	0x5780,	0x9741,	0x5500,	0x95c1,	0x9481,	0x5440,
	0x9c01,	0x5cc0,	0x5d80,	0x9d41,	0x5f00,	0x9fc1,	0x9e81,	0x5e40,
	0x5a00,	0x9ac1,	0x9b81,	0x5b40,	0x9901,	0x59c0,	0x5880,	0x9841,
	0x8801,	0x48c0,	0x4980,	0x8941,	0x4b00,	0x8bc1,	0x8a81,	0x4a40,
	0x4e00,	0x8ec1,	0x8f81,	0x4f40,	0x8d01,	0x4dc0,	0x4c80,	0x8c41,
	0x4400,	0x84c1,	0x8581,	0x4540,	0x8701,	0x47c0,	0x4680,	0x8641,
	0x8201,	0x42c0,	0x4380,	0x8341,	0x4100,	0x81c1,	0x8081,	0x4040,
};

#endif

/*---- function prototypes -------------------------------------------------*/

/*---- macros --------------------------------------------------------------*/
#define MAX_RETRIES   20

#define RESTART_MESSAGE { CurrentDataCount    = 0;               \
                          ExpectedDataCount   = MSG_HEADER_SIZE; }


#if defined( INCL_CIO_SUPPORT )
	#define SCI_OPEN(x,y,z)      open(x,y,z)
	#define SCI_CLOSE(x)         close(x)
	#define SCI_READ(x,y,z)      read(x,y,z)
	#define SCI_WRITE(x,y,z)     write(x,y,z)
	#define SCI_IOCTL(x,y,z)     ioctl(x,y,z)
#else
	#define SCI_OPEN(x,y,z)      SCI_Open(x,y,z)
	#define SCI_CLOSE(x)         SCI_Close(x)
	#define SCI_READ(x,y,z)      SCI_Read(x,y,z)
	#define SCI_WRITE(x,y,z)     SCI_Write(x,y,z)
	#define SCI_IOCTL(x,y,z)     SCI_Ioctl(x,y,z)
#endif

#if !defined( Get16 )
	#define Get16( Buf, Data )  \
           {Data   =  ((unsigned short)( *Buf++ ) <<     8 ); \
            Data  |=  ((unsigned short)( *Buf++ ) & 0x00ff );}
#endif
            
/*****************************************************************************
* PUBLIC FUNCTION DEFINITIONS
*****************************************************************************/


/*****************************************************************************
* PRIVATE FUNCTION DEFINITIONS
*****************************************************************************/
/*f***************************************************************************
* NAME:  SioPktCrc
*
* DESCRIPTION:  Crc a packet of data.
*       
* NOTES:  
*   
* Calculate CRC16 of memory range.
* CRC16 polynomial: x**0 + x**2 + x**15 + x**16 (0xA001)
* (CCITT polynomial: x**0 + x**5 + x**12 + x**16 (0x8408))
* Initial condition: 0
*
* CRC will be 0 for 0 sized packet.  This allows control packets which
* have 0 body size to check ok in the normal code flow.
*
* Borrowed from i960 program.  We are going to CRC Header + Body and
* stuff into the Tail
*f***************************************************************************/

unsigned short
PktCrc( char * pData, int Size )
{
	register unsigned Crc = 0;

#if defined( INCL_CRC_SUPPORT )
	while ( Size > 0)
    {
		Crc = CRCtab[(Crc^(*pData))&0xFF] ^ Crc>>8;
		pData++;
		Size--;
	}
#endif

    return( Crc );
}

#if !defined( _WIN32 )

/*F***************************************************************************
* NAME:    
*
* DESCRIPTION:
*
* NOTES:
*   
*F***************************************************************************/
int PKT_Open( const char * FileName )
{
	int Fd;
	
	memset( PktBuf, 0, sizeof(PktBuf ));
	RESTART_MESSAGE;
  	InputSequenceNumber  = -1;
	OutputSequenceNumber = -1;
	ReceivedAck          =  0;
    NumInputPackets      =  0;
    NumOutputPackets     =  0;
    NumRejectedPackets   =  0;
	NumOutputAcks        =  0;
	
#if defined( INCL_CIO_SUPPORT )	
	Fd = SCI_OPEN( FileName, O_RDWR, _SSA );
#else

	// Non-CIO support takes a lowlev Fd and returns a devlev Fd.  So
	// we fake it based on the following:
	// SCI:COM1 = 0
	// SCI:COM2 = 1
	if( FileName[7] == '2' )
		Fd = 1;
	else
		Fd = 0;
	
	Fd = SCI_OPEN( FileName, O_RDWR, Fd );
#endif
		
	return( Fd );
}

/*F***************************************************************************
* NAME:    
*
* DESCRIPTION:
*
* NOTES:
*   
*F***************************************************************************/
int PKT_AutoBaud( int Fd )
{
	return( SCI_IOCTL( Fd, SCI_FIOAUTOBAUD, 0L ));	
}

/*F***************************************************************************
* NAME:    
*
* DESCRIPTION:
*
* NOTES:
*   
*F***************************************************************************/
int PKT_Close( int Fd )
{
	SCI_CLOSE( Fd );
	RESTART_MESSAGE;
  	InputSequenceNumber  = -1; 
	OutputSequenceNumber = -1;
	ReceivedAck          =  0;		
	return(0);
}
/*F***************************************************************************
* NAME:    
*
* DESCRIPTION:
*
* NOTES:
*   
*F***************************************************************************/
int PKT_ProcessInput( int Fd )
{
	int       NumRead;
	int       NumXfer;
	int       RcvSeqNum;
    char    * pBuf;
    char      AckBuf[MSG_HEADER_SIZE];   
        
	// While the amount of data is less then the message header size
	// try to read the header.
	if( CurrentDataCount < MSG_HEADER_SIZE )
	{
		NumRead = SCI_READ( Fd, &PktBuf[CurrentDataCount],
		                    ExpectedDataCount-CurrentDataCount );
		
		// If less then 0 then low level error.  If 0 then code will
		// basicly fall through so no need to handle special case.                
		if( NumRead < 0 )
			return(-1);
			
		CurrentDataCount += NumRead;
		
		// Test current data count for message header.
		if( CurrentDataCount == MSG_HEADER_SIZE )
		{
			// Test for ACK from previous send.  We are blowing off more
			// complete testing. 
			if ( (char)PktBuf[MSG_HDR_SOH] == (char)MSG_ACK )
			{
	            RESTART_MESSAGE;
	            ReceivedAck = 1;
	            NumOutputAcks++;
				return(0);
			}
			else
			{
				// Toggle this if not a ACK 
				ReceivedAck =  0;
			}
				
			// Now test for valid new message.  We could also test for
			// more complete header by checking source and destination fields.
			if( (char)PktBuf[MSG_HDR_SOH] != (char)MSG_SOH   )
			{
				// No ACK/NAK force target to resend on timeout
	            RESTART_MESSAGE;
	            NumRejectedPackets++;
				return(0);
			}
			
			// Test that we have not already recieved this packet. This prevents
			// us from potentially executing the same packet twice if host
			// is retrying.
			RcvSeqNum = PktBuf[MSG_HDR_SEQ] & 0x00FF;
			if( RcvSeqNum != InputSequenceNumber )
			{
				InputSequenceNumber = RcvSeqNum;
			}
			else
			{
				// No ACK/NAK for now but should really send an ACK to prevent
				// further retries.  For now we will simply blow it off and
				// ignore them.
			    RESTART_MESSAGE;
			    NumRejectedPackets++;			
				return(0);
			}
			
		    // Once we are here we have a valid message header and
		    // can set parameters to receive the message body.
		    //
		    
		    // Get the count and crc from the message header
		    pBuf = &PktBuf[MSG_HDR_CNTH];
		
		    // NumXfer is total message size so subtract the header size
		    Get16(pBuf,NumXfer);
		
		    NumRead = NumXfer - MSG_HEADER_SIZE;
		    
		    // Test that message has a body but is not bigger then our buffers.
		    if(    ( NumRead > 0 )
		        && ( NumRead <= MSG_BODY_SIZE ))
		    {
		        // Increase ExpectedDataCount by the payload size
		    	ExpectedDataCount += NumRead;
		    }
						
		}
	}
	
	// Once we have the header attempt to fill the packet with payload data.
	// We retest data count so that we skip over this when header is not
	// yet complete.
	if(   ( CurrentDataCount  >=  MSG_HEADER_SIZE  )
	   && ( CurrentDataCount  <  ExpectedDataCount ))
	{
		// Attempt to read data from lowlevel 
		NumRead = SCI_READ( Fd, &PktBuf[CurrentDataCount],
		                    ExpectedDataCount-CurrentDataCount );
		
		// If not an error then increment the data count.  Low level
		// returns:
		//   -1  Error
		//    0  No data but success
		//    >0 But <= Requested count and success
		//
		if( NumRead > 0 )
			CurrentDataCount += NumRead;	
		    
		// If we do not have enough data to complete the packet then
		// just return.  Else process the packet and reply to sender.
		if( CurrentDataCount < ExpectedDataCount )
			return(0);
			
		// We are NOT doing a CRC even though host may be sending us one.
		// Just less code/data requirement
		
	    // If we got valid header up to the count and CRC then we
	    // will ACK/NAK the packet.  Otherwise we just ignore and
	    // let the target timeout and then resend if they want.
        AckBuf[MSG_HDR_SOH]   = (char)MSG_ACK;
        AckBuf[MSG_HDR_SRC]   = (char)PktBuf[MSG_HDR_SRC];
        AckBuf[MSG_HDR_DST]   = (char)PktBuf[MSG_HDR_DST];
        AckBuf[MSG_HDR_SEQ]   = (char)PktBuf[MSG_HDR_SEQ];
        AckBuf[MSG_HDR_CNTH]  = (char)0;
        AckBuf[MSG_HDR_CNTL]  = (char)(MSG_HEADER_SIZE);
        AckBuf[MSG_HDR_CRCH]  = (char)PktBuf[MSG_HDR_CRCH];
        AckBuf[MSG_HDR_CRCL]  = (char)PktBuf[MSG_HDR_CRCL];

	    SCI_WRITE( Fd, AckBuf, MSG_HEADER_SIZE );
	    
	    // Success we have recieved the packet.  We leave the
	    //  CurrentDataCount and ExpectedDataCount counts as is.  This has the
	    // effect of forcing this function to bypass just in case called out
	    // of sequence.  Caller must release the packet before we start looking
	    // for new input.
	    NumInputPackets++;
	    return( PACKET_AVAILABLE );

	}
	
	return( 0 ); // Success but still more to do	        
		        		
}

/*F***************************************************************************
* NAME:    
*
* DESCRIPTION:
*
* NOTES:
*   
*F***************************************************************************/

char * PKT_Get( int Fd )
{
	return( &PktBuf[MSG_HEADER_SIZE] );
}

/*F***************************************************************************
* NAME:    
*
* DESCRIPTION:
*
* NOTES:
*   
*F***************************************************************************/
int PKT_NumDataRead( int Fd )
{
	if( CurrentDataCount > MSG_HEADER_SIZE )
		return( CurrentDataCount - MSG_HEADER_SIZE );
	else
		return(0);
}

/*F***************************************************************************
* NAME:    
*
* DESCRIPTION:
*
* NOTES:
*   
*F***************************************************************************/
int PKT_ReleaseInput( int Fd  )
{
	// Simply release the input packet
	memset(PktBuf,0,MSG_HEADER_SIZE );  // For debug
	RESTART_MESSAGE;
	return(0);
}

int PKT_ProcessOutput( int Fd, int Count, char * pMsg )
{
    int       NumXfer;

    if( Count > MSG_BODY_SIZE )
        return(0);

	ReceivedAck = 0;

    // Increment the sequence number
    OutputSequenceNumber = (OutputSequenceNumber+1)&0x00FF;

    NumXfer = Count+MSG_HEADER_SIZE;

    // Build the packet header
    PktBuf[MSG_HDR_SOH]   = (char)MSG_SOH;
    PktBuf[MSG_HDR_SRC]   = (char)MSG_TARGET;
    PktBuf[MSG_HDR_DST]   = (char)MSG_HOST;
    PktBuf[MSG_HDR_SEQ]   = (char)OutputSequenceNumber;
    PktBuf[MSG_HDR_CNTH]  = (char)(NumXfer>>8);
    PktBuf[MSG_HDR_CNTL]  = (char)(NumXfer &0xFF);
    PktBuf[MSG_HDR_CRCH]  = (char)0;
    PktBuf[MSG_HDR_CRCL]  = (char)0;

    // If user passed in a pointer to data then we will copy
    // that data into the serial buffer and send.  Otherwise
    // we assume the user called PKT_Get() to get pointer to
    // packet buffer and put in data directly.
    //
    if( pMsg != NULL )
    	memcpy(&PktBuf[MSG_HEADER_SIZE], pMsg, Count );

    // Send the data and check that all data went through
    NumXfer = SCI_WRITE( Fd, PktBuf, Count+MSG_HEADER_SIZE );
    
    NumOutputPackets++;
    if( NumXfer > MSG_HEADER_SIZE )
        NumXfer -= MSG_HEADER_SIZE;

    return( NumXfer );
}

#else


int   CurrentDataCount;
int   ExpectedDataCount;
int   InputSequenceNumber;
int   OutputSequenceNumber;
int   ReceivedAck;

long  NumInputPackets;
long  NumOutputPackets;
long  NumRejectedPackets;
long  NumOutputAcks;

void PktInit( void )
{
  	InputSequenceNumber  = -1;
	OutputSequenceNumber = -1;
	ReceivedAck          =  0;
    NumInputPackets      =  0;
    NumOutputPackets     =  0;
    NumRejectedPackets   =  0;
	NumOutputAcks        =  0;
}

/*F***************************************************************************
* NAME:  int PktSendMsg( char *pMsg, int Count ) 
*
* DESCRIPTION: Send data to target.
*
* PARAMETERS:
*   *pMsg     - Pointer to message data.  
*   Count     - Number of 8 bit chars to send
* 
* RETURN:
*    0 - Fail
*    Byte Count - Success.
*      
* NOTES: A message consists of two parts, a 8 byte header and a user defined
*        payload.  The message format is as follows:
*        Byte-0    Start of header SOH or ACK/NAK in a reply packet.
*        Byte-1    Message source tag MSG_HOST, MSG_TARGET
*        Byte-2    Message destination tag MSG_HOST, MSG_TARGET
*        Byte-3    Incrementing sequence number
*        Byte-4    Message byte count high.  Count includes user+header
*        Byte-5    Message byte coung low.
*        Byte-6    Message CRC high if used or 0
*        Byte-7    Message CRC low if used or 0
*        Byte-8-N  User payload. Total user payload not to exceed MSG_BODY_SIZE
*
*        Protocol:
*          1) Format message
*          2) Send message
*          3) Wait for ACK or NAK
*         
*        Assumption is that serial port is set to timeout if data in not 
*        received in X amount of time.  In this case the message is assumed
*        to be lost.  It is up to the user to resend.
*
*        This is really simple implementation that is not using threads and
*        retries which is probably a bit much for typical F28xx user.
*   
*F***************************************************************************/
int 
PktSendMsg( char *pMsg, int Count )
{
    int       NumXfer;
    char      AckBuf[MSG_HEADER_SIZE];   
    unsigned short    Crc;
    int       Retries = MAX_RETRIES;
    int       NumCollected;

    if( Count > MSG_BODY_SIZE )
        return(0);

    // Increment the sequence number
    OutputSequenceNumber = (OutputSequenceNumber+1)&0x00FF;

    // Generate the CRC
    Crc = PktCrc( pMsg, Count );

    NumXfer = Count+MSG_HEADER_SIZE;

    // Build the packet header
    PktBuf[MSG_HDR_SOH]   = (char)MSG_SOH;
    PktBuf[MSG_HDR_SRC]   = (char)MSG_HOST;
    PktBuf[MSG_HDR_DST]   = (char)MSG_TARGET;
    PktBuf[MSG_HDR_SEQ]   = (char)OutputSequenceNumber;
    PktBuf[MSG_HDR_CNTH]  = (char)(NumXfer>>8);
    PktBuf[MSG_HDR_CNTL]  = (char)(NumXfer &0xFF);
    PktBuf[MSG_HDR_CRCH]  = (char)(Crc>>8);
    PktBuf[MSG_HDR_CRCL]  = (char)(Crc &0xFF);

    // Copy in the packet data
    if( Count != 0 )
        memcpy(&PktBuf[MSG_HEADER_SIZE], pMsg, Count );

    // For debugging purposes we send the header then the
    // data.
    //
    // Send Header
    NumXfer = SioSendMsg( PktBuf, MSG_HEADER_SIZE );
    if( NumXfer != MSG_HEADER_SIZE )
        return(0);

    // Send Data
    if( Count != 0 )
    {
        NumXfer = SioSendMsg( &PktBuf[MSG_HEADER_SIZE], Count );
        if( NumXfer != Count )
            return(0);
    }

    // Wait on the ACK/NAK packet. This is a 8 byte packet with
    // no payload.
    NumCollected = 0;
    Retries = MAX_RETRIES;
    do
    {
        NumXfer = SioRecvMsg( &AckBuf[NumCollected], 
                               MSG_HEADER_SIZE- NumCollected );
        if( NumXfer > 0 )
            NumCollected += NumXfer;
    }while( ( Retries-- > 0) && (NumCollected < MSG_HEADER_SIZE) );

    // Now compare to sent packet header
    if(    ( (char)PktBuf[MSG_HDR_SOH  == (char)MSG_ACK] )
        && ( (char)PktBuf[MSG_HDR_SRC] == (char)AckBuf[MSG_HDR_SRC] )
        && ( (char)PktBuf[MSG_HDR_DST] == (char)AckBuf[MSG_HDR_DST] )
        && ( (char)PktBuf[MSG_HDR_SEQ] == (char)AckBuf[MSG_HDR_SEQ] ))
        return( Count );
    else
        return(0);
}

/*F***************************************************************************
* NAME:  int PktRecvMsg( char *pMsg, int Count )
*
* DESCRIPTION: Receive data from target
*
* PARAMETERS:
*   *pMsg     - Pointer to message data.  
*   Count     - Number of 8 bit chars to send
*
* RETURN:
*    0 - Fail
*    Byte Count - Success.  The byte count received is equal to or less then
*                           requested count. Generally user will request up
*                           to MSG_BODY_SIZE data count. However target may
*                           send smaller data count.                      
*       
* NOTES: A message consists of two parts, a 8 byte header and a user defined
*        payload.  The message format is as follows:
*        Byte-0    Start of header SOH or ACK/NAK in a reply packet.
*        Byte-1    Message source tag MSG_HOST, MSG_TARGET
*        Byte-2    Message destination tag MSG_HOST, MSG_TARGET
*        Byte-3    Incrementing sequence number
*        Byte-4    Message byte count high.  Count includes user+header
*        Byte-5    Message byte coung low.
*        Byte-6    Message CRC high if used or 0
*        Byte-7    Message CRC low if used or 0
*        Byte-8-N  User payload. Total user payload not to exceed MSG_BODY_SIZE
*
*        Protocol:
*          1) Receive message header.
*          2) Decode message header and check for valid format. Return 0 if invalid.           
*          3) Receive the message payload based on message count.
*          4) Verify data count and CRC if used.
*          5) Send an ACK or NAK.
* 
*F***************************************************************************/
int 
PktRecvMsg( char *pMsg, int Count )
{
    int       RcvSeqNum;
    int       NumXfer;
    int       NumToRecv;
    char      AckBuf[MSG_HEADER_SIZE];   
    char    * pBuf;
    unsigned short    RecvCrc, CalcCrc;
    char      AckOrNak;
    int       Retries = MAX_RETRIES;
    int       NumCollected;

    if( Count > MSG_BODY_SIZE )
        return(0);

    // Get the message header
    NumCollected = 0;
    Retries = MAX_RETRIES;
    do
    {
        NumXfer = SioRecvMsg( &PktBuf[NumCollected], 
                               MSG_HEADER_SIZE- NumCollected );
        if( NumXfer > 0 )
            NumCollected += NumXfer;
    }while( ( Retries-- > 0) && (NumCollected < MSG_HEADER_SIZE) );

    if(!(   ( NumCollected              == MSG_HEADER_SIZE )
         && ( (char)PktBuf[MSG_HDR_SOH] == (char)MSG_SOH   )
         && ( (char)PktBuf[MSG_HDR_SRC] == (char)MSG_TARGET) 
         && ( (char)PktBuf[MSG_HDR_DST] == (char)MSG_HOST  )))
    {
        // No ACK/NAK force target to resend on timeout
        return(0);
    }
    
    // Test that we have not already recieved this packet.
    RcvSeqNum = PktBuf[MSG_HDR_SEQ] & 0x00FF;
    if( RcvSeqNum != InputSequenceNumber )
    {
        InputSequenceNumber = RcvSeqNum;
    }
    else
        return(0);

    // Get the count and crc from the message header
    pBuf = &PktBuf[MSG_HDR_CNTH];

    Get16(pBuf,NumToRecv);
    Get16(pBuf,RecvCrc);

    Retries = MAX_RETRIES;

    // NumRecv includes the MSG_HEADER_SIZE.  NumCollected is the
    // total count received. 
    if(    ( NumToRecv > MSG_HEADER_SIZE )
        && ( NumToRecv <=(MSG_BODY_SIZE+MSG_HEADER_SIZE) ))
    {
        do
        {
            NumXfer = SioRecvMsg( &PktBuf[NumCollected], 
                                   NumToRecv- NumCollected );
            if( NumXfer > 0 )
                NumCollected += NumXfer;

        }while( ( Retries-- > 0) && (NumCollected < NumToRecv) );

        // If we have more data then just the header strip out
        // the header count for the remaining processing
        if( NumCollected > MSG_HEADER_SIZE )
            NumCollected -= MSG_HEADER_SIZE;

        // Check the CRC if match then copy buffer and set the
        // ACK/NAK value
        CalcCrc = PktCrc( &PktBuf[MSG_HEADER_SIZE], NumCollected );
        
        if( CalcCrc == RecvCrc )
        {
            AckOrNak = MSG_ACK;
            if( NumCollected > Count )
                NumCollected = Count;

            memcpy( pMsg, &PktBuf[MSG_HEADER_SIZE], NumCollected );
        }
        else
        {
            AckOrNak = MSG_NAK;
            NumCollected = 0;
        }

    }
    else
    {
        AckOrNak = MSG_NAK;
        NumCollected = 0;
    }

    // If we got valid header up to the count and CRC then we
    // will ACK/NAK the packet.  Otherwise we just ignore and
    // let the target timeout and then resend if they want.
    // We reuse the recv packet header and overwrite fields for
    // ACK/NAK.
    AckBuf[MSG_HDR_SOH]   = (char)AckOrNak;
    AckBuf[MSG_HDR_SRC]   = (char)PktBuf[MSG_HDR_SRC];
    AckBuf[MSG_HDR_DST]   = (char)PktBuf[MSG_HDR_DST];
    AckBuf[MSG_HDR_SEQ]   = (char)PktBuf[MSG_HDR_SEQ];
    AckBuf[MSG_HDR_CNTH]  = (char)0;
    AckBuf[MSG_HDR_CNTL]  = (char)(MSG_HEADER_SIZE);
    AckBuf[MSG_HDR_CRCH]  = (char)PktBuf[MSG_HDR_CRCH];
    AckBuf[MSG_HDR_CRCL]  = (char)PktBuf[MSG_HDR_CRCL];

    SioSendMsg( AckBuf, MSG_HEADER_SIZE );
        
    return( NumCollected );
}
#endif

