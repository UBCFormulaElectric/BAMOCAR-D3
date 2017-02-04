/*H*****************************************************************************
*
* $Archive:: /TI/product/F28xxSerialFlash/src/f28xx_main.c                    $
* $Revision:: 3                                                               $
* $Date:: 11/14/03 10:19a                                                     $
* $Author:: Tonyc                                                             $
*
* HISTORY:
*   Mar 27, 2007: Increased value of SciInit.MaxCharTimeout in main() to allow
*                 baud rates below 9600 to work correctly. (D. ALTER)
*
* DESCRIPTION: Supports F28xx programming via serial port connection to
*              SDFlash v1.60 and higher.
*
* GLOBALS 
*
* PUBLIC FUNCTIONS:
*                              
* PRIVATE FUNCTIONS:
*
* USAGE/LIMITATIONS:
*  Built and tested on F2812 verification and debug board VDB.
*  This app requires various files from TI to support basic F28xx
*  configuration and the flash api.
*  
*  Compile switches:
*     INCL_CIO_SUPPORT Include support for use of CIO interface.  Requires
*                      lowlev.c.  lowlev.c has been changed to support
*                      comm devices as well as traditional cio (printf).
*
*	  INCL_STD_CIO     Include support for standard cio functions (printf).
*                      Including standard cio takes  significant amount
*                      of memory.  Must have INCL_CIO_SUPPORT defined for this
*                      option to take effect.
*
*    INCL_COM_SERIAL   Must be enabled to include SCI driver support from 
*                     drv2812sci.c.
* NOTES:  
*  The key files for this application are:
*     
*     f28xx_main.c
*         Top level file for serial programming.  Handle init and is the
*         main processing loop.  This file has also pulled in code clips
*         from the TI files to simplify setup and reduce total code size.
*     f28xxpkt.c
*         Packet level code.  The serial port communications to the host
*         is based on simple packet protocol. 
*     drv2812sci.c
*         SCIA/SCIB serial port driver code.  
*     lowlev.c
*         Adapted from TI rts lowlev.c.  File is modified to support iocntl
*         function but also reduce code size by making standard CIO
*         compile time dependent.
*
*     Flash2812_API.c
*         Adapted from TI flash example.  The function of this file is to
*         map arguments between SDFlash parameters to TI flash API
*         parameters.
*     DSP281x_GlobalVariableDefs.c
*         Included from TI release.  
*     DSP281x_usDelay.asm
*         Included from TI release.
*     Flash2812_API_Beta1.lib
*         Included from TI FLASH API Beta1 release.
*     
*     All TI files have been downloaded from the web and installed at same
*     level as serial flash application files.  See other docs for details
*     to set up the various files.
*     
*     
* (C) Copyright 2003 by Spectrum Digital Incorporated
* All rights reserved
*
*H*****************************************************************************/
#include <stdio.h>
#include "file.h"		// Using local version as it has been changed to support
                        // comm devices.

#include "DSP281x_Device.h"
#include "drv2812sci.h"
#include "f28xxpkt.h"
#include "flash.h"
                          
#include "Flash281x_API_Library.h"


				
// This is our global event flag definition.  Low level drivers
// set events to process.  Upper level waits on an event else
// goes to idle. 				
volatile Uint16 gPostedEvents = 0;

// Define sci low level buffer size that makes sense for latency
// SIZE_COMMAND_BLOCK defined in flash.h
#define SIZE_SCI_BUFFER   ((SIZE_COMMAND_BLOCK+4)*2)

// Define the com channel that we intend to use.  COM1 translates
// to SCIA, COM2 translates to SCIB.
// SCIA_EVT_DATA defined in drv2812sci.h
const char FileName[] = SCI_DEV_NAME":COM1";
#define    SCI_EVT_DATA SCIA_EVT_DATA

// User defined buffer to hold SCI data.
unsigned char RxSci[ SIZE_SCI_BUFFER ];

// The F2812 VDB has a led connected to GPIOF14 (XF).  We toggle this
// bit to signal activity.  This is turned off as it could cause issue
// in the customer target system.
#if defined( F2812_VDB )
	#define STATUS_LED_TOGGLE  {GpioDataRegs.GPFTOGGLE.bit.GPIOF14 = 1;}
	#define STATUS_LED_OFF     {GpioDataRegs.GPFCLEAR.bit.GPIOF14  = 1;}
	#define STATUS_LED_ON      {GpioDataRegs.GPFSET.bit.GPIOF14    = 1;}
#else
	#define STATUS_LED_TOGGLE  
	#define STATUS_LED_OFF     
	#define STATUS_LED_ON      
#endif

// Arguments passed in from SDFlash to control flash programming.
// The order of this is very important as we may fill them in as
// a block of data. Some options do not apply but are left for
// historical reasons and for portability across multiple targets.

Uint16   PRG_command;        // The command to execute
Uint32   PRG_paddr;          // Memory access address
Uint16   PRG_page;           // Memory page 0-Prog, 1-Data, 2-I/O 
Uint16   PRG_length;		 // Number of target uints 
Uint16   PRG_option1;		 // SDFLASH Option 1

Uint16   PRG_option2;        // SDFLASH Option 2
Uint16   PRG_option3;        // SDFLASH Option 3
Uint16   PRG_option4;        // SDFLASH Option 4

Uint16   PRG_status;	     // Status that will be sent back host
Uint16 * PRG_buf;	         // Pointer to data buffer

// Interface to TI FLASH API
extern Uint16 FLASH28_Init( void );
extern Uint16 FLASH28_Erase( void );
extern Uint16 FLASH28_Program( void );
extern Uint16 FLASH28_Verify(void );

/*F***************************************************************************
* NAME:   MEM_Read( Uint32 Taddr, Uint16 Length, char * pData )  
*
* DESCRIPTION: Reads N values of data from memory to a packet buffer.
*              Output data is 8 bit byte data in big endian format and must
*              be converted from 16 bit data.
*
* NOTES: Taddr and Length are NOT checked for validity.  Must be done 
*        else where if it matters.
*   
*F***************************************************************************/
void MEM_Read( Uint32 Taddr, Uint16 Length, char * pData )
{

	register Uint16 * Addr = (Uint16 *)Taddr;
	register Uint16 Temp;

	while( Length-- )
	{
		Temp = *Addr++;
		Put16(pData, Temp );
	}
	PRG_status	=  PRG_STATUS_SUCCESS;
}

/*F***************************************************************************
* NAME: MEM_Write( Uint32 Taddr, Uint16 Length, char * pData )   
*
* DESCRIPTION: Writes N values of data to memory from the packet buffer.
*              Input data is 8 bit byte data in big endian format and must
*              be converted to 16 bit data.
*
* NOTES: Taddr and Length are NOT checked for validity.  Must be done 
*        else where if it matters.
*   
*F***************************************************************************/
void MEM_Write( Uint32 Taddr, Uint16 Length, char * pData )
{
	register Uint16 * Addr = (Uint16 *)Taddr;
	register Uint16 Temp;

	while( Length-- )
	{
		Get16( pData, Temp )
		*Addr++ = Temp;
	}
	PRG_status	=  PRG_STATUS_SUCCESS;
}	
/*F***************************************************************************
* NAME: FLASH_ExecuteCommand( int Fd, char * pPkt )   
*
* DESCRIPTION: Unpacks flash command and calls the appropriate flash
*              api functions.
*
* NOTES: This function must always set pass/fail status and returns the
*        the number of 16 bit words to send back to the host.
*
*        The flash API turns off interrupts so we must turn interrupts
*        back on following a call to the API.  The host code has to
*        be written such that it waits for "long enough" before sending
*        followup commands or waiting on status.
*   
*F***************************************************************************/

int FLASH_ExecuteCommand( int Fd, char * pPkt )
{
	char * pBuf;
	int    NumToReturn = 1;  // Always return PRG_status
	int    SetStatus   = 1;
	
	pBuf = pPkt;
	
	Get16( pBuf, PRG_command );
	Get32( pBuf, PRG_paddr   );
	Get16( pBuf, PRG_page    );
	Get16( pBuf, PRG_length  );
	Get16( pBuf, PRG_option1 );
	Get16( pBuf, PRG_option2 );
	Get16( pBuf, PRG_option3 );	
	Get16( pBuf, PRG_option4 );	
	Get16( pBuf, PRG_status  );
	
	PRG_buf = (Uint16 *)pBuf;
	
	switch( PRG_command )
	{
		case CMD_LOOPBACK:
			// Simply loop back input to output with no modification
			NumToReturn = PKT_NumDataRead( Fd );
			NumToReturn >>= 1; // Divide by 2, from 8 bit to 16 bit qty
			SetStatus = 0;
			break;
			
		case CMD_MEM_WRITE:
			MEM_Write( PRG_paddr, PRG_length, &pPkt[SIZE_COMMAND_BLOCK] );
			break;
			
		case CMD_MEM_READ:
			// Increment data past the return status value
			MEM_Read( PRG_paddr, PRG_length, pPkt+2);			
			NumToReturn += PRG_length;			 
			break;
		
		case CMD_FLASH_ERASE:	
			PRG_status = FLASH28_Erase();
			EINT;    // Reenable as FLASH API disables global int
			break;
			
		case CMD_FLASH_PROGRAM:
		{
			register Uint16 i;
			register Uint16 Temp;
			// Converts 8bit byte stream to Uin16
			for(i=0; i<PRG_length; i++ )
			{
				Get16(pBuf, Temp );
				PRG_buf[i] = Temp;
			}
				
			PRG_status = FLASH28_Program();  
			EINT;    
			break;
		}
			
		case CMD_FLASH_VERIFY:
			PRG_status = FLASH28_Verify();  
			EINT;    
			break;
			
		default:
			PRG_status = PRG_STATUS_CMD_UNSUPPORTED;
			break;
	}
	if( SetStatus )
	{
		pBuf = pPkt;
		Put16(pBuf,PRG_status);	
	}
	
	return( NumToReturn );	
}



//---------------------------------------------------------------------------
// InitSysCtrl:  Taken from DSP28_SysCtrl.c
//---------------------------------------------------------------------------
// This function initializes the System Control registers to a known state.
//
void InitSysCtrl(void)
{
	Uint16 i;
	EALLOW;
	
	// Disable watchdog module
	SysCtrlRegs.WDCR= 0x0068;
	
	// Initalize PLL.  This sets the pll for x10/2 or 150MHz when using a 30
	// MHz input clock, i.e. eZdsp or VDB.
	SysCtrlRegs.PLLCR.bit.DIV = 0xA;
	// Wait for PLL to lock
	for(i= 0; i< 5000; i++){}
	   
	// HISPCP/LOSPCP prescale register settings, normally it will be set to default values
	SysCtrlRegs.HISPCP.all = 0x0001;
	SysCtrlRegs.LOSPCP.all = 0x0002;
	
	// Peripheral clock enables set for the selected peripherals.   
	SysCtrlRegs.PCLKCR.bit.EVAENCLK=1;
	SysCtrlRegs.PCLKCR.bit.EVBENCLK=1;
	SysCtrlRegs.PCLKCR.bit.SCIAENCLK=1;
	SysCtrlRegs.PCLKCR.bit.SCIBENCLK=1;
	SysCtrlRegs.PCLKCR.bit.MCBSPENCLK=1;
	SysCtrlRegs.PCLKCR.bit.SPIENCLK=1;
	SysCtrlRegs.PCLKCR.bit.ECANENCLK=1;
	SysCtrlRegs.PCLKCR.bit.ADCENCLK=1;
	EDIS;
	
}

//---------------------------------------------------------------------------
// InitPieCtrl: Taken from DSP28_PieCtrl.c
//---------------------------------------------------------------------------
// This function initializes the PIE control registers to a known state.
//
void InitPieCtrl(void)
{
    // Disable the PIE
    PieCtrlRegs.PIECRTL.bit.ENPIE = 0;

	// Clear all PIEIER registers:
	PieCtrlRegs.PIEIER1.all = 0;
	PieCtrlRegs.PIEIER2.all = 0;
	PieCtrlRegs.PIEIER3.all = 0;	
	PieCtrlRegs.PIEIER4.all = 0;
	PieCtrlRegs.PIEIER5.all = 0;
	PieCtrlRegs.PIEIER6.all = 0;
	PieCtrlRegs.PIEIER7.all = 0;
	PieCtrlRegs.PIEIER8.all = 0;
	PieCtrlRegs.PIEIER9.all = 0;
	PieCtrlRegs.PIEIER10.all = 0;
	PieCtrlRegs.PIEIER11.all = 0;
	PieCtrlRegs.PIEIER12.all = 0;

	// Clear all PIEIFR registers:
	PieCtrlRegs.PIEIFR1.all = 0;
	PieCtrlRegs.PIEIFR2.all = 0;
	PieCtrlRegs.PIEIFR3.all = 0;	
	PieCtrlRegs.PIEIFR4.all = 0;
	PieCtrlRegs.PIEIFR5.all = 0;
	PieCtrlRegs.PIEIFR6.all = 0;
	PieCtrlRegs.PIEIFR7.all = 0;
	PieCtrlRegs.PIEIFR8.all = 0;
	PieCtrlRegs.PIEIFR9.all = 0;
	PieCtrlRegs.PIEIFR10.all = 0;
	PieCtrlRegs.PIEIFR11.all = 0;
	PieCtrlRegs.PIEIFR12.all = 0;

	// Enable PIE:
	PieCtrlRegs.PIECRTL.bit.ENPIE = 1;
	PieCtrlRegs.PIEACK.all = 0xFFFF;
}	

interrupt void rsvd_ISR(void)          // for test
{
  asm ("      ESTOP0");
  for(;;);
}

//---------------------------------------------------------------------------
// InitPieVectTable: Taken from PieVect.c and sripped down
//---------------------------------------------------------------------------
// This function initializes the PIE vector table to a known state.
// This function must be executed after boot time.
//

void InitPieVectTable(void)
{
	int16	i;

	Uint32  Source = (Uint32)rsvd_ISR;
	Uint32 * Dest = (void *) &PieVectTable;
	
	EALLOW;	
	for(i=0; i < 128; i++)
		*Dest++ = Source;	
	EDIS;

	// Enable the PIE Vector Table
	PieCtrlRegs.PIECRTL.bit.ENPIE = 1;	
			
}
	
void main(void)
{
    SCI_INIT_OPTIONS SciInit;
    int MyFd = -1;
    
   	InitSysCtrl();
	InitPieCtrl();  
    InitPieVectTable();  
    FLASH28_Init();

#if defined( F2812_VDB ) 
	// Only setup XF for visual display is running on VDB   
    EALLOW;    
    GpioMuxRegs.GPFMUX.all=0x0000;
    GpioMuxRegs.GPFDIR.all=0x4000;     // XF as output
    GpioDataRegs.GPFCLEAR.bit.GPIOF14 = 1;
    EDIS;
#endif
    
    // =======================================================
    // Init the SCI A driver
    // We define and control the SCI buffer and size from the
    // main application.  Thus buffer size can be adjusted for
    // memory requirments. The size of the buffer is dependent
    // on the latency needed for the flash application.  
    // As written there are several levels of buffersing:
    //  1) SCI fifos if used.
    //  2) RxSci buffer.  Temp storage for sci driver
    //  3) Packet buffer. This is were a full message is built
    //     before being handed off to the Flash application.
    //     
    // The baudrate is set as a default but we will autobaud to
    // sync with the host.
    //
    memset( &SciInit, 0, sizeof(SciInit));
    
    SciInit.BaudRate    = BAUD_9600;
    SciInit.StopBits    = ONE_STOP_BIT;
    SciInit.ByteSize    = 8;
    SciInit.fParity     = FALSE;
    SciInit.Parity      = NO_PARITY;
    SciInit.fLoopBack   = FALSE;
    SciInit.XmitFifoLvl = 8;
    SciInit.XmitDelay   = 3;
    SciInit.RecvFifoLvl = 1;

    SciInit.MaxCharTimeout   = 200;	// Outer loop counter in SCI_write() in drv2808sci.c.
                                        // Each loop runs for 104 uS.  Must allow time for a
                                        // for a 10-bit character to transmit.

    SciInit.pRecvBuf         = RxSci;
    SciInit.SizeBytesRecvBuf = SCI_BUFFER_SIZE(SIZE_SCI_BUFFER);
    
    // Install the SCI device driver with default settings
    if( SCI_DrvInit( FileName, &SciInit ) != SCI_ERR_SUCCESS )
    	exit();
    
    // If we cannot make the connection then not much we can
    // do.  Should probably just do a soft reset and go back
    // to boot loadr mode.	
    MyFd = PKT_Open( FileName );
    
 	if( MyFd < 0 )
 		exit();
 		              
    // Disable and clear all CPU interrupts:
	DINT;
	IER  = 0x0000;
	IFR  = 0x0000;
    IER |= 0x0100;		   // enable PIEIER9, and INT9
    asm(" mov  *SP++, #0x0100 ; Want to enable INT9 DBGIER.");
    asm(" pop  DBGIER         ; ...register");    
    ERTM;
    EINT;
    
    // Loop trying to autobaud and toggle XF(if enabled) to show some status
    while( PKT_AutoBaud( MyFd) != SCI_ERR_SUCCESS )
    {
    	STATUS_LED_TOGGLE;
    }
    
    // 
    STATUS_LED_OFF;
    	    
    
    for(;;)
    { 
   
    	// Low level SCI driver will set an event signal when it has
    	// input data in it's data buffer. We can use this as the trigger
    	// to process incoming packet data.  We will loop here as long
    	// as there is an event pending.  Else go to sleep and wait.
    	while(( gPostedEvents & SCI_EVT_DATA ) == SCI_EVT_DATA )
    	{
			char * pPkt;
			int    NumBytesRead;
			int    NumToReturn;
			
			// Wait for packet available
			// Format the packet data into command args
			// Process the command packet
			// Send the command reply
			//
    		if( PKT_ProcessInput( MyFd ) == PACKET_AVAILABLE )
    		{
    			// Get the pointer to packet data and get the number
    			// of bytes read.  We can use this for testing if necessary.
    			pPkt = PKT_Get( MyFd );

    			if( pPkt != NULL )
    			{
    			    NumBytesRead = PKT_NumDataRead( MyFd );
    			    
    			    if( NumBytesRead < SIZE_COMMAND_BLOCK )
    			    {
    			    	// Stuff the return status as stat high byte
    			    	// stat low byte (bige format).
    			    	pPkt[0] = 0;                   
    			    	pPkt[1] = PRG_STATUS_CMD_INVALID;
    			        NumToReturn = 1;
    			    }
    			    else
    			    {		
    					NumToReturn = FLASH_ExecuteCommand( MyFd, pPkt );
    				}
    				
    				// Send the data back to host.  NumToReturn
    				// is in target 16 bit ints.  So multiply by
    				// 2 as packet level needs number of 8 bit bytes
    				// to return.
    				PKT_ProcessOutput( MyFd, NumToReturn*2, NULL );
    				
    				// Now release the buffer to accept more data
    				PKT_ReleaseInput( MyFd );
    			} // end of pPkt != NULL
    		} // end of PKT_ProcessInput()
		}// end of event loop
		
		
	    STATUS_LED_OFF;
		asm("  IDLE");
		
		STATUS_LED_ON;
	}
	
} 					



