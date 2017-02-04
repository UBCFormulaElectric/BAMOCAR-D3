/*H***************************************************************************
*
* $Archive:: /TI/product/F28xxSerialFlash/src_host/f280xxprg.c                $
* $Revision:: 3                                                              $
* $Date:: 11/14/03 10:20a                                                    $
* $Author:: Tonyc                                                            $
*
* HISTORY:
*
*  Jan. 25, 2008: Changed name to f280xxprg.c for differentiation
*                 between different 28x devices because f2833x no longer
*                 matches f28xx password location convention.(C. Peng)
*
*  Mar. 20, 2007: Added support for 4800, 2400, 1200, and 115200 baud.
*                 (D. Alter)
*
*  June 27, 2005: Ported to F280x from original F281x based f28xxprg.c.
*                 Added password match flow download before main flash
*                 API kernel download. (D. ALTER)
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
*   Incoming Options:
*
*   EmulatorId
*   EmuPortAddr
*   EmuBaudRate
*   EmuBoardFileName
*   EmuProcessorName
*
*
*   PrgEraseFileName
*   PrgEraseTimeout
*   PrgEraseOption1
*   PrgEraseOption2
*   PrgEraseOption3
*   PrgEraseOption4
*
*   PrgProgrammingFileName
*   PrgFlashDataFileName
*   PrgProgrammingTimeout
*   PrgProgrammingOption1
*   PrgProgrammingOption2
*   PrgProgrammingOption3
*   PrgProgrammingOption4
*
*   PrgVerifyFileName
*   PrgVerifyTimeout
*   PrgVerifyOption1
*   PrgVerifyOption2
*   PrgVerifyOption3
*   PrgVerifyOption4
*
*
* (C) Copyright 2003 by Spectrum Digital Incorporated
* All rights reserved
*
*H***************************************************************************/
#define f280xxprg_c

/*---- compilation control switches ----------------------------------------*/
//#define INCL_COFFLIB
#define DO_READBACK_VERIFY
#define USE_THREADS

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
    #include <process.h>

    //#define EXPORT __declspec(dllexport)
    #define EXPORT
#endif

#include <stdio.h>

/*---- program files -------------------------------------------------------*/
#include "f28xxsio.h"
#include "coff.h"
#include "coffdefs.h"
#include "cofflib.h"
#include "f28xxpkt.h"
#include "flash.h"
#include "f280xxprg.h"

/*****************************************************************************
* EXTERNAL REFERENCE
*****************************************************************************/
/*---- data declarations ---------------------------------------------------*/
/* Bootloader/header defines -----------------------------------------------*/
#define OFFSET               1
#define BOOT_HEADER_SIZE    22
#define SECTION_HEADER_SIZE  6

// Sleep( Timeout * XXX_TIMEOUT_MULTIPLIER )
// The result is in milliseconds
//
// Testing shows that it takes about 2 seconds per sector to erase.
// For compatibility with emulator based SDFlash the timeout is
// set to 200.  So we will use 200 to represent 20 seconds for
// 10 sectors.  So the delay in milliseconds is 20,000 or
// 200*10 Sectors *10 (multiplier) == 20 seconds.
//
#define SLEEP_INTERVAL  100

#define ERASE_TIMEOUT( NumSections )  (Opts.PrgEraseTimeout * NumSections * 10)
#define PROGRAM_TIMEOUT( Length ) (Opts.PrgProgrammingTimeout )
#define VERIFY_TIMEOUT( Length )  (Opts.PrgVerifyTimeout )

#define MEMORY_TIMEOUT( Length ) (Length/100)

typedef struct _f28xxprg_opts
{
    // Possible inputs from SDFLASH
    DWORD   EmulatorId;
    DWORD   EmuPortAddr;
    DWORD   EmuBaudRate;
    char    EmuBoardFileName[MAX_PATH+1];
    char    EmuProcessorName[MAX_PATH+1];

    char    PrgBootLoadFileName[MAX_PATH+1];
    DWORD   PrgSkipBootLoad;

    char    PrgEraseFileName[MAX_PATH+1];
    DWORD   PrgEraseTimeout;
    DWORD   PrgEraseOption1;
    DWORD   PrgEraseOption2;
    DWORD   PrgEraseOption3;
    DWORD   PrgEraseOption4;

    char    PrgProgrammingFileName[MAX_PATH+1];
    char    PrgFlashDataFileName[MAX_PATH+1];
    DWORD   PrgProgrammingTimeout;
    DWORD   PrgProgrammingOption1;
    DWORD   PrgProgrammingOption2;
    DWORD   PrgProgrammingOption3;
    DWORD   PrgProgrammingOption4;

    char    PrgVerifyFileName[MAX_PATH+1];
    DWORD   PrgVerifyTimeout;
    DWORD   PrgVerifyOption1;
    DWORD   PrgVerifyOption2;
    DWORD   PrgVerifyOption3;
    DWORD   PrgVerifyOption4;
} F28XXPRG_OPTS;

typedef enum _optiontype
{
    STR  = 0,            // Natural space for processor, !Harvard
    HEX,                 // Program space
    DEC,                 // Data space
    YES                  // I/O space
}OPTION_TYPE;

typedef struct _option_table
{
    char *        Name;
    OPTION_TYPE   Type;
    void *        pDest;
}OPTION_TABLE;

/*---- function prototypes -------------------------------------------------*/

/*****************************************************************************
* PUBLIC DECLARATIONS
*****************************************************************************/

/*****************************************************************************
* PRIVATE DECLARATIONS
*****************************************************************************/
/*---- context -------------------------------------------------------------*/
#define MAX_PRINT_BUFFER   1024

/*---- data declarations ---------------------------------------------------*/
static char                  PrintBuffer[MAX_PRINT_BUFFER] = {0};
static volatile int          ExeStatus                     = PRG_SUCCESS;
static volatile int          ThreadTerminate               = FALSE;
static DWORD                 ThreadHandle                  = 0;
static DWORD                 dwThreadID                    = 0;
//CRITICAL_SECTION             CritSect                      = {0};

static int                   Connected                     = 0;
static DWORD                 PrgHandle                     = 0;
static PRG_MESSAGE_CALLBACK  pfTestPrintMsg                = NULL;
static F28XXPRG_OPTS         Opts;
static char                  SendBuf[MSG_PACKET_SIZE+10];
static char                  RecvBuf[MSG_PACKET_SIZE+10];

static const OPTION_TABLE OptionTable[] =
{
    { "EmulatorId",             HEX, &Opts.EmulatorId       },
    { "EmuPortAddr",            HEX, &Opts.EmuPortAddr      },
    { "EmuBaudRate",            DEC, &Opts.EmuBaudRate      },
    { "EmuBoardFileName",       STR, &Opts.EmuBoardFileName[0] },
    { "EmuProcessorName",       STR, &Opts.EmuProcessorName[0] },

    { "PrgBootLoadFileName",    STR, &Opts.PrgBootLoadFileName[0] },
    { "PrgSkipBootLoad",        YES, &Opts.PrgSkipBootLoad        },


    { "PrgEraseFileName",       STR, &Opts.PrgEraseFileName[0] },
    { "PrgEraseTimeout",        DEC, &Opts.PrgEraseTimeout  },
    { "PrgEraseOption1",        HEX, &Opts.PrgEraseOption1  },
    { "PrgEraseOption2",        HEX, &Opts.PrgEraseOption2  },
    { "PrgEraseOption3",        HEX, &Opts.PrgEraseOption3  },
    { "PrgEraseOption4",        HEX, &Opts.PrgEraseOption4  },

    { "PrgProgrammingFileName", STR, &Opts.PrgProgrammingFileName[0] },
    { "PrgFlashDataFileName",   STR, &Opts.PrgFlashDataFileName[0] },
    { "PrgProgrammingTimeout",  DEC, &Opts.PrgProgrammingTimeout  },
    { "PrgProgrammingOption1",  HEX, &Opts.PrgProgrammingOption1  },
    { "PrgProgrammingOption2",  HEX, &Opts.PrgProgrammingOption2  },
    { "PrgProgrammingOption3",  HEX, &Opts.PrgProgrammingOption3  },
    { "PrgProgrammingOption4",  HEX, &Opts.PrgProgrammingOption4  },

    { "PrgVerifyFileName",      STR, &Opts.PrgVerifyFileName[0] },
    { "PrgVerifyTimeout",       DEC, &Opts.PrgVerifyTimeout  },
    { "PrgVerifyOption1",       HEX, &Opts.PrgVerifyOption1  },
    { "PrgVerifyOption2",       HEX, &Opts.PrgVerifyOption2  },
    { "PrgVerifyOption3",       HEX, &Opts.PrgVerifyOption3  },
    { "PrgVerifyOption4",       HEX, &Opts.PrgVerifyOption4  },
    // Last entry must be NULL
    { NULL,STR,NULL }
};

// Memory command arguments
static  DWORD  MemAddr;
static  DWORD  MemPage;
static  DWORD  MemBytes;
static  char * pMemData;
static  DWORD  MemCmd;


/*---- function prototypes -------------------------------------------------*/

/*---- macros --------------------------------------------------------------*/

/*****************************************************************************
* PUBLIC FUNCTION DEFINITIONS
*****************************************************************************/

/*****************************************************************************
* PRIVATE FUNCTION DEFINITIONS
*****************************************************************************/

/*F***************************************************************************
* NAME:  void PrgInit()
*
* DESCRIPTION:  Init all the statics
*
* NOTES:
*
*F***************************************************************************/
static void PrgInit()
{
    memset( PrintBuffer,0,sizeof(PrintBuffer));
    ExeStatus = PRG_SUCCESS;
    ThreadTerminate   = FALSE;
    ThreadHandle      = 0;
    dwThreadID        = 0;
    Connected         = 0;
    PrgHandle         = (DWORD)&Opts;
    pfTestPrintMsg    = NULL;
    memset( &Opts, 0, sizeof(F28XXPRG_OPTS) );
    memset( SendBuf,0,sizeof(SendBuf));
    memset( RecvBuf,0,sizeof(RecvBuf));

}
/*F***************************************************************************
* NAME:   void TestPutDiagMsg( const char *Format,...)
*
* DESCRIPTION: Message output function for console applications
*
* NOTES: Output to message channel 1.
*
*F***************************************************************************/
static void
TestPutDiagMsg( const char *Format,...)
{
    va_list  Args;

    if( pfTestPrintMsg != NULL )
    {
        va_start(Args, Format);
        vsprintf(PrintBuffer, Format, Args);
        va_end(Args);

        pfTestPrintMsg( PrgHandle, 1, PrintBuffer );
    }
}

/*F***************************************************************************
* NAME:  int SendBootHeader( unsigned long EntryPoint )
*
* DESCRIPTION: Send the F28xx bootload header
*
* NOTES:
*
*F***************************************************************************/
static int
SendBootHeader( unsigned long EntryPoint )
{

    int  i;
    char ReturnVal;

    char BootHeader[BOOT_HEADER_SIZE+8];
    memset( BootHeader, 0 , sizeof(BootHeader ));

    // The Key
    BootHeader[1-OFFSET]  = (char)0xAA;
    BootHeader[2-OFFSET]  = (char)0x08;
    // The Entry point
    BootHeader[19-OFFSET] = (char)((EntryPoint>>16) & 0x00ff );
    BootHeader[20-OFFSET] = (char)((EntryPoint>>24) & 0x00ff );
    BootHeader[21-OFFSET] = (char)((EntryPoint    ) & 0x00ff );
    BootHeader[22-OFFSET] = (char)((EntryPoint>> 8) & 0x00ff );

    for(i=0; i<BOOT_HEADER_SIZE; i++ )
    {
        if( SioSendMsg( &BootHeader[i], 1 ) == 1 )
        {
#if defined( DO_READBACK_VERIFY )
            SioRecvMsg( &ReturnVal, 1 );
             if( (BootHeader[i] &0x00FF)  != ( ReturnVal & 0x00FF ))
                 return(PRG_FAIL);
#endif
        }
        else
            return(PRG_FAIL);
    }

    return(0);

}
/*F***************************************************************************
* NAME:  int  SendSectionHeader( unsigned long SectionAddr, int NumWords )
*
* DESCRIPTION: Send a F28xx section header
*
* NOTES:
*
*F***************************************************************************/
static int
SendSectionHeader( unsigned long SectionAddr, int NumWords )
{

    int  i;
    char ReturnVal;

    char SectionHeader[SECTION_HEADER_SIZE+8];
    memset( SectionHeader, 0 , sizeof(SectionHeader ));

    // Section size words
    SectionHeader[1-OFFSET] = (char)((NumWords     ) & 0x00ff );
    SectionHeader[2-OFFSET] = (char)((NumWords >> 8) & 0x00ff );
    // Section start address
    SectionHeader[3-OFFSET] = (char)((SectionAddr>>16) & 0x00ff );
    SectionHeader[4-OFFSET] = (char)((SectionAddr>>24) & 0x00ff );
    SectionHeader[5-OFFSET] = (char)((SectionAddr    ) & 0x00ff );
    SectionHeader[6-OFFSET] = (char)((SectionAddr>> 8) & 0x00ff );

    for(i=0; i<SECTION_HEADER_SIZE; i++ )
    {
        if( SioSendMsg( &SectionHeader[i], 1 ) == 1 )
        {
#if defined( DO_READBACK_VERIFY )
            SioRecvMsg( &ReturnVal, 1 );
             if( (SectionHeader[i] &0x00FF)  != ( ReturnVal & 0x00FF ))
                 return(PRG_FAIL);
#endif
        }
        else
            return(PRG_FAIL);
    }

    return(0);
}
/*F***************************************************************************
* NAME:  int  SendSectionData( int NumWords, char *pData )
*
* DESCRIPTION: Send the F28xx section data
*
* NOTES:
*
*F***************************************************************************/
static int
SendSectionData( int NumWords, char *pData )
{
    int  i;
    char ReturnVal;

    int NumToSend = NumWords*2;

    for(i=0; i<NumToSend; i++ )
    {
        if( SioSendMsg( pData, 1 ) == 1 )
        {
#if defined( DO_READBACK_VERIFY )
             SioRecvMsg( &ReturnVal, 1 );
             if( (*pData &0x00FF)  != ( ReturnVal & 0x00FF ))
                 return(PRG_FAIL);
#endif
             pData++;
        }
        else
            return(PRG_FAIL);
    }
    return( 0 );
}

/*F***************************************************************************
* NAME: int LoadBootCoffImage( char * pCoffName )
*
* DESCRIPTION: Loads the F28xx flash algo file via the F28xx bootloader.
*
* NOTES: Assumes the F28xx is in serial bootload mode and executing the
*        bootloader.
*
*F***************************************************************************/
static int
LoadBootCoffImage( char * pCoffName )
{
    COFF_OPTS         CoffOptions;
    COFF_HNDL         pCoffHndl    = NULL;
    char             *pCoffData    = NULL;

    int               CoffStatus;
    int               NumSections,i;
    long              ActualBytesRead, NumToRead;
    TI_SCNHDR       * pSectionHdr;
    long              CoffBufferSize;
    int               Success = 0;


    if(( pCoffName == NULL ) || (*pCoffName == '\0' ))
        return( PRG_FAIL);

    ZeroMemory( &CoffOptions, sizeof(COFF_OPTS));

    CoffStatus = COFFR_FileOpen( pCoffName, &CoffOptions, &pCoffHndl );
    if( CoffStatus != 0 )
        return( PRG_FAIL);

    CoffBufferSize = LOCTOBYTE( pCoffHndl, pCoffHndl->FileInfo->largest_sect_size);

	CoffBufferSize += 10;

    pCoffData = (unsigned char *)malloc( CoffBufferSize );

	if ( pCoffData == (unsigned char *)NULL )
    {
        Success = PRG_FAIL;
        goto EXIT_LoadBootCoffImage;
    }

    pSectionHdr = (TI_SCNHDR  *)(pCoffHndl->FileInfo->sect_hdrs);
    NumSections = pCoffHndl->FileInfo->file_hdr.f_nscns;
    TestPutDiagMsg("\nLoading %s\n", pCoffName);
    TestPutDiagMsg("Entry point 0x%08lx\n",pCoffHndl->FileInfo->entry_point );

    if( SendBootHeader( pCoffHndl->FileInfo->entry_point ) )
    {
        Success = PRG_FAIL;
        TestPutDiagMsg("Error writing boot header\n");
        goto EXIT_LoadBootCoffImage;
    }

    for( i=1; i<= NumSections; i++ )
    {
        // Loading the boot image can be really slow so allow user to abort
        //
        if( ThreadTerminate == TRUE )
        {
            Success = PRG_FAIL;
            goto EXIT_LoadBootCoffImage;
        }

        if (  COFFR_IsLoadSection( pCoffHndl, (short)i )
                                  != COFF_NOLOADSECT_ERR )
        {
            NumToRead = LOCTOBYTE(pCoffHndl, pSectionHdr->s_size);

            memset(pCoffData,0x00,NumToRead+1);

			COFFR_GetSectData( pCoffHndl,
							  (short)i,
							  pCoffData,
							  0,
							  NumToRead,
							  &ActualBytesRead );

            TestPutDiagMsg("Section Address = 0x%08lx, Number of words = %d",
                                  (DWORD)pSectionHdr->s_vaddr,
                                  (DWORD)(ActualBytesRead/2));

            if(ActualBytesRead & 1 )
                TestPutDiagMsg(", Pad section\n");
            else
                TestPutDiagMsg("\n");

            if( SendSectionHeader( pSectionHdr->s_vaddr, pSectionHdr->s_size ))
            {
                Success = PRG_FAIL;
                TestPutDiagMsg("Error writing section header\n");
                goto EXIT_LoadBootCoffImage;
            }
            if( SendSectionData( pSectionHdr->s_size, pCoffData ))
            {
                Success = PRG_FAIL;
                TestPutDiagMsg("Error writing section data\n");
                goto EXIT_LoadBootCoffImage;
            }
        }
        pSectionHdr++;
    }
    // Send the trailer to indicate no more section data
    memset(pCoffData,0x00,10 );
    SendSectionData( 1, pCoffData );

EXIT_LoadBootCoffImage:

    if( pCoffData != NULL )
        free( pCoffData );

    if( pCoffHndl != NULL )
        COFFR_FileClose( pCoffHndl );

    return( Success );
}


/*F***************************************************************************
* NAME: void ParseOption( char * pString )
*
* DESCRIPTION: Parse options passed in and fill in the appropriate fields
*
* NOTES:  This is really simple method that uses a option string table.
*         You add options by including new entries into the table.
*
*F***************************************************************************/
static void
ParseOption( char * pString )
{
    char * pArg;
    int    Index;
    int    Abort;

    pArg = strchr( pString,(int)'=' );

    if( pArg == NULL )
        return;

    *pArg = '\0';
    pArg++; // Get past = sign

    Index = 0;
    Abort = 0;
    while( (Abort == 0 ) && (OptionTable[Index].Name != NULL) )
    {
        if( strcmp( pString, OptionTable[Index].Name ) == 0 )
        {
            switch( OptionTable[Index].Type )
            {
                case STR:
                    memset(OptionTable[Index].pDest,0,MAX_PATH+1);
                    if( *pArg != '\0' )
                        strncpy((char *)OptionTable[Index].pDest, pArg, MAX_PATH );
                    Abort = 1;
                    break;

                case HEX:

                    sscanf( pArg,"%08lx", (DWORD *)OptionTable[Index].pDest );
                    Abort = 1;
                    break;

                case DEC:
                    sscanf( pArg,"%d", (DWORD *)OptionTable[Index].pDest );
                    Abort = 1;
                    break;

                case YES:
                    if( strcmp( pArg, "YES" ) == 0 )
                        *(DWORD *)OptionTable[Index].pDest = TRUE;
                    else
                        *(DWORD *)OptionTable[Index].pDest = FALSE;
                    Abort = 1;
                    break;
            }
        }
        Index++;
    }
}


static int
PingChannel()
{
    char    *pSbuf;
    DWORD   i;
    DWORD   NumXfer;

    pSbuf = SendBuf;
    Put16(pSbuf,CMD_LOOPBACK ); // Cmd
    // Dummy data
    for(i=0; i<SIZE_COMMAND_BLOCK;i++)
        pSbuf[i] = (char)i;

    NumXfer = PktSendMsg( SendBuf,SIZE_COMMAND_BLOCK  );
    if( NumXfer == 0 )
    {
        TestPutDiagMsg("Send packet rejected\n");
        return( PRG_FAIL );
    }

    NumXfer = PktRecvMsg( RecvBuf, MSG_BODY_SIZE );
    if( NumXfer < 2 )
    {
        TestPutDiagMsg("Invalid return packet\n");
        return( PRG_FAIL );
    }
    for( i=0; i<10; i++ )
    {
        if( (char)(RecvBuf[i+2] & 0x00FF ) != (char)(i) )
        {
            TestPutDiagMsg("Invalid return packet\n");
            return( PRG_FAIL );
        }
    }
    return( PRG_SUCCESS );

}

/*F***************************************************************************
* NAME: int PRG_Init( DWORD *pHandle )
*
* DESCRIPTION:  Init all the statics so we can get all our data items back
*               to a default state.
*
* NOTES:  The code as written requires that PRG_Init() be the first function
*         called so that you obtain a handle.  PRG_Init() should NOT be
*         called again until there is a successfull call to PRG_Close().
*         PRG_Close() should free up any outstanding resources.
*
*F***************************************************************************/
EXPORT int
PRG_Init( DWORD *pHandle )
{
    if( pHandle == NULL )
        return( PRG_FAIL );

    // Init all the statics.
    SioInit();
    PktInit();
    PrgInit();

    *pHandle = PrgHandle;

    return( PRG_SUCCESS );
}

/*F***************************************************************************
* NAME:  int PRG_SetOptions( DWORD Handle, const char * pArgString )
*
* DESCRIPTION:  Pass in user options.
*
* NOTES: Rules:
*           1) String is null terminated
*           2) Multiple options may be passed
*           3) Multiple options are comma delimited
*           4) Only options that match the OptionTable are valid. Invalid
*              options are simply ignored.
*
*F***************************************************************************/
EXPORT int
PRG_SetOptions( DWORD Handle, const char * pArgString )
{
    int     Length;
    int     SubStrLength;
    char *  pHead    = NULL;
    char *  pCurrent = NULL;
    char *  pComma;

    if( pArgString == NULL )
        return( PRG_FAIL );

    Length = strlen( pArgString );
    if( Length > 0 )
    {
        // Create a temp string and copy into as we modify the string
        // during processing.  Add in couple chars and set to 0 to make
        // handling end of string easier.
        //
        pHead = malloc( Length+5 );
        if( pHead == NULL )
            return( PRG_FAIL );
        memset( pHead,0, Length+2 );
        strcpy( pHead, pArgString );
    }

    pCurrent = pHead;
    while( Length > 0 )
    {
        // Check that we are not at end of string
        if( *pCurrent == '\0' )
            break;

        // Null terminate the substring if multiple items
        pComma = strchr(pCurrent,(char)',');
        if( pComma != NULL )
            *pComma = '\0';

        // If no string to process then break
        SubStrLength = strlen(pCurrent);
        if( SubStrLength == 0 )
            break;

        // Have a string to process
        ParseOption( pCurrent );

        // Index past processed option and possible comma
        pCurrent += (SubStrLength + 1);

        Length -= (SubStrLength + 1);
    }
    if( pHead != NULL )
        free( pHead );

    return( PRG_SUCCESS );

}
/*F***************************************************************************
* NAME:  void PrgOpen( DWORD Handle )
*
* DESCRIPTION:  Open connection to target and bootload if required.
*
* NOTES: Support bootload and no-bootload, thread and no-thread.
*
*F***************************************************************************/
static void
PrgOpen( DWORD Handle )
{
    int     Error;
	char    PortName[20] = "\\.\\";
    int     Baud;
    int     Success = PRG_FAIL;

	int		i;
    char    PrgPasswordMFPath[MAX_PATH+1];
    char    PrgPasswordMFFileName[] = "F280xxPasswordMF.out";

    // Defined in f28xxpkt.c
  	PktInit();

    switch( Opts.EmuPortAddr )
    {

        case 0xC2:
            strcat(PortName,"COM2");
            break;
        case 0xC3:
            strcat(PortName,"COM3");
            break;
        case 0xC4:
            strcat(PortName,"COM4");
            break;
        default:
            strcat(PortName,"COM1");
            break;
    }

	if (Opts.EmuBaudRate != 0)
    {
		switch( Opts.EmuBaudRate )
		{
			case 115200:
				Baud = CBR_115200;
				break;

			case 57600:
				Baud = CBR_57600;
				break;

			case 38400:
				Baud = CBR_38400;
				break;

			case 19200:
				Baud = CBR_19200;
				break;

			case 9600:
				Baud = CBR_9600;
				break;

			case 4800:
				Baud = CBR_4800;
				break;

			case 2400:
				Baud = CBR_2400;
				break;

			case 1200:
				Baud = CBR_1200;
				break;

			default:
				Baud = CBR_38400;
		}
	}
	else
	{
		switch( Opts.PrgEraseOption3)
		{

			case 1:
				Baud = CBR_57600;
				break;

			case 2:
				Baud = CBR_38400;
				break;

			case 3:
				Baud = CBR_19200;
				break;

			case 4:
				Baud = CBR_9600;
				break;

			case 5:
				Baud = CBR_4800;
				break;

			case 6:
				Baud = CBR_2400;
				break;

			case 7:
				Baud = CBR_1200;
				break;

			case 8:
				Baud = CBR_115200;
				break;

			default:
				Baud = CBR_38400;
		}
	}

	// Open the serial port
	Error =  SioOpen( PortName, Baud );
	if( Error )
    {
        TestPutDiagMsg("Could not open serial port %s at %d baudrate\n", PortName, Opts.EmuBaudRate );
        goto EXIT_PrgOpen;
    }

    // After the open we can read back the baud that really got used.  Low
    // level code may be using baud set by windows which could be lower then
    // our baudrate.
    //
    Baud = SioGetCurrentBaudRate();

    // We can skip the bootload if requested by user or if we detect that
    // we have bootloaded already.
    if( Opts.PrgSkipBootLoad == FALSE )
    {
		// Autobaud to get target connected to correct baudrate.  Assume target was in
        // SCI bootloader mode.
        Error = SioAutoBaud( Baud );

		if( Error )
        {
            TestPutDiagMsg("Autobaud failed before loading application\n" );
            goto EXIT_PrgOpen;
        }

        // If user did not specify a boot image then attempt to use the default
        if( Opts.PrgBootLoadFileName[0] == '\0' )
        {
            if( Opts.PrgEraseFileName != '\0' )
                strcpy(Opts.PrgBootLoadFileName,Opts.PrgEraseFileName );
            else if( Opts.PrgProgrammingFileName != '\0' )
                strcpy(Opts.PrgBootLoadFileName,Opts.PrgProgrammingFileName );
            else if( Opts.PrgVerifyFileName != '\0' )
                strcpy(Opts.PrgBootLoadFileName,Opts.PrgVerifyFileName );
            else
                strcpy(Opts.PrgBootLoadFileName,"F28xxSerialBoot.out" );
        }

		// Build the file path for the password match flow download.
		// SDflash does not have a dialog box in which to enter the filename.
		// To get around this, use the same path as PrgFlashDataFileName, and
		// append the filename to that path.

		strcpy( PrgPasswordMFPath, Opts.PrgBootLoadFileName );		// Copy the inputed path to the working string

		for(i=strlen(PrgPasswordMFPath); i>0; i--)					// Search for the last backslash in the path
		{
			if(PrgPasswordMFPath[i] == '\\')						// Found the last backslash
			{
				i++;												// Advance to character after the backslash
				break;												// Break out of the loop
			}
		}															// If no backslash found, loop will terminate at 1st character.  This
																	// means no path was specified, just a filename.  So, we will replace
																	// the filename with the password match flow filename.

		PrgPasswordMFPath[i] = '\0';								// Replace the character after the last backslash with the null character
		strcat( PrgPasswordMFPath, PrgPasswordMFFileName );			// Append the filename to the path

        // Load the Password Match Flow code image.
        Error = LoadBootCoffImage( PrgPasswordMFPath );
		SioClose();

        if( Error )
        {
            TestPutDiagMsg("Failed to load password match flow code.\n");
            goto EXIT_PrgOpen;
        }

        // Give the application time to startup then reconnect
        Sleep( 1000 );
		Error =  SioOpen( PortName, Baud );

		if( Error )
        {
            TestPutDiagMsg("Could not open serial port %s at %d baudrate\n", PortName, Opts.EmuBaudRate );
            goto EXIT_PrgOpen;
        }

        // Autobaud to get target connected to correct baudrate
        Error = SioAutoBaud( Baud );
        if( Error )
        {
            TestPutDiagMsg("Autobaud failed after loading application\n" );
            goto EXIT_PrgOpen;
        }

        // Load the boot image
        Error = LoadBootCoffImage(  Opts.PrgBootLoadFileName );
		SioClose();

        if( Error )
        {
            TestPutDiagMsg("Failed to load boot code.\n");
            goto EXIT_PrgOpen;
        }

        // Give the application time to startup then reconnect
        Sleep( 1000 );
	    Error =  SioOpen( PortName, Baud );
	    if( Error )
        {
            TestPutDiagMsg("Could not open serial port %s at %d baudrate\n", PortName, Opts.EmuBaudRate );
            goto EXIT_PrgOpen;
        }

        // Autobaud to get target connected to correct baudrate
        Error = SioAutoBaud( Baud );
        if( Error )
        {
            TestPutDiagMsg("Autobaud failed after loading application\n" );
            goto EXIT_PrgOpen;
        }

        // We are sending stream of '0' to clear any trash in the com channel.
        // Target will simply ignore these as invalid messages
        memset(SendBuf,0,sizeof(SendBuf));
        SioSendMsg( SendBuf, MSG_HEADER_SIZE );

        Sleep(300);
        SioPurgeComm();

        // If successfull bootload set the PrgSkipBootLoad = TRUE.  This allows
        // us to skip the bootload for subsequent calls.  The user can override
        // this by calling set options to reenable or by closing and recalling
        // PRG_Init().
        Opts.PrgSkipBootLoad = TRUE;
    }
    else
    {
        // If we are skipping  the bootload ping the channel to make sure
        // we can send/recv commands.
        Error = PingChannel();
        if( Error )
            goto EXIT_PrgOpen;
    }

    Connected = 1;
    TestPutDiagMsg("Connected to %s at %d baud\n",PortName,Opts.EmuBaudRate );

    Success = PRG_SUCCESS;

EXIT_PrgOpen:
    ExeStatus = Success;

#if defined( USE_THREADS )
    _endthreadex( Success );
#endif

}

/*F***************************************************************************
* NAME: int PRG_Open( DWORD Handle )
*
* DESCRIPTION:  Wrapper function for PrgOpen.
*
* NOTES:  Suppport thread and non-thread mode.
*
*F***************************************************************************/
EXPORT int
PRG_Open( DWORD Handle )
{
    // Open is done from a thread due to length of time required.
    // Generally speaking this includes doing the boot load which
    // is slow.
    if( ExeStatus != PRG_BUSY )
    {
        ExeStatus       = PRG_BUSY;
        ThreadTerminate = FALSE;

#if defined( USE_THREADS )
        ThreadHandle = _beginthreadex( (LPSECURITY_ATTRIBUTES)NULL,
	                                    (DWORD)0,
	                                    (LPTHREAD_START_ROUTINE)PrgOpen,
                                        (LPVOID)Handle,
                                        (DWORD)0,
	                                    (LPDWORD)&dwThreadID );
        Sleep(0);
        if( ThreadHandle == 0 )
            ExeStatus = PRG_FAIL;
#else
        // ExeStatus is set by PrgOpen
        PrgOpen( Handle );
#endif

    }

    return( ExeStatus );

}
/*F***************************************************************************
* NAME: int PRG_Close( DWORD Handle )
*
* DESCRIPTION:  Close the communication channel.
*
* NOTES:  Supports thread and non-thread
*
*F***************************************************************************/
EXPORT int
PRG_Close( DWORD Handle )
{

    DWORD ThreadState;
    int   TimeOut = 15;

    ThreadTerminate = TRUE;

#if defined( USE_THREADS )
    // If there is a thread running then wait for it to close. This is here
    // so that user could call a close even though an action is still active.
    // This is necessary to support the "Stop" button in SDFlash.
    while( ( ThreadHandle != 0 ) && ( TimeOut-- != 0) )
    {
        ThreadState = WaitForSingleObject( (HANDLE)ThreadHandle, 1000 );

        if( ThreadState != WAIT_TIMEOUT )
            ThreadHandle = 0;

    }
#endif

    // Close the serial port and clear the connect flag.  We do NOT
    // modify the options as these can be used by another open.
    //
    SioClose();
    Connected = 0;
    return( PRG_SUCCESS );
}
/*F***************************************************************************
* NAME: int PRG_SetMessageCallBack( DWORD Handle,
*                                   PRG_MESSAGE_CALLBACK pMsgCallBack )
*
* DESCRIPTION:  Install a message callback so that errors/status messages
*               can be passed back.
*
* NOTES:
*
*F***************************************************************************/
EXPORT int
PRG_SetMessageCallBack( DWORD Handle, PRG_MESSAGE_CALLBACK pMsgCallBack )
{

    // This does not provide any output for SDFlash but is usefull for
    // command line
    //
    pfTestPrintMsg = pMsgCallBack;
    if( pfTestPrintMsg != NULL )
        pfTestPrintMsg(Handle, 0, "Installed output message callback\n" );

    return( PRG_SUCCESS );
}


/*F***************************************************************************
* NAME: void PrgFlashErase( DWORD Handle )
*
* DESCRIPTION:  Erase the flash
*
* NOTES:  Supports thread and non-thread.
*
*F***************************************************************************/
EXPORT void
PrgFlashErase( DWORD Handle )
{
    int     Error    = 0;
    char    *pSbuf;
    char    *pRbuf;
    int     CmdErr;
    int     NumSections;
    int     i;
	DWORD   Retries;
    long    SleepTime;

    DWORD   NumXfer;
    int     Success = PRG_FAIL;

    if( Connected == 0 )
        goto EXIT_PrgFlashErase;

    // Counting the number of sections to erase is F28xx specific.
    NumSections = 1; // Minimum
    for(i=1; i<16; i++ )
        NumSections += ((Opts.PrgEraseOption1>>i ) & 1);

    SleepTime = ERASE_TIMEOUT(NumSections);

    pSbuf = SendBuf;
    Put16(pSbuf,CMD_FLASH_ERASE );// Cmd
    Put32(pSbuf,0);            // Addr
    Put16(pSbuf,0);            // Page
    Put16(pSbuf,0);            // Length
    Put16(pSbuf,Opts.PrgEraseOption1);  // PRG_option1
    Put16(pSbuf,Opts.PrgEraseOption2);  // PRG_option2
    Put16(pSbuf,Opts.PrgEraseOption3);  // PRG_option3
    Put16(pSbuf,Opts.PrgEraseOption4);  // PRG_option4
    Put16(pSbuf,-1 );          // Status

    NumXfer = PktSendMsg( SendBuf,SIZE_COMMAND_BLOCK  );
    if( NumXfer == 0 )
    {
        TestPutDiagMsg("Send packet rejected\n");
        goto EXIT_PrgFlashErase;
    }

    // Sleep for short time and then wake up to see if application has
    // requested us to terminate.  The terminate request is in PRG_Close.
    // Common code can be used for thread and non-thread.  ThreadTerminate
    // can never be TRUE in non-thread mode.
    do
    {
        if( ThreadTerminate == TRUE )
            goto EXIT_PrgFlashErase;
        else
            Sleep(SLEEP_INTERVAL);
        SleepTime -= SLEEP_INTERVAL;

    }while( SleepTime > 0 );

    // Wait for return status.  Should get back 1 status word
	Retries = Opts.PrgEraseOption4;
	do
    {
		NumXfer = PktRecvMsg( RecvBuf, MSG_BODY_SIZE );
	    if( NumXfer >= 2 )
	    {
	        pRbuf = RecvBuf;
	        Get16(pRbuf,CmdErr);
			Retries = 0;			// Done with loop (return status received)
	    }
	    else
		{
	        CmdErr = -1;
		}
	}while(Retries-- > 0);			// Exit loop when # retries is exceeded or when return status is received


    if( CmdErr != 0 )
    {
        TestPutDiagMsg("Erase Failed\n");
        goto EXIT_PrgFlashErase;
    }

    Success = PRG_SUCCESS;

EXIT_PrgFlashErase:
    ExeStatus = Success;

#if defined( USE_THREADS )
    _endthreadex( Success );
#endif

}

/*F***************************************************************************
* NAME:  int  PRG_FlashErase( DWORD Handle )
*
* DESCRIPTION:  Wrapper function for PrgFlashErase()
*
* NOTES:  Suppports thread and non-thread.
*
*F***************************************************************************/
EXPORT int
PRG_FlashErase( DWORD Handle )
{
    // Flash Erase is done from a thread due to length of time required.
    //
    if( ExeStatus != PRG_BUSY )
    {
        ExeStatus       = PRG_BUSY;
        ThreadTerminate = FALSE;

#if defined( USE_THREADS )
        ThreadHandle = _beginthreadex( (LPSECURITY_ATTRIBUTES)NULL,
	                                    (DWORD)0,
	                                    (LPTHREAD_START_ROUTINE)PrgFlashErase,
                                        (LPVOID)Handle,
                                        (DWORD)0,
	                                    (LPDWORD)&dwThreadID );
        Sleep(0);

        if( ThreadHandle == 0 )
            ExeStatus = PRG_FAIL;
#else
        // ExeStatus is set by PrgFlashErase
        PrgFlashErase(Handle );
#endif
    }

    return( ExeStatus );
}

/*F***************************************************************************
* NAME:  int MemWrite( DWORD Handle, DWORD Addr, DWORD Page,
*                      DWORD NumBytes, char *pData, DWORD Command )
*
* DESCRIPTION: Writes to target RAM.
*
* NOTES:  Function supports writing to NON-FLASH memory.
*         The data is an 8-bit byte stream and the count is the number
*         of 8-bit bytes to transfer.  It is up to caller and target
*         code implementer to agree on byte ordering and alignment.
*         For SDFLASH the following apply:
*             - Data is passed in host endianess format.
*             - Byte count is in multiples of minimum address unit.
*                  Thus a 16 bit F28xx would always get a count that
*                  is multiple of 16 bits or 2 8-bit bytes.
*
*         This function is called by other functions that setup memory
*         for flash commands.  The "Command" value is the target operation
*         to be performed.
*
*F***************************************************************************/
static void
MemWrite( DWORD Handle )
{
    int     Error    = 0;
    char    *pSbuf;
    char    *pRbuf;
    int     CmdErr;
    DWORD   i;
    DWORD   Retries;

    DWORD   NumToSend;
    DWORD   NumXfer;
    DWORD   MaxXfer      = SIZE_FLASH_DATA & ~1;  // Even #bytes
    DWORD   Taddr        = MemAddr;
    DWORD   NumBytesSend = 0;
    unsigned short * p16 = (unsigned short *)pMemData;
    DWORD   SleepTime;
    int     Success = PRG_FAIL;

    if(    ( Connected == 0 )
        || ( pMemData == NULL ))
        goto EXIT_MemWrite;

    MemBytes &= ~1; // Must be even #bytes

    // Idiot proof
    if( MemBytes == 0 )
        goto EXIT_MemWrite;

    while( NumBytesSend < MemBytes )
    {
        NumToSend =   ((MemBytes - NumBytesSend) > MaxXfer )
                       ? MaxXfer : (MemBytes - NumBytesSend);


        if( MemCmd == CMD_FLASH_PROGRAM )
            SleepTime = PROGRAM_TIMEOUT(NumToSend);
        else
            SleepTime = MEMORY_TIMEOUT(NumToSend);


        pSbuf = SendBuf;
        Put16(pSbuf,MemCmd );      // Cmd
        Put32(pSbuf,Taddr);        // Addr
        Put16(pSbuf,MemPage);      // Page
        Put16(pSbuf,(NumToSend/2)); // Length in target words
        if( MemCmd == CMD_FLASH_PROGRAM )
        {
            Put16(pSbuf,Opts.PrgProgrammingOption1);  // PRG_option1
            Put16(pSbuf,Opts.PrgProgrammingOption2);  // PRG_option2
            Put16(pSbuf,Opts.PrgProgrammingOption3);  // PRG_option3
            Put16(pSbuf,Opts.PrgProgrammingOption4);  // PRG_option4
        }
        else
        {
            Put16(pSbuf,0);            // PRG_option1
            Put16(pSbuf,0);            // PRG_option2
            Put16(pSbuf,0);            // PRG_option3
            Put16(pSbuf,0);            // PRG_option4
        }
        Put16(pSbuf,-1 );          // Status

        for(i=0;i<(NumToSend/2);i++)
        {
            Put16(pSbuf,*p16);
            p16++;
        }

        NumXfer = PktSendMsg( SendBuf,SIZE_COMMAND_BLOCK+NumToSend  );
        if( NumXfer == 0 )
        {
            TestPutDiagMsg("Send packet rejected\n");
            goto EXIT_MemWrite;
        }

        Sleep( SleepTime );

        // Wait for return status.  Should get back 1 status word
		Retries = Opts.PrgProgrammingOption4;
		do
	    {
			NumXfer = PktRecvMsg( RecvBuf, MSG_BODY_SIZE );
		    if( NumXfer >= 2 )
		    {
		        pRbuf = RecvBuf;
		        Get16(pRbuf,CmdErr);
				Retries = 0;			// Done with loop (return status received)
		    }
		    else
			{
		        CmdErr = -1;
			}
		}while(Retries-- > 0);			// Exit loop when # retries is exceeded or when return status is received

        if( CmdErr != 0 )
        {
            TestPutDiagMsg("Write Failed, Address = %08lx, Error = %d\n",Taddr,CmdErr);
            goto EXIT_MemWrite;
        }


        NumBytesSend += NumToSend;
        // Note there are two bytes per Taddr
        Taddr += (NumToSend/2);

        if( ThreadTerminate == TRUE )
            goto EXIT_MemWrite;

    }
    // No errors so set success
    Success = PRG_SUCCESS;

EXIT_MemWrite:
    ExeStatus = Success;

#if defined( USE_THREADS )
    if( pMemData != NULL )
    {
        free( pMemData );
        pMemData = NULL;
    }
    _endthreadex( Success );
#endif
}
/*F***************************************************************************
* NAME:  int MemRead( DWORD Handle, DWORD Addr, DWORD Page,
*                      DWORD NumBytes, char *pData, DWORD Command )
*
* DESCRIPTION: Reads target memory.  Supports thread and non-thread.
*
* NOTES:  Function supports reading to ALL memory.
*         The data is an 8-bit byte stream and the count is the number
*         of 8-bit bytes to transfer.  It is up to caller and target
*         code implementer to agree on byte ordering and alignment.
*         For SDFLASH the following apply:
*             - Data is passed in host endianess format.
*             - Byte count is in multiples of minimum address unit.
*                  Thus a 16 bit F28xx would always get a count that
*                  is multiple of 16 bits or 2 8-bit bytes.
*
*         This function is called by other functions that setup memory
*         for flash commands.  The "Command" value is the target operation
*         to be performed.
*
*F***************************************************************************/
static void
MemRead( DWORD Handle )
{
    int     Error    = 0;
    char    *pSbuf;
    char    *pRbuf;
    DWORD   i;
    DWORD   NumToReceive;
    DWORD   ActualReceive;
    DWORD   NumXfer;
    DWORD   MaxXfer      = (SIZE_FLASH_DATA-2) & ~1;
    DWORD   Taddr        = MemAddr;
    DWORD   NumBytesRead = 0;
    unsigned short * p16 = (unsigned short *)pMemData;
    DWORD   SleepTime;

    int     Success = PRG_FAIL;

    if( Connected == 0 )
        goto EXIT_MemRead;

    MemBytes &= ~1; // Must be even #bytes

    // Idiot proof
    if( MemBytes == 0 )
        goto EXIT_MemRead;

    while( NumBytesRead < MemBytes )
    {
        NumToReceive =   ((MemBytes - NumBytesRead) > MaxXfer )
                       ? MaxXfer : (MemBytes - NumBytesRead);


        // No real delay for flash vs memory
        SleepTime = MEMORY_TIMEOUT(NumToReceive);

        pSbuf = SendBuf;
        Put16(pSbuf,MemCmd );      // Cmd
        Put32(pSbuf,Taddr);        // Addr
        Put16(pSbuf,MemPage);      // Page
        Put16(pSbuf,NumToReceive/2);// Length
        Put16(pSbuf,0);            // PRG_option1
        Put16(pSbuf,0);            // PRG_option2
        Put16(pSbuf,0);            // PRG_option3
        Put16(pSbuf,0);            // PRG_option4
        Put16(pSbuf,-1 );          // Status

        NumXfer = PktSendMsg( SendBuf, SIZE_COMMAND_BLOCK );
        if( NumXfer == 0 )
        {
            TestPutDiagMsg("Send packet rejected\n");
            goto EXIT_MemRead;
        }

        Sleep( SleepTime );

        // Should read back the data + 1 status word.  Status word
        // is the first value.
        ActualReceive = PktRecvMsg( RecvBuf, MSG_BODY_SIZE );

        if( ActualReceive >= 2 )
            ActualReceive -=2;

        if( ActualReceive > 0 )
        {
            // Offset past status word
            pRbuf = &RecvBuf[2];
            for(i=0;i<(ActualReceive/2);i++)
            {
                Get16(pRbuf,*p16);
                p16++;
            }
        }
        else
        {
            TestPutDiagMsg("Failed data receive\n");
            goto EXIT_MemRead;
        }

        NumBytesRead += ActualReceive;
        // Note there are two bytes per Taddr
        Taddr += (ActualReceive/2);

        // Sleep for short time and then wake up to see if application has
        // requested us to terminate.  The terminate request is in PRG_Close.
        // Common code can be used for thread and non-thread.  ThreadTerminate
        // can never be TRUE in non-thread mode.

        if( ThreadTerminate == TRUE )
            goto EXIT_MemRead;
    }
    // No errors so set success
    Success = PRG_SUCCESS;

EXIT_MemRead:
    ExeStatus = Success;

#if defined( USE_THREADS )
    _endthreadex( Success );
#endif
}

// The following functions are simply wrappers which specify with memory
// "Command" to execute.
//
EXPORT int
PRG_FlashWrite( DWORD Handle, DWORD Addr, DWORD Page, DWORD NumBytes, char *pData )
{
    if( ExeStatus != PRG_BUSY )
    {
        ExeStatus       = PRG_BUSY;
        ThreadTerminate = FALSE;

        MemAddr  = Addr;
        MemPage  = Page;
        MemBytes = NumBytes;
        MemCmd   = CMD_FLASH_PROGRAM;

#if defined( USE_THREADS )
        // Malloc buffer to copy data as we cannot assume caller does not
        // relase data before we are done.
        if( pMemData == NULL )
        {
            pMemData = (char *)malloc(NumBytes);
            if( pMemData != NULL )
                memcpy( pMemData, pData, NumBytes );
        }

        ThreadHandle = _beginthreadex( (LPSECURITY_ATTRIBUTES)NULL,
	                                    (DWORD)0,
	                                    (LPTHREAD_START_ROUTINE)MemWrite,
                                        (LPVOID)Handle,
                                        (DWORD)0,
	                                    (LPDWORD)&dwThreadID );
        Sleep(0);

        if( ThreadHandle == 0 )
            ExeStatus = PRG_FAIL;
#else
        pMemData = pData;
        // ExeStatus is set by MemWrite
        MemWrite( Handle );
#endif
    }
    return( ExeStatus );
}

EXPORT int
PRG_MemWrite( DWORD Handle, DWORD Addr, DWORD Page, DWORD NumBytes, char *pData )
{

    if( ExeStatus != PRG_BUSY )
    {
        ExeStatus       = PRG_BUSY;
        ThreadTerminate = FALSE;

        MemAddr  = Addr;
        MemPage  = Page;
        MemBytes = NumBytes;

        MemCmd   = CMD_MEM_WRITE;

#if defined( USE_THREADS )
        // Malloc buffer to copy data as we cannot assume caller does not
        // relase data before we are done.
        if( pMemData == NULL )
        {
            pMemData = (char *)malloc(NumBytes);
            if( pMemData != NULL )
                memcpy( pMemData, pData, NumBytes );
        }
        ThreadHandle = _beginthreadex( (LPSECURITY_ATTRIBUTES)NULL,
	                                    (DWORD)0,
	                                    (LPTHREAD_START_ROUTINE)MemWrite,
                                        (LPVOID)Handle,
                                        (DWORD)0,
	                                    (LPDWORD)&dwThreadID );
        Sleep(0);

        if( ThreadHandle == 0 )
            ExeStatus = PRG_FAIL;
#else
        pMemData = pData;
        // ExeStatus is set by MemWrite
        MemWrite( Handle );
#endif
    }
    return( ExeStatus );
}

EXPORT int
PRG_FlashRead( DWORD Handle, DWORD Addr, DWORD Page, DWORD NumBytes, char *pData )
{
    if( ExeStatus != PRG_BUSY )
    {
        ExeStatus       = PRG_BUSY;
        ThreadTerminate = FALSE;

        MemAddr  = Addr;
        MemPage  = Page;
        MemBytes = NumBytes;
        pMemData = pData;
        MemCmd   = CMD_FLASH_READ;

#if defined( USE_THREADS )

        ThreadHandle = _beginthreadex( (LPSECURITY_ATTRIBUTES)NULL,
	                                    (DWORD)0,
	                                    (LPTHREAD_START_ROUTINE)MemRead,
                                        (LPVOID)Handle,
                                        (DWORD)0,
	                                    (LPDWORD)&dwThreadID );
        Sleep(0);

        if( ThreadHandle == 0 )
            ExeStatus = PRG_FAIL;
#else
        // ExeStatus is set by MemRead
        MemRead( Handle );
#endif
    }
    return( ExeStatus );
}

EXPORT int
PRG_MemRead( DWORD Handle, DWORD Addr, DWORD Page, DWORD NumBytes, char *pData )
{
    if( ExeStatus != PRG_BUSY )
    {
        ExeStatus       = PRG_BUSY;
        ThreadTerminate = FALSE;

        MemAddr  = Addr;
        MemPage  = Page;
        MemBytes = NumBytes;
        pMemData = pData;
        MemCmd   = CMD_MEM_READ;

#if defined( USE_THREADS )

        ThreadHandle = _beginthreadex( (LPSECURITY_ATTRIBUTES)NULL,
	                                    (DWORD)0,
	                                    (LPTHREAD_START_ROUTINE)MemRead,
                                        (LPVOID)Handle,
                                        (DWORD)0,
	                                    (LPDWORD)&dwThreadID );
        Sleep(0);

        if( ThreadHandle == 0 )
            ExeStatus = PRG_FAIL;
#else
        // ExeStatus is set by MemRead
        MemRead( Handle );
#endif
    }
    return( ExeStatus );
}

/*F***************************************************************************
* NAME: int  PRG_FlashVerify( DWORD Handle, DWORD Addr, DWORD Page,
*                             DWORD NumBytes, char *pData )
*
* DESCRIPTION:  Verify a block of flash.
*
* NOTES:  This function is F28xx specific.  We are doing verify with a simple
*         checksum.  This is much faster then passing all the data back to
*         target for a word by word verify.  The target algo can do the
*         word by word verify as part of programming and use this verify
*         as a simple sanity check with all flash is programmed.
*
*F***************************************************************************/
EXPORT int
PRG_FlashVerify( DWORD Handle, DWORD Addr, DWORD Page, DWORD NumBytes, char *pData )
{
    int     Error    = 0;
    char    *pSbuf;
    char    *pRbuf;
    int     CmdErr;

    unsigned short *p16 = (unsigned short *)pData;

    DWORD   i;
    DWORD   NumXfer;
    DWORD   NumBytesSend = 0;
    DWORD   CheckSum     = 0;
    DWORD   NumToCheck   = NumBytes/2;
    DWORD   SleepTime;

    int     Success = PRG_FAIL;

    if( ( Connected == 0 ) || ( ExeStatus == PRG_BUSY ))
        goto EXIT_FlashVerify;

    // Set to fail to catch all errors
    ExeStatus = PRG_FAIL;

    CheckSum = 0;
    for(i=0; i<NumToCheck; i++ )
        CheckSum += *p16++;

    SleepTime = VERIFY_TIMEOUT(NumBytes);


    pSbuf = SendBuf;
    Put16(pSbuf,CMD_FLASH_VERIFY );// Cmd
    Put32(pSbuf,Addr);         // Addr
    Put16(pSbuf,Page);         // Page
    Put16(pSbuf,NumToCheck);   // Length
    Put16(pSbuf,Opts.PrgVerifyOption1);  // PRG_option1
    Put16(pSbuf,Opts.PrgVerifyOption2);  // PRG_option2
    Put16(pSbuf,Opts.PrgVerifyOption3);  // PRG_option3
    Put16(pSbuf,CheckSum);               // PRG_option4
    Put16(pSbuf,-1 );          // Status

    NumXfer = PktSendMsg( SendBuf,SIZE_COMMAND_BLOCK  );
    if( NumXfer == 0 )
    {
        TestPutDiagMsg("Send packet rejected\n");
        goto EXIT_FlashVerify;
    }

    Sleep( SleepTime );

    // Wait for return status.  Should get back 1 status word
    NumXfer = PktRecvMsg( RecvBuf, MSG_BODY_SIZE );
    if( NumXfer >= 2 )
    {
        pRbuf = RecvBuf;
        Get16(pRbuf,CmdErr);
    }
    else
        CmdErr = -1;

    if( CmdErr != 0 )
    {
        TestPutDiagMsg("Verify Failed, Address = %08lx\n", Addr);
        goto EXIT_FlashVerify;
    }
    // No errors so set success
    Success = PRG_SUCCESS;

EXIT_FlashVerify:
    ExeStatus = Success;
    return( Success );
}

/*F***************************************************************************
* NAME: int  PRG_Status( DWORD Handle )
*
* DESCRIPTION:  Check the status of current executing command
*
* NOTES:  This function supports both thread and non-thread operation.  In
*         thread mode the function will wait for the thread to complete
*         once it sees the thread is not in the PRG_BUSY state.  When
*         status is PRG_BUSY user should only call two functions:
*            1) PRG_Status
*            2) PRG_Close.  This will request all threads to terminate.
*
*F***************************************************************************/

EXPORT int
PRG_Status( DWORD Handle )
{

#if defined( USE_THREADS )
    DWORD ThreadState;

    // If we are NOT busy and the thread is active then wait for
    // thread to stop.  All threads set the status to !busy on exit.
    // This ensures that the current thread completes before we start
    // another thread.
    //
    if( ( ExeStatus != PRG_BUSY ) && ( ThreadHandle != 0 ) )
    {
        ThreadState = WaitForSingleObject( (HANDLE)ThreadHandle, 10 );
        if( ThreadState == WAIT_OBJECT_0 )
            ThreadHandle = 0;
    }
#endif

    return( ExeStatus );
}

const SD_PRG_INTERFACE SdPrgInterface =
{
    sizeof(SD_PRG_INTERFACE),
    PRG_VERSION,
    PRG_REVISION,
    PRG_INTERFACE_TYPE_RS232,
    1,
    PRG_INTERFACE_NAME,
    PRG_FLAG_NONE,
    PRG_C28XX_BITS_PER_ADDR_UNIT,
    PRG_Init,
    PRG_SetOptions,
    PRG_Status,
    PRG_Open,
    PRG_Close,
    PRG_SetMessageCallBack,
    PRG_FlashErase,
    PRG_FlashWrite,
    PRG_FlashRead,
    PRG_FlashVerify,
    PRG_MemWrite,
    PRG_MemRead
};

/*F***************************************************************************
* NAME: int  PRG_GetInterface( const SD_PRG_INTERFACE  **pIntf)
*
* DESCRIPTION:  Returns a pointer to interface structure. Simplifies dynamic
*               loading of DLL and resolving function pointers.
*
* NOTES:
*
*F***************************************************************************/

EXPORT int
PRG_GetInterface( const SD_PRG_INTERFACE  **pIntf)
{

    if( pIntf != NULL )
    {
        *pIntf = &SdPrgInterface;
        return( PRG_SUCCESS );
    }
    else
        return( PRG_FAIL );
}

