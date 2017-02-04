/*H*****************************************************************************
*
* $Archive:: /TI/product/F28xxSerialFlash/src/drv2833xsci.c                    $
* $Revision:: 2                                                                $
* $Date:: 10/29/03 11:34a                                                      $
* $Author:: Tonyc                                                              $
*
* HISTORY:
*  November 29, 2007: Ported to F2833x from drv2804xsci.c (C. PENG)
*  March 5, 2007: Ported to F2804x from original drv2808sci.c (D. ALTER)
*
* DESCRIPTION: Generic serial port driver for F2833x.  Supports both
*              A/B ports including support for TI CIO model.
*
* GLOBALS
*
* PUBLIC FUNCTIONS:
*
* PRIVATE FUNCTIONS:
*
* USAGE/LIMITATIONS:
*
* NOTES: This code supports both SCIA and SCIB.  This results in a very
*        flexible driver but it does require increased code
*        to support both ports.
*
* (C) Copyright 1998-2003 by Spectrum Digital Incorporated
* All rights reserved
*
*H***************************************************************************/
#define drv2833xsci_c

/*---- compilation control switches ----------------------------------------*/
#define SCI_SOURCE_FILE

#ifdef   INCL_COM_SERIAL            /* Enable if serial port                */

/*****************************************************************************
* INCLUDE FILES
*****************************************************************************/
/*---- system and platform files -------------------------------------------*/
#include <stdio.h>
#include <string.h>
#include "file.h"


/*---- program files -------------------------------------------------------*/
#include "DSP2833x_Device.h"
// All we need from here is the definition of CPU_RATE
#include "Flash2833x_API_Library.h"

#include "drv2833xsci.h"
/*****************************************************************************
* EXTERNAL REFERENCE
*****************************************************************************/
/*---- data declarations ---------------------------------------------------*/

/*---- function prototypes -------------------------------------------------*/
extern void DSP28x_usDelay(unsigned long Count);
// DO NOT MODIFY THIS LINE.
#define DELAY_US(A)  DSP28x_usDelay(((((long double) A * 1000.0L) / (long double)CPU_RATE) - 9.0L) / 5.0L)

/*****************************************************************************
* PUBLIC DECLARATIONS
*****************************************************************************/

/*---- data declarations ---------------------------------------------------*/
// This should be in the TI header files instead of here.
extern interrupt void rsvd_ISR(void);

#define XMIT_FIFO_SIZE        8              /* Set xmit fifo threshold     */
#define ERR_SCIFFE       0x8000
#define ERR_SCIFFPE      0x4000

#define WRITE_INTERVAL_TIMEOUT  104          /* default delay when write
                                             *  fifo is full.  If more time
                                             *  is needed then bump the
                                             *  MaxCharTimeout during setup.
                                             */

#define SCIA_ADDR        0x007050UL
#define SCIB_ADDR        0x007750UL
#define SCIA_RXINT_VECT  0x0DC1             /* PIEVECT  SCIRXINTA          */
#define SCIB_RXINT_VECT  0x0DC5             /* PIEVECT  SCIRXINTB          */

#define GET_DEVICE(x) ((x < SCI_NUM_PORTS ) ? SciDevTab[Fd] : (PDEV_2833xSCI)NULL)
/*****************************************************************************
* PRIVATE DECLARATIONS
*****************************************************************************/
/*---- context -------------------------------------------------------------*/

typedef volatile struct SCI_REGS    * PSCI_REGS;

typedef struct dev_2833xsci
{
    /*--Define overall device control --------------------------------------*/
    int             isInitialized;
    int             isOpened;
    int             Errno;
    Uint16          RcvErr;
    unsigned char * pInBufErr;      /* Location in buffer of first detected
                                    *  error while reading. May not be the
                                    *  true error position but is best guess.
                                    */
    char       DevName[10];          /* SCI or SCI                        */

    /*-- Open arguments passed in and saved. -------------------------------*/
    char       FileName[10];        /* File name                            */
    unsigned   Flags;               /* File open flags                      */
    int        DevFd;               /* File descriptor for dev level        */
    int        LowLvFd;             /* File descriptor passed in from lowlev*/

    /*--Define uart configuraiton ------------------------------------------*/
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

    PSCI_REGS  pSci;                /* Pointer to SCI port                  */
    Uint16     RxEvent;             /* Recv channel event                   */

    /*  Define params for the input channel, host to C5x -------------------*/
    unsigned char     * pInHead;    /* Points to head/start of  buffer      */
    unsigned char     * pInTail;    /* Points to tail/end of the buffer     */
    unsigned char     * pInPos;     /* Points to current position           */
    unsigned char     * pInTop;     /* Points to top or last good char      */
    int                 InSize;     /* Size of buffer                       */
    int                 InLock;     /* Lock buffer                          */
    int                 InState;    /* Channel state                        */
    int                 isInIntr;   /* Is input interrupt driven            */

    /*  Define params for the output channel, c5xx to host  ----------------*/
    unsigned char     * pOutHead;   /* Points to head/start of  buffer      */
    unsigned char     * pOutTail;   /* Points to tail/end of the buffer     */
    unsigned char     * pOutPos;    /* Points to current position           */
    unsigned char     * pOutTop;    /* Points to top or last good char      */
    int                 OutSize;    /* Size of buffer                       */
    int                 OutLock;    /* Lock buffer                          */
    int                 OutState;   /* Channel state                        */
    int                 isOutIntr;  /* Is output interrupt driven           */
}DEV_2833xSCI, * PDEV_2833xSCI;

DEV_2833xSCI	Dev2833xsci[SCI_NUM_PORTS];

static  PDEV_2833xSCI SciDevTab[ SCI_NUM_PORTS ] = { NULL, NULL };

/*---- Create a memory buffer for the RS232. Defined by linker.--------------*/


/*---- function prototypes -------------------------------------------------*/
/*---- macros --------------------------------------------------------------*/

/*****************************************************************************
* PUBLIC FUNCTION DEFINITIONS
*****************************************************************************/
/*F***************************************************************************
* NAME:  isrReadChar()
*
* DESCRIPTION: SCI read interrupt handler.  Handles both SCIA and SCIB.
*
* NOTES:
*
*F***************************************************************************/
static interrupt void
isrReadChar( void )
{
    register PDEV_2833xSCI    pDev;
    register PSCI_REGS       pSci;
    volatile unsigned      * pRxCnt;
    Uint16                   DataVal;

    Uint16   PieVect  = PieCtrlRegs.PIECTRL.all;

    // Find the device based on the interrupt we are handling
    if( PieVect == SCIA_RXINT_VECT )
    {
    	pDev = SciDevTab[0];
    }
    else
    {
    	pDev = SciDevTab[1];
    }

    pSci = pDev->pSci;

    PieCtrlRegs.PIEACK.all = PIEACK_GROUP9;

    // If we are autobauding store data into pad byte of buffer
    if( pSci->SCIFFCT.bit.CDC == 1 )
    {
        DataVal = pSci->SCIRXBUF.all;
        *(pDev->pInHead-1) = DataVal;

        // Wait for data value of 'A' or 'a'
        if( ( DataVal == 'A' ) || ( DataVal == 'a' ))
        {
        	pSci->SCIFFCT.bit.CDC = 0;
        }
        else
        {
        	DataVal = 0;
        }
        // Reply with received value or 0
        pSci->SCITXBUF     = DataVal;
	    pSci->SCIFFRX.bit.RXFFINTCLR = 1;
    }
    else
    {
    	pRxCnt = &pSci->SCIFFRX.all;

	    while( ((*pRxCnt >> 8) & 0x0001F ) != 0 )
	    {
	        DataVal = pSci->SCIRXBUF.all;

	        if( DataVal & (ERR_SCIFFE | ERR_SCIFFPE ) )
	        {
	            /* Record the status and eat the character */
	            pDev->RcvErr    = ((DataVal>>8 )&3);
	            pDev->Errno     = SCI_ERR_READ;
	            pDev->pInBufErr = pDev->pInTop;
	            *(pDev->pInTop) = DataVal;
	            SCI_POST_EVENT( SCI_EVT_ERROR );
	            break;
	        }
	        else
	        {
	           *(pDev->pInTop) = DataVal &0x00FF;
	            pDev->pInTop =  ( pDev->pInTop > pDev->pInTail )
	                          ? pDev->pInHead
	                          : pDev->pInTop + 1 ;
	        }
	    }
	    pSci->SCIFFRX.bit.RXFFINTCLR = 1;

	    SCI_POST_EVENT( pDev->RxEvent );
	}
}

/*F***************************************************************************
* NAME:  AutoBaud()
*
* DESCRIPTION: Perform F28xx sytle autobaud.  This is adapted from TI
*              serial loader and example code.  Something of a poor mans
*              Autobaud but it is good enough for the task at hand.
*
* NOTES:
*
*F***************************************************************************/

static int
AutoBaud( int Fd )
{
    Uint32 Timeout;
    PSCI_REGS pSci;

    PDEV_2833xSCI pDev = GET_DEVICE( Fd );

    if( pDev == NULL )
    	return(SCI_ERR_FAIL);

    // Turn off interrupts while we setup the serial port
    SCI_INT_DISABLE;

    pSci = pDev->pSci;

    // Reset fifos and such to start from know good state.
    pSci->SCICTL1.bit.SWRESET = 0;

    pSci->SCIFFTX.all         &= ~0xA000; // SCIRST, TXFIFO == 0
    pSci->SCIFFTX.all         |=  0xA040; // SCIRST, TXFIFO, TXFFINT CLR == 1
    pSci->SCIFFRX.all         &= ~0x2000; // RXFIFO RST = 0
    pSci->SCIFFRX.all         |=  0x6040; // RXFFOVF CLR, RXFFINT CLR = 1
    pSci->SCIFFCT.bit.ABDCLR  = 1;
    pSci->SCIFFCT.bit.CDC     = 1;
    pSci->SCILBAUD            = 1;
    pSci->SCIHBAUD            = 0;

    pSci->SCICTL1.bit.SWRESET = 1;

    SCI_INT_ENABLE;

    // Loop for some time looking for ABD set
    Timeout = 1;
    do
    {
    	if( Timeout++ > 0x03FFFFFUL )
    		break;
    	asm(" NOP");

    }while( pSci->SCIFFCT.bit.CDC == 1 );

    pSci->SCIFFCT.bit.CDC = 0;


    // If ABD set then clear ABD state and return success else fail.
    if(pSci->SCIFFCT.bit.ABD == 1)
    {
    	// This seems redundant as isr loops back sent value which in
    	// theory can only be 'A' or 'a' if ABD is set.  No matter the
    	// host will flush this crap from it's end.
    	pSci->SCITXBUF = 'A';
	    pSci->SCIFFCT.bit.ABDCLR = 1;
    	return(SCI_ERR_SUCCESS);
    }
    else
   		return( SCI_ERR_FAIL );

}

/*F***************************************************************************
* NAME:  SCI_DrvInit()
*
* DESCRIPTION: Put SCIA or SCIB into default state.
*
* NOTES:
*
*F***************************************************************************/
static int
SerialInit( DEV_2833xSCI * pDev )
{
    register PSCI_REGS pSci = pDev->pSci;

    EALLOW;
    if( (Uint32)pDev->pSci == SCIA_ADDR )
    {
	GpioCtrlRegs.GPAMUX2.bit.GPIO28 = 1;		// 0=GPIO, 1=SCIRXDA   2=rsvd       3=TZ5
	GpioCtrlRegs.GPAMUX2.bit.GPIO29 = 1;		// 0=GPIO, 1=SCITXDA   2=rsvd       3=TZ6
	}
	else if ( (Uint32)pDev->pSci == SCIB_ADDR )
	{
	GpioCtrlRegs.GPAMUX2.bit.GPIO22 = 3;		// 0=GPIO, 1=EQEP1S    2=SPICLKC    3=SCITXB
	GpioCtrlRegs.GPAMUX2.bit.GPIO23 = 3;		// 0=GPIO, 1=EQEP1I    2=SPISTEC    3=SCIRXB
    }
    EDIS;

    // Apply various resets and clears
	pSci->SCICTL1.all = 0x0000;      // SW Reset
    pSci->SCIFFTX.all = 0x0040;      // TX fifo reset
    pSci->SCIFFRX.all = 0x404F;      // RX fifo reset
    pSci->SCIFFCT.all = 0x4000;      // ABD clear
    pSci->SCIHBAUD    = 0x0000;
    pSci->SCILBAUD    = 0x0000;


    // Now init the SCI registers
    pSci->SCIFFTX.all              = 0xE040 + pDev->XmitFifoLvl;
    pSci->SCIFFCT.all              = ( pDev->XmitDelay & 0x00FF );

    // rxfiforst | rxffintclr rxffiena | rxffil3-0=1
    pSci->SCIFFRX.all              = 0x2060 + pDev->RecvFifoLvl ;

  	pSci->SCICCR.all = (  ( pDev->StopBits  << 7 )
 	                    | ( pDev->Parity    << 6 )
 	                    | ( pDev->fParity   << 5 )
 	                    | ( pDev->fLoopBack << 4 )
 	                    | ( pDev->ByteSize       ));

	pSci->SCICTL1.all = 0x0003;  // enable TX, RX, internal SCICLK,
                                 // Disable RX ERR, SLEEP, TXWAKE
	pSci->SCICTL2.all = 0x0003;  // Rx/BK INT ENA, TX INT ENA

    // Set for autobaud
    pSci->SCIHBAUD                = 0x0000;
    pSci->SCILBAUD                = 0x0001;
    pSci->SCIPRI.bit.FREE         = 1;

	pSci->SCICTL1.all =0x0023;     // Relinquish SCI from Reset

    return( SCI_ERR_SUCCESS );
}

/*F***************************************************************************
* NAME:  SCI_DrvInit()
*
* DESCRIPTION: Init the serial port driver.  The driver is written to support
*              both SCIA and SCIB and also TI CIO model.
*
* NOTES:
*
*F***************************************************************************/

int
SCI_DrvInit( const char * Name, SCI_INIT_OPTIONS * pInitOpts )
{
    static int DrvInit = FALSE;
    int Result         = SCI_ERR_SUCCESS;
    int DevFd          = 0;

    PDEV_2833xSCI pDev;

    if( Name == NULL )
    	return(-1);

    if( DrvInit == 0 )
    {
    	// Init the SCI structures and device table.  If two serial ports
    	// supported then assign different structures.  If only one then
    	// map both to first structure.  This saves little code.
    	//
    	memset( Dev2833xsci, 0, sizeof(Dev2833xsci) );

    	if( SCI_NUM_PORTS == 2 )
    	{
    	    SciDevTab[0] = &Dev2833xsci[0];
    		SciDevTab[1] = &Dev2833xsci[1];
    	}
    	else
    	{
    		SciDevTab[0] = SciDevTab[1] = &Dev2833xsci[0];
    	}

#if defined( INCL_CIO_SUPPORT )
		// Name comes in as "SCI:COM1"  CIO just wants "SCI"
		{
			char TempName[4];
			strncpy(TempName, Name,3 );
			TempName[3] = '\0';
			Result = add_iodevice( (char *)TempName,
		                         _SSA,
		                         SCI_Open,
		                         SCI_Close,
		                         SCI_Read,
		                         SCI_Write,
		                         SCI_Ioctl);
		}

#endif
		if( Result != -1 )
			DrvInit   = TRUE;
		else
			return(SCI_ERR_FAIL);
    }

    // Get pointer to device being opened.  Name must be in the form
    // SCI:COM1 or SCI:COM2
    //
    if( Name[7] == '1' )
   	{
   		// COM1
    	pDev = SciDevTab[0];
    	DevFd = 0;
    }
    else if( Name[7] == '2' )
    {
    	// COM2
    	pDev = SciDevTab[1];
    	DevFd = 1;
    }
	else // Error
		return(SCI_ERR_FAIL);


	if( pDev->isInitialized == FALSE )
	{
	    pInitOpts->DevFd     = DevFd;
	    pDev->DevFd          = DevFd;
		pDev->BaudRate       = pInitOpts->BaudRate;
        pDev->StopBits       = pInitOpts->StopBits     & 1;
        pDev->ByteSize       = (pInitOpts->ByteSize-1) & 0x7;
        pDev->fParity        = pInitOpts->fParity;
        pDev->Parity         = pInitOpts->Parity;
        pDev->fLoopBack      = pInitOpts->fLoopBack;
        pDev->XmitFifoLvl    = pInitOpts->XmitFifoLvl  & 0x001F;
        pDev->XmitDelay      = pInitOpts->XmitDelay    & 0x00FF;
        pDev->RecvFifoLvl    = pInitOpts->RecvFifoLvl  & 0x001F;

        pDev->MaxCharTimeout = pInitOpts->MaxCharTimeout;

        // We include 1 pad byte at front of the buffer.
        pDev->pInHead        = pInitOpts->pRecvBuf+1;
        pDev->InSize         = pInitOpts->SizeBytesRecvBuf-1;

        pDev->pOutHead       = pInitOpts->pXmitBuf+1;
        pDev->OutSize        = pInitOpts->SizeBytesXmitBuf;

        // Only save the dev part of the name
        strncpy( pDev->DevName, Name, 3 );

        if( DevFd == 1 )
        {
		#if(ALLOW_SCIB == 1)
		   	pDev->pSci    = &ScibRegs;
        	pDev->RxEvent = SCIB_EVT_DATA;
		#endif
        }
        else
        {
	        pDev->pSci    = &SciaRegs;
            pDev->RxEvent = SCIA_EVT_DATA;
        }

    	pDev->isInitialized = TRUE;
	 }
	 else
	 	Result = SCI_ERR_FAIL;

    return( Result );
}
/*F***************************************************************************
* NAME: SCI_Open()
*
* DESCRIPTION: Open connection for specified serial port.
*
* NOTES:
*
*
*  Time per bit (rounded up).  Character time should be 10x
*        BAUD_115200     9 us
*        BAUD_57600     17 us
*        BAUD_38400     26 us
*        BAUD_19200     52 us
*        BAUD_9600     104 us
*
*F***************************************************************************/
extern interrupt void rxaint_isr(void);

int
SCI_Open(const char * Name, unsigned Flags, int Fd )
{

    PDEV_2833xSCI  pDev     = NULL;

    if( Name == NULL )
    	return(-1);

    // Name may be of form SCI:COM1 or COM1.  We just want the
    // COM1 part to get past SCI:.
    if( Name[3] == ':' )
    	Name += 4;

    if( Name[3] == '1' )
   	{
   		// COM1
    	pDev = SciDevTab[0];
    }
    else if( Name[3] == '2' )
    {
    	// COM2
    	pDev = SciDevTab[1];
    }

    if( pDev == NULL )
    	return(  SCI_ERR_FAIL );

    /* If we are open then just return -------------------------------------*/
    if( pDev->isOpened )
    {
    	return( pDev->DevFd );
    }

    /* Save off the open info for later use --------------------------------*/
    strncpy( pDev->FileName, Name, 8 );
    pDev->Flags      = Flags;
    pDev->LowLvFd    = Fd;

    /* Reset the for baseline operation ------------------------------------*/
    if( SerialInit( pDev ) != 0 )
        return( SCI_ERR_FAIL );

    /* Set up the buffer pointers-------------------------------------------*/
    pDev->pInPos  = pDev->pInHead;
    pDev->pInTop  = pDev->pInHead;
    /*-- Tail points to 1 less then the top address. -----------------------*/
    pDev->pInTail = pDev->pInHead + pDev->InSize - 2;


    pDev->pOutPos  = pDev->pOutHead;
    pDev->pOutTop  = pDev->pOutHead;
    /*-- Tail points to 1 less then the top address. -----------------------*/
    pDev->pOutTail = pDev->pOutHead + pDev->OutSize - 2;

    /* Set flag that we are opened -----------------------------------------*/
    pDev->isOpened = 1;

    /*-- Enable SCI read interrupt ----------------------------------------*/
    EALLOW;
    if( (Uint32)pDev->pSci == SCIA_ADDR )
    {
		PieVectTable.SCIRXINTA = isrReadChar;
		PieCtrlRegs.PIEIER9.all |= 0x0001;
	}
	else if ( (Uint32)pDev->pSci == SCIB_ADDR )
    {
	#if(ALLOW_SCIB == 1)
		PieVectTable.SCIRXINTB = isrReadChar;
		PieCtrlRegs.PIEIER9.all |=  0x0004;
	#endif
    }
	EDIS;

    return ( pDev->DevFd );
}

/*F***************************************************************************
* NAME:  SCI_Close()
*
* DESCRIPTION: Close the specified SCI channel and turn off the interrupt.
*
* NOTES:
*
*F***************************************************************************/
int
SCI_Close( int Fd )
{
    PDEV_2833xSCI        pDev    = GET_DEVICE( Fd );
    register PSCI_REGS  pSci    = NULL;

    if( pDev == NULL )
    	return(SCI_ERR_FAIL);

    pSci = pDev->pSci;

    /*-- Turn off interrupt -----------------------------------------------*/
    EALLOW;
    if( (Uint32)pSci == SCIA_ADDR )
    {
		PieVectTable.SCIRXINTA   = rsvd_ISR;
		PieCtrlRegs.PIEIER9.all &= ~0x0001;
		pSci->SCICTL1.all        = 0x0000;
	    pSci->SCIFFTX.all        = 0x0040;
	    pSci->SCIFFRX.all        = 0x404F;

	}
	else if ( (Uint32)pSci == SCIB_ADDR )
    {

	#if(ALLOW_SCIB == 1)
		PieVectTable.SCIRXINTB   = rsvd_ISR;
		PieCtrlRegs.PIEIER9.all &= ~0x0004;
		pSci->SCICTL1.all        = 0x0000;
	    pSci->SCIFFTX.all        = 0x0040;
	    pSci->SCIFFRX.all        = 0x404F;
	#endif
    }
	EDIS;

    /*-- Need to flush buffers --------------------------------------------*/

    /*-- Reset the structure  ---------------------------------------------*/
    pDev->DevName[3]  = 0;
    pDev->isOpened    = FALSE;

    return ( SCI_ERR_SUCCESS );
}
/*F***************************************************************************
* NAME: SCI_Read()
*
* DESCRIPTION: Read N bytes from serial port buffer.
*
* NOTES:  The read channel is buffered so we do not read directly from the
*         hw.
*
*F***************************************************************************/
int
SCI_Read( int Fd, char * pBuf, unsigned nBytes )
{
    unsigned       NumRead;
    unsigned       NumDataAvailable;
    char          *pTop;
    char          *pTail;
    register char *pCurr;

    PDEV_2833xSCI    pDev = GET_DEVICE( Fd );

    if( pDev == NULL )
    	return(SCI_ERR_FAIL);

    NumRead   = 0;

    if( pDev->Errno != SCI_ERR_SUCCESS )
        return( SCI_ERR_FAIL );

    pTop  = (char*)pDev->pInTop;
    pCurr = (char*)pDev->pInPos;
    pTail = (char*)pDev->pInTail;

    // No data available
    if( pCurr == pTop )
    	return(0);

    if( pCurr < pTop )
    	NumDataAvailable = pTop - pCurr;
    else
    	NumDataAvailable = pTail+2-pCurr;

    if( NumDataAvailable > (unsigned)nBytes )
    	NumDataAvailable = (unsigned)nBytes;

    // If pCurr == pTop then there is no data to process.
    // If pCurr <  pTop then NumDataAvailable is pTop-pCurr
    // If pCurr >  pTop then data available but wrapped.  So just
    // read to the end of buff. The next read can read from the
    // head of the buffer.  Just a simplification as upper level
    // code will read until it has the data that it needs.

    /* While data is in the buffer and we need data then copy to pBuf - */

	for( NumRead=0; NumRead<NumDataAvailable; NumRead++ )
	{
		*pBuf++ = *pCurr++;
	}
    pDev->pInPos =  ( pCurr > pTail+1 )
    			  ? pDev->pInHead
    			  : (unsigned char *)pCurr;

    SCI_INT_DISABLE;

    if( pDev->pInPos == pDev->pInTop )
    {
        SCI_UNPOST_EVENT(  pDev->RxEvent );
    }

    SCI_INT_ENABLE;

    return( (pDev->Errno == SCI_ERR_SUCCESS ) ? (int)NumRead : SCI_ERR_FAIL );

}


/*F***************************************************************************
* NAME:  SCI_Write()
*
* DESCRIPTION: Write N bytes to serial port.
*
* NOTES:
*
*F***************************************************************************/

int
SCI_Write( int Fd, const char * pBuf, unsigned nBytes )
{
    unsigned NumWritten;
    int      Timeout;
    register PSCI_REGS pSci;

    PDEV_2833xSCI  pDev = GET_DEVICE( Fd );

    if( pDev == NULL )
    	return(SCI_ERR_FAIL);

    pSci = pDev->pSci;

    NumWritten  = 0;

    if( pDev->Errno != SCI_ERR_SUCCESS )
        return( SCI_ERR_FAIL );

    if( !pDev->isOutIntr )
    {
        Timeout = 0;

        while(( NumWritten < nBytes ) && ( pDev->Errno == 0 ))
        {

            if( pSci->SCIFFTX.bit.TXFFST > XMIT_FIFO_SIZE )
            {
                DELAY_US( WRITE_INTERVAL_TIMEOUT );

                if( ++Timeout > pDev->MaxCharTimeout )
                {
                    pDev->Errno  = SCI_ERR_WRITE_TIMEOUT;
                    SCI_INT_DISABLE;
                    SCI_POST_EVENT( SCI_EVT_ERROR );
                    SCI_INT_ENABLE;
                    break;
                }
            }
		    else
		    {
		    	pSci->SCITXBUF = *pBuf;
                pBuf++;
                NumWritten++;
                Timeout = 0;
            }
        }

    }
    return( (pDev->Errno == SCI_ERR_SUCCESS ) ? (int)NumWritten : SCI_ERR_FAIL );
}

/*F***************************************************************************
* NAME:  SCI_Ioctl()
*
* DESCRIPTION: Perform low level io control which is not part of standard
*              TI CIO interface.
*
* NOTES:
*
*F***************************************************************************/
int
SCI_Ioctl( int  Fd, int  ReqCode, long Arg )
{
    int  Baud;

    int  Errno = 0;

    PDEV_2833xSCI  pDev = GET_DEVICE( Fd );

    if( pDev == NULL )
    	return(-1);

    switch ( ReqCode )
    {
        case SCI_FIONREAD:
            break;
        /* Set word len, stop bits, parity, parity type */
        case SCI_FIOOPTIONS:
             break;

        case SCI_FIOFLUSH:
          SCI_INT_DISABLE;
          pDev->pInPos  = pDev->pInTop   = pDev->pInHead;

          pDev->pOutPos = pDev->pOutTop  = pDev->pOutHead;

          SCI_UNPOST_EVENT(  pDev->RxEvent );
          SCI_INT_ENABLE;
          break;

        case SCI_FIORFLUSH:
          SCI_INT_DISABLE;
          pDev->pInPos = pDev->pInTop  = pDev->pInHead;
          SCI_INT_ENABLE;
          break;

        case SCI_FIOWFLUSH:
          SCI_INT_DISABLE;
          pDev->pOutPos = pDev->pOutTop  = pDev->pOutHead;
          SCI_INT_ENABLE;
          break;

        case SCI_FIOBAUDRATE:
        {
            Baud = (int)Arg;

            if(    ( Baud == BAUD_115200 )
                || ( Baud == BAUD_57600  )
                || ( Baud == BAUD_38400  )
                || ( Baud == BAUD_19200  )
                || ( Baud == BAUD_9600   )
                || ( Baud == BAUD_4800   )
                || ( Baud == BAUD_2400   )
                || ( Baud == BAUD_1200   ))
            {
                    pDev->BaudRate = Baud;
            }
            else
                Errno = SCI_ERR_FAIL;
            break;
        }
        case SCI_FIONWRITE:
            break;

        case SCI_FIOISATTY:
            Errno =  1;  /* We are tty */
            break;

        case SCI_FIOFSTATFSGET:
            Errno = pDev->Errno;
            break;

        case SCI_FIOCLRCOM:
            /*--Reading the LSR clears outstanding errors.----------------*/
            pDev->Errno = SCI_ERR_SUCCESS;
            SCI_UNPOST_EVENT( SCI_EVT_ERROR );
            break;

        case SCI_FIOAUTOBAUD:
        	Errno = AutoBaud( Fd );
        	break;

    }

    return( Errno );
}

#endif  /*-- End of INCL_COM_SERIAL -----------------------------------------*/
