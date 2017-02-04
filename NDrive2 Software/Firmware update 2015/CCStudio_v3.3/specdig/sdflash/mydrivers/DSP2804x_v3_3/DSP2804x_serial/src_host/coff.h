/*H***************************************************************************
*
* $Archive:: /TI/product/F28xxSerialFlash/src_host/coff.h                    $
* $Revision:: 5                                                              $
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

/*------------------------------------------------------------------------*/
/*  COFF VERSION FLAGS                                                    */
/*------------------------------------------------------------------------*/
 
#if !defined(TI_COFF_VERSION_0) && \
    !defined(TI_COFF_VERSION_1) && \
    !defined(TI_COFF_VERSION_2)
#define TI_COFF_VERSION_0     0
#define TI_COFF_VERSION_1     0
#define TI_COFF_VERSION_2     1
#endif

#ifndef TI_COFF_VERSION_0 
#define TI_COFF_VERSION_0     0
#endif

#ifndef TI_COFF_VERSION_1
#define TI_COFF_VERSION_1     0
#endif

#ifndef TI_COFF_VERSION_2
#define TI_COFF_VERSION_2     0
#endif 
 
/*------------------------------------------------------------------------*/
/*  COFF MAGIC NUMBERS                                                    */
/*------------------------------------------------------------------------*/
#define TI_COFF_MAGIC_0 0300         /* ORIGINAL VERSION OF COFF             */
#define TI_COFF_MAGIC_1 0301
#define TI_COFF_MAGIC_2 0302

/*------------------------------------------------------------------------*/
/*  COFF TARGET ID's (FORMERLY MAGIC NUMBERS)                             */
/*  NOTE!!! DEFINE THE MACRO "MAGIC" TO BE ONE OF THESE MACROS.           */
/*------------------------------------------------------------------------*/
#define TI_MAGIC_340   0220
#define TI_MAGIC_370   0221
#define TI_MAGIC_DSP   0222
#define TI_MAGIC_C30   0223
#define TI_MAGIC_380   0224
#define TI_MAGIC_MVP   0225
#define TI_MAGIC_C16   0226
#define TI_MAGIC_ARM   0227
#define TI_MAGIC_LEAD  0230
#define TI_MAGIC_C60   0231
#define TI_MAGIC_C8P     0232
#define TI_MAGIC_LEAD3   0234
#define TI_MAGIC_LEADSDK 0234
#define TI_MAGIC_ANKOOR  0235

#define TI_MAGIC_MIN   0220          /* MINIMUM VALID MAGIC NUMBER           */
#define TI_MAGIC_MAX   0235          /* MAXIMUM VALID MAGIC NUMBER           */

/*------------------------------------------------------------------------*/
/*  Macros to recognize magic numbers                                     */ 
/*------------------------------------------------------------------------*/
#define TI_ISCOFF(x)       (TI_ISCOFF_0(x)||TI_ISCOFF_1(x)||TI_ISCOFF_2(x)||TI_ISMAGIC(x))
#define TI_ISMAGIC(x)      (((unsigned short)(x)) == TI_MAGIC)
#define TI_BADMAGIC(x)     (((unsigned short)(x) & 0x8080) && !TI_ISMAGIC(x))

#if TI_COFF_VERSION_2
#define TI_ISCOFF_0(x)     ((unsigned short)(x) == TI_COFF_MAGIC_0)
#define TI_ISCOFF_1(x)     ((unsigned short)(x) == TI_COFF_MAGIC_1)
#define TI_ISCOFF_2(x) ((unsigned short)(x) == TI_COFF_MAGIC_2)
#elif TI_COFF_VERSION_1
#define TI_ISCOFF_0(x)     ((unsigned short)(x) == TI_COFF_MAGIC_0)
#define TI_ISCOFF_1(x)     ((unsigned short)(x) == TI_COFF_MAGIC_1)
#define TI_ISCOFF_2(x) FALSE
#else
#define TI_ISCOFF_0(x)     FALSE
#define TI_ISCOFF_1(x)     FALSE
#define TI_ISCOFF_2(x) FALSE
#endif

#define TI_ISMAGIC_ANY(x)  (((unsigned short)(x)) >= TI_MAGIC_MIN &&   \
                         ((unsigned short)(x)) <= TI_MAGIC_MAX)
#define TI_ISCOFF_ANY(x)   (TI_ISCOFF_0(x) || TI_ISCOFF_1(x) || \
                         TI_ISCOFF_2(x) || TI_ISMAGIC_ANY(x))
#include "coffdefs.h"

/*------------------------------------------------------------------------*/
/*  COFF FILE HEADER                                                      */
/*------------------------------------------------------------------------*/
struct filehdr
{
   unsigned short  f_magic;        /* magic number */
   unsigned short  f_nscns;        /* number of sections */
   long            f_timdat;       /* time & date stamp */
   long            f_symptr;       /* file pointer to symtab */
   long            f_nsyms;        /* number of symtab entries */
   unsigned short  f_opthdr;       /* sizeof(optional hdr) */
   unsigned short  f_flags;        /* flags */
   unsigned short  f_target_id;    /* target architecture id */
};

#define TI_FILHDR  struct filehdr
#define TI_FILHSZ             (TI_COFF_VERSION_0 ? 20 : 22)
#define TI_FILHSZ_IN(version) (version >= TI_COFF_MAGIC_1 ? 22 : 20)

/*------------------------------------------------------------------------*/
/*  File header flags                                                     */
/*------------------------------------------------------------------------*/
#define  TI_F_RELFLG   0x01       /* relocation info stripped from file      */
#define  TI_F_EXEC     0x02       /* file is executable (no unresolved refs) */
#define  TI_F_LNNO     0x04       /* line nunbers stripped from file         */
#define  TI_F_LSYMS    0x08       /* local symbols stripped from file        */

/*------------------------------------------------------------------------*/
/*  Target device identification flags (bits 4-7 in file header flags)    */
/*------------------------------------------------------------------------*/
#define  TI_F_VERS0    0x0        /* 0th generation CPU                      */
#define  TI_F_VERS1    0x10       /* 1st generation CPU                      */
#define  TI_F_VERS2    0x20       /* 2nd generation CPU                      */
#define  TI_F_VERS3    0x40       /* 3rd generation CPU                      */
#define  TI_F_VERS4    0x80       /* 4th generation CPU                      */
#define  TI_F_VERSION  (TI_F_VERS1 |TI_ F_VERS2 | TI_F_VERS3 | TI_F_VERS4)

/*------------------------------------------------------------------------*/
/*  Target device raw data byte ordering flags (bits 8-9)                 */
/*------------------------------------------------------------------------*/
#define  TI_F_LITTLE   0x100      /* object code is LSB first                */
#define  TI_F_BIG      0x200      /* object code is MSB first                */
#define  TI_F_BYTE_ORDER (TI_F_LITTLE | TI_F_BIG)

#define  TI_F_SYMMERGE 0x1000     /* Tags, etc were merged - no duplicates   */


/*------------------------------------------------------------------------*/
/*  OPTIONAL FILE HEADER                                                  */
/*------------------------------------------------------------------------*/
typedef struct ti_aouthdr
{
   short   magic;          /* optional file header magic number    */
   short   vstamp;         /* version stamp                        */
   long    tsize;          /* text size in bytes, padded to FW bdry*/
   long    dsize;          /* initialized data "  "                */
   long    bsize;          /* uninitialized data "   "             */
   long    entrypt;        /* entry pt.                            */
   long    text_start;     /* base of text used for this file      */
   long    data_start;     /* base of data used for this file      */
} TI_AOUTHDR;

#define TI_AOUTSZ     sizeof(TI_AOUTHDR)
#define TI_AOUT1MAGIC 0410


/*------------------------------------------------------------------------*/
/*  COMMON ARCHIVE FILE STRUCTURES                                        */
/*                                                                        */
/*       ARCHIVE File Organization:                                       */
/*       +---------------------------------------------+                  */
/*       |          ARCHIVE_MAGIC_STRING               |                  */
/*       +---------------------------------------------+                  */
/*       |          ARCHIVE_FILE_MEMBER_1              |                  */
/*       +- - - - - - - - - - - - - - - - - - - - - - -+                  */
/*       |   Archive File Header "ar_hdr"              |                  */
/*       |   Contents (Ext symbol direct, text file)   |                  */
/*       +---------------------------------------------+                  */
/*       |          ARCHIVE_FILE_MEMBER_2              |                  */
/*       +- - - - - - - - - - - - - - - - - - - - - - -+                  */
/*       |   Archive File Header "ar_hdr"              |                  */
/*       |   Contents (.o or text file)                |                  */
/*       +---------------------------------------------+                  */
/*       |       .               .               .     |                  */
/*       |       .               .               .     |                  */
/*       |       .               .               .     |                  */
/*       +---------------------------------------------+                  */
/*       |          ARCHIVE_FILE_MEMBER_n              |                  */
/*       +- - - - - - - - - - - - - - - - - - - - - - -+                  */
/*       |   Archive File Header "ar_hdr"              |                  */
/*       |   Contents (.o or text file)                |                  */
/*       +---------------------------------------------+                  */
/*                                                                        */
/*------------------------------------------------------------------------*/

#define TI_ARMAG   "!<arch>\n"
#define TI_SARMAG  8
#define TI_ARFMAG  "`\n"
#define TI_ARFMAG_SIZE   2

struct ar_hdr           /* archive file member header - printable ascii */
{
   char    ar_name[16];    /* file member name - `/' terminated */
   char    ar_date[12];    /* file member date - decimal */
   char    ar_uid[6];      /* file member user id - decimal */
   char    ar_gid[6];      /* file member group id - decimal */
   char    ar_mode[8];     /* file member mode - octal */
   char    ar_size[10];    /* file member size - decimal */
   char    ar_fmag[2];     /* ARFMAG - string to end header */
};

#define TI_ARHDR     struct ar_hdr
#define TI_ARHSZ     sizeof(TI_ARHDR)
#define TI_AR_HDR_SZ sizeof(TI_ARHDR)
#define TI_AR_FNAME_SIZE 16

/*------------------------------------------------------------------------*/
/*  SECTION HEADER                                                        */
/*------------------------------------------------------------------------*/ 
 
#define  TI_SYMNMLEN   8      /*  Number of characters in a symbol name      */ 

struct ti_scnhdr
{
   union
   {
      char            _s_name[TI_SYMNMLEN];   /* old COFF version name fld   */
      struct
      {
         long    _s_zeroes;                /* new == 0                    */
         long    _s_offset;                /* offset into string table    */
      } _s_s;
      char      *_s_nptr[2];               /* allows for overlaying       */
   } _s;

   long            s_paddr;        /* physical address                    */
   long            s_vaddr;        /* virtual address                     */
   long            s_size;         /* section size                        */
   long            s_scnptr;       /* file ptr to raw data for section    */
   long            s_relptr;       /* file ptr to relocation              */
   long            s_lnnoptr;      /* file ptr to line numbers            */
   unsigned long   s_nreloc;       /* number of relocation entries        */
   unsigned long   s_nlnno;        /* number of line number entries       */
   unsigned long   s_flags;        /* flags                               */
   short           s_reserved;     /* reserved 2 bytes                    */
   unsigned short  s_page;         /* memory page id                      */
};  


typedef struct ti_o_scnhdr
{
   char            os_name[8];     /* section name */
   long            os_paddr;       /* physical address */
   long            os_vaddr;       /* virtual address */
   long            os_size;        /* section size */
   long            os_scnptr;      /* file ptr to raw data for section */
   long            os_relptr;      /* file ptr to relocation */
   long            os_lnnoptr;     /* file ptr to line numbers */
   unsigned short  os_nreloc;      /* number of relocation entries */
   unsigned short  os_nlnno;       /* number of line number entries */
   unsigned short  os_flags;       /* flags */
   char            os_reserved;    /* reserved byte */
   unsigned char   os_page;        /* memory page id */
}TI_O_SCNHDR;


#define s_name          _s._s_name
#define s_nptr          _s._s_nptr[1]
#define s_zeroes        _s._s_s._s_zeroes
#define s_offset        _s._s_s._s_offset

#define TI_SCNHDR  struct ti_scnhdr
#define TI_SCNHSZ  sizeof(TI_SCNHDR)
#define TI_SCNHSZ_IN(version) (version == TI_COFF_MAGIC_2 ? TI_SCNHSZ : (TI_SCNHSZ - 8))
 

/*------------------------------------------------------------------------*/
/* Define constants for names of "special" sections                       */
/*------------------------------------------------------------------------*/
#define TI_TEXT    ".text"
#define TI_DATA    ".data"
#define TI_BSS     ".bss"
#define TI_REG     ".reg"
#define TI_CINIT   ".cinit"

/*------------------------------------------------------------------------*/
/* The low 8 bits of s_flags is used as a section "type"                  */
/*------------------------------------------------------------------------*/
#define TI_STYP_REG    0x00  /* "regular" : allocated, relocated, loaded */
#define TI_STYP_DSECT  0x01  /* "dummy"   : not allocated, relocated, not loaded */
#define TI_STYP_NOLOAD 0x02  /* "noload"  : allocated, relocated, not loaded */
#define TI_STYP_GROUP  0x04  /* not used */
#define TI_STYP_PAD    0x08  /* not used */                    
#define TI_STYP_COPY   0x10  /* "copy"    : used for C init tables - 
                                                not allocated, relocated,
                                                loaded;  reloc & lineno
                                                entries processed normally */
#define TI_STYP_TEXT   0x20   /* section contains text only */
#define TI_STYP_DATA   0x40   /* section contains data only */
#define TI_STYP_BSS    0x80   /* section contains bss only */

/*------------------------------------------------------------------------*/
/* Bits 8-11 specify an alignment.  The alignment is (2 ** x).            */
/*------------------------------------------------------------------------*/
#define TI_ALIGN_DEFAULT      0x100  /* default align flag - target dependent */
#define TI_ALIGN_MASK         0xF00  /* mask for alignment factor             */
#define TI_ALIGN_SIZE(s_flag) (1 << (((unsigned)s_flag & TI_ALIGN_MASK) >> 8))

#define TI_STYP_BLOCK  0x1000        /* use alignment as blocking factor */
#define TI_STYP_PASS   0x2000        /* Pass section through unchanged   */
#define TI_STYP_CLINK  0x4000        /* Conditionally link section       */

/*------------------------------------------------------------------------*/
/*  RELOCATION ENTRIES                                                    */
/*  WE SUPPORT TWO TYPES OF RELOCATION ENTRIES:                           */
/*     1) OLD STYLE, WITH 16 BIT SYMBOL TABLE INDEX.                      */
/*     2) NEW STYLE, WITH 32 BIT SYMBOL TABLE INDEX.                      */
/*  FOR ANY GIVEN INPUT FILE, THE FILE HEADER FLAG "F_RELOC_12" INDICATES */
/*  THE TYPE OF RELOCATION ENTRY IN THE FILE.                             */
/*  THE TARGET-SPECIFIC FLAG RELOC_ENTRY_12 DETERMINES WHETHER THE NEW    */
/*  STYLE IS SUPPORTED ON A GIVEN TARGET.                                 */
/*------------------------------------------------------------------------*/
typedef struct ti_reloc_old
{
   long            r_vaddr;       /* (virtual) address of reference */
   short           r_symndx;      /* index into symbol table */
   unsigned short  r_disp;        /* additional bits for address calculation */
   unsigned short  r_type;        /* relocation type */
} TI_RELOC_OLD; 


typedef struct ti_reloc
{
   long            r_vaddr;       /* (virtual) address of reference       */
#if TI_COFF_VERSION_0 
   short           r_symndx;      /* 16-bit index into symbol table       */
#else
   long            r_symndx;      /* 32-bit index into symbol table       */
#endif
   unsigned short  r_disp;        /* additional bits for addr calc        */
   unsigned short  r_type;        /* relocation type                      */
} TI_RELOC;


#define TI_RELSZ              (TI_COFF_VERSION_1 ? 12 : 10)
#define TI_RELSZ_IN(version)  ((version >= TI_COFF_MAGIC_1) ? 12 : 10)

/*--------------------------------------------------------------------------*/
/*   define all relocation types                                            */
/*--------------------------------------------------------------------------*/
#define TI_R_ABS           0         /* absolute address - no relocation       */
#define TI_R_DIR16         01        /* UNUSED                                 */
#define TI_R_REL16         02        /* UNUSED                                 */
#define TI_R_DIR24         04        /* UNUSED                                 */
#define TI_R_REL24         05        /* 24 bits, direct                        */
#define TI_R_DIR32         06        /* UNUSED                                 */
#define TI_R_RRRELREG     016        /* RR: 8 bit relocatable register         */
#define TI_R_RELBYTE      017        /* 8 bits, direct                         */
#define TI_R_RELWORD      020        /* 16 bits, direct                        */
#define TI_R_RELLONG      021        /* 32 bits, direct                        */
#define TI_R_PCRBYTE      022        /* 8 bits, PC-relative                    */
#define TI_R_PCRWORD      023        /* 16 bits, PC-relative                   */
#define TI_R_PCRLONG      024        /* 32 bits, PC-relative                   */
#define TI_R_PCR24        025        /* 24 bits, PC-relative                   */
#define TI_R_PCR23H       026        /* 23 bits, PC-relative in halfwords(x>>1)*/
#define TI_R_PCR24W       027        /* 24 bits, PC-relative in words (x >> 2) */
#define TI_R_OCRLONG      030        /* GSP: 32 bits, one's complement direct  */
#define TI_R_GSPPCR16     031        /* GSP: 16 bits, PC relative (in words)   */
#define TI_R_GSPOPR32     032        /* GSP: 32 bits, direct big-endian        */
#define TI_R_GSPPCA16     033        /* GSP: same as GSPPCR16, but PC constant */
#define TI_R_OCBD32       034        /* GSP: 32 bits, 1's complement,big-endian*/
#define TI_R_RRNREG       035        /* RR: 8 bit reloc. reg. w/ neg off       */
#define TI_R_PARTLS16     040        /* Brahma: 16 bit offset of 24 bit address*/
#define TI_R_PARTMS8      041        /* Brahma: 8 bit page of 24 bit address   */
#define TI_R_PARTLS7      050        /* DSP: 7 bit offset of 16 bit address    */
#define TI_R_PARTMS9      051        /* DSP: 9 bit page of 16 bit address      */
#define TI_R_REL13        052        /* DSP: 13 bits, direct                   */
#define TI_R_REL23        053        /* DSP,C54X: 23 bits, direct (ext addr) */
#define TI_R_RELXPC       054        /* DSP,C54X: 16 bits, relative to XPC   */
#define TI_R_HIEXT        055        /* C54X: Hi word of extended prog addr  */
#define TI_R_HIWORD       061    /* RR: 8 bit relocation. hi byte of word  */
#define TI_R_LABCOD       062        /* C16 16-bit code address relocation     */

#define TI_R_PPBASE       064        /* PP: Global Base address type           */
#define TI_R_PPLBASE      065        /* PP: Local Base address type            */
#define TI_R_PP15         070        /* PP: Global 15 bit offset               */
#define TI_R_PP15W        071        /* PP: Global 15 bit offset divided by 4  */
#define TI_R_PP15H        072        /* PP: Global 15 bit offset divided by 2  */
#define TI_R_PP16B        073        /* PP: Global 16 bit offset for bytes     */
#define TI_R_PPL15        074        /* PP: Local 15 bit offset                */
#define TI_R_PPL15W       075        /* PP: Local 15 bit offset divided by 4   */
#define TI_R_PPL15H       076        /* PP: Local 15 bit offset divided by 2   */
#define TI_R_PPL16B       077        /* PP: Local 16 bit offset for bytes      */
#define TI_R_PPN15        0100       /* PP: Global 15 bit negative offset      */
#define TI_R_PPN15W       0101       /* PP: Global 15 bit negative offset / 4  */
#define TI_R_PPN15H       0102       /* PP: Global 15 bit negative offset / 2  */
#define TI_R_PPN16B       0103       /* PP: Global 16 bit negative byte offset */
#define TI_R_PPLN15       0104       /* PP: Local 15 bit negative offset       */
#define TI_R_PPLN15W      0105       /* PP: Local 15 bit negative offset / 4   */
#define TI_R_PPLN15H      0106       /* PP: Local 15 bit negative offset / 2   */
#define TI_R_PPLN16B      0107       /* PP: Local 16 bit negative byte offset  */

#define TI_R_MPPCR        0117       /* MP: 32-bit PC-relative / 4             */

#define TI_R_C60BASE      0120   /* C60: Data Page Pointer Based Offset    */
#define TI_R_C60DIR15     0121       /* C60: LD/ST long Displacement           */
#define TI_R_C60PCR16     0122       /* C60: 16-bit Packet PC Relative         */
#define TI_R_C60PCR24     0123       /* C60: 24-bit Packet PC Relative         */
#define TI_R_C60LO16      0124       /* C60: MVK Low Half Register             */
#define TI_R_C60HI16      0125       /* C60: MVKH/MVKLH High Half Register     */

#define TI_R_C8PHIBYTE    0130	  /* C8+: High byte of 24-bit address.    */
#define TI_R_C8PMIDBYTE   0131	  /* C8+: Middle byte of 24-bit address.  */
#define TI_R_C8PVECADR    0132	  /* C8+: Vector address (0xFFnnnn)       */
#define TI_R_C8PADR24     0133	  /* C8+: 24-bit address (rev byte order) */

#define TI_R_PARTLS6      0135       /* ANKOOR: 6 bit offset of 22 bit addr  */
#define TI_R_PARTMID10    0136       /* ANKOOR: Middle 10 bits of 22 bit addr*/ 
#define TI_R_REL22        0137       /* ANKOOR: 22 bits, direct              */
#define TI_R_PARTMS6      0140       /* ANKOOR: Upper 6 bits of 22 bit addr  */
#define TI_R_PARTMS16     0141       /* ANKOOR: Upper 16 bits of 22 bit addr */
#define TI_R_ANKPCR16     0142       /* ANKOOR: PC relative 16 bit           */
#define TI_R_ANKPCR8      0143       /* ANKOOR: PC relatvie 8 bit            */

/*------------------------------------------------------------------------*/
/*  LINE NUMBER ENTRIES                                                   */
/*------------------------------------------------------------------------*/
struct ti_lineno
{
   union
   {
      long         l_symndx; /* sym index of function name iff l_lnno == 0  */
      long         l_paddr;  /* (physical) address of line number */
   }  l_addr;
   unsigned short  l_lnno;   /* line number */
};

#define TI_LINENO  struct ti_lineno
#define TI_LINESZ  6       /* sizeof(LINENO) */


/*------------------------------------------------------------------------*/
/*  SYMBOL TABLE ENTRIES                                                  */
/*------------------------------------------------------------------------*/

#define  TI_FILNMLEN   14     /*  Number of characters in a file name */
#define  TI_DIMNUM     4      /*  Number of array dimensions in auxiliary entry */

typedef unsigned short TI_STYPE;

struct ti_syment
{
    union
    {
       char            _n_name[TI_SYMNMLEN];   /* old COFF version */
       struct
       {
          long    _n_zeroes;                /* new == 0 */
          long    _n_offset;                /* offset into string table */
       } _n_n;
       char      *_n_nptr[2];               /* allows for overlaying */
    } _n;

    long                    n_value;        /* value of symbol */
    short                   n_scnum;        /* section number */
    TI_STYPE                n_type;         /* type and derived type */
    char                    n_sclass;       /* storage class */
    char                    n_numaux;       /* number of aux. entries */
};

#define n_name          _n._n_name
#define n_nptr          _n._n_nptr[1]
#define n_zeroes        _n._n_n._n_zeroes
#define n_offset        _n._n_n._n_offset

/*------------------------------------------------------------------------*/
/* Relocatable symbols have a section number of the                       */
/* section in which they are defined.  Otherwise, section                 */
/* numbers have the following meanings:                                   */
/*------------------------------------------------------------------------*/
#define  TI_N_UNDEF  0                     /* undefined symbol */
#define  TI_N_ABS    -1                    /* value of symbol is absolute */
#define  TI_N_DEBUG  -2                    /* special debugging symbol  */


/*------------------------------------------------------------------------*/
/*  AUXILIARY SYMBOL ENTRY                                                */
/*------------------------------------------------------------------------*/
#define TI_SPACE(len, name)    char  name[len]

union ti_auxent
{
        struct
    {
        TI_SPACE(4, _0_3);
            long    x_fsize;        /* size of struct in bits.     */
        TI_SPACE(4, _8_11);
            long    x_endndx;       /* ptr to next sym beyond .eos */
        TI_SPACE(2, _16_17);
    } x_tag;

        struct
    {
        long    x_tagndx;       /* ptr to beginning of struct  */
        long    x_fsize;        /* size of struct in bits.     */
        TI_SPACE(10, _8_17);
        } x_eos;

    struct 
    {
        long    x_tagndx;       /* ptr to tag for function     */
        long    x_fsize;        /* size of function in bits    */
        long    x_lnnoptr;      /* file ptr to fcn line #      */
        long    x_endndx;       /* ptr to next sym beyond .ef  */
        TI_SPACE(2, _16_17);
        } x_func;

        struct
    {
            long    x_regmask;      /* Mask of regs use by func    */
        unsigned short  x_lnno; /* line number of block begin  */
        unsigned short  x_lcnt; /* # line number entries in func */
        long    x_framesize;    /* size of func local vars     */
        long    x_endndx;       /* ptr to next sym beyond .eb  */
        TI_SPACE(2, _16_17);
    } x_block;

        struct
    {
        long    x_tagndx;       /* ptr to tag for array type   */
        long    x_fsize;        /* Size of array in bits.      */
            unsigned short  x_dimen[TI_DIMNUM];
        TI_SPACE(2, _16_17);
    } x_array;

    struct
    {
            long    x_tagndx;       /* str, un, or enum tag indx   */
        long    x_fsize;        /* Size of symbol              */
        TI_SPACE(10, _10_17);
    } x_sym;

        struct
        {
        char    x_fname[TI_FILNMLEN];
        } x_file;

        struct
        {
            long            x_scnlen;  /* section length           */
            unsigned short  x_nreloc;  /* number of reloc entries  */
            unsigned short  x_nlinno;  /* number of line numbers   */
        TI_SPACE(8, _10_17);
        } x_scn;
};

#define TI_SYMENT  struct ti_syment
#define TI_SYMESZ  18      /* sizeof(SYMENT) */

#define TI_AUXENT  union ti_auxent
#define TI_AUXESZ  18      /* sizeof(AUXENT) */

/*------------------------------------------------------------------------*/
/*  NAMES OF "SPECIAL" SYMBOLS                                            */
/*------------------------------------------------------------------------*/
#define TI_BF            ".bf"
#define TI_EF            ".ef"
#define TI_STEXT          ".text"
#define TI_ETEXT          "etext"
#define TI_SDATA          ".data"
#define TI_EDATA          "edata"
#define TI_SBSS           ".bss"
#define TI_END            "end"
#define TI_CINITPTR       "cinit"
#define TI_ASM_SRC_NAME   "$ASM$"        /* SPECIAL SYMBOL FOR ASSY SRC DEBUG */

/*--------------------------------------------------------------------------*/
/*  ENTRY POINT SYMBOLS                                                     */
/*--------------------------------------------------------------------------*/
#define TI_START          "_start"
#define TI_MAIN           "_main"

