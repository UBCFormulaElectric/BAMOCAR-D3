/*H***************************************************************************
*
* $Archive:: /TI/product/F28xxSerialFlash/src_host/cofflib.h                 $
* $Revision:: 6                                                              $
* $Date:: 10/29/03 11:34a                                                    $
* $Author:: Tonyc                                                            $
*
* DESCRIPTION:
*    Generic coff reader.
*
* USAGE/LIMITATIONS:
*
* NOTES:
*   
* (C) Copyright 1997 by Spectrum Digital Incorporated
* All rights reserved
*
*H***************************************************************************/

#ifndef cofflib_h
#define cofflib_h

/*---- compilation control switches ----------------------------------------*/
#ifdef  __cplusplus
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

/*---- define file attributes between pc and unix machines -----------------*/
#if  defined(sun) || defined(hp)
    #undef  COFF_FILE_RD
    #define COFF_FILE_RD    "r"
#else
    #undef  COFF_FILE_RD
    #define COFF_FILE_RD    "rb"
#endif

/*--- Structure holds information about a loaded string table  -------------*/
typedef struct strtab
{
   unsigned long  size;               /* SIZE OF THIS PACKET                */
   unsigned long  offset;             /* STARTING OFFSET OF THIS PACKET     */
   unsigned long  index;              /* AMOUNT CURRENTLY FILLED            */
   struct strtab *next;               /* NEXT BUFFER                        */
   char           buf[1];             /* STRING DATA (EXPAND AS ALLOCATED)  */
} STRTAB;

/*--- Structure to hold coff file header information -----------------------*/
typedef struct cfi_struct 
{
    short       bss_sect;           /* SECTION NUMBER OF BSS SECTION        */
    short       cinit_sect;         /* SECTION NUMBER OF CINIT SECTION      */
    TI_FILHDR   file_hdr;           /* COFF FILE HEADER                     */
    int         coff_version;       /* COFF FILE VERSION                    */
    int         device_id;          /* TARGET DEVICE IDENTIFIER             */
    TI_AOUTHDR  o_filehdr;          /* OPTIONAL (.OUT) FILE HEADER          */
    long        entry_point;        /* ENTRY POINT OF COFF CODE             */
    long      * reloc_amount;       /* ARRAY OF SECTION RELOCATIONS         */
    void      * sect_hdrs;          /* ARRAY OF SECTION HEADERS             */
    int         big_e_target;       /* TARGET DATA IN BIG-ENDIAN FORMAT     */
    int         byte_swapped;       /* BYTE ORDERING OPPOSITE OF HOST       */
    int         tags_merged;
    long        str_size;           /* SIZE OF STRING TABLE                 */
    struct strtab * str_head;       /* LIST OF STRING TABLE BUFFERS         */
    short       largest_sect;       /* LOAD SECTION WITH MAX BYTES          */
    long        largest_sect_size;  /* NUMBER OF BYTES IN THE LARGEST SECT. */
} COFF_FILE_INFO;

/*--- Structure to hold info on how to open file and load coff file --------*/
typedef struct co_struct                  
{
    int     down_load;                  /* TRUE if downloads are to be done */
    int     clear_bss;                  /* TRUE if BSS sec should be cleared*/
    int     do_reloc;                   /* TRUE if considering relocations  */
    int     verbose;                    /* TRUE if diagnostic msgs desired  */
} COFF_OPTS;    

/*--- Structure to hold ALL that is known about the opened file.------------*/
typedef struct chi_struct
{
    FILE              * FileHndl;      /* handle for opened COFF file       */
    struct cfi_struct * FileInfo;      /* ptr to non instance-specific info */
    struct co_struct  * options;       /* open/load options from last call  */
    int                 bss_downloaded;/* TRUE if bss section downloaded    */
} COFF_HNDL_INFO;                      /* instance-specific file info       */

typedef COFF_HNDL_INFO * COFF_HNDL;

/*---- Coff relocation function prototype, NOT currently used.--------------*/
typedef int (*COFF_FNCTPTR_RELOC)( COFF_HNDL       coff_hndl,
                                   TI_RELOC        * reloc,
                                   TI_SYMENT       * reloc_sym,
                                   short           sect_num,
                                   unsigned char * data);  

/*---- Define coff symbol types.  These are merge of coff definitions ------*/                          
typedef enum 
{ 
    COFF_SYM, 
    COFF_AUX_FILE, 
    COFF_AUX_SECT, 
    COFF_AUX_TAG,
    COFF_AUX_SYM, 
    COFF_AUX_EOS, 
    COFF_AUX_FUNC, 
    COFF_AUX_ARRAY,
    COFF_AUX_BB, 
    COFF_AUX_EB 
} COFF_SYMTYPE;

/*---- Define error codes returned by cofflib.c, no error = 0 --------------*/
#define COFF_MALLOC_ERR         -100
#define COFF_FILE_GONE_ERR      -101
#define COFF_FILE_ACCESS_ERR    -102
#define COFF_BAD_SECT_NUM_ERR   -103
#define COFF_BAD_MAGIC_ERR      -104
#define COFF_LOADSECT_SEQ_ERR   -105
#define COFF_NOLOADSECT_ERR     -106
#define COFF_LOAD_SIZE_ERR      -107

/*---- global data declarations --------------------------------------------*/
#define TI_ISCOFF2(x) (TI_ISCOFF_0(x) || TI_ISCOFF_1(x) || TI_ISCOFF_2(x) || TI_ISMAGIC_ANY(x))


#define SIZE_ONE    ((size_t)1)       /* USED FOR READING SINGLE OBJECTS    */

#define COFF_MAX_STRING_ALLOC   0xFFDFL /*MAX STRING BUFFER:64K(SMALL HOSTS)*/

/*---- global data declarations --------------------------------------------*/


/*---- global function prototypes ------------------------------------------*/

#ifdef GLOBAL
    #undef GLOBAL
#endif

/*-- Include COFF files directly or as .dll. -------------------------------*/
#if defined( INCL_COFFLIB )
    #if defined(cofflib_c)
        #define COFF_RET  int
    #else
        #define COFF_RET  extern int
    #endif
#else
    #if defined(cofflib_c)
        #define COFF_RET extern __declspec(dllexport) int
    #else
        #define COFF_RET        __declspec(dllimport) int
    #endif
#endif

COFF_RET COFFR_FileOpen( const char * pFilename,  
                         COFF_OPTS * pOptions, 
                         COFF_HNDL * pRetCoffHndl );

COFF_RET COFFR_FileClose(COFF_HNDL pCoffHndl);

COFF_RET COFFR_GetFileHdr( COFF_HNDL   pCoffHndl,
                           TI_FILHDR    * pFileHdr);

COFF_RET COFFR_GetOptionalHdr( COFF_HNDL   pCoffHndl,
                               TI_AOUTHDR   * pOptHdr);

COFF_RET COFFR_GetSectionHdr(  COFF_HNDL   pCoffHndl,
                               short       SectNum,
                               TI_SCNHDR    * pSectHdr );

COFF_RET COFFR_IsLoadSection( COFF_HNDL  pCoffHndl,
                              short      SectNum);

COFF_RET COFFR_FindMaxLoadSectionSize( COFF_HNDL   pCoffHndl,
                                       long      * pMaxSizeInBytes );

COFF_RET COFFR_GetSectData( COFF_HNDL       pCoffHndl, 
                            short           SectNum,
                            unsigned char * RetBuffer,
                            unsigned long   ByteOffset,
                            long            BytesToRead,
                            long          * ActualBytesRead );

COFF_RET COFFR_LoadStrings( COFF_HNDL pCoffHndl );


COFF_RET COFFR_GetSymbolTableEntry( COFF_HNDL      pCoffHndl, 
                                    long         * pSymbolIndex,
                                    COFF_SYMTYPE * pSymbolType, 
                                    TI_SYMENT    * pSymbolEntry,
                                    TI_AUXENT    * pAuxEntry );

COFF_RET COFFR_GetSymbolName( COFF_HNDL       pCoffHndl, 
                              TI_SYMENT     * pSymbolEntry,
                              unsigned long   MaxStringLength,
                              char          * pRetString );

COFF_RET COFFR_FindMaxLnno( COFF_HNDL pCoffHndl,
                            unsigned long * pMaxLnno );

COFF_RET COFFR_GetSectLnno( COFF_HNDL pCoffHndl,
                            short SectNum,
                            TI_LINENO * pLnnoBuffer,
                            unsigned long LnnoOffset,
                            unsigned long LnnoToRead,
                            unsigned long * pActualLnnoRead );

unsigned long LOCTOBYTE(COFF_HNDL pCoffHndl, unsigned long wrd_size );
unsigned long BYTETOLOC( COFF_HNDL pCoffHndl, unsigned long byte_size );
size_t        T_ADDR_SIZE(COFF_HNDL  pCoffHndl );

#ifdef  __cplusplus
}
#endif

#endif /*  cofflib_h ------ END OF FILE ------------------------------------*/
