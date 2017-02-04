/*H***************************************************************************
*
* $Archive:: /TI/product/F28xxSerialFlash/src_host/cofflib.c                 $
* $Revision:: 10                                                             $
* $Date:: 10/29/03 11:34a                                                    $
* $Author:: Tonyc                                                            $
*
* DESCRIPTION:
*    Generic coff reader.  
*
* USAGE/LIMITATIONS:
*
* NOTES:
*     This file does not currently handle relocations or ram model for
*     .cinit section.
*   
* (C) Copyright 1997 by Spectrum Digital Incorporated
* All rights reserved
*
*H***************************************************************************/

/*---- compilation control switches ----------------------------------------*/
#define cofflib_c

/*****************************************************************************
* INCLUDE FILES
*****************************************************************************/
/*---- system and platform files -------------------------------------------*/

#include "windows.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"

/*---- program files -------------------------------------------------------*/
#include "coff.h"
#include "coffdefs.h"
#include "cofflib.h"

/*****************************************************************************
* EXTERNAL REFERENCE    
*****************************************************************************/
/*---- data declarations ---------------------------------------------------*/

/*---- function prototypes -------------------------------------------------*/

/*****************************************************************************
* PUBLIC DECLARATIONS 
*****************************************************************************/

/*---- data declarations ---------------------------------------------------*/

/*****************************************************************************
* PRIVATE DECLARATIONS  
*****************************************************************************/
/*---- context -------------------------------------------------------------*/

/*---- data declarations ---------------------------------------------------*/

/*---- function prototypes -------------------------------------------------*/

static void FreeStrings( COFF_HNDL pCoffHndl );
static void swap4byte(void * addr);
static void swap2byte(void * addr);
//static unsigned long LOCTOBYTE(COFF_HNDL pCoffHndl, unsigned long wrd_size );
//static unsigned long BYTETOLOC(COFF_HNDL pCoffHndl, unsigned long byte_size );
static unsigned long CINIT_ALIGN(COFF_HNDL pCoffHndl );
static size_t T_IADDR_SIZE(COFF_HNDL pCoffHndl );
static size_t T_SIZE_SIZE(COFF_HNDL  pCoffHndl );
//static size_t T_ADDR_SIZE(COFF_HNDL  pCoffHndl );
static size_t T_DATA_SIZE(COFF_HNDL  pCoffHndl );
static size_t CINIT_WSIZE(COFF_HNDL  pCoffHndl );

/*---- macros --------------------------------------------------------------*/

#define TRUE  1
#define FALSE 0

/*--------------------------------------------------------------------------*/
/* CONSTANTS, MACROS, VARIABLES, AND STRUCTURES FOR THE LOADER.             */
/*--------------------------------------------------------------------------*/
/* NOTE THAT I BELOW IS THE ACTUAL SECTION NUMBER    */
/* (1 THRU pCoffHndl->FileInfo->file_hdr.F_NSCNS)   */
#define SECT_HDR_PTR(i) ( (TI_SCNHDR *)pCoffHndl->FileInfo->sect_hdrs + ((i)-1))
#define MIN(x, y) (((x) < (y)) ? (x) : (y))

/*****************************************************************************
* PUBLIC FUNCTION DEFINITIONS
*****************************************************************************/
/*F***************************************************************************
* NAME:   COFF_RET
*         COFFR_FileOpen( char       * pFilename, 
*                         COFF_OPTS  * pOptions, 
*                         COFF_HNDL  * pRetCoffHndl) 
*
* DESCRIPTION:  Open the COFF file, and read in all the various headers.
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   String table and symbols are not read in.  The application must explicitly
*   request load of string and symbol tables.
*   
*F***************************************************************************/
COFF_RET
COFFR_FileOpen( const char * pFilename, 
                COFF_OPTS  * pOptions, 
                COFF_HNDL  * pRetCoffHndl)
{
    COFF_HNDL_INFO * pCoffHndl;
    int SectionHeaderSize,Error;
    short SectNum;

    /*- Set return to error value ------------------------------------------*/
    *pRetCoffHndl = (COFF_HNDL_INFO *)NULL;

    /*- Get space for handle; on error return, NULL the structure ----------*/
    pCoffHndl = (COFF_HNDL_INFO *)(malloc( sizeof(COFF_HNDL_INFO)));
    if ( pCoffHndl == (COFF_HNDL_INFO *)NULL )
        return (COFF_MALLOC_ERR);

    memset( pCoffHndl, 0, sizeof(COFF_HNDL_INFO));

    /*- Set Coff return handle ---------------------------------------------*/
    *pRetCoffHndl = pCoffHndl;

    /*- Open file; On error return space and return error ------------------*/
    pCoffHndl->FileHndl = fopen( pFilename, COFF_FILE_RD );
    if ( pCoffHndl->FileHndl == ( FILE *)NULL )
        return (COFF_FILE_GONE_ERR);

    /*- Set coff handle information  ---------------------------------------*/
    pCoffHndl->bss_downloaded = FALSE;

    /*- Initialize coff file information -----------------------------------*/
    pCoffHndl->options = (COFF_OPTS *)malloc( sizeof(COFF_OPTS) );
    if ( pCoffHndl->options == (COFF_OPTS *)NULL )
        return (COFF_MALLOC_ERR);
	memset( pCoffHndl->options,0,sizeof(COFF_OPTS));
    *pCoffHndl->options = *pOptions;

    /*- Initialze coff file information ------------------------------------*/
    pCoffHndl->FileInfo = (COFF_FILE_INFO *)malloc( sizeof( COFF_FILE_INFO ));
    if ( pCoffHndl->FileInfo == (COFF_FILE_INFO *)NULL )
        return (COFF_MALLOC_ERR);
	memset( pCoffHndl->FileInfo,0,sizeof(COFF_FILE_INFO));

    pCoffHndl->FileInfo->bss_sect     = -1;    /* Set to invalid section    */
    pCoffHndl->FileInfo->cinit_sect   = -1;    /* Set to invalid section    */
    pCoffHndl->FileInfo->coff_version = 0;     /* Set to invalid version    */
    pCoffHndl->FileInfo->device_id    = 0;     /* Set to invalid device id  */
    pCoffHndl->FileInfo->str_size     = 0;     /* Set to empty str table    */
    pCoffHndl->FileInfo->reloc_amount = NULL;  /* Set to invalid ptr        */
    pCoffHndl->FileInfo->sect_hdrs    = NULL;  /* Set to invalid ptr        */
    pCoffHndl->FileInfo->str_head     = NULL;  /* Set to invalid ptr        */    
    pCoffHndl->FileInfo->big_e_target = FALSE; /* Set to default            */
    pCoffHndl->FileInfo->byte_swapped = FALSE; /* Set to default            */
    pCoffHndl->FileInfo->tags_merged  = FALSE; /* Set to default            */

    /*- Read in file header ------------------------------------------------*/
    Error = COFFR_GetFileHdr(pCoffHndl, &pCoffHndl->FileInfo->file_hdr);
    if( Error != 0 )
        return (Error);

    /*- Read in file header ------------------------------------------------*/
    Error = COFFR_GetOptionalHdr(pCoffHndl,&pCoffHndl->FileInfo->o_filehdr);
    if( Error != 0 )
        return (Error);

    /*- Free existing section headers and malloc new space -----------------*/

    if (pCoffHndl->FileInfo->sect_hdrs) 
        free( pCoffHndl->FileInfo->sect_hdrs );

    SectionHeaderSize = pCoffHndl->FileInfo->file_hdr.f_nscns * TI_SCNHSZ;

    pCoffHndl->FileInfo->sect_hdrs = ( TI_SCNHDR *)malloc( SectionHeaderSize );

    if ( pCoffHndl->FileInfo->sect_hdrs == ( TI_SCNHDR *)NULL )
        return (COFF_MALLOC_ERR);
 
	memset( pCoffHndl->FileInfo->sect_hdrs, 0, SectionHeaderSize );

    /*- Get each section header --------------------------------------------*/
    pCoffHndl->FileInfo->largest_sect = 0;
    pCoffHndl->FileInfo->largest_sect_size = 0;

    for (  SectNum = 1; 
           SectNum <= (short)pCoffHndl->FileInfo->file_hdr.f_nscns;
           SectNum++ )
    {
        TI_SCNHDR * pSectHdr;

        pSectHdr = (TI_SCNHDR *)pCoffHndl->FileInfo->sect_hdrs + (SectNum-1);
        Error = COFFR_GetSectionHdr( pCoffHndl, SectNum, pSectHdr );
        if( Error != 0 )
            return (Error);

        /*- If section is loadable then find biggest section ---------------*/
        if (     ( pSectHdr->s_scnptr != 0 )
             &&  ( pSectHdr->s_size !=0 )
             && !( pSectHdr->s_flags & TI_STYP_DSECT )
             && !( pSectHdr->s_flags & TI_STYP_COPY )
             && !( pSectHdr->s_flags & TI_STYP_NOLOAD ))
        {
            long BytesInSection = LOCTOBYTE(pCoffHndl, pSectHdr->s_size );

            if( BytesInSection >  pCoffHndl->FileInfo->largest_sect_size)
            {
                pCoffHndl->FileInfo->largest_sect_size = BytesInSection;
                pCoffHndl->FileInfo->largest_sect      = SectNum;
            }
        }
    }

    /*- Get string table size, includes 4 bytes of string table count ------*/


    if( fseek( pCoffHndl->FileHndl, 
               ( pCoffHndl->FileInfo->file_hdr.f_symptr
                    +(pCoffHndl->FileInfo->file_hdr.f_nsyms*TI_SYMESZ)),
                 SEEK_SET))
    {
        return (COFF_FILE_ACCESS_ERR);
    }

    pCoffHndl->FileInfo->str_size = 0;  /* if no string table init to 0     */
    fread( &(pCoffHndl->FileInfo->str_size), sizeof(long),SIZE_ONE,
                    pCoffHndl->FileHndl);

    if ( pCoffHndl->FileInfo->byte_swapped)
        swap4byte(&pCoffHndl->FileInfo->str_size);

    return ( 0 );
}
/*F***************************************************************************
* NAME:  COFF_RET
*        COFFR_FileClose( COFF_HNDL pCoffHndl )    
*
* DESCRIPTION:  Close the coff file and release allocated memory.
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/

COFF_RET
COFFR_FileClose( COFF_HNDL pCoffHndl )
{

    if ( pCoffHndl == NULL )
        return( 0 );
   
    /*- Free coff file info ------------------------------------------------*/
    if( pCoffHndl->FileInfo != (COFF_FILE_INFO *)NULL )
    {

        /*- Free strings ---------------------------------------------------*/
        if (pCoffHndl->FileInfo->str_head != ( STRTAB *)NULL)
            FreeStrings( pCoffHndl );
        pCoffHndl->FileInfo->str_head = ( STRTAB *)NULL;

        /*- Free section headers -------------------------------------------*/
        if ( pCoffHndl->FileInfo->sect_hdrs != (TI_SCNHDR *)NULL ) 
            free( pCoffHndl->FileInfo->sect_hdrs );
        pCoffHndl->FileInfo->sect_hdrs = ( TI_SCNHDR *)NULL;

        free( pCoffHndl->FileInfo );
        pCoffHndl->FileInfo = (COFF_FILE_INFO *)NULL;
    }

    /*- Free coff options  -------------------------------------------------*/
    if ( pCoffHndl->options != (COFF_OPTS *)NULL )
        free( pCoffHndl->options );
    pCoffHndl->options = (COFF_OPTS *)NULL;

    /*-- Close the file ----------------------------------------------------*/
    if ( pCoffHndl->FileHndl != ( FILE *)NULL )
        fclose ( pCoffHndl->FileHndl );
    pCoffHndl->FileHndl = NULL;

    /*- Free coff handle ---------------------------------------------------*/
    free( pCoffHndl );
    return ( 0 );
}
/*F***************************************************************************
* NAME: COFF_RET
*       COFFR_GetFileHdr( COFF_HNDL pCoffHndl, FILHDR * pFileHdr )   
*
* DESCRIPTION: Read in the file header information.
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/

COFF_RET
COFFR_GetFileHdr( COFF_HNDL pCoffHndl, TI_FILHDR * pFileHdr )
{  

    int filshz = TI_FILHSZ;
    
    if (  (fseek(pCoffHndl->FileHndl, 0L, SEEK_SET))
       || (fread(pFileHdr, TI_FILHSZ, SIZE_ONE, pCoffHndl->FileHndl)!=SIZE_ONE))
    {
         return (COFF_FILE_ACCESS_ERR);
    }

    /*----------------------------------------------------------------------*/
    /* MAKE SURE THIS IS REALLY A COFF FILE. CHECK FOR SWAPPED FILES.       */
    /* DETERMINE BYTE ORDERING OF OBJECT DATA.                              */
    /*----------------------------------------------------------------------*/
    if (!TI_ISCOFF2(pFileHdr->f_magic))
    {
        swap2byte(&pFileHdr->f_magic);
        if (!TI_ISCOFF2(pFileHdr->f_magic))
        {
            return (COFF_BAD_MAGIC_ERR);
        }

        pCoffHndl->FileInfo->byte_swapped = TRUE;

        swap2byte(&pFileHdr->f_nscns);
        swap4byte(&pFileHdr->f_timdat);
        swap4byte(&pFileHdr->f_symptr);
        swap4byte(&pFileHdr->f_nsyms);
        swap2byte(&pFileHdr->f_opthdr);
        swap2byte(&pFileHdr->f_flags);
        swap2byte(&pFileHdr->f_target_id); 
    }

    pCoffHndl->FileInfo->big_e_target = ((pFileHdr->f_flags & TI_F_BIG) != 0);
    pCoffHndl->FileInfo->tags_merged  = ((pFileHdr->f_flags & TI_F_SYMMERGE) != 0);

    /*----------------------------------------------------------------------*/
    /* DETERMINE VERSION OF COFF BEING USED, CHECK TARGET ID IF NEEDED.     */
    /*----------------------------------------------------------------------*/
    if ( TI_ISCOFF_1(pFileHdr->f_magic) || TI_ISCOFF_2(pFileHdr->f_magic) )
    {
        if (!TI_ISMAGIC_ANY(pFileHdr->f_target_id))
        {
            return (COFF_BAD_MAGIC_ERR);
        }

        pCoffHndl->FileInfo->coff_version = pFileHdr->f_magic;
        pCoffHndl->FileInfo->device_id    = pFileHdr->f_target_id;
    } 
    else
    {
        pCoffHndl->FileInfo->coff_version = TI_COFF_MAGIC_0;
        pCoffHndl->FileInfo->device_id    = pFileHdr->f_magic;
    }
    return ( 0 );
}
/*F***************************************************************************
* NAME:  COFF_RET
*        COFFR_GetOptionalHdr( COFF_HNDL pCoffHndl, AOUTHDR * pOptHdr )  
*
* DESCRIPTION: Read in the optional section information.
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/
COFF_RET
COFFR_GetOptionalHdr( COFF_HNDL pCoffHndl, TI_AOUTHDR * pOptHdr )
{

    size_t ReadSize = TI_AOUTSZ;

    /*----------------------------------------------------------------------*/
    /* READ IN OPTIONAL HEADER, IF THERE IS ONE, AND SWAP IF NEEDED.        */
    /*----------------------------------------------------------------------*/
    if (pCoffHndl->FileInfo->file_hdr.f_opthdr == TI_AOUTSZ)
    {
        if (  (fseek( pCoffHndl->FileHndl,
                      TI_FILHSZ_IN(pCoffHndl->FileInfo->coff_version),
                      SEEK_SET)) 
           || ( fread( pOptHdr, ReadSize, SIZE_ONE, pCoffHndl->FileHndl)
                       != SIZE_ONE)  )
        {
             return (COFF_FILE_ACCESS_ERR);
        }

        if (pCoffHndl->FileInfo->byte_swapped)
        {
           swap2byte(&pOptHdr->magic);
           swap2byte(&pOptHdr->vstamp);
           swap4byte(&pOptHdr->tsize);
           swap4byte(&pOptHdr->dsize);
           swap4byte(&pOptHdr->bsize);
           swap4byte(&pOptHdr->entrypt);
           swap4byte(&pOptHdr->text_start);
           swap4byte(&pOptHdr->data_start);
        }

        pCoffHndl->FileInfo->entry_point = pOptHdr->entrypt;
    }
    return ( 0 );
}
/*F***************************************************************************
* NAME:  COFF_RET
*        COFFR_GetSectionHdr( COFF_HNDL pCoffHndl, 
*                             short     SectNum, 
*                             SCNHDR *  pSectHdr)
*
* DESCRIPTION:  Read in the COFF section header information.
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/
COFF_RET
COFFR_GetSectionHdr( COFF_HNDL pCoffHndl, 
                     short     SectNum, 
                     TI_SCNHDR *  pSectHdr)
{
    TI_O_SCNHDR o_secthead; 
    int  err;

    long FilePos;
    int  SectionSize;

    if (   ( SectNum < 1 ) 
        || ( SectNum > (short)pCoffHndl->FileInfo->file_hdr.f_nscns ))
    {
         return (COFF_BAD_SECT_NUM_ERR);
    }

    /*----------------------------------------------------------------------*/
    /* READ IN SECTION HEADER.                                              */
    /*----------------------------------------------------------------------*/
    SectionSize = TI_SCNHSZ_IN(pCoffHndl->FileInfo->coff_version);

    FilePos = (long)TI_FILHSZ_IN(pCoffHndl->FileInfo->coff_version) 
                              + pCoffHndl->FileInfo->file_hdr.f_opthdr
                              + (( SectionSize ) * (SectNum - 1));   
             
    if (  (fseek(pCoffHndl->FileHndl, FilePos, SEEK_SET)))
    {
         return (COFF_FILE_ACCESS_ERR);
    }  
    
    if ( TI_ISCOFF_2( pCoffHndl->FileInfo->coff_version ) )  
    {
       err = fread( pSectHdr, SectionSize, SIZE_ONE, pCoffHndl->FileHndl);
    }
    else
    {
       err = fread( &o_secthead, SectionSize, SIZE_ONE, pCoffHndl->FileHndl);                     
    }  
     
    if ( err != SIZE_ONE )
    {
        return (COFF_FILE_ACCESS_ERR);
    } 
    
    /*----------------------------------------------------------------------*/
    /* SWAP SECTION HEADER IF REQUIRED.  LOOK FOR BSS AND CINIT SECTIONS.   */
    /*----------------------------------------------------------------------*/
    if ( pCoffHndl->FileInfo->byte_swapped )
    {                                       
        if( TI_ISCOFF_2(pCoffHndl->FileInfo->coff_version ))
        {
            
            if ( pSectHdr->s_zeroes == 0L )
            {    
                swap4byte(&pSectHdr->s_offset); 
            }    
            swap4byte(&pSectHdr->s_paddr);
            swap4byte(&pSectHdr->s_vaddr);
            swap4byte(&pSectHdr->s_size);
            swap4byte(&pSectHdr->s_scnptr);
            swap4byte(&pSectHdr->s_relptr);
            swap4byte(&pSectHdr->s_lnnoptr); 
            
            swap4byte(&pSectHdr->s_nreloc);
            swap4byte(&pSectHdr->s_nlnno);
            swap4byte(&pSectHdr->s_flags);
            swap2byte(&pSectHdr->s_page);     
         }
         else
         {
            swap4byte(&o_secthead.os_paddr);
            swap4byte(&o_secthead.os_vaddr);
            swap4byte(&o_secthead.os_size);
            swap4byte(&o_secthead.os_scnptr);
            swap4byte(&o_secthead.os_relptr);
            swap4byte(&o_secthead.os_lnnoptr);
            swap2byte(&o_secthead.os_nreloc);
            swap2byte(&o_secthead.os_nlnno);
            swap2byte(&o_secthead.os_flags); 
         }   
    }  
    
    if ( !TI_ISCOFF_2( pCoffHndl->FileInfo->coff_version ))  
    {
         strncpy( pSectHdr->s_name, o_secthead.os_name, TI_SYMNMLEN );
         
         pSectHdr->s_paddr   =  o_secthead.os_paddr;
         pSectHdr->s_vaddr   =  o_secthead.os_vaddr;
         pSectHdr->s_size    =  o_secthead.os_size;
         pSectHdr->s_scnptr  =  o_secthead.os_scnptr;
         pSectHdr->s_relptr  =  o_secthead.os_relptr; 
         pSectHdr->s_lnnoptr =  o_secthead.os_lnnoptr;
            
         pSectHdr->s_nreloc  =  o_secthead.os_nreloc;
         pSectHdr->s_nlnno   =  o_secthead.os_nlnno;
         pSectHdr->s_flags   =  o_secthead.os_flags;
         pSectHdr->s_page    =  o_secthead.os_page;  
         
    }
    
    if (    (pSectHdr->s_flags & TI_STYP_COPY)
         && !strcmp(pSectHdr->s_name, TI_CINIT)  )
    {
        pCoffHndl->FileInfo->cinit_sect = SectNum;
    }

    if (    (pSectHdr->s_flags & TI_STYP_BSS)
         && !strcmp(pSectHdr->s_name, TI_BSS)  )
    {
         pCoffHndl->FileInfo->bss_sect = SectNum;
    }

    return ( 0 );
}
/*F***************************************************************************
* NAME:  COFF_RET 
*        COFFR_IsLoadSection( COFF_HNDL pCoffHndl, short SectNum )
* 
*
* DESCRIPTION:  Determine if the section is a loadable section. 
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/
COFF_RET 
COFFR_IsLoadSection( COFF_HNDL pCoffHndl, short SectNum )
{

    TI_SCNHDR * pSectHdr = SECT_HDR_PTR( SectNum );                  

    if (     ( SectNum > 0 )
         &&  ( SectNum <= pCoffHndl->FileInfo->file_hdr.f_nscns )    
         &&  ( pSectHdr->s_scnptr != 0 )
         &&  ( pSectHdr->s_size !=0 )
         && !( pSectHdr->s_flags & TI_STYP_DSECT )
         && !( pSectHdr->s_flags & TI_STYP_COPY )
         && !( pSectHdr->s_flags & TI_STYP_NOLOAD ))
        return( 0 );                   /* Load Section    */
    else
        return( COFF_NOLOADSECT_ERR ); /* No Load Section */
}
/*F***************************************************************************
* NAME:  COFF_RET 
*        COFFR_FindMaxLoadSectionSize( COFF_HNDL pCoffHndl,
*                                      long * pMaxSizeInBytes )  
*
* DESCRIPTION:  Find the size of the biggest section and return the size
*               in host byte count.
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/
COFF_RET 
COFFR_FindMaxLoadSectionSize( COFF_HNDL pCoffHndl,
                              long * pMaxSizeInBytes )
{
    int  i;
    long MaxSize;
    TI_SCNHDR * pSectHdr = SECT_HDR_PTR( 1 );

    MaxSize = 0;

    for( i=1; i<=pCoffHndl->FileInfo->file_hdr.f_nscns; i++ )
    {
        if (  COFFR_IsLoadSection( pCoffHndl, (short)i ) 
                                  != COFF_NOLOADSECT_ERR )
        {
            if( pSectHdr->s_size > MaxSize )
                MaxSize = pSectHdr->s_size;
        }
        pSectHdr++;
    }
    /* Convert s_size to number of bytes in the largest section */
    *pMaxSizeInBytes = LOCTOBYTE( pCoffHndl, MaxSize);
    return( 0 );
}

/*F***************************************************************************
* NAME:    COFF_RET 
*          COFFR_GetSectData( COFF_HNDL       pCoffHndl, 
*                             short           SectNum,
*                             unsigned char * pRetBuffer, 
*                             unsigned long   ByteOffset,
*                                      long   BytesToRead,
*                                      long * pActualBytesRead )
*
* DESCRIPTION:  Read in section data from the file. 
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/
COFF_RET 
COFFR_GetSectData( COFF_HNDL       pCoffHndl, 
                   short           SectNum,
                   unsigned char * pRetBuffer, 
                   unsigned long   ByteOffset,
                            long   BytesToRead,
                            long * pActualBytesRead )
{
    unsigned long FilePos;
    long          BytesLeftInSection,BytesLeftToRead,BytesRead;
    TI_SCNHDR     * pSectHdr = SECT_HDR_PTR( SectNum );

    /*- Set file position and seek -----------------------------------------*/
    FilePos = pSectHdr->s_scnptr + ByteOffset;

    if ( fseek(pCoffHndl->FileHndl, FilePos, SEEK_SET))
        return (COFF_FILE_ACCESS_ERR);

    /*- Read min of bytes left in section or requested bytes ---------------*/
    BytesLeftInSection = LOCTOBYTE( pCoffHndl, pSectHdr->s_size) - ByteOffset;

    if( BytesLeftInSection <= 0 )
        return( COFF_LOAD_SIZE_ERR );
    
    BytesLeftToRead = MIN(BytesLeftInSection, BytesToRead );

    /*- Read the bytes -----------------------------------------------------*/
    BytesRead = fread( pRetBuffer,sizeof(unsigned char),
                       BytesLeftToRead,
                       pCoffHndl->FileHndl);

    /*- Return number of bytes read and error if less then fread request ---*/
    *pActualBytesRead = BytesRead;

    if( BytesRead != BytesLeftToRead )
        return ( COFF_LOAD_SIZE_ERR );
    else
        return( 0 );
}
/*F***************************************************************************
* NAME:   COFF_RET COFFR_LoadStrings( COFF_HNDL pCoffHndl )   
*
* DESCRIPTION: Read in the string table.
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/
COFF_RET
COFFR_LoadStrings( COFF_HNDL pCoffHndl )
{
    unsigned long read_str_size;         /* SIZE OF STRING TABLE            */
    unsigned long bufsize;               /* SIZE OF CURRENT BUFFER          */
    unsigned int ntoread;                /* AMOUNT TO READ FROM FILE        */
    unsigned long excess;                /* AMOUNT LEFT OVER FROM LAST BUFFE*/
    STRTAB *packet;                      /* STRING TABLE BUFFER PACKET      */

    /*----------------------------------------------------------------------*/
    /* FREE ANY PREVIOUS STRING BUFFERS                                     */
    /*----------------------------------------------------------------------*/
    FreeStrings( pCoffHndl );

    /*----------------------------------------------------------------------*/
    /* THE STRING TABLE IS READ IN AS A LINKED LIST OF BUFFERS.  TO         */
    /* PREVENT NAMES FROM BEING SPLIT ACROSS MULTIPLE BUFFERS, ANY PARTIAL  */
    /* NAME AT THE END OF A BUFFER IS COPIED intO THE BEGINNING OF THE      */
    /* NEXT BUFFER.  THE VARIABLE 'EXCESS' KEEPS TRACK OF HOW MUCH NEEDS    */
    /* TO BE COPIED FROM THE PREVIOUS BUFFER.                               */
    /*----------------------------------------------------------------------*/
    read_str_size = pCoffHndl->FileInfo->str_size - sizeof(long);
                                         /* SUBTRACT OFF BYTES ALREADY READ */
    excess    = 0;                       /* INITIALIZE LAST-BUFFER OVERFLOW */

    /*----------------------------------------------------------------------*/
    /* SEEK TO THE FIRST STRING ENTRY.                                      */
    /*----------------------------------------------------------------------*/
    if( fseek( pCoffHndl->FileHndl, 
               ( pCoffHndl->FileInfo->file_hdr.f_symptr
                    +(pCoffHndl->FileInfo->file_hdr.f_nsyms*TI_SYMESZ
					+sizeof(long))), SEEK_SET))
    {
        return (COFF_FILE_ACCESS_ERR);
    }

    /*----------------------------------------------------------------------*/
    /* READ STRING BUFFERS UNTIL THE WHOLE STRING TABLE IS READ.            */
    /*----------------------------------------------------------------------*/
    while (read_str_size)
    {
        /*------------------------------------------------------------------*/
        /* ALLOCATE A NEW BUFFER.  ON 16-BIT MACHINES, RESTRICT THE         */
        /* BUFFER SIZE TO THE MAXIMUM THAT CAN BE ALLOCATED AT ONCE.        */
        /*------------------------------------------------------------------*/
        bufsize = MIN(read_str_size + excess, COFF_MAX_STRING_ALLOC);

        packet = (STRTAB *) malloc(sizeof(STRTAB)+(size_t)bufsize);
        if ( packet == (STRTAB *)NULL )
            return ( COFF_MALLOC_ERR );

		memset( packet, 0, sizeof(STRTAB)+(size_t)bufsize );

        /*------------------------------------------------------------------*/
        /* COPY ANY PARTIAL STRING FROM THE LAST BUFFER into THIS ONE.      */
        /* THEN FILL THE REST OF THE BUFFER BY READING FROM THE FILE.       */
        /*------------------------------------------------------------------*/
        if ( excess )
        {
            strncpy(  packet->buf,
                      ( pCoffHndl->FileInfo->str_head->buf 
                      + pCoffHndl->FileInfo->str_head->size),
                      (int)excess);
        }
        ntoread = (unsigned int)(bufsize - excess);
        if (fread( packet->buf+excess,(size_t)ntoread,SIZE_ONE,
                   pCoffHndl->FileHndl )!= SIZE_ONE)
        {
            return ( COFF_FILE_ACCESS_ERR );
        }

        read_str_size -= ntoread;

        /*------------------------------------------------------------------*/
        /* IF THE BUFFER ENDS IN A PARTIAL STRING (DOESN'T END IN NULL),    */
        /* KEEP TRACK OF HOW MANY CHARACTERS ARE IN THE PARTIAL STRING      */
        /* SO THEY CAN BE COPIED intO THE NEXT BUFFER.                      */
        /*------------------------------------------------------------------*/
        for (excess = 0; packet->buf[bufsize - 1]; --bufsize, ++excess) ;

        /*------------------------------------------------------------------*/
        /* LINK THE NEW BUFFER into THE HEAD OF THE LIST.                   */
        /*------------------------------------------------------------------*/
        packet->size   = packet->index  = bufsize;
        packet->next   = pCoffHndl->FileInfo->str_head;
        packet->offset = pCoffHndl->FileInfo->str_head
                         ? ( pCoffHndl->FileInfo->str_head->offset
                            +pCoffHndl->FileInfo->str_head->size)
                         : sizeof(long);
        pCoffHndl->FileInfo->str_head = packet;
    }
    return ( 0 );
}

/*F***************************************************************************
* NAME:    COFF_RET
*           COFFR_GetSymbolTableEntry( COFF_HNDL      pCoffHndl, 
*                                      long         * pSymbolIndex,
*                                      COFF_SYMTYPE * pSymbolType, 
*                                      SYMENT       * pSymbolEntry,
*                                      AUXENT       * pAuxEntry )
*
* DESCRIPTION:  Read a symbol and its aux entry.  Return the index of 
*               the next symbol.
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/
COFF_RET
COFFR_GetSymbolTableEntry( COFF_HNDL      pCoffHndl, 
                           long         * pSymbolIndex,
                           COFF_SYMTYPE * pSymbolType, 
                           TI_SYMENT    * pSymbolEntry,
                           TI_AUXENT    * pAuxEntry )
{
    /*----------------------------------------------------------------------*/
    /* READ IN A SYMBOL AND ITS AUX ENTRY.                                  */
    /*----------------------------------------------------------------------*/
    if (  (fseek( pCoffHndl->FileHndl,(pCoffHndl->FileInfo->file_hdr.f_symptr
                                      +(*pSymbolIndex * TI_SYMESZ)),SEEK_SET))
       || (fread(pSymbolEntry,TI_SYMESZ,SIZE_ONE,pCoffHndl->FileHndl)!= SIZE_ONE)
       || (  pSymbolEntry->n_numaux
           && (fread(pAuxEntry,TI_SYMESZ,SIZE_ONE,pCoffHndl->FileHndl)!= SIZE_ONE)))
    {
        return (COFF_FILE_ACCESS_ERR);
    }

    if ( pCoffHndl->FileInfo->byte_swapped )
    {
        /*------------------------------------------------------------------*/
        /* SWAP THE SYMBOL TABLE ENTRY.                                     */
        /*------------------------------------------------------------------*/
        if (pSymbolEntry->n_zeroes == 0)
        {
            swap4byte( &pSymbolEntry->n_offset );
        }
        swap4byte(&pSymbolEntry->n_value);
        swap2byte(&pSymbolEntry->n_scnum);
        swap2byte(&pSymbolEntry->n_type);

        /*------------------------------------------------------------------*/
        /* SWAP THE AUX ENTRY, BASED ON THE STORAGE CLASS.                  */
        /*------------------------------------------------------------------*/
        if ( pSymbolEntry->n_numaux )
        {
            switch( pSymbolEntry->n_sclass )
            {
                case TI_C_FILE    : break;

                case TI_C_STRTAG  :
                case TI_C_UNTAG   :
                case TI_C_ENTAG   : 
                    swap4byte(&pAuxEntry->x_tag.x_fsize);
                    swap4byte(&pAuxEntry->x_tag.x_endndx);
                    break;

                case TI_C_FCN     : 
                    if (!strcmp(pSymbolEntry->n_name, ".bf"))
                    {
                        swap2byte(&pAuxEntry->x_block.x_lcnt);
                        swap4byte(&pAuxEntry->x_block.x_regmask); 
                        swap4byte(&pAuxEntry->x_block.x_framesize);
                    }
                    swap2byte(&pAuxEntry->x_block.x_lnno);
                    swap4byte(&pAuxEntry->x_block.x_endndx);
                    break;
                 
                case TI_C_BLOCK   : 
                    swap2byte(&pAuxEntry->x_block.x_lnno);
                    swap4byte(&pAuxEntry->x_block.x_endndx);
                    break;

                case TI_C_EOS     : 
                    swap4byte(&pAuxEntry->x_eos.x_fsize);
                    swap4byte(&pAuxEntry->x_eos.x_tagndx);
                    break;

                default        :
                    /*-----------------------------------------------*/
                    /* HANDLE FUNCTION DEFINITION SYMBOL             */
                    /*-----------------------------------------------*/
                    if (((pSymbolEntry->n_type >> 4) & 3) == TI_DT_FCN)
                    {
                        swap4byte(&pAuxEntry->x_func.x_tagndx);
                        swap4byte(&pAuxEntry->x_func.x_fsize);
                        swap4byte(&pAuxEntry->x_func.x_lnnoptr);
                        swap4byte(&pAuxEntry->x_func.x_endndx);
                    }

                    /*-----------------------------------------------*/
                    /* HANDLE ARRAYS.                                */
                    /*-----------------------------------------------*/
                    else if (((pSymbolEntry->n_type>>4) & 3) == TI_DT_ARY)
                    {
                        swap4byte(&pAuxEntry->x_array.x_tagndx);
                        swap4byte(&pAuxEntry->x_array.x_fsize);
                        swap2byte(&pAuxEntry->x_array.x_dimen[0]);
                        swap2byte(&pAuxEntry->x_array.x_dimen[1]);
                        swap2byte(&pAuxEntry->x_array.x_dimen[2]);
                        swap2byte(&pAuxEntry->x_array.x_dimen[3]);
                    }

                    /*-----------------------------------------------*/
                    /* HANDLE SECTION DEFINITIONS                    */
                    /*-----------------------------------------------*/
                    else if (pSymbolEntry->n_type == 0)
                    {
                        swap4byte(&pAuxEntry->x_scn.x_scnlen);
                        swap2byte(&pAuxEntry->x_scn.x_nreloc);
                        swap2byte(&pAuxEntry->x_scn.x_nlinno);
                    }

                    /*-----------------------------------------------*/
                    /* HANDLE MISC SYMBOL RECORD                     */
                    /*-----------------------------------------------*/
                    else
                    {
                        swap4byte(&pAuxEntry->x_sym.x_fsize);
                        swap4byte(&pAuxEntry->x_sym.x_tagndx);
                    }
                    break; /* End of default */
            } /* End of switch */
        }   /* End of pSymbolEntry->n_numaux */
    } /* End of if (pCoffHndl->FileInfo->byte_swapped ) */

    if ( pSymbolEntry->n_numaux )
    {
        switch ( pSymbolEntry->n_sclass )
        {
            case TI_C_FILE    : 
                *pSymbolType = COFF_AUX_FILE;
                break;
            case TI_C_STRTAG  : /* FALL THROUGH */
            case TI_C_UNTAG   : /* FALL THROUGH */
            case TI_C_ENTAG   : 
                *pSymbolType = COFF_AUX_TAG;
                break;
            case TI_C_FCN     : /* FALL THROUGH */
            case TI_C_BLOCK   : 
                *pSymbolType = COFF_AUX_BB; 
                break;
            case TI_C_EOS     : 
                *pSymbolType = COFF_AUX_EOS; 
                break;
            default    : 
                if (((pSymbolEntry->n_type >> 4) & 3) == TI_DT_FCN)
                    *pSymbolType = COFF_AUX_FUNC;
                else if (((pSymbolEntry->n_type>>4) & 3) == TI_DT_ARY)
                    *pSymbolType = COFF_AUX_ARRAY;
                else if (pSymbolEntry->n_type   == 0)
                    *pSymbolType = COFF_AUX_SECT;
                else
                    *pSymbolType = COFF_AUX_SYM;
                break;
        }
    }
    else
        *pSymbolType = COFF_SYM;

    *pSymbolIndex = *pSymbolIndex + pSymbolEntry->n_numaux + 1;
    return ( 0 );
}
/*F***************************************************************************
* NAME:    COFF_RET COFFR_GetSymbolName( COFF_HNDL       pCoffHndl, 
*                                        SYMENT        * pSymbolEntry,
*                                        unsigned long   MaxStringLength,
*                                        char          * pRetString )
*
* DESCRIPTION:  Copy symbol name up to maxt_str length into *str.
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/
COFF_RET
COFFR_GetSymbolName( COFF_HNDL       pCoffHndl, 
                     TI_SYMENT     * pSymbolEntry,
                     unsigned long   MaxStringLength,
                     char          * pRetString )
{
    int Error;

    if (pSymbolEntry->n_zeroes == 0)
    {
        STRTAB *pPacket;

        if (!pCoffHndl->FileInfo->str_head)
        {
            Error = COFFR_LoadStrings( pCoffHndl );
            if( Error != 0 )
                return( Error );
        }
        pPacket = pCoffHndl->FileInfo->str_head;

        while (pSymbolEntry->n_offset < (long)pPacket->offset)
            pPacket = pPacket->next;

        strncpy( pRetString, pPacket->buf+(pSymbolEntry->n_offset-pPacket->offset),
                 (int)MaxStringLength);
        
        pRetString[ MaxStringLength - 1 ] = '\0';
    }
    else
    {    
        strncpy( pRetString, pSymbolEntry->n_name, 8);
        pRetString[8] = '\0';
    }

    return ( 0 );
}

/*F***************************************************************************
* NAME:  COFF_RET 
*        COFFR_FindMaxLnno( COFF_HNDL pCoffHndl,
*                           long * pMaxLnno  )  
*
* DESCRIPTION:  Find the most line numbers of any of the sections. Returns
*               the number of line number entries.
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/
COFF_RET 
COFFR_FindMaxLnno( COFF_HNDL pCoffHndl,
                   unsigned long * pMaxLnno )
{
    int  i;
    unsigned long MaxLnno;
    TI_SCNHDR * pSectHdr = SECT_HDR_PTR( 1 );

    MaxLnno = 0L;

    for( i=1; i<=pCoffHndl->FileInfo->file_hdr.f_nscns; i++ )
    {
        if( pSectHdr->s_nlnno > MaxLnno )
            MaxLnno = pSectHdr->s_nlnno;
        pSectHdr++;
    }
    *pMaxLnno = MaxLnno;
    return( 0 );
}
/*F***************************************************************************
* NAME:    COFF_RET 
*          COFFR_GetSectLnno( COFF_HNDL       pCoffHndl, 
*                             short           SectNum,
*                                      LNNO * pLnnoBuffer, 
*                             unsigned long   LnnoOffset,
*                             unsigned long   LnnoToRead,
*                             unsigned long * pActualLnnoRead )
*
* DESCRIPTION:  Read in line numbers from the file. 
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/
COFF_RET 
COFFR_GetSectLnno( COFF_HNDL       pCoffHndl, 
                   short           SectNum,
                   TI_LINENO     * pLnnoBuffer, 
                   unsigned long   LnnoOffset,
                   unsigned long   LnnoToRead,
                   unsigned long * pActualLnnoRead )
{
    unsigned long FilePos;
    unsigned long LnnoLeftInSection,LnnoLeftToRead,LnnoRead;
    TI_SCNHDR    * pSectHdr = SECT_HDR_PTR( SectNum );

	/*- Assume that we will be unable to read until we actually do ---------*/
    *pActualLnnoRead = 0L;
    if (pSectHdr->s_nlnno == 0L)
		return( 0 );

    /*- Set file position and seek -----------------------------------------*/
	FilePos = pSectHdr->s_lnnoptr + LnnoOffset * TI_LINESZ;

    if ( fseek(pCoffHndl->FileHndl, FilePos, SEEK_SET))
        return (COFF_FILE_ACCESS_ERR);

    /*- Read min of lnnos left in section or requested lnnos ---------------*/
    LnnoLeftInSection = pSectHdr->s_nlnno - LnnoOffset;

    if( LnnoLeftInSection <= 0 )
        return( COFF_LOAD_SIZE_ERR );
    
    LnnoLeftToRead = MIN(LnnoLeftInSection, LnnoToRead );

    /*- Read the lnnos -----------------------------------------------------*/
	for (LnnoRead =0L; LnnoRead < LnnoLeftToRead; LnnoRead++)
	{
        if (!fread( pLnnoBuffer, TI_LINESZ, 1, pCoffHndl->FileHndl) )
			break;

	    /*- Swap bytes in the line number entries if necessary -------------*/
	    if ( pCoffHndl->FileInfo->byte_swapped )
		{
			swap2byte(&(pLnnoBuffer->l_lnno));
			swap4byte(&(pLnnoBuffer->l_addr.l_paddr));
		}
		pLnnoBuffer++;
	}
    /*- Return number of lnnos read and error if less then fread request ---*/
    *pActualLnnoRead = LnnoRead;

    if( LnnoRead != LnnoLeftToRead )
        return ( COFF_LOAD_SIZE_ERR );
    else
        return( 0 );
}
/*F***************************************************************************
* NAME: static void FreeStrings( COFF_HNDL pCoffHndl )
*
* DESCRIPTION:  Free the list of string table buffers.
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/
static void 
FreeStrings( COFF_HNDL pCoffHndl )
{
    STRTAB *Current, *Next;
    

    if(    ( pCoffHndl->FileInfo != ( COFF_FILE_INFO *)NULL)        
        && ( pCoffHndl->FileInfo->str_head != ( STRTAB *)NULL))
    {
        for ( Current = pCoffHndl->FileInfo->str_head; 
              Current;
              Current = Next )
        {
            Next = Current->next;
            free( Current );
        }
    }
    pCoffHndl->FileInfo->str_head = ( STRTAB *)NULL;
}
/*F***************************************************************************
* NAME:   static void swap4byte(void * addr) 
*
* DESCRIPTION:  Swap the order of bytes in a long.
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/
static void 
swap4byte(void * addr)
{
    unsigned long *value = (unsigned long *)addr;
    unsigned long temp1, temp2, temp3, temp4;

    temp1 = (*value)       & 0xFF;
    temp2 = (*value >> 8)  & 0xFF;
    temp3 = (*value >> 16) & 0xFF;
    temp4 = (*value >> 24) & 0xFF;

    *value = (temp1 << 24) | (temp2 << 16) | (temp3 << 8) | temp4;
}
/*F***************************************************************************
* NAME:  static void swap2byte(void * addr)  
*
* DESCRIPTION: Swap the order of bytes in a short.
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/
static void 
swap2byte(void * addr)
{
    unsigned short *value = (unsigned short *)addr;
    unsigned short temp1,temp2;

    temp1 = temp2 = *value;
    *value = ((temp2 & 0xFF) << 8) | ((temp1 >> 8) & 0xFF);
}
/*F***************************************************************************
* NAME:    
*
* DESCRIPTION:
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/

unsigned long
LOCTOBYTE( COFF_HNDL pCoffHndl, unsigned long wrd_size )
{
    switch(pCoffHndl->FileInfo->device_id)
    {
        case TI_MAGIC_340   : return (wrd_size>>3);     /* BIT ADDRESS UNITS   */
        case TI_MAGIC_370   : return (wrd_size);        /* BYTE ADDRESS UNITS  */
        case TI_MAGIC_DSP   : return (wrd_size<<1);     /* 2-BYTE ADDRESS UNITS*/
        case TI_MAGIC_C30   : return (wrd_size<<2);     /* 4-BYTE ADDRESS UNITS*/
        case TI_MAGIC_MVP   : return (wrd_size);        /* BYTE ADDRESS UNITS  */
        case TI_MAGIC_C16   : return (wrd_size);        /* BYTE ADDRESS UNITS  */
        case TI_MAGIC_ARM   : return (wrd_size);        /* 1-BYTE ADDRESS UNITS*/
        case TI_MAGIC_LEAD  : return (wrd_size<<1);     /* 2-BYTE ADDRESS UNITS*/
        case TI_MAGIC_LEAD3 : return (wrd_size);        /* 2-BYTE ADDRESS UNITS*/
        case TI_MAGIC_ANKOOR: return (wrd_size<<1);     /* 2-BYTE ADDRESS UNITS*/      
        case TI_MAGIC_C60   : return (wrd_size);        /* BYTE ADDRESS UNITS  */
        case TI_MAGIC_380   : /* NOT SUPPORTED - FALLTHROUGH TO DEFAULT        */
        default          : /* THIS IS ACTUALLY AN ERROR - UNSUPPORTED DEVICE*/
                           return ( 0 );
    }
}
/*F***************************************************************************
* NAME:    
*
* DESCRIPTION:
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/

unsigned long
BYTETOLOC( COFF_HNDL pCoffHndl, unsigned long byte_size )
{
    switch(pCoffHndl->FileInfo->device_id)
    {
        case TI_MAGIC_340   : return (byte_size<<3);    /* BIT ADDRESS UNITS   */
        case TI_MAGIC_370   : return (byte_size);       /* BYTE ADDRESS UNITS  */
        case TI_MAGIC_DSP   : return (byte_size>>1);    /* 2-BYTE ADDRESS UNITS*/
        case TI_MAGIC_C30   : return (byte_size>>2);    /* 4-BYTE ADDRESS UNITS*/
        case TI_MAGIC_MVP   : return (byte_size);       /* BYTE ADDRESS UNITS  */
        case TI_MAGIC_C16   : return (byte_size);       /* BYTE ADDRESS UNITS  */
        case TI_MAGIC_ARM   : return (byte_size);       /* 1-BYTE ADDRESS UNITS*/
        case TI_MAGIC_LEAD  : return (byte_size>>1);    /* 2-BYTE ADDRESS UNITS*/
        case TI_MAGIC_LEAD3 : return (byte_size);       /* 2-BYTE ADDRESS UNITS*/
        case TI_MAGIC_ANKOOR : return (byte_size>>1);   /* 2-BYTE ADDRESS UNITS*/
        case TI_MAGIC_C60   : return (byte_size);       /* BYTE ADDRESS UNITS  */
        case TI_MAGIC_380   : /* NOT SUPPORTED - FALLTHROUGH TO DEFAULT        */
        default          : /* THIS IS ACTUALLY AN ERROR - UNSUPPORTED DEVICE*/
                           return ( 0 );
    }
}
/*F***************************************************************************
* NAME:    
*
* DESCRIPTION:
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/

static unsigned long
CINIT_ALIGN( COFF_HNDL pCoffHndl )
{
    switch(pCoffHndl->FileInfo->device_id)
    {
        case TI_MAGIC_340   : return ( 1 );      /* BYTE ALIGNED CINIT RECORDS */
        case TI_MAGIC_370   : return ( 1 );      /* BYTE ALIGNED CINIT RECORDS */
        case TI_MAGIC_DSP   : return ( 1 );      /* BYTE ALIGNED CINIT RECORDS */
        case TI_MAGIC_C30   : return ( 1 );      /* BYTE ALIGNED CINIT RECORDS */
        case TI_MAGIC_MVP   : return ( 4 );      /* WORD ALIGNED CINIT RECORDS */
        case TI_MAGIC_C16   : return ( 1 );      /* BYTE ALIGNED CINIT RECORDS */
        case TI_MAGIC_ARM   : return ( 1 );      /* BYTE ALIGNED CINIT RECORDS */
        case TI_MAGIC_LEAD  : return ( 1 );      /* BYTE ALIGNED CINIT RECORDS */
        case TI_MAGIC_LEAD3 : return ( 1 );      /* BYTE ALIGNED CINIT RECORDS */
        case TI_MAGIC_ANKOOR: return ( 1 );      /* BYTE ALIGNED CINIT RECORDS */
        case TI_MAGIC_C60   : return ( 1 );      /* BYTE ALIGNED CINIT RECORDS */
        case TI_MAGIC_380   : /* NOT SUPPORTED - FALLTHROUGH TO DEFAULT        */
        default          : /* THIS IS ACTUALLY AN ERROR - UNSUPPORTED DEVICE*/
                            return ( 0 );
    }
}
/*F***************************************************************************
* NAME:    
*
* DESCRIPTION:
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/

static size_t
T_IADDR_SIZE( COFF_HNDL pCoffHndl )
{
    switch(pCoffHndl->FileInfo->device_id)
    {
        case TI_MAGIC_340   : return ( 4 );      /* 4 BYTES PER TARGET CINIT A */
        case TI_MAGIC_370   : return ( 2 );      /* 2 BYTES PER TARGET CINIT A */
        case TI_MAGIC_DSP   : return ( 2 );      /* 2 BYTES PER TARGET CINIT A */
        case TI_MAGIC_C30   : return ( 4 );      /* 4 BYTES PER TARGET CINIT A */
        case TI_MAGIC_MVP   : return ( 4 );      /* 4 BYTES PER TARGET CINIT A */
        case TI_MAGIC_C16   : return ( 2 );      /* 2 BYTES PER TARGET CINIT A */
        case TI_MAGIC_ARM   : return ( 4 );      /* 4 BYTES PER TARGET CINIT A */
        case TI_MAGIC_LEAD  : return ( 2 );      /* 2 BYTES PER TARGET CINIT A */
        case TI_MAGIC_LEAD3 : return ( 3 );      /* 2 BYTES PER TARGET CINIT A */
        case TI_MAGIC_ANKOOR: return ( 2 );      /* 2 BYTES PER TARGET CINIT A */
        case TI_MAGIC_C60   : return ( 4 );      /* 4 BYTES PER TARGET CINIT A */
        case TI_MAGIC_380   : /* NOT SUPPORTED - FALLTHROUGH TO DEFAULT        */
        default          : /* THIS IS ACTUALLY AN ERROR - UNSUPPORTED DEVICE*/
                           return ( 0 );
    }
}
/*F***************************************************************************
* NAME:    
*
* DESCRIPTION:
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/

static size_t
T_SIZE_SIZE( COFF_HNDL pCoffHndl)
{
    switch(pCoffHndl->FileInfo->device_id)
    {
        case TI_MAGIC_340   : return ( 2 );      /* 2 BYTES PER CINIT SIZE     */
        case TI_MAGIC_370   : return ( 2 );      /* 2 BYTES PER CINIT SIZE     */
        case TI_MAGIC_DSP   : return ( 2 );      /* 2 BYTES PER CINIT SIZE     */
        case TI_MAGIC_C30   : return ( 4 );      /* 4 BYTES PER CINIT SIZE     */
        case TI_MAGIC_MVP   : return ( 4 );      /* 4 BYTES PER CINIT SIZE     */
        case TI_MAGIC_C16   : return ( 4 );      /* 4 BYTES PER CINIT SIZE     */
        case TI_MAGIC_ARM   : return ( 4 );      /* 4 BYTES PER CINIT SIZE     */
        case TI_MAGIC_LEAD  : return ( 2 );      /* 2 BYTES PER CINIT SIZE     */
        case TI_MAGIC_LEAD3 : return ( 2 );      /* 2 BYTES PER CINIT SIZE     */
        case TI_MAGIC_ANKOOR: return ( 2 );      /* 2 BYTES PER CINIT SIZE     */
        case TI_MAGIC_C60   : return ( 4 );      /* 4 BYTES PER CINIT SIZE     */
        case TI_MAGIC_380   : /* NOT SUPPORTED - FALLTHROUGH TO DEFAULT        */
        default          : /* THIS IS ACTUALLY AN ERROR - UNSUPPORTED DEVICE*/
                           return ( 0 );
    }
}
/*F***************************************************************************
* NAME:    
*
* DESCRIPTION:
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/

size_t
T_ADDR_SIZE( COFF_HNDL pCoffHndl)
{
    switch(pCoffHndl->FileInfo->device_id)
    {
        case TI_MAGIC_340   : return ( 4 );      /* 4 BYTES PER TARGET ADDRESS */
        case TI_MAGIC_370   : return ( 2 );      /* 2 BYTES PER TARGET ADDRESS */
        case TI_MAGIC_DSP   : return ( 2 );      /* 2 BYTES PER TARGET ADDRESS */
        case TI_MAGIC_C30   : return ( 4 );      /* 4 BYTES PER TARGET ADDRESS */
        case TI_MAGIC_MVP   : return ( 4 );      /* 4 BYTES PER TARGET ADDRESS */
        case TI_MAGIC_C16   : return ( 4 );      /* 4 BYTES PER TARGET ADDRESS */
        case TI_MAGIC_ARM   : return ( 4 );      /* 4 BYTES PER TARGET ADDRESS */
        case TI_MAGIC_LEAD  : return ( 2 );      /* 2 BYTES PER TARGET ADDRESS */
        case TI_MAGIC_LEAD3 : return ( 4 );      /* 4 BYTES PER TARGET ADDRESS */
        case TI_MAGIC_ANKOOR: return ( 4 );      /* 4 BYTES PER TARGET ADDRESS */
        case TI_MAGIC_C60   : return ( 4 );      /* 4 BYTES PER TARGET ADDRESS */
        case TI_MAGIC_380   : /* NOT SUPPORTED - FALLTHROUGH TO DEFAULT        */
        default          : /* THIS IS ACTUALLY AN ERROR - UNSUPPORTED DEVICE*/
                           return ( 0 );
    }
}
/*F***************************************************************************
* NAME:    
*
* DESCRIPTION:
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/

static size_t
T_DATA_SIZE( COFF_HNDL pCoffHndl)
{
    switch(pCoffHndl->FileInfo->device_id)
    {
        case TI_MAGIC_340   : return ( 2 );      /* 2 BYTES PER TARGET DATA    */
        case TI_MAGIC_370   : return ( 1 );      /* 1 BYTES PER TARGET DATA    */
        case TI_MAGIC_DSP   : return ( 2 );      /* 2 BYTES PER TARGET DATA    */
        case TI_MAGIC_C30   : return ( 4 );      /* 4 BYTES PER TARGET DATA    */
        case TI_MAGIC_MVP   : return ( 4 );      /* 4 BYTES PER TARGET DATA    */
        case TI_MAGIC_C16   : return ( 2 );      /* 2 BYTES PER TARGET DATA    */
        case TI_MAGIC_ARM   : return ( 4 );      /* 4 BYTES PER TARGET DATA    */
        case TI_MAGIC_LEAD  : return ( 2 );      /* 2 BYTES PER TARGET DATA    */
        case TI_MAGIC_LEAD3 : return ( 2 );      /* 2 BYTES PER TARGET DATA    */
        case TI_MAGIC_ANKOOR: return ( 2 );      /* 2 BYTES PER TARGET DATA    */
        case TI_MAGIC_C60   : return ( 4 );      /* 4 BYTES PER TARGET DATA    */
        case TI_MAGIC_380   : /* NOT SUPPORTED - FALLTHROUGH TO DEFAULT        */
        default          : /* THIS IS ACTUALLY AN ERROR - UNSUPPORTED DEVICE*/
                           
            return ( 0 );
    }
}
/*F***************************************************************************
* NAME:    
*
* DESCRIPTION:
*
* INPUTS:
*   PARAMETERS:
*
*   GLOBALS:
*
* OUTPUTS:
*   PARAMETERS:
*       
*   GLOBALS:
*
*   RETURN:                     
*       
* NOTES:
*   
*F***************************************************************************/

static size_t
CINIT_WSIZE( COFF_HNDL pCoffHndl)
{
    switch(pCoffHndl->FileInfo->device_id)
    {
        case TI_MAGIC_340   : return ( 2 );      /* 2-BYTES PER DATA ITEM      */
        case TI_MAGIC_370   : return ( 1 );      /* BYTE PER DATA ITEM         */
        case TI_MAGIC_DSP   : return ( 2 );      /* 2-BYTES PER DATA ITEM      */
        case TI_MAGIC_C30   : return ( 4 );      /* 4-BYTES PER DATA ITEM      */
        case TI_MAGIC_MVP   : return ( 1 );      /* BYTE PER DATA ITEM         */
        case TI_MAGIC_C16   : return ( 4 );      /* NOTE! 4-BYTES PER DATA ITEM*/
        case TI_MAGIC_ARM   : return ( 4 );      /* 4-BYTES PER DATA ITEM      */
        case TI_MAGIC_LEAD  : return ( 2 );      /* 2-BYTES PER DATA ITEM      */
        case TI_MAGIC_LEAD3 : return ( 2 );      /* 2-BYTES PER DATA ITEM      */
        case TI_MAGIC_ANKOOR: return ( 2 );      /* 2-BYTES PER DATA ITEM      */
        case TI_MAGIC_C60   : return ( 4 ); 
        case TI_MAGIC_380   : /* NOT SUPPORTED - FALLTHROUGH TO DEFAULT        */
        default          : /* THIS IS ACTUALLY AN ERROR - UNSUPPORTED DEVICE*/
                           return ( 0 );
    }
}
